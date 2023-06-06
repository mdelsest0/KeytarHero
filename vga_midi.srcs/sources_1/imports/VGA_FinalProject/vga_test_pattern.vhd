----------------------------------------------------------------------------------
-- Engineer:		J. Graham Keggi
-- 
-- Create Date:	15:10:36 07/12/2010 
-- Module Name:	vga_test_pattern - Behavioral
-- Target Device:	Spartan3E-500 Nexys2
--
-- Description:	Reads in current pixel X and Y as 2 10-bit vectors and supplys
--						an 8-bit color code consistent with the VGA test pattern
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity vga_test_pattern is
	port(pixel_x_vga,pixel_y_vga		: in std_logic_vector(9 downto 0);
		video_on_vga,pclk					: in std_logic;
		color							: out std_logic_vector(7 downto 0));
end vga_test_pattern;

architecture Behavioral of vga_test_pattern is

    
    constant RED : std_logic_vector(7 downto 0) := "11100000";
    constant GREEN : std_logic_vector(7 downto 0) := "00011100";
    constant BLUE : std_logic_vector(7 downto 0) := "00000011";
    constant CYAN : std_logic_vector(7 downto 0) := "00011111";
    constant YELLOW : std_logic_vector(7 downto 0) := "11111100";
    constant PURPLE : std_logic_vector(7 downto 0) := "11100011";
    constant WHITE : std_logic_vector(7 downto 0) := "11011011";
    constant BLACK : std_logic_vector(7 downto 0) := "00000000";
    constant GRAY0 : std_logic_vector(7 downto 0) := "01001001";
    constant GRAY1 : std_logic_vector(7 downto 0) := "10010010";
    constant DARK_BLU : std_logic_vector(7 downto 0) := "00001010";
    constant DARK_PUR : std_logic_vector(7 downto 0) := "01000010";
