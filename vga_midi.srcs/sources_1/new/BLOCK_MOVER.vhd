----------------------------------------------------------------------------------
-- Company: Dartmouth College
-- Engineer: Michael Del Sesto
-- 
-- Create Date: 05/29/2023 10:21:43 PM
-- Design Name: Keytar Hero, BlockMover
-- Module Name: MemBlockShiftCircuit - Behavioral
-- Project Name: Keytar Hero 23
-- Target Devices: Bayes 3, Yamaha SHS 200, Dell VGA
-- Tool Versions: 1
-- Description: Moves notes across the Pixel Boolean
-- 
-- Dependencies: System Shell, Pixel Boolean Memory IP Core
-- 
-- Revision:
-- Revision 0.01 - File Created
---------------------------------------------------------------------------------

------------------------------------------------------
-- Import Libraries
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

------------------------------------------------------
-- Declare Entity
------------------------------------------------------

entity MemBlockShiftCircuit is
	port(
    	clk            : in std_logic;                         -- 100 MHz system clock
        GameLogic      : in std_logic;                         -- monopulsed inversion of vVideo on to tell when to read from the Memory IP Core
        shiftNPixels_out  : in  std_logic_vector(2 downto 0);  -- number of pixels to shift (1=4 pixels, 2=8 pixels) based on timing system (not implemented)
        RData_in       : in std_logic_vector(639 downto 0);    -- read from memory block representing the VGA display
        TargetNote_in  : in std_logic_vector(23 downto 0);     -- read COE file memory brick
        WData_out      : out std_logic_vector(639 downto 0);   -- write to the memory block representing the VGA display
        adrVGA_out     : out std_logic_vector(8 downto 0);     -- address for the memory block representing the VGA display
        adrCOE_out     : out std_logic_vector(6 downto 0);     -- read from the COE file, 6 bits so max 8.5 min song
        endGame        : out std_logic;                        -- endGame signal for game start/pause system (not implemented)
        write_Now      : out std_logic                         -- write enable for the Pixel Boolean
    );
end MemBlockShiftCircuit;

------------------------------------------------------
-- Declare Architecture
------------------------------------------------------

architecture behavioral of MemBlockShiftCircuit is

------------------------------------------------------
-- Define Signals
------------------------------------------------------

-- for Note Speed FSM signals
signal shiftNPixels: integer:= 0;   -- for timing system where 1=4 pixels and 2=8 pixels (system not implemented, wired to 1)

-- for Game On Update FSM states
type state_type2 is (GameLogicWaitSt, StartSLTopst, SLTopBUF, SLTopBUF2, SLTopst, StartSLlowst,SLLowBUF, SLLowBUF2,SLLowst); -- states for fininte state machine
signal NS2, CS2: state_type2:= GameLogicWaitSt;  -- current and next state variables

-- for Game On FSM signals
signal ShiftLoad: std_logic:= '0'; -- tells the shifter to shift and load
signal adrVGA   : integer  :=  0 ; -- shadows the address to send to the memory block
signal adrCount, watchTopStaff, watchLowStaff, toLowStaff, toTopStaff: std_logic:='0'; -- signals for adress coutner

-- for Datapath
signal RData, WData: unsigned(639 downto 0):= (others => '0'); -- shadow the read data and the data to send out
signal adrCOE      : integer:=0;                               -- shadow COE file address
signal TargetNote  : unsigned(23 downto 0) := (others => '0'); -- shadow the target note
signal lowStaffTC, topStaffTC: std_logic:= '0';                -- signal to watch the top versus bottom staff

-- COE file counters
signal highCount: integer  := 0 ;                              -- to count to 100 pixels
signal oneNote  : std_logic:='0';                              -- for the address counter to know when to increment

-- timing signal
signal superWrite : std_logic:='0';                            -- internal writing variable

begin

------------------------------------------------------
-- Finite State Machine Processes
------------------------------------------------------

-- state updater for Note Speed FSM and Game On FMS(synchronous)
stateUpdate : process(clk)
begin
	if rising_edge(clk) then
    	-- update both FSM
        CS2 <= NS2;
    end if;
end process stateUpdate;

