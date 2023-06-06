----------------------------------------------------------------------------------
-- Company: Dartmouth College
-- Engineer: Michael Del Sesto
-- 
-- Create Date: 05/29/2023 10:21:43 PM
-- Design Name: Keytar Hero, KeyCompareCircuit
-- Module Name: KeyCompareCircuit - Behavioral
-- Project Name: Keytar Hero 23
-- Target Devices: Bayes 3, Yamaha SHS 200, Dell VGA
-- Tool Versions: 1
-- Description: Compares the note on the target and the note on the MIDI
-- 
-- Dependencies: System Shell, Pixel Boolean Memory IP Core
-- 
-- Revision:
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------

------------------------------------------------------
-- Import Libraries
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

------------------------------------------------------
-- Declare Entity
------------------------------------------------------

entity KeyCompareCircuit is
	port(
    	clk          : in std_logic;
        Target_Note_IN  : in std_logic_vector(23 downto 0); -- from COE file and VGA display circuit, positions of 24 notes ot be projected on the staff
        addra        : in std_logic_vector(8 downto 0);     -- address for the Pixel Boolean Memory BLock
        Parallel_Out : in std_logic_vector(7 downto 0);     -- output from receiver
        Rx_done      : in std_logic;                        -- from reciever
        OverDrive    : out std_logic;                       -- tells score if overdrive was hit
        all_Notes_Match               : out std_logic;                                    -- tells VGA if all notes were hit
        Note_Matches_out              : out std_logic_vector(23 downto 0):=(others=>'0'); -- tells which notes were correctly hit ('1' = HIT, '0' = Miss, '1' otherwise)
        HIT_mono                      : out std_logic:='0';                               -- monopulsed HIT signal for scoring system (not implemented)
        MISS_mono, HITorMISS          : out std_logic:='0'                                -- monopulsed MISS for scoring system (not implemented in this version)
    );
end KeyCompareCircuit;

------------------------------------------------------
-- Declare Architecture
------------------------------------------------------

architecture behavioral of KeyCompareCircuit is

------------------------------------------------------
-- Define Signals
------------------------------------------------------

-- for FSM states
type state_type is (IdleSt, StatusSigSt, SetNoteOnSt, SetNoteOffSt,PitchBendSt, NoteOnSt, ImpOffst, NoteOffSt); -- states for fininte state machine
signal NS, CS: state_type:= IdleSt;

-- for FSM signals
signal setkey, pitchWheel: std_logic:= '0';              -- signals to determine if key was pressed (or released) or it pitchwheel was hit
signal updateNote, velocity, NoteOnSig: std_logic:= '0'; -- signals for note on vs off logic and setting NotesOn

-- for Datapath
signal rawKey                : std_logic_vector(7 downto 0) :="11111111";       -- holds kraw key value from MIDI from the receiver
signal NoteOn                : std_logic_vector(23 downto 0):= (others=> '0');  -- tells which notes are on at a given time
signal Note_Matches_internal : std_logic_vector(23 downto 0):= (others=> '0');  -- internal signal which Note_Matches will shadow so logic can be performed on this output

signal cmpNotes            : std_logic:='0'; -- to know when to compare the target and note on

signal HIT_shadow, HIT_new : std_logic:='0'; -- signals to monopulse HIT (used for scoring, not implemented)
signal newTarget           : std_logic:='0'; -- signals to determine when a new target arrives (used for scoring, not implemented)
signal new_Target_Note     : std_logic_vector(23 downto 0):= (others=> '0'); -- signals to determine when a new target arrives (used for scoring, not implemented)
signal MISS, MISS_shadow   : std_logic:='0'; -- signals to monopulse MISS (used for scoring, not implemented)

signal Target_Note  : std_logic_vector(23 downto 0);                -- internal signal for Target Note on VGA
signal Note_Matches : std_logic_vector(23 downto 0):=(others=>'0'); -- vector to note note matches
signal addra_int    : integer:=0;                                   -- internal VGA address

begin

------------------------------------------------------
-- Finite State Machine Processes
------------------------------------------------------