begin

	-- set the colors based on the current pixel
	process(pclk)
	begin
		-- large vertical color bands, evenly spaced horizontally, 320px vertically
		-- Gray, yellow, cyan, green, purple, red, blue
      if rising_edge(pclk) then
		if video_on_vga = '1' then 
			if (unsigned(pixel_x_vga) >= 0) and (unsigned(pixel_x_vga) < 92) and (unsigned(pixel_y_vga) >= 0) and (unsigned(pixel_y_vga) < 320) then
				color <= GRAY1;
			elsif (unsigned(pixel_x_vga) >= 92) and (unsigned(pixel_x_vga) < 184) and (unsigned(pixel_y_vga) >= 0) and (unsigned(pixel_y_vga) < 320) then
				color <= YELLOW;
			elsif (unsigned(pixel_x_vga) >= 184) and (unsigned(pixel_x_vga) < 276) and (unsigned(pixel_y_vga) >= 0) and (unsigned(pixel_y_vga) < 320) then
				color <= CYAN;
			elsif (unsigned(pixel_x_vga) >= 276) and (unsigned(pixel_x_vga) < 368) and (unsigned(pixel_y_vga) >= 0) and (unsigned(pixel_y_vga) < 320) then
				color <= GREEN;
			elsif (unsigned(pixel_x_vga) >= 368) and (unsigned(pixel_x_vga) < 460) and (unsigned(pixel_y_vga) >= 0) and (unsigned(pixel_y_vga) < 320) then
				color <= PURPLE;
			elsif (unsigned(pixel_x_vga) >= 460) and (unsigned(pixel_x_vga) < 552) and (unsigned(pixel_y_vga) >= 0) and (unsigned(pixel_y_vga) < 320) then
				color <= RED;
			elsif (unsigned(pixel_x_vga) >= 552) and (unsigned(pixel_x_vga) <= 640) and (unsigned(pixel_y_vga) >= 0) and (unsigned(pixel_y_vga) < 320) then
				color <= BLUE;
				
			-- small colored rectangles from 320->360 pixels, evenly spaced horizontally
			-- blue, black, purple, black, cyan, black, gray
			elsif (unsigned(pixel_x_vga) >= 0) and (unsigned(pixel_x_vga) < 92) and (unsigned(pixel_y_vga) >= 320) and (unsigned(pixel_y_vga) < 360) then
				color <= BLUE;
			elsif (unsigned(pixel_x_vga) >= 92) and (unsigned(pixel_x_vga) < 184) and (unsigned(pixel_y_vga) >= 320) and (unsigned(pixel_y_vga) < 360) then
				color <= BLACK;
			elsif (unsigned(pixel_x_vga) >= 184) and (unsigned(pixel_x_vga) < 276) and (unsigned(pixel_y_vga) >= 320) and (unsigned(pixel_y_vga) < 360) then
				color <= PURPLE;
			elsif (unsigned(pixel_x_vga) >= 276) and (unsigned(pixel_x_vga) < 368) and (unsigned(pixel_y_vga) >= 320) and (unsigned(pixel_y_vga) < 360) then
				color <= BLACK;
			elsif (unsigned(pixel_x_vga) >= 368) and (unsigned(pixel_x_vga) < 460) and (unsigned(pixel_y_vga) >= 320) and (unsigned(pixel_x_vga) < 360) then
				color <= CYAN;
			elsif (unsigned(pixel_x_vga) >= 460) and (unsigned(pixel_x_vga) < 552) and (unsigned(pixel_y_vga) >= 320) and (unsigned(pixel_y_vga) < 360) then
				color <= BLACK;
			elsif (unsigned(pixel_x_vga) >= 552) and (unsigned(pixel_x_vga) <= 640) and (unsigned(pixel_y_vga) >= 320) and (unsigned(pixel_y_vga) < 360) then
				color <= GRAY1;
				
			-- bottom large blocks
			elsif (unsigned(pixel_x_vga) >= 0) and (unsigned(pixel_x_vga) < 114) and (unsigned(pixel_y_vga) >= 360) and (unsigned(pixel_y_vga) <= 480) then
				color <= DARK_BLU;
			elsif (unsigned(pixel_x_vga) >=114) and (unsigned(pixel_x_vga) < 228) and (unsigned(pixel_y_vga) >= 360) and (unsigned(pixel_y_vga) <= 480) then
				color <= WHITE;
			elsif (unsigned(pixel_x_vga) >= 228) and (unsigned(pixel_x_vga) < 342) and (unsigned(pixel_y_vga) >= 360) and (unsigned(pixel_y_vga) <= 480) then
				color <= DARK_PUR;
			elsif (unsigned(pixel_x_vga) >= 342) and (unsigned(pixel_x_vga) < 460) and (unsigned(pixel_y_vga) >= 360) and (unsigned(pixel_y_vga) <= 480) then
				color <= GRAY0;
			elsif (unsigned(pixel_x_vga) >= 460) and (unsigned(pixel_x_vga) < 491) and (unsigned(pixel_y_vga) >= 360) and (unsigned(pixel_y_vga) <= 480) then
				color <= BLACK;
			elsif (unsigned(pixel_x_vga) >= 491) and (unsigned(pixel_x_vga) < 521) and (unsigned(pixel_y_vga) >= 360) and (unsigned(pixel_y_vga) <= 480) then
				color <= GRAY0;
			elsif (unsigned(pixel_x_vga) >= 521) and (unsigned(pixel_x_vga) < 552) and (unsigned(pixel_y_vga) >= 360) and (unsigned(pixel_y_vga) <= 480) then
				color <= GRAY1;
			elsif (unsigned(pixel_x_vga) >= 552) and (unsigned(pixel_x_vga) <= 640) and (unsigned(pixel_y_vga) >= 360) and (unsigned(pixel_y_vga) <= 480) then
				color <= GRAY0;
				
			-- black for any gaps, shouldn't be any
			else
				color <= BLACK;
			end if;

		else 
			color <= BLACK;
		end if;
	end if;
	end process;

end Behavioral;

