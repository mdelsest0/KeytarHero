-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity vga_test_pattern_shell_tb is
end vga_test_pattern_shell_tb;

architecture testbench of vga_test_pattern_shell_tb is

component vga_test_pattern_shell is
    Port (
        clk_exp_port,  SCI_In          : in std_logic;
        V_syncShell, H_syncShell       : out std_logic;
        vga_red, vga_green, vga_blue   : out std_logic_vector(3 downto 0));
end component;

signal 	clk_exp_port		:	STD_LOGIC := '0'; --100 MHz clock
signal	V_syncShell	        : 	STD_LOGIC := '0';
signal	H_syncShell	        : 	STD_LOGIC := '0';
signal	vga_red             :	std_logic_vector(3 downto 0) := (others => '0');
signal	vga_green	        :	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal	vga_blue	        :	STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal SCI_In               :   std_logic := '0';

begin

uut : vga_test_pattern_shell PORT MAP(
		clk_exp_port  => clk_exp_port,
		V_syncShell => V_syncShell,
    	SCI_In => SCI_In,
        H_syncShell => H_syncShell,
        vga_red => vga_red,
		vga_green => vga_green,
        vga_blue => vga_blue);
    
    
clk_proc : process
BEGIN

  clk_exp_port <= '0';
  wait for 5 ns;   

  clk_exp_port <= '1';
  wait for 5 ns;

END PROCESS clk_proc;

stim_proc : process
begin

--    wait for 10ns;
--    hit_ex_port <= '0';             wait for 30ns;
--    hit_ex_port <= '1';             wait for 40ns;
 
--    hit_ex_port <= '0';             wait for 20ns;
--    hit_ex_port <= '1';             wait for 50ns;
    
--    hit_ex_port <= '0';             wait for 20ns;
--    hit_ex_port <= '1';             wait for 50ns;
    
--    hit_ex_port <= '0';             wait for 20ns;
--    hit_ex_port <= '1';             wait for 50ns;
    
--    hit_ex_port <= '0';             wait for 20ns;
--    hit_ex_port <= '1';             wait for 50ns;

	
    wait;
end process stim_proc;
end testbench;