-- state updater (synchronous)
stateUpdate : process(clk)
begin
	if rising_edge(clk) then
    	CS <= NS;
    end if;
end process stateUpdate;

-- next state logic (asynchronous, based on changing CS, Rx_done, and Parallel_Out)
nextStateLogic : process(CS, Rx_done, Parallel_Out) --clk, 
begin
	-- defaults
    NS <= CS;
	cmpNotes <= '0';
	setkey     <= '0';
	updateNote <= '0';
    velocity   <= '0';
	pitchWheel <= '0';
    NoteOnSig  <= '0';
	
	--if rising_edge(clk) then
    
    -- case logic through states
    -- IdleSt, StatusSigSt, SetNoteOnSt, SetNoteOffSt,PitchBendSt
    -- NoteOnSt, ImpOffst, NoteOffSt
    case (CS) is
    	when IdleSt =>
			-- next states
        	if Rx_done='1' then

                if Parallel_Out(7 downto 4) = "1001" then
                	NS <= SetNoteOnSt; 							 -- if Note On signal go set the key
                elsif Parallel_Out(7 downto 4) = "1000" then
                	NS <= SetNoteOffSt; 						 -- if Note off signal, go set the key
                elsif Parallel_Out(7 downto 4) = "1110" then
                	NS <= PitchBendSt;							 -- if Pitch Wheel, go set over drive
                end if;

            end if;
			
			-- outputs
			cmpNotes <= '1';
			
        when StatusSigSt =>
			-- next state
            if Rx_done = '1' then
            	if Parallel_Out(7 downto 4) = "0000" then
                	NS <= ImpOffst; -- go update which notes are on/off in implicit off state
                else
                	NS <= NoteOnSt; -- go update which notes are on/off in note on state
                end if;
            end if;
        	
			-- output logic

        when PitchBendSt =>
			-- next state
        	NS <= IdleSt; -- back to beginning
			
			-- output
			pitchWheel <= '1';

        when SetNoteOffSt =>
			-- next state
        	if Rx_done = '1' then
            	NS <= NoteOffSt; -- go update which notes are on/off in note off state
            end if;
			
			-- outputs
			setkey     <= '1';

        when NoteOffSt =>
			-- next state
        	NS <= IdleSt; -- back to beginning
			
			-- outputupdateNote <= '1';
			updateNote <= '1';
            velocity   <= '0';
            NoteOnSig  <= '0';

        when SetNoteOnSt =>
			-- next state
        	if Rx_done = '1' then
                	NS <= StatusSigSt; 
            end if;
			
			-- outputs
			setkey     <= '1';

         when NoteOnSt =>
			-- next state
			Ns <= IdleSt;
			
            --output logic
			updateNote <= '1';
            velocity   <= '1';
            NoteOnSig  <= '1';

         when ImpOffst =>
         	Ns <= IdleSt;
			
			-- outputs
			updateNote <= '1';
            velocity   <= '0';
            NoteOnSig  <= '1';

         when others =>
         	null;
    end case;
	
	--end if;
end process nextStateLogic;

------------------------------------------------------
-- Datapath Processes
------------------------------------------------------

-- process to set the raw key during SetNoteOnSt and SetNoteOffSt (synchronous on setkey)
keySet : process(clk,setkey)
begin
	if rising_edge(clk) then
    	-- defaults
        rawKey <= rawKey;
        
    	if setkey = '1' then
        	rawKey <= Parallel_Out(7 downto 0);
        end if;
    end if;
end process keySet;

