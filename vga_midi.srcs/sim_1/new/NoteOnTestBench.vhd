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
    	clk            : in std_logic;
        GameLogic      : in std_logic;
        DEBUG_STATES1_out : out  std_logic_vector(4 downto 0));
end MemBlockShiftCircuit;

------------------------------------------------------
-- Declare Architecture
------------------------------------------------------

architecture behavioral of MemBlockShiftCircuit is

------------------------------------------------------
-- Define Signals
------------------------------------------------------

-- for Note Speed FSM states
type state_type is (ShiftWaitSt, ShiftToggleSt, ShiftOneSt, ShiftResetSt, ShiftTwoSt); -- states for fininte state machine
signal NS1, CS1: state_type:= ShiftWaitSt;
signal DEBUG_STATES1: std_logic_vector(4 downto 0):= (others => '0'); -- for debugging next state logic in EDA Playground

-- for Note Speed FSM signals
signal toggle, oneCountTC, twoCountTC: std_logic:= '0'; -- switch between 4 pixel and 8 pixel movements to get variable beats per minute
signal shiftNPixels: integer:= 0;

-- alpha and beta counter
signal oneCount, twoCount: unsigned(5 downto 0):=(others => '0'); -- will hold the counters for the 4 and 8 pixel shifters
signal incOneCount, incTwoCount, resetOneCount, resetTwocount: std_logic:= '0';
signal alpha, beta: integer:=0;

begin

------------------------------------------------------
-- Finite State Machine Processes
------------------------------------------------------

-- state updater for Note Speed FSM and Game On FMS(synchronous)
stateUpdate : process(clk)
begin
	if rising_edge(clk) then
    	-- update both FSM
    	CS1 <= NS1;
    end if;
end process stateUpdate;

-- output logic for Note On FMS (asynchronous, based on changing CS, Rx_done, and Parallel_Out)
nextStateLogic : process(clk, CS1,oneCountTC, twoCountTC,GameLogic )
begin
	if rising_edge(clk) then
    	-- defaults
        NS1 <= CS1;
        
		-- case logic through states
    	-- ShiftWaitSt, ShiftToggleSt, ShiftOneSt, ShiftResetSt, ShiftTwoSt
    case (CS1) is
    	when ShiftWaitSt =>
        	-- next state logic
            if GameLogic = '1' then
            	NS1 <= ShiftToggleSt;
            end if;
            
            -- output logic
            DEBUG_STATES1 <= "00001";
    	
        when ShiftToggleSt =>
        	-- next state logic
            if ((oneCountTC='0' and toggle ='0' and twoCountTC='1') or (oneCountTC='0' and toggle ='1')) then
            	NS1 <= ShiftOneSt;
            elsif (oneCountTC='0' and toggle='0' and twoCountTC='0' ) then
            	NS1 <= ShiftTwoSt;
            elsif (oneCountTC='1' and twoCountTC='1') then
            	NS1 <= ShiftResetSt;
                DEBUG_STATES1 <= "01110";
            end if;

    	when ShiftResetSt =>
        	-- next state logic
            NS1 <= ShiftOneSt;
            DEBUG_STATES1 <= "01111";

    	when ShiftOneSt =>
        	-- next state logic
            NS1 <= ShiftWaitSt;
            DEBUG_STATES1 <= "00100";
    	
        when ShiftTwoSt =>
        	-- next state logic
            NS1 <= ShiftWaitSt;
            DEBUG_STATES1 <= "00101";

         when others =>
         	 NS1 <= CS1;
              DEBUG_STATES1 <= "00111";
    	end case;
    end if;
end process nextStateLogic;


-- output logic for Note On FMS (asynchronous, based on changing CS, Rx_done, and Parallel_Out)
outputLogic : process(clk, oneCountTC, twoCountTC,GameLogic )
begin
	if rising_edge(clk) then
	-- defaults
    toggle <= toggle;
    shiftNPixels  <= shiftNPixels;
    incOneCount   <=  '0';
    incTwoCount   <=  '0';
    resetOneCount <=  '0';
    resetTwocount <=  '0';
    
    -- case logic through states
    -- ShiftWaitSt, ShiftToggleSt, ShiftOneSt, ShiftResetSt, ShiftTwoSt
    case (CS1) is
    	when ShiftWaitSt =>
        	null;
    	
        when ShiftToggleSt =>   
            -- output logic
            toggle <= not(toggle); -- flip between incrementing by 4 and 8 pixels in order to get variable beats per minute with smooth transitions (without using division)

    	when ShiftResetSt =>
            -- output logic
            resetOneCount <=  '0';
            resetTwocount <=  '0';
            toggle <= '0'; -- next will go to shift one state first

    	when ShiftOneSt =>
        	-- next state logic
            NS1 <= ShiftWaitSt;
    	
        when ShiftTwoSt =>
        	-- next state logic
            NS1 <= ShiftWaitSt;
            
         when others =>
         	null;
    end case;
    end if; -- end of rising edge
end process outputLogic;

-- alpha counter for counting the number of 4 pixel shifts (synchronous on incOneCount and resetOneCount)
alphaCounter: process(clk, incOneCount, resetOneCount)
begin
	-- defaults
    --oneCount <= oneCount;
    --oneCountTC <= oneCountTC;
    
	if rising_edge(clk) then
    	if resetOneCount = '1' then
        	oneCount<= "000000";
        elsif incOneCount='1' then
        	oneCount<= oneCount+1;
        else
        	oneCount <= oneCount;
        end if;
    end if;
    
    if oneCount = alpha then
    	oneCountTC <= '1';
    else
    	oneCountTC <= '0';
    end if;
end process alphaCounter;

-- beta counter for counting the number of 8 pixel shifts (synchronous on incTwoCount and resetTwoCount)
betaCounter: process(clk, incTwoCount, resetTwoCount)
begin
	-- defaults
    --twoCount <= twoCount;
    
	if rising_edge(clk) then
    	if resetTwoCount = '1' then
        	twoCount<= "000000";
        elsif incTwoCount='1' then
        	twoCount<= twoCount+1;
        else
        	twoCount <= twoCount;
        end if;
    end if;
    
    if twoCount = beta then
    	twoCountTC <= '1';
    else
    	twoCountTC <= '0';
    end if;
end process betaCounter;

-- shadows

--adrVGA_out <= std_logic_vector(to_unsigned(adrVGA,9));
--TargetNote <= unsigned(TargetNote_in);
--adrCOE_out <= std_logic_vector(to_unsigned(adrCOE,7));
--beatPerMin <= unsigned(beatPerMin_in);
DEBUG_STATES1_out <= DEBUG_STATES1;

end behavioral;