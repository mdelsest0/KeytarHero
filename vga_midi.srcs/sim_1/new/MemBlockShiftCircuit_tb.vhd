----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/29/2023 10:29:28 PM
-- Design Name: 
-- Module Name: MemBlockShiftCircuit_tb - Testbench
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
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

entity MemBlockShiftCircuit_tb is
end MemBlockShiftCircuit_tb;

------------------------------------------------------
-- Declare Architecture
------------------------------------------------------

architecture testbench of MemBlockShiftCircuit_tb is

------------------------------------------------------
-- Define Component
------------------------------------------------------

	component MemBlockShiftCircuit
	port(
    	clk                : in std_logic;                       -- system clock
        GameLogic          : in std_logic;                       -- monopulsed not(vVideoOn)
        shiftNPixels_out   : in  std_logic_vector(2 downto 0);   -- number of pixels to shift based on speed
        RData_in           : in std_logic_vector(639 downto 0);  -- read from memory block representing the VGA display
        TargetNote_in      : in std_logic_vector(23 downto 0);   -- read COE file memory brick
        WData_out          : out std_logic_vector(639 downto 0); -- write to the memory block representing the VGA display
        adrVGA_out         : out std_logic_vector(8 downto 0);   -- address for the memory block representing the VGA display
        adrCOE_out         : out std_logic_vector(6 downto 0);   -- read from the COE file, 6 bits so max 8.5 min song
        endGame            : out std_logic;                      -- game end signal
        write_Now          : out std_logic                       -- tells memory when to write
    );
    end component;
    
    component blk_mem_gen_0
    port(
        addra: in  std_logic_vector(8 downto 0);    -- memory block address in (479 to 0)
        clka:  in  std_logic;                       -- system clock
        dina:  in  std_logic_vector(639 downto 0);  -- data in
        douta: out std_logic_vector(639 downto 0);  -- data out
        ena:   in  std_logic;                       -- allows addressing
        wea:   in  std_logic_vector(0 downto 0)     -- allows writing
    );
    end component;
    
    component DetermineHit
    port(
        clk            :  in std_logic;
        wea            :  in  std_logic_vector(0 downto 0) ;
        dina           :  in  std_logic_vector(639 downto 0);  -- data in
        addra          :  in  std_logic_vector(8 downto 0);     -- memory block address in (479 to 0)
        HitNote        :  out std_logic_vector(23 downto 0)
    );
    end component;
    
    component KeyCompareCircuit
    port(
    	clk          : in std_logic;
        Target_Note_IN  : in std_logic_vector(23 downto 0); -- from COE file and VGA display circuit, positions of 24 notes ot be projected on the staff
        addra        : in std_logic_vector(8 downto 0);
        Parallel_Out : in std_logic_vector(7 downto 0); -- output from receiver
        Rx_done      : in std_logic; -- from reciever
        OverDrive    : out std_logic; -- tells score if overdrive was hit
        HIT          : out std_logic; -- tells VGA if all notes were hit
        Note_Matches_out : out std_logic_vector(23 downto 0):=(others=>'0'); -- tells which notes were correctly hit ('1' = HIT, '0' = Miss, '1' otherwise)
        HIT_mono, MISS_mono,HITorMISS :out std_logic:='0'
    );
    end component;
    
    component scoringSystem
    port(
        clk      : in std_logic;
        HIT, MISS: in std_logic; -- monopulsed signals from the Key Comparator
        overDrive: out std_logic;
        points   : out std_logic_vector(7 downto 0) -- 8 bits for score since 255 notes max
    );
    end component;
    
    component BeatsPerMinCircuit
    port(
    	clk            : in std_logic;
        GameLogic      : in std_logic;
        beatsPerMin_in : in std_logic_vector(6 downto 0);
        shiftNPixels_out  : out  std_logic_vector(2 downto 0)
    );
    end component;
    