-- process to determine which note is pressed (synchronous on rawkey, updateState, NoteOnSig,velocity)
NoteOnSet : process(clk, rawkey, updateNote, velocity, NoteOnSig)
begin
	if rising_edge(clk) then
    	-- defaults
        NoteOn <= NoteOn;  -- the note from the MIDI
        
        if updateNote='1' then-- or newTarget='1' then
        	--NoteOn<=(others=>'0');
        	if (NoteOnSig='0' or velocity='0') then-- and newTarget='0' then
            	-- turning notes off
        		case to_integer(unsigned(rawkey)) is
                
        			-- Left Hand
                    when 24 | 36 | 48 =>       -- Left Hand, C
        	    		NoteOn(18) <= '0';
        	    	when 26 | 38| 50 =>        -- Left Hand, D
        	    		NoteOn(17) <= '0';
           	 		when 28 | 40 | 52 =>       -- Left Hand, E
           	 			NoteOn(23) <= '0';
                        NoteOn(16) <= '0';
                    when 29| 41| 53   =>       -- Left Hand, F
           	 			NoteOn(22) <= '0';
                        NoteOn(15) <= '0';
                    when 31 | 43 | 55 =>       -- Left Hand, G
           	 			NoteOn(21) <= '0';
                        NoteOn(14) <= '0';
                    when 21 | 33 | 45 | 57 =>  -- Left Hand, A
           	 			NoteOn(20) <= '0';
                        NoteOn(13) <= '0';
                    when 23 | 35 | 47| 59  =>  -- Left Hand, B
           	 			NoteOn(19) <= '0';
                        NoteOn(12) <= '0';
                    
                    -- Right Hand
                    when 60 | 72 | 84 | 96 | 108 | 120 =>       -- Right Hand, C
        	    		NoteOn(4) <= '0';
        	    	when 62 | 74 | 86 | 98 | 110 | 122  =>        -- Right Hand, D
        	    		NoteOn(10) <= '0';
                        NoteOn(3) <= '0';
           	 		when 64 | 76 | 88 | 100 | 112 | 124 =>       -- Right Hand, E
           	 			NoteOn(2) <= '0';
                        NoteOn(9) <= '0';
                    when 65 | 77 |89 |101| 113 |125  =>       -- Right Hand, F
           	 			NoteOn(1) <= '0';
                        NoteOn(8) <= '0';
                    when 67 | 79| 91 | 103 | 115 | 127 =>       -- Right Hand, G
           	 			NoteOn(0) <= '0';
                        NoteOn(7) <= '0';
                    when 69 | 81 | 93 | 105 | 117 =>  -- Right Hand, A
           	 			NoteOn(6) <= '0';
                    when 71 | 83 | 95 | 107 | 119  =>  -- Right Hand, B
           	 			NoteOn(5) <= '0';
                    when others =>
                    	null;
            	end case;
            else
            	-- turning notes on
        		case to_integer(unsigned(rawkey)) is
                
        			-- Left Hand
                    when 24 | 36 | 48 =>       -- Left Hand, C
        	    		NoteOn(18) <= '1';
        	    	when 26 | 38| 50 =>        -- Left Hand, D
        	    		NoteOn(17) <= '1';
           	 		when 28 | 40 | 52 =>       -- Left Hand, E
           	 			NoteOn(23) <= '1';
                        NoteOn(16) <= '1';
                    when 29| 41| 53   =>       -- Left Hand, F
           	 			NoteOn(22) <= '1';
                        NoteOn(15) <= '1';
                    when 31 | 43 | 55 =>       -- Left Hand, G
           	 			NoteOn(21) <= '1';
                        NoteOn(14) <= '1';
                    when 21 | 33 | 45 | 57 =>  -- Left Hand, A
           	 			NoteOn(20) <= '1';
                        NoteOn(13) <= '1';
                    when 23 | 35 | 47| 59  =>  -- Left Hand, B
           	 			NoteOn(19) <= '1';
                        NoteOn(12) <= '1';
                    
                    -- Right Hand
                    when 60 | 72 | 84 | 96 | 108 | 120 =>       -- Right Hand, C
        	    		NoteOn(4) <= '1';
        	    	when 62 | 74 | 86 | 98 | 110 | 122  =>        -- Right Hand, D
        	    		NoteOn(10) <= '1';
                        NoteOn(3) <= '1';
           	 		when 64 | 76 | 88 | 100 | 112 | 124 =>       -- Right Hand, E
           	 			NoteOn(2) <= '1';
                        NoteOn(9) <= '1';
                    when 65 | 77 |89 |101| 113 |125  =>       -- Right Hand, F
           	 			NoteOn(1) <= '1';
                        NoteOn(8) <= '1';
                    when 67 | 79| 91 | 103 | 115 | 127 =>       -- Right Hand, G
           	 			NoteOn(0) <= '1';
                        NoteOn(7) <= '1';
                    when 69 | 81 | 93 | 105 | 117 =>  -- Right Hand, A
           	 			NoteOn(6) <= '1';
                    when 71 | 83 | 95 | 107 | 119  =>  -- Right Hand, B
           	 			NoteOn(5) <= '1';
                    when others =>
                    	null;
            	end case;
            end if;
         end if;
         
    end if; -- if rising edge