--FSM for shift cycle logic (synchronous on incTwoCount and resetTwoCount)
nextStateShiftCycle : process(clk, CS2, lowStaffTC, topStaffTC)
begin
    	-- defaults
    	NS2 <= CS2;
        
        -- case through states
        -- GameLogicWaitSt, StartSLTopst, SLTopst, SLTopst2, StartSLlowst, SLLowst, SLLowst2
        case (CS2) is
        	when GameLogicWaitSt =>
            	-- next state logic
                if GameLogic = '1' then
                	NS2 <= StartSLTopst;
                end if;
                
            when StartSLTopst =>
            	-- next state logic
                NS2 <= SLTopBUF;
                
            when SLTopBUF =>
                -- next state logic
                NS2 <= SLTopBUF2;
                
            when SLTopBUF2 =>
                -- next state logic
                NS2 <= SLTopst;
                
            when SLTopst =>
            	-- next state logic
                if topStaffTC = '0' then
                	NS2 <= SLTopBUF;
                else
                	NS2 <= StartSLlowst;
                end if;
                
            when StartSLlowst =>
            	-- next state logic
                NS2 <= SLLowBUF;
                
            when SLLowBUF =>
                -- next state logic
                NS2 <= SLLowBUF2;
                
            when SLLowBUF2 =>
                -- next state logic
                NS2 <= SLLowst;
            when SLLowst =>
            	-- next state logic
                if lowStaffTC = '0' then
                	NS2 <= SLLowBUF;
                else
                	NS2 <= GameLogicWaitSt;
                end if;
                
            when others =>
            	null;
        end case;
end process nextStateShiftCycle;

--FSM for shift cycle output logic (synchronous on incTwoCount and resetTwoCount)
outputLogicShiftCycle : process(clk, CS2, lowStaffTC, topStaffTC)
begin
	if rising_edge(clk) then
    	-- defaults
        toTopStaff <= '0';
        toLowStaff <= '0';
        adrCount <= '0';
        watchTopStaff <= watchTopStaff;
        watchLowStaff <= watchLowStaff;
        ShiftLoad <= '0';
        
        -- case through states
        -- GameLogicWaitSt, StartSLTopst, SLTopst, StartSLlowst, SLLowst
        case (CS2) is
        	when GameLogicWaitSt =>
                -- output logic
                watchTopStaff <= '0';
                watchLowStaff <= '0';
                
            when StartSLTopst =>
                -- output logic
                toTopStaff <= '1'; -- resets counter to 55
                watchTopStaff <= '0';
                watchLowStaff <= '0';

            when SLTopBUF =>
                -- output logic
                adrCount <= '1';
                
            when SLTopBUF2 =>
                -- output logic
                null;
 
            when SLTopst =>
                -- output logic
                watchTopStaff <= '1'; -- watches for adr to hit 175
                watchLowStaff <= '0';
                ShiftLoad <= '1';
                
            when StartSLlowst =>
                -- output logic
                toLowStaff <= '1'; -- resets counter to 175
                watchTopStaff <= '0';

            when SLLowBUF =>
                -- output logic
                adrCount <= '1';
                
            when SLLowBUF2 =>
                -- output logic
                null;
                
            when SLLowst =>
                -- output logic
                watchLowStaff <= '1'; -- watches for adr to hit 375
                watchTopStaff <= '0';
                ShiftLoad <='1';
                
            when others =>
                -- output logic
            	null;
            	
        end case;
    end if;
end process outputLogicShiftCycle;

------------------------------------------------------
-- Datapath Processes
------------------------------------------------------