------------------------------------------------------
-- Define Signals
------------------------------------------------------

    	signal clk               : std_logic:= '0';                                  -- system clock
        signal GameLogic         : std_logic:='0';                                   -- monopulsed  not(vVideoON)
        signal shiftNPixels      : std_logic_vector(2 downto 0):="001";              -- for testing, shift 4 pixels (1=4 pixels, 2=8pixels)
        signal RData             : std_logic_vector(639 downto 0):=(others => '0');  -- read from memory block representing the VGA display
        signal TargetNote        : std_logic_vector(23 downto 0):=(others => '0');   -- read COE file memory brick
        signal WData             : std_logic_vector(639 downto 0):=(others => '0');  -- write to the memory block representing the VGA display
        signal adrVGA            : std_logic_vector(8 downto 0):=(others => '0');    -- address for the memory block representing the VGA display
        signal adrCOE            : std_logic_vector(6 downto 0):=(others => '0');    -- read from the COE file, 6 bits so max 8.5 min song
        signal endGame           : std_logic:= '0';                                  -- game end signal
        signal ena_sig           : std_logic:= '1';                                  -- address memory block
        signal wea_sig           : std_logic:= '0';                                  -- signal for writing
    
 	    constant clock_per  : time := 10 ns;                                         --  100 MHz clock
    
        signal slow_clk       : std_logic:='0';
        signal slow_clk_count : unsigned(1 downto 0):= (others => '0');
        
        signal HitNote        : std_logic_vector(23 downto 0):=(others => '0');   -- from MIDI to key compare
        signal NoteMatchesOut : std_logic_vector(23 downto 0):=(others => '0');   -- from key compare to VGA
    
        signal fakeKey: std_logic_vector(7 downto 0):=(others => '1');
        signal fakeRx_done: std_logic:='0';
        
        signal HIT        : std_logic:='0'; -- key compare to scoring system
        signal MISS       : std_logic:='0'; -- key compare to scoring system
        signal overDrive  : std_logic:='0'; -- key compare to scoring system
        signal points     : std_logic_vector(7 downto 0); -- key compare to scoring system
  
        signal beatsPerMin : std_logic_vector(6 downto 0):="0111100"; -- fake beats per minute speed input
    
    begin
    
------------------------------------------------------
-- Instantiate MemBlockShiftCircuit
------------------------------------------------------
    
    uut: MemBlockShiftCircuit port map(
    	clk               => clk,           -- system clock
        GameLogic         => GameLogic,     -- monopulsed signal to specific when not(vVideo_on) = '1'
        shiftNPixels_out  => shiftNPixels,  -- number of pixels to shift from speed circuit
        RData_in          => RData,         -- data in from the boolean memory block
        TargetNote_in     => TargetNote,    -- data in from the COE file
        WData_out         => WData,         -- data to write to the memory block when wea is high
        adrVGA_out        => adrVGA,        -- boolean memory block address
        adrCOE_out        => adrCOE,        -- ignore now, address for COE file with targets
        endGame           => open,           -- open for now, signal for menu logic
        write_Now         => wea_sig
    );
    
    ram_block: blk_mem_gen_0 port map(
    	clka   => clk,               -- clock for block memory must be same as write clock
        douta  => RData,             -- data output line, ena must be high
        dina   => WData,             -- data input line, wea and ena must both be high
        addra  => adrVGA,            -- address to read and write from
        ena    => ena_sig,           -- allows for addressing
        wea(0) => wea_sig            -- allows for writing
    );
    
    noteDet :  DetermineHit port map(
        clk  => clk,
        wea(0)  => wea_sig,
        dina => WData,
        addra  => adrVGA,
        HitNote => HitNote 
    );
    
    cmpRoute : KeyCompareCircuit port map(
        clk              => clk,
        Target_Note_IN   => HitNote,
        addra            => adrVGA, 
        Parallel_Out     => fakeKey,
        Rx_done          => fakeRx_done,
        OverDrive        => open,
        HIT              => open,
        Note_Matches_out => NoteMatchesOut,
        HIT_mono         => HIT,
        MISS_mono        => open,
        HITorMISS        => open
    );
    
    scoreSys : scoringSystem port map(
        clk       => clk,
        HIT       => HIT,
        MISS      => MISS,
        overDrive => overDrive,
        points    => points
    );
    
    beatsPerMinSystem : BeatsPerMinCircuit port map(
        clk              => clk,
        GameLogic        => GameLogic,
        beatsPerMin_in   => beatsPerMin, 
        shiftNPixels_out => shiftNPixels
    );
    
