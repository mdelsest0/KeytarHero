----------------------------------------------------------------------------------
-- Company: Dartmouth College
-- Engineer: Michael Del Sesto
-- 
-- Create Date: 05/29/2023 10:21:43 PM
-- Design Name: Keytar Hero, DetermineHit
-- Module Name: DetermineHIT - Behavioral
-- Project Name: Keytar Hero 23
-- Target Devices: Bayes 3, Yamaha SHS 200, Dell VGA
-- Tool Versions: 1
-- Description: Pulls target note from pixel 40 of the screen.
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

entity DetermineHIT is
	port(
    	clk            :  in std_logic;                        -- system clock
        wea            :  in  std_logic_vector(0   downto 0);  -- write enable  
        dina           :  in  std_logic_vector(639 downto 0);  -- data in
        addra          :  in  std_logic_vector(8   downto 0);  -- memory block address in (479 to 0)
        seeOnTarget_out :  out std_logic_vector(23 downto 0):=(others=>'0')   -- hit note bits are high if notes on the screen are showing at the target
    );
end DetermineHIT;

------------------------------------------------------
-- Declare Architecture
------------------------------------------------------

architecture behavioral of DetermineHIT is

------------------------------------------------------
-- Define Signals
------------------------------------------------------

signal adrVGA : integer:=0;                                    -- internal counter for the VGA address
signal HitNote:  std_logic_vector(23 downto 0):=(others=>'0'); -- internal signal for seeOnTarget_out, only updates when the counter is over 390

begin

------------------------------------------------------
-- Datapath Processes
------------------------------------------------------