-- datapath counter processess for the Shift Cycle FSM (syncrhonous on toTopStaff, toLowStaff, adrCount, watchTopStaff, and watchLowStaff)
adrCounter : process(clk, toTopStaff, toLowStaff, adrCount, watchTopStaff, watchLowStaff) 
begin
	if rising_edge(clk) then
    	-- defaults
        adrVGA <= adrVGA;
        topStaffTC <= '0';
        lowStaffTC  <= '0';
        
        -- counter logic
        if adrCount = '1' then
        	-- what to do if in the counting states
        	if    (toLowStaff = '0' and toTopStaff ='0') then
            	adrVGA <= adrVGA +1;
            elsif (toLowStaff = '1' and toTopStaff ='0') then
            	adrVGA <= 275; -- start of bottom staff
            elsif (toLowStaff = '0' and toTopStaff ='1') then
            	adrVGA <= 55; -- start of top staff
            elsif (toLowStaff = '1' and toTopStaff ='1') then
            	adrVGA <= adrVGA +1;
            end if;
        elsif adrCount = '0' then
        	-- what to do if in the not counting state
            if    (toLowStaff = '0' and toTopStaff ='0') then
            	adrVGA <= adrVGA;
            elsif (toLowStaff = '1' and toTopStaff ='0') then
            	adrVGA <= 275; -- start of bottom staff
            elsif (toLowStaff = '0' and toTopStaff ='1') then
            	adrVGA <= 55; -- start of top staff
            elsif (toLowStaff = '1' and toTopStaff ='1') then
            	adrVGA <= adrVGA;
            end if;
        end if;
        
        -- output logic
        if (watchTopStaff = '1' and adrVGA = 175) then -- use to be -2
        	topStaffTC <= '1';
        elsif (watchLowStaff = '1' and adrVGA = 395) then
        	lowStaffTC <= '1';
        end if; 
    end if;
end process adrCounter;

-- shift Circuit (synchonrous on ShiftLoad )
shiftCircuitPath : process(clk, ShiftLoad)
begin
    	--defaults
        superWrite<='0';
        
    	if ShiftLoad = '1' then
        	-- if time to shift
        	superWrite<='1';
            if shiftNPixels = 1 then
            -- if shifting 4 pixels

-- Left Hand E
if (adrVGA>=57 and adrVGA<65 and TargetNote(0) = '1') then
   WData <= "1111" & RData(639 downto 4);--"1111" & RData(639 downto 4);
elsif (adrVGA>=67 and adrVGA<75 and TargetNote(1) = '1') then -- Left Hand F
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=77 and adrVGA<85 and TargetNote(2) = '1') then -- Left Hand G
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=87 and adrVGA<95 and TargetNote(3) = '1') then -- Left Hand A
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=97 and adrVGA<105 and TargetNote(4) = '1') then -- Left Hand B
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=107 and adrVGA<115 and TargetNote(5) = '1') then -- Left Hand C
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=117 and adrVGA<125 and TargetNote(6) = '1') then -- Left Hand D
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=127 and adrVGA<135 and TargetNote(7) = '1') then -- Left Hand E
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=137 and adrVGA<145 and TargetNote(8) = '1') then -- Left Hand F
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=147 and adrVGA<155 and TargetNote(9) = '1') then -- Left Hand G
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=157 and adrVGA<165 and TargetNote(10) = '1') then -- Left Hand A
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=167 and adrVGA<175 and TargetNote(11) = '1') then -- Left Hand B
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=277 and adrVGA<285 and TargetNote(12) = '1') then -- Right Hand C
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=287 and adrVGA<295 and TargetNote(13) = '1') then -- Right Hand D
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=297 and adrVGA<305 and TargetNote(14) = '1') then -- Right Hand E
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=307 and adrVGA<315 and TargetNote(15) = '1') then -- Right Hand F
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=317 and adrVGA<325 and TargetNote(16) = '1') then -- Right Hand G
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=327 and adrVGA<335 and TargetNote(17) = '1') then -- Right Hand A
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=337 and adrVGA<345 and TargetNote(18) = '1') then -- Right Hand B
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=347 and adrVGA<355 and TargetNote(19) = '1') then -- Right Hand C
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=357 and adrVGA<365 and TargetNote(20) = '1') then -- Right Hand D
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=367 and adrVGA<375 and TargetNote(21) = '1') then -- Right Hand E
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=377 and adrVGA<385 and TargetNote(22) = '1') then -- Right Hand F
    WData <= "1111" & RData(639 downto 4);
elsif (adrVGA>=387 and adrVGA<395 and TargetNote(23) = '1') then --(adrVGA>=385 and adrVGA<395 and TargetNote(23) = '1') then -- Right Hand G
    WData <= "1111" & RData(639 downto 4);
else
    WData <= "0000" & RData(639 downto 4);
end if;

 elsif shiftNPixels = 2 then
            -- if shifting 8 pixels

if (adrVGA>=57 and adrVGA<65 and TargetNote(0) = '1') then
   WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=67 and adrVGA<75 and TargetNote(1) = '1') then -- Left Hand F
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=77 and adrVGA<85 and TargetNote(2) = '1') then -- Left Hand G
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=87 and adrVGA<95 and TargetNote(3) = '1') then -- Left Hand A
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=97 and adrVGA<105 and TargetNote(4) = '1') then -- Left Hand B
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=107 and adrVGA<115 and TargetNote(5) = '1') then -- Left Hand C
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=117 and adrVGA<125 and TargetNote(6) = '1') then -- Left Hand D
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=127 and adrVGA<135 and TargetNote(7) = '1') then -- Left Hand E
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=137 and adrVGA<145 and TargetNote(8) = '1') then -- Left Hand F
   WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=147 and adrVGA<155 and TargetNote(9) = '1') then -- Left Hand G
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=157 and adrVGA<165 and TargetNote(10) = '1') then -- Left Hand A
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=167 and adrVGA<175 and TargetNote(11) = '1') then -- Left Hand B
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=277 and adrVGA<285 and TargetNote(12) = '1') then -- Right Hand C
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=287 and adrVGA<295 and TargetNote(13) = '1') then -- Right Hand D
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=297 and adrVGA<305 and TargetNote(14) = '1') then -- Right Hand E
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=307 and adrVGA<315 and TargetNote(15) = '1') then -- Right Hand F
   WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=317 and adrVGA<325 and TargetNote(16) = '1') then -- Right Hand G
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=327 and adrVGA<335 and TargetNote(17) = '1') then -- Right Hand A
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=337 and adrVGA<345 and TargetNote(18) = '1') then -- Right Hand B
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=347 and adrVGA<355 and TargetNote(19) = '1') then -- Right Hand C
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=357 and adrVGA<365 and TargetNote(20) = '1') then -- Right Hand D
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=367 and adrVGA<375 and TargetNote(21) = '1') then -- Right Hand E
    WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=377 and adrVGA<385 and TargetNote(22) = '1') then -- Right Hand F
   WData <= "11111111" & RData(639 downto 8);
elsif (adrVGA>=387 and adrVGA<395 and TargetNote(23) = '1') then -- Right Hand G
    WData <= "11111111" & RData(639 downto 8);
else
    WData <= "00000000" & RData(639 downto 8);
end if;

        	end if;
    	end if;
end process shiftCircuitPath;

-- counts the number of pixels shifted
noteWidthCounter : process(clk, shiftNPixels, GameLogic)
begin
	if rising_edge(clk) then
    	-- defaults
        highCount <= highCount;
        oneNote <= '0';
        
        -- counting occurs if in ShiftToggleSt since off GameLogic
        -- counter
        if highCount >= 99 then --and oneNote='1' then
        	-- reset case
        	highCount <= 0;
        	oneNote <= '1';
        else
        	-- shifting to a 100 count
        	if    (shiftNPixels = 1 and GameLogic = '1') then
        		highCount <= highCount + 4;
        	elsif (shiftNPixels = 2 and GameLogic = '1') then
        		highCount <= highCount + 8;
        	end if;
        end if;
        
    end if;
end process noteWidthCounter;

-- counts the COE addresses
coeAdrCounter : process(clk)
begin
	endGame <= '0';
	if rising_edge(clk) then
    -- defaults
    	adrCOE<= adrCOE;
    	endGame <= '0';
    
    -- counter
    	if TargetNote = "111111111111111111111111" then
        	-- the game will end at the end of the song when the COE file has all notes as 1 (impossible to play)
    		adrCOE<= 0;
        	endGame <= '1';
    	else
    	    -- else, each time one note passes (100 pixel moves accomplished), the adddress will increment
        	if OneNote = '1' then
            	adrCOE<= adrCOE + 1;
            else
            	adrCOE<= adrCOE;
            end if;
    	end if;
    
    end if;
end process coeAdrCounter;

------------------------------------------------------
-- Shadows
------------------------------------------------------

RData      <= unsigned(RData_in); -- always reading
WData_out  <= std_logic_vector(WData);
adrVGA_out <= std_logic_vector(to_unsigned(adrVGA,9));
TargetNote <= unsigned(TargetNote_in);
adrCOE_out <= std_logic_vector(to_unsigned(adrCOE,7));
shiftNPixels <= to_integer(unsigned(shiftNPixels_out));
write_Now <= superWrite;--ShiftLoad; -- tells memory block when to write

end behavioral;


