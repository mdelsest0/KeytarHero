
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY SCI_Rx IS
--	generic (
--      clk_speed  : integer
--    );
    PORT ( 	clk         	: in  STD_LOGIC;
       		Rx				: in  STD_LOGIC;
            Rx_done			: out STD_LOGIC;
        	Parallel_out    : out STD_LOGIC_VECTOR(7 downto 0):=(others=>'0')
    );
END SCI_Rx;

ARCHITECTURE behavior of SCI_Rx is

--Baud Counter
 -- Constants
constant BAUD_PERIOD	: integer := 3200; --Number of clock cycles needed to achieve a baud rate of 31,250 given a 10 MHz clock (10 MHz / 31250 = 320)
signal Baud_Counter		: unsigned(11 downto 0) := (others => '0'); -- 12 bits are needed to represent 320 = 100,000,00/31250.
signal clr_baud 		: std_logic := '0';
signal tc_baud 			: std_logic := '0';
signal tc_baud2			: std_logic := '0';
-- Shift Register
signal Shift_Reg   		: std_logic_vector(9 downto 0) := (others => '1');
signal shift_en			: std_logic := '0';

-- Bit Counter
signal Bit_Count   : integer range 0 to 10 := 0;    -- Counter for the number of bits that have been shifted out
signal tc_bit : std_logic := '0';

-- FSM
type state_type is (sIdle, sWait_TC2, sWait, sShift, sDone);
signal CS, NS : state_type := sIdle;

signal DEBUG_States : integer:=0;

BEGIN

    --Datapath
    datapath : process(clk)
    begin
        if rising_edge(clk) then
            
            -- Baud Counter
            tc_baud <= '0';                          -- set TC low unless
            tc_baud2 <= '0';                         -- set TC/2 low unless
            Baud_Counter <= Baud_Counter + 1;        -- increment baud count unless
            if (Baud_Counter = BAUD_PERIOD-1) then   -- if hit period then
                tc_baud <= '1';                      -- send TC signal
                Baud_Counter <= (others => '0');     -- reset baud signal
            end if;
            if (Baud_Counter = BAUD_PERIOD/2) then  -- if baud count is half the baud period
            	tc_baud2 <= '1';                     -- send TC/2 signal
            end if;
            if clr_baud = '1' then
            	Baud_Counter <= (others => '0');
            end if;
            
            if shift_en = '1' then
                Shift_Reg <= Rx & Shift_Reg(9 downto 1);
                Bit_Count <= Bit_Count + 1;
            end if;
            if tc_bit = '1' then
                Parallel_Out <= Shift_Reg(8 downto 1);
                Bit_Count <= 0;
            end if;
            
            -- State Update
            CS <= NS;
       	end if;
    end process;
    
    
    --Controller
    NS_Process : process(CS, tc_baud2, tc_baud, Rx, Bit_Count, shift_en, tc_bit)
    begin
    
    	--Defaults
        Rx_done <= '0';
        shift_en <= '0';
        tc_bit <= '0';
        clr_baud <= '0';
        --Parallel_out <= (others => '0');
        NS <= CS;
        DEBUG_States<=0;
    
        case (CS) is
        		
            when sIdle 		=> 	if (Rx = '0') then      -- if Rx goes low, leave idle
            						NS <= sWait_TC2;
                                    clr_baud <= '1';
                                end if;
                                 DEBUG_States<=1;
                            
            when sWait_TC2 	=> 	if (tc_baud2 = '1') then
            						NS <= sShift;
                                    clr_baud <= '1';
                                end if;
                                DEBUG_States<=2;
            
            when sShift 	=> 	if (Bit_Count < 9) then
                                    shift_en <= '1';
            						NS <= sWait;
                                else
									shift_en <= '1';
                                	NS <= sDone;
                                end if;
                                DEBUG_States<=3;
                            
            when sWait 		=> 	if (tc_baud = '1') then
            						NS <= sShift;
                                end if;
                                DEBUG_States<=4;
                                
            when sDone		=> 	NS <= sIdle;
            					tc_bit <= '1';
                               	Rx_done <= '1';
                                DEBUG_States<=5;
                                    
		end case;
	end process NS_Process;                  
            
end behavior;