end process NoteOnSet;

-- process to create the match vector and hit logic (synchronous on NoteOn, Target_Note)
noteMatcher : process (clk,NoteOn,Target_Note)
begin
    if rising_edge(clk) then

	-- update Target Note when screen finishes updates
	if addra_int=391 then
		Target_Note<=Target_Note_IN;  -- the note from the screen
	end if;

    	-- defaults
         HIT_shadow <= '0';
         Note_Matches <= (others=> '1');
        
        -- check for each target note if either octave of the Note ON matches; if so, a match; if all matches, a hit
        
        -- for Left Hand Lower E Matches
        if ( Target_Note(0)='1' and (NoteOn(0)='0' and NoteOn(7)='0') ) then
        	Note_Matches(0) <= '0';
        end if;
        
        if ( Target_Note(7)='1' and (NoteOn(0)='0' and NoteOn(7)='0') ) then
        	Note_Matches(7) <= '0';
        end if;
        
        -- for Left Hand Lower F Matches
        if ( Target_Note(1)='1' and (NoteOn(1)='0' and NoteOn(8)='0') ) then
        	Note_Matches(1) <= '0';
        end if;
        
        if ( Target_Note(8)='1' and (NoteOn(1)='0' and NoteOn(8)='0') ) then
        	Note_Matches(8) <= '0';
        end if;
        
        -- for Left Hand Lower G Matches
        if ( Target_Note(2)='1' and (NoteOn(2)='0' and NoteOn(9)='0') ) then
        	Note_Matches(2) <= '0';
        end if;
        
        if ( Target_Note(9)='1' and (NoteOn(2)='0' and NoteOn(9)='0') ) then
        	Note_Matches(9) <= '0';
        end if;
        
        -- for Left Hand Lower A Matches
        if ( Target_Note(3)='1' and (NoteOn(3)='0' and NoteOn(10)='0') ) then
        	Note_Matches(3) <= '0';
        end if;
        
        if ( Target_Note(10)='1' and (NoteOn(3)='0' and NoteOn(10)='0') ) then
        	Note_Matches(10) <= '0';
        end if;
        
        -- for Left Hand Lower B Matches
        if ( Target_Note(4)='1' and (NoteOn(4)='0' and NoteOn(11)='0') ) then
        	Note_Matches(4) <= '0';
        end if;
        
        if ( Target_Note(11)='1' and (NoteOn(4)='0' and NoteOn(11)='0') ) then
        	Note_Matches(11) <= '0';
        end if;
        
        -- for Left Hand Lower C Matches, only one case
        if ( Target_Note(5)='1' and NoteOn(5)='0' ) then
        	Note_Matches(5) <= '0';
        end if;
        
         -- for Left Hand Lower D Matches, only one case
        if ( Target_Note(6)='1' and NoteOn(6)='0' ) then
        	Note_Matches(6) <= '0';
        end if;
        
        -- for Right Hand C Matches
        if ( Target_Note(12)='1' and (NoteOn(12)='0' and NoteOn(19)='0') ) then
        	Note_Matches(12) <= '0';
        end if;
        
        if ( Target_Note(19)='1' and (NoteOn(12)='0' and NoteOn(19)='0') ) then
        	Note_Matches(19) <= '0';
        end if;
        
        -- for Right Hand D Matches
        if ( Target_Note(13)='1' and (NoteOn(13)='0' and NoteOn(20)='0') ) then
        	Note_Matches(13) <= '0';
        end if;
        
        if ( Target_Note(20)='1' and (NoteOn(13)='0' and NoteOn(20)='0') ) then
        	Note_Matches(20) <= '0';
        end if;
        
        -- for Right Hand E Matches
        if ( Target_Note(14)='1' and (NoteOn(14)='0' and NoteOn(21)='0') ) then
        	Note_Matches(14) <= '0';
        end if;
        
        if ( Target_Note(21)='1' and (NoteOn(14)='0' and NoteOn(21)='0') ) then
        	Note_Matches(21) <= '0';
        end if;
        
        -- for Right Hand F Matches
        if ( Target_Note(15)='1' and (NoteOn(15)='0' and NoteOn(22)='0') ) then
        	Note_Matches(15) <= '0';
        end if;
        
        if ( Target_Note(22)='1' and (NoteOn(15)='0' and NoteOn(22)='0') ) then
        	Note_Matches(22) <= '0';
        end if;
        
        -- for Right Hand G Matches
        if ( Target_Note(16)='1' and (NoteOn(16)='0' and NoteOn(23)='0') ) then
        	Note_Matches(16) <= '0';
        end if;
        
        if ( Target_Note(23)='1' and (NoteOn(16)='0' and NoteOn(23)='0') ) then
        	Note_Matches(23) <= '0';
        end if;

        -- for Right Hand A Matches
        if ( Target_Note(17)='1' and NoteOn(17)='0') then
        	Note_Matches(17) <= '0';
        end if;
        
        -- for Right Hand B Matches
        if ( Target_Note(18)='1' and NoteOn(18)='0') then
        	Note_Matches(18) <= '0';
        end if;
        
    	-- test if all matches; if so then a hit
    	if Note_Matches = "111111111111111111111111" then
    		HIT_shadow <= '1';
    	end if;

    end if; -- end rising_edge(clk)
