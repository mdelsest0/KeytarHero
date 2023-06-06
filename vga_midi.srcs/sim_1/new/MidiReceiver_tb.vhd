library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SCI_Rx_TB is
end SCI_Rx_TB;

architecture behavior of SCI_Rx_TB is

  constant clk_period : time := 10 ns;
  
  signal clk         : std_logic := '0';
  signal Rx          : std_logic := '0';
  signal Rx_done     : std_logic;
  signal Parallel_out: std_logic_vector(7 downto 0);
  
  -- Component declaration
  component SCI_Rx

    port (
      clk           : in  std_logic;
      Rx            : in  std_logic;
      Rx_done       : out std_logic;
      Parallel_out  : out std_logic_vector(7 downto 0)
    );
  end component;

begin

  -- Instantiate the SCI_Rx module
  UUT: SCI_Rx
    port map (
      clk          => clk,
      Rx           => Rx,
      Rx_done      => Rx_done,
      Parallel_out => Parallel_out
    );

  -- Clock generation process
  clk_process: process
  begin
    -- Simulate for 1000 ns
      clk <= '0';
      wait for clk_period/2;
      clk <= '1';
      wait for clk_period/2;
  end process clk_process;

  -- Stimulus process
  stim_process: process
  begin
    Rx <= '1';
    wait for 50 * clk_period;  -- Wait for some initial time
    Rx <= '0';
    wait for 320 * clk_period;
    
    -- Simulate receiving data
    
    -- signal
    Rx <= '1';
    wait for 320 * clk_period;
    Rx <= '0';
    wait for 320 * clk_period;
    Rx <= '0';
    wait for 320 * clk_period;
    Rx <= '1';
    
    -- channel (ignore)
    wait for 320 * clk_period;
    Rx <= '1';
    wait for 320 * clk_period;
    Rx <= '0';
    wait for 320 * clk_period;
    Rx <= '1';
    wait for 320 * clk_period;
    Rx <= '1';
    
    -- stop bit
    wait for 320 * clk_period;
    Rx <= '1';
    wait for 420 * clk_period;
    
    -- signal
    Rx <= '1';
    wait for 320 * clk_period;
    Rx <= '1';
    wait for 320 * clk_period;
    Rx <= '1';
    wait for 320 * clk_period;
    Rx <= '0';
    
    -- channel (ignore)
    wait for 320 * clk_period;
    Rx <= '1';
    wait for 320 * clk_period;
    Rx <= '0';
    wait for 320 * clk_period;
    Rx <= '1';
    wait for 320 * clk_period;
    Rx <= '1';
    
    -- stop bit
    wait for 320 * clk_period;
    Rx <= '1';
    wait for 420 * clk_period;
    
    -- Add more test cases as needed
    
    wait;
  end process stim_process;

end behavior;


