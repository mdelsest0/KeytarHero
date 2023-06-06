-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY vga_driver IS
PORT ( 	clk		:	in	STD_LOGIC; --100 MHz clock
		V_sync	: 	out	STD_LOGIC;
		H_sync	: 	out	STD_LOGIC;
        video_on:	out	STD_LOGIC;
        hVideo_on : out STD_LOGIC;
        vVideo_on : out STD_LOGIC;
		pixel_x	:	out	STD_LOGIC_VECTOR(9 downto 0);
        pixel_y	:	out	STD_LOGIC_VECTOR(9 downto 0));
end vga_driver;


architecture behavior of vga_driver is

signal H_video_on : STD_LOGIC := '0';
signal V_video_on : STD_LOGIC := '0';
--Add your signals here
signal pixel_xCount : unsigned(9 downto 0) := (others => '0');
signal pixel_yCount : unsigned(9 downto 0) := (others => '0');


--VGA Constants (taken directly from VGA Class Notes)

constant left_border : integer := 48;
constant h_display : integer := 640;
constant right_border : integer := 16;
constant h_retrace : integer := 96;
constant HSCAN : integer := left_border + h_display + right_border + h_retrace; --number of PCLKs in an H_sync period


constant top_border : integer := 29;
constant v_display : integer := 480;
constant bottom_border : integer := 10;
constant v_retrace : integer := 2;
constant VSCAN : integer := top_border + v_display + bottom_border + v_retrace-1; --number of H_syncs in an V_sync period

BEGIN

pixel_generation_proc: process(clk)
begin
    if rising_edge(clk) then
        if pixel_xCount = HSCAN then 
            pixel_xCount <= (others => '0');
             if pixel_yCount = VSCAN then
                pixel_yCount <= (others => '0');
             else 
                 pixel_yCount <= pixel_yCount + 1;
            end if; 
        else
             pixel_xCount <= pixel_xCount + 1;
        end if; 
    end if;
end process pixel_generation_proc;

pixel_generation_out: process(pixel_xCount, pixel_yCount)
begin
    
    if pixel_xCount >= left_border and pixel_xCount < h_display+left_border then
        pixel_x <= std_logic_vector(pixel_xCount-left_border);
    else
        pixel_x <= (others => '0');
    end if;
    
    
    if pixel_yCount >= top_border and pixel_yCount < v_display+top_border then
        pixel_y <= std_logic_vector(pixel_yCount-top_border);
    else
        pixel_y <= (others => '0');
    end if;
end process pixel_generation_out;    

sync_proc : process(clk)
begin
	if rising_edge(clk) then
       --H_sync and H_video_on generation 
        
       if pixel_xCount >= HSCAN - h_retrace then
       		H_sync <= '0';
       else 
       		H_sync <= '1';  -- inactive during display and horizontal retrace 
       end if;
       
       --H_video_on update 
       if pixel_xCount >= left_border and pixel_xCount < (HSCAN-right_border-h_retrace) then 
       		H_video_on <= '1'; -- on during borders 
       else
       		H_video_on <= '0';
       end if;
         
       --Vertical sync and v_video_on
       if pixel_yCount >= (VSCAN-v_retrace)  then
       		V_sync <= '0';
       else 
       		V_sync <= '1';  -- inactive during display and horizontal retrace 
       end if;
       
       --V_video_on
       if pixel_yCount >= top_border and pixel_yCount < (VSCAN- bottom_border-v_retrace) then 
       		V_video_on <= '1'; -- on during borders 
       else
       		V_video_on <= '0';
       end if;
       
    end if;
end process sync_proc;



--pixel_x <= std_logic_vector(pixel_xCount);
--pixel_y <= std_logic_vector(pixel_yCount);
video_on <= H_video_on AND V_video_on; --Only enable video out when H_video_out and V_video_out are high. It's important to set the output to zero when you aren't actively displaying video. That's how the monitor determines the black level.
hVideo_on <= H_video_on;
vVideo_on <= V_video_on;
end behavior;
        
        
