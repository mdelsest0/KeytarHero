------------------------------------------------------
-- Import Libraries
------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

------------------------------------------------------
-- Declare Entity
------------------------------------------------------

entity scoringSystem_tb is
end scoringSystem_tb;

------------------------------------------------------
-- Declare Architecture
------------------------------------------------------

architecture testbench of scoringSystem_tb is

------------------------------------------------------
-- Define Component
------------------------------------------------------

	component scoringSystem
	port(
     	clk      : in std_logic;
        HIT, MISS, HITorMISS : in std_logic; -- monopulsed signals from the Key Comparator
        overDrive: out std_logic;
        points   : out std_logic_vector(7 downto 0) -- 8 bits for score since 255 notes max
    );
    end component;
    
------------------------------------------------------
-- Define Signals
------------------------------------------------------

    	signal clk      : std_logic:='0';
        signal HIT, MISS, HITorMISS : std_logic:='0'; -- monopulsed signals from the Key Comparator
        signal overDrive: std_logic:='0';
        signal points   : std_logic_vector(7 downto 0):=(others=>'0'); -- 8 bits for score since 255 notes max
    
 	constant clock_per  : time := 5 ns;     
    
    begin
    
------------------------------------------------------
-- Instantiate KeyCompareCircuit
------------------------------------------------------
    
    uut: scoringSystem port map(
    	clk => clk,
        HIT  => HIT,
		MISS => MISS,
        HITorMISS => HITorMISS,
        overDrive => overDrive,
        points => points
    );
    
------------------------------------------------------
-- Clock Process
------------------------------------------------------
    
    clk_proc : process
    begin
		clk <='0';
    	wait for clock_per/2;
    	clk <= '1';
    	wait for clock_per/2; 
	end process clk_proc;
    
------------------------------------------------------
-- Simulation
------------------------------------------------------

	stim_proc : process
    begin
    	wait for clock_per/2;
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per;
        HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '0';
        MISS <='1';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
                HIT <= '1';
        MISS <='0';
        HITorMISS <= '1';
        wait for clock_per; --- 1
        HIT <= '0';
        MISS <='0';
        HITorMISS <= '0';
        wait for clock_per*2;
        
        
    	wait; -- terminal wait
    end process stim_proc;
    
end testbench;