------------------------------------------------------
-- Clock Process
------------------------------------------------------
    
    clk_proc : process
    begin
		clk <= '0';    wait for clock_per/2;
    	clk <= '1';    wait for clock_per/2; 
	end process clk_proc;
    
------------------------------------------------------
-- Simulation
------------------------------------------------------
    slowClockProc : process(clk)
    begin
    if rising_edge(clk) then
        slow_clk_count <= slow_clk_count+1;
        if slow_clk_count="11" then
            slow_clk_count <="00";
            slow_clk <= not(slow_clk);
        end if;
    end if;

end process slowClockProc;


	stim_proc : process
    begin
        wait for clock_per*2;
        wait for clock_per/2;
        TargetNote(23) <= '1';      -- set the note to a right hand G (pixels (385 to 395)
        
        -- monopulse GameLogic
        GameLogic <= '1';
        wait for clock_per*10;
        GameLogic <= '0';
        
        -- fake key down
        fakeKey <= "10010000";
        fakeRx_done <='1';
        wait for clock_per;
        fakeRx_done <='0';
        fakeKey <= "11111111";
        wait for clock_per;
        
        -- fake key right G
        fakeKey <= "01011011";
        fakeRx_done <='1';
        wait for clock_per;
        fakeRx_done <='0';
        fakeKey <= "11111111";
        wait for clock_per;
        
        -- fake velocity
        fakeKey <= "01111111";
        fakeRx_done <='1';
        wait for clock_per;
        fakeRx_done <='0';
        fakeKey <= "11111111";
        
        wait for 5 us;
        GameLogic <= '1';
        wait for clock_per;
        GameLogic <= '0';
        
         wait for 10 us;
        GameLogic <= '1';
        wait for clock_per;
        GameLogic <= '0';
        
         wait for 10 us;
        GameLogic <= '1';
        wait for clock_per;
        GameLogic <= '0';
        
        TargetNote(23) <= '0';
        TargetNote(22) <= '1';
        
         wait for 10 us;
        GameLogic <= '1';
        wait for clock_per;
        GameLogic <= '0';
        
        wait for 10 us;
        GameLogic <= '1';
        wait for clock_per;
        GameLogic <= '0';
        
        wait for 10 us;
        GameLogic <= '1';
        wait for clock_per;
        GameLogic <= '0';
        
        -- extra wait
        wait for 10 us;
        GameLogic <= '1';
        wait for clock_per;
        GameLogic <= '0';
        
         -- fake key down
        fakeKey <= "10010000";
        fakeRx_done <='1';
        wait for clock_per;
        fakeRx_done <='0';
        fakeKey <= "11111111";
        wait for clock_per;
        
        -- fake key right F
        fakeKey <= "01011001";
        fakeRx_done <='1';
        wait for clock_per;
        fakeRx_done <='0';
        fakeKey <= "11111111";
        wait for clock_per;
        
        -- fake velocity
        fakeKey <= "01111111";
        fakeRx_done <='1';
        wait for clock_per;
        fakeRx_done <='0';
        fakeKey <= "11111111";
        
        wait for 10 us;
        GameLogic <= '1';
        wait for clock_per;
        GameLogic <= '0';
        
        wait for 10 us;
        GameLogic <= '1';
        wait for clock_per;
        GameLogic <= '0';
        
    	wait; -- terminal wait
    end process stim_proc;
    
end testbench;