determineHit_proc : process(clk)
Begin
    -- default
    HitNote <= HitNote;

              If rising_edge(clk) then -- in simulation, check that wea(0) only changes on rising edge
                 If wea(0)='1' then  -- if writing to the memory, get the address being written and the value being written
                        If dina(40)='1' then -- change to dina(630) for simulation testing, seeing if Boolean is high at the target

                                                         

                                                         -- if writing to the memory and taget is high

                                                          -- then determine which of the notes is on based on the row being selected

                                                          -- and turn that note on

 

                                                          -- consider al least one note is being hit (at least one '1') then user must tap that note the MIDI

                                                          -- so HitNote is 1 in a location and if that note is not tapped on the MIDI

                                                          -- the note should be red

                                                          -- this case was never happening (5/30/23), it would keep HitNote all zeros regardless of what was at target

 

                                                         if (adrVGA>=56 and adrVGA<64) then

                                                            HitNote(0) <= '1';

                                                         elsif (adrVGA>=66 and adrVGA<74) then -- Left Hand F

                                                             HitNote(1) <= '1';

                                                         elsif (adrVGA>=76 and adrVGA<84) then -- Left Hand G

                                                             HitNote(2) <= '1';

                                                         elsif (adrVGA>=86 and adrVGA<94) then -- Left Hand A

                                                             HitNote(3) <= '1';

                                                         elsif (adrVGA>=96 and adrVGA<104) then -- Left Hand B

                                                             HitNote(4) <= '1';

                                                         elsif (adrVGA>=106 and adrVGA<114) then -- Left Hand C

                                                             HitNote(5) <= '1';

                                                         elsif (adrVGA>=116 and adrVGA<124) then -- Left Hand D

                                                             HitNote(6) <= '1';

                                                         elsif (adrVGA>=126 and adrVGA<134) then -- Left Hand E

                                                             HitNote(7) <= '1';

                                                         elsif (adrVGA>=136 and adrVGA<144) then -- Left Hand F

                                                           HitNote(8) <= '1';

                                                         elsif (adrVGA>=146 and adrVGA<154) then -- Left Hand G

                                                           HitNote(9) <= '1';

                                                         elsif (adrVGA>=156 and adrVGA<164) then -- Left Hand A

                                                             HitNote(10) <= '1';

                                                         elsif (adrVGA>=166 and adrVGA<174) then -- Left Hand B

                                                             HitNote(11) <= '1';

                                                         elsif (adrVGA>=276 and adrVGA<284) then -- Right Hand C

                                                            HitNote(12) <= '1';

                                                         elsif (adrVGA>=286 and adrVGA<294) then -- Right Hand D

                                                           HitNote(13) <= '1';

                                                         elsif (adrVGA>=296 and adrVGA<304) then -- Right Hand E

                                                            HitNote(14) <= '1';

                                                         elsif (adrVGA>=306 and adrVGA<314) then -- Right Hand F

                                                            HitNote(15) <= '1';

                                                         elsif (adrVGA>=316 and adrVGA<324) then -- Right Hand G

                                                            HitNote(16) <= '1';

                                                         elsif (adrVGA>=326 and adrVGA<334) then -- Right Hand A

                                                            HitNote(17) <= '1';

                                                         elsif (adrVGA>=336 and adrVGA<344) then -- Right Hand B

                                                            HitNote(18) <= '1';

                                                         elsif (adrVGA>=346 and adrVGA<354) then -- Right Hand C

                                                            HitNote(19) <= '1';

                                                         elsif (adrVGA>=356 and adrVGA<364) then -- Right Hand D

                                                          HitNote(20) <= '1';

                                                         elsif (adrVGA>=366 and adrVGA<374) then -- Right Hand E

                                                            HitNote(21) <= '1';

                                                         elsif (adrVGA>=376 and adrVGA<384) then -- Right Hand F

                                                            HitNote(22) <= '1';

                                                         elsif (adrVGA>=386 and adrVGA<393) then -- Right Hand G

                                                           HitNote(23) <= '1';

                                                         end if;

 

                                           Else

                                                          -- if writing to the memory and taget is low

                                                          -- then determine which of the notes is on based on the row being selected

                                                          -- indicate that the note is low at the target

 

                                                          -- consider no notes are being hit (all zeros) then user can tap any note on the MIDI and not be penalized

                                                          -- so HitNote is all zeros and the bar is green

                                                          -- this case was what was happening regardless of what was at the target during 5/30/23

 

                                                         if (adrVGA>=56 and adrVGA<64) then

                                                            HitNote(0) <= '0';

                                                         elsif (adrVGA>=66 and adrVGA<74) then -- Left Hand F

                                                             HitNote(1) <= '0';

                                                         elsif (adrVGA>=76 and adrVGA<84) then -- Left Hand G

                                                             HitNote(2) <= '0';

                                                         elsif (adrVGA>=86 and adrVGA<94) then -- Left Hand A

                                                             HitNote(3) <= '0';

                                                         elsif (adrVGA>=96 and adrVGA<104) then -- Left Hand B

                                                             HitNote(4) <= '0';

                                                         elsif (adrVGA>=106 and adrVGA<114) then -- Left Hand C

                                                             HitNote(5) <= '0';

                                                         elsif (adrVGA>=116 and adrVGA<124) then -- Left Hand D

                                                             HitNote(6) <= '0';

                                                         elsif (adrVGA>=126 and adrVGA<134) then -- Left Hand E

                                                             HitNote(7) <= '0';

                                                         elsif (adrVGA>=136 and adrVGA<144) then -- Left Hand F

                                                           HitNote(8) <= '0';

                                                         elsif (adrVGA>=146 and adrVGA<154) then -- Left Hand G

                                                           HitNote(9) <= '0';

                                                         elsif (adrVGA>=156 and adrVGA<164) then -- Left Hand A

                                                             HitNote(10) <='0';

                                                         elsif (adrVGA>=166 and adrVGA<174) then -- Left Hand B

                                                             HitNote(11) <= '0';

                                                         elsif (adrVGA>=276 and adrVGA<284) then -- Right Hand C

                                                            HitNote(12) <= '0';

                                                         elsif (adrVGA>=286 and adrVGA<294) then -- Right Hand D

                                                           HitNote(13) <= '0';

                                                         elsif (adrVGA>=296 and adrVGA<304) then -- Right Hand E

                                                            HitNote(14) <= '0';

                                                         elsif (adrVGA>=306 and adrVGA<314) then -- Right Hand F

                                                            HitNote(15) <= '0';

                                                         elsif (adrVGA>=316 and adrVGA<324) then -- Right Hand G

                                                            HitNote(16) <= '0';

                                                         elsif (adrVGA>=326 and adrVGA<334) then -- Right Hand A

                                                            HitNote(17) <= '0';

                                                         elsif (adrVGA>=336 and adrVGA<344) then -- Right Hand B

                                                            HitNote(18) <= '0';

                                                         elsif (adrVGA>=346 and adrVGA<354) then -- Right Hand C

                                                            HitNote(19) <= '0';

                                                         elsif (adrVGA>=356 and adrVGA<364) then -- Right Hand D

                                                          HitNote(20) <= '0';

                                                         elsif (adrVGA>=366 and adrVGA<374) then -- Right Hand E

                                                            HitNote(21) <= '0';

                                                         elsif (adrVGA>=376 and adrVGA<384) then -- Right Hand F

                                                            HitNote(22) <= '0';

                                                         elsif (adrVGA>=386 and adrVGA<393) then -- Right Hand G

                                                           HitNote(23) <= '0';

                                                         end if;

 

                                           End if;

                             End if;

              End if;  

End process determineHit_proc;

-- synchronous process to push the notes on the target to the output
hitPush : process(clk)
begin
    if rising_edge(clk) then
        
        if adrVGA = 390 then -- was 396
            seeOnTarget_out <=HitNote;
        end if;
    end if;
end process hitPush;

------------------------------------------------------
-- Shadows
------------------------------------------------------

adrVGA <= to_integer(unsigned(addra));

end behavioral;