end process noteMatcher;


------------------------------------------------------
-- Scoring Processes (Not Implemented in Version 1.0)
------------------------------------------------------

-- new Target monopulser
newTargetNote: process(clk, Target_Note)
begin
	if rising_edge(clk) then
    	new_Target_Note <=Target_Note;
        
        if new_Target_Note =Target_Note then
        	newTarget<='0';
        else
        	newTarget<='1';
        end if;
    end if;
end process newTargetNote;

-- HIT monopulser
newHITMonopulser: process(clk, HIT_shadow)
begin
	if rising_edge(clk) then
    	 HIT_new <=  HIT_shadow;
        
        if HIT_new = HIT_shadow then
        	HIT_mono<='0';
        elsif HIT_new < HIT_shadow then
        	HIT_mono<='1';
        end if;
    end if;
end process newHITMonopulser;

-- Miss signal generator
MISS_proc : process(clk, HIT_shadow, newTarget)
begin
	if rising_edge(clk) then
    	if newTarget='1' then
        	MISS<='1';
        end if;
        
        if HIT_shadow='1' then
        	MISS<='0';
        end if;
    end if;
end process MISS_proc ;

-- MISS Shadow
MISS_sha_proc: process(clk, MISS, newTarget)
begin
	if rising_edge(clk) then
    	MISS_shadow<='0';
    	if MISS='1' then
        	MISS_shadow<='1';
        end if;
    end if;
end process MISS_sha_proc;

-- MISS monopulser
MISS_mono_proc: process(clk, MISS)
begin
	if rising_edge(clk) then
        
        if MISS_shadow= MISS then
        	MISS_mono<='0';
        elsif MISS_shadow< MISS then
        	MISS_mono<='1';
        end if;
    end if;
    
end process MISS_mono_proc;

-- HITorMISS monopulser
HITorMISS_proc: process(clk, HIT_shadow, MISS)
begin
	if rising_edge(clk) then
    	HITorMISS <='0';
    	--if HIT_mono='1' or MISS_mono='1' then
        --	HITorMISS <='1';
    	--end if;
    end if;
end process HITorMISS_proc;

------------------------------------------------------
-- Shadows
------------------------------------------------------

all_Notes_Match  <= HIT_shadow;
Note_Matches_out <= Note_Matches;
addra_int <= to_integer(unsigned(addra));

end behavioral;

