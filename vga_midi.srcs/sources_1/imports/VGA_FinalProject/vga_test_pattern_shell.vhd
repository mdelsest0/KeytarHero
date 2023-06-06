--=============================================================================
--Library Declarations:
--=============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;
library UNISIM;
use UNISIM.VComponents.all;

--=============================================================================
--Entity Declaration:
--=============================================================================
entity vga_test_pattern_shell is
    Port (clk_exp_port, SCI_in                   : in std_logic;
        V_syncShell, H_syncShell                 : out std_logic;
        vga_red, vga_green, vga_blue             : out std_logic_vector(3 downto 0));
        
        
end vga_test_pattern_shell;

architecture structural of vga_test_pattern_shell is 

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- COMPONENT DECLARATIONS 
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

component clock_generation is
    port( input_clk_port : in std_logic;
          system_clk_port : out std_logic);
end component;

-- circuit to shift the boolean memory block
component MemBlockShiftCircuit is
	port(clk            : in std_logic;
        GameLogic      : in std_logic;
        shiftNPixels_out  : in  std_logic_vector(2 downto 0);
        RData_in       : in std_logic_vector(639 downto 0); -- read from memory block representing the VGA display
        TargetNote_in  : in std_logic_vector(23 downto 0); -- read COE file memory brick
        WData_out      : out std_logic_vector(639 downto 0); -- write to the memory block representing the VGA display
        adrVGA_out     : out std_logic_vector(8 downto 0); -- address for the memory block representing the VGA display
        adrCOE_out     : out std_logic_vector(6 downto 0); -- read from the COE file, 6 bits so max 8.5 min song
        endGame        : out std_logic;
        write_Now      : out std_logic
    );
end component;

component vga_driver is
      port (clk		    :	in	STD_LOGIC; --25 MHz clock
		    V_sync	    : 	out	STD_LOGIC;
		    H_sync	    : 	out	STD_LOGIC;
            video_on    :	out	STD_LOGIC;
            vVideo_on   :   out STD_LOGIC;
            hVideo_on   :   out STD_LOGIC;
		    pixel_x	    :	out	STD_LOGIC_VECTOR(9 downto 0);
            pixel_y	    :	out	STD_LOGIC_VECTOR(9 downto 0));
end component;


component  NoteDisplay is
    port(clk, hit,  video_on_note               : in std_logic;
          hVideo_on_note,vVideo_on_note                    : in std_logic;
          pixelX, pixelY                                   : in std_logic_vector(9 downto 0);
          pix_boolean                                      : in std_logic_vector(639 downto 0);
          color                                            : out std_logic_vector(7 downto 0);
          addr_note                                        : out std_logic_vector(8 downto 0));
end component ;

-- Memory
component blk_pix_booleans IS
      PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(639 DOWNTO 0);
        clkb : IN STD_LOGIC;
        enb : IN STD_LOGIC;
        addrb : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        doutb : OUT STD_LOGIC_VECTOR(639 DOWNTO 0));
END component;

component DetermineHIT is
    port(
    	clk                   :  in std_logic;
        wea                   :  in  std_logic_vector(0 downto 0) ;
        dina                  :  in  std_logic_vector(639 downto 0);  -- data in
        addra                 :  in  std_logic_vector(8 downto 0);     -- memory block address in (479 to 0)
        seeOnTarget_out       :  out std_logic_vector(23 downto 0):=(others=>'0')
);
end component;

component KeyCompareCircuit is
	port(clk                     : in std_logic;
        Target_Note_IN          : in std_logic_vector(23 downto 0); -- from COE file and VGA display circuit, positions of 24 notes ot be projected on the staff
        addra                   : in std_logic_vector(8 downto 0);
        Parallel_Out            : in std_logic_vector(7 downto 0); -- output from receiver
        Rx_done                 : in std_logic; -- from reciever
        all_Notes_Match         : out std_logic; -- tells VGA if all notes were hit
        Note_Matches_out        : out std_logic_vector(23 downto 0); 
        HIT_mono, MISS_mono,HITorMISS :out std_logic);
end component;

component SCI_Rx is 
    PORT ( 	clk         	: in  STD_LOGIC;
       		Rx				: in  STD_LOGIC;
            Rx_done			: out STD_LOGIC;
        	Parallel_out    : out STD_LOGIC_VECTOR(7 downto 0));
END component;

component blk_mem_gen_0 is
    port(clka : IN STD_LOGIC;
         addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
         douta : OUT STD_LOGIC_VECTOR(23 DOWNTO 0));
end component;

--+++++++++++++++++++++++++++++++++signals for shell++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--signal for clock generation module 
signal system_clk_interim                           : std_logic := '0';

-- vga driver signals module 
signal video_on_interim                                     : std_logic := '0';
signal vVideo_on_interim_shadow,  vVideo_on_interim_mono    : std_logic := '0';
signal pixel_x_interim, pixel_y_interim                     : std_logic_vector(9 downto 0) := (others => '0');
signal hVideo_on_interim, vVideo_on_interim                 : std_logic := '0';

-- RAM signals hit, overdrive 
signal hit                                          : std_logic := '0';
signal ena,enb                                      : std_logic := '1';
signal wea                                          : std_logic_vector(0 downto 0) := (others => '0');
signal ReadData_interim,WriteData_interim           : std_logic_vector (639 downto 0) := (others => '0');
signal ReadaddrInterim_RAM, WriteaddrInterim_RAM    : std_logic_vector (8 downto 0) := (others => '0');


-- signals for block mover 
signal addrInterim_BlockMover                       : std_logic_vector (8 downto 0) := (others => '0');
signal endGame_interim                              : std_logic := '0';

-- signals for Note Display module 
signal addrInterim_NoteDisplay                      : std_logic_vector(8 downto 0) := (others => '0');
signal BlockMove_sig_interim                        : std_logic := '0';


-- adr select variable 
signal fastvVideo_on                                : std_logic := '0';

-- signal from determine hit to signal
signal HitNote     :  std_logic_vector(23 downto 0):=(others=>'1');

-- MIDI signal
signal Rx_done_MIDI      : std_logic:='0';
signal Parallel_Out_MIDI : std_logic_vector(7 downto 0):=(others=>'1');
signal NoteMatches_sig  : std_logic_vector(23 downto 0):=(others=>'0');  


signal coeNote  : std_logic_vector(23 downto 0):=(others=>'0'); 
signal adrCoe : std_logic_vector(6 downto 0):=(others=>'0');   

begin 

clock_generation_uut : clock_generation 
                        port map(input_clk_port => clk_exp_port,
                                 system_clk_port => system_clk_interim);

vga_driver_uut  : vga_driver 
                    port map (clk => system_clk_interim,
                              V_sync => V_syncShell,
                              H_sync => H_syncShell,
                              video_on => video_on_interim,
                              hVideo_on => hVideo_on_interim,
                              vVideo_on => vVideo_on_interim,
                              pixel_x => pixel_x_interim,
                              pixel_y => pixel_y_interim);   
                              
                              
blockmover_uut  : MemBlockShiftCircuit 
                    port map (clk => clk_exp_port ,
                              GameLogic  => vVideo_on_interim_mono,
                              shiftNPixels_out => "001",
                              RData_in  => ReadData_interim,
                              TargetNote_in => coeNote,
                              WData_out  => WriteData_interim,
                              adrVGA_out => addrInterim_BlockMover,
                              adrCOE_out => adrCoe,   
                              write_Now => wea(0),          
                              endGame => endGame_interim);
--Memory for the notes                              
mySong : blk_mem_gen_0 port map(
                        clka => clk_exp_port, 
                        addra => adrCoe,
                        douta => coeNote  );
                                      
 blk_mem_uut :  blk_pix_booleans PORT MAP (
                    clka => clk_exp_port,
                    clkb => clk_exp_port,
                    ena => ena,
                    enb => enb,
                    wea => wea,
                    addra => WriteaddrInterim_RAM,
                    addrb => ReadaddrInterim_RAM,
                    dina => WriteData_interim,
                    doutb => ReadData_interim);


NoteDisplay_uut : NoteDisplay port map(clk => system_clk_interim,
                        hit => hit,
                        pixelX => pixel_x_interim,
                        pixelY => pixel_y_interim,
                        pix_boolean => ReadData_interim,
                        addr_note => addrInterim_NoteDisplay,
                        video_on_note => video_on_interim,
                        hVideo_on_note => hVideo_on_interim,
                        vVideo_on_note => vVideo_on_interim,
                        color(1 downto 0) => vga_blue(1 downto 0),
                        color(4 downto 2) => vga_green(2 downto 0),
                        color(7 downto 5) => vga_red(2 downto 0));
                        
detHitLogic : DetermineHIT port map(
                clk  => clk_exp_port,
                wea => wea,
                dina  => WriteData_interim,
                addra => addrInterim_BlockMover,
                seeOnTarget_out => HitNote -- NOTE on the screen that is high
);

keyCmp : KeyCompareCircuit port map (
            clk => clk_exp_port,
            Target_Note_IN  => HitNote,         --23 bit
            addra => WriteaddrInterim_RAM,
            Parallel_Out => Parallel_Out_MIDI , -- output from receiver -- 8 bits
            Rx_done => Rx_done_MIDI , -- from reciever
            all_Notes_Match   => hit,  -- tells VGA if all notes were hit
            Note_Matches_out => NoteMatches_sig, -- tells which notes were correctly hit ('1' = HIT, '0' = Miss, '1' otherwise)
            HIT_mono => open,
            MISS_mono=> open,
            HITorMISS=> open);
     
receiver : SCI_Rx port map(
    	clk     => clk_exp_port,
       	Rx		=> SCI_in, --SCI_in, -- to '1' for sim
        Rx_done	=> Rx_done_MIDI,
        Parallel_out  => Parallel_Out_MIDI);                   
                                    
adrSelector:process(clk_exp_port)
begin

    if rising_edge(clk_exp_port) then
        fastvVideo_on <= vVideo_on_interim;
        if fastvVideo_on ='1' then
            ReadaddrInterim_RAM <=addrInterim_NoteDisplay; -- time to read the note: does that imply that we are reading now?
        else
            ReadaddrInterim_RAM <= addrInterim_BlockMover;
            
            -- ignore negative and overflow cases
            if to_integer(unsigned(addrInterim_BlockMover))>=57 and to_integer(unsigned(addrInterim_BlockMover))<=397 then
                WriteaddrInterim_RAM  <= std_logic_vector(unsigned(addrInterim_BlockMover)-1); -- out side of the if?
            end if;
        end if;
    end if;
end process adrSelector;

-- making vVideo monopulse
video_on_interim_shadow_proc: process(system_clk_interim)
begin
    if rising_edge(system_clk_interim) then
        vVideo_on_interim_shadow<=not(fastvVideo_on);
    end if;
    vVideo_on_interim_mono <= not(vVideo_on_interim_shadow) and not(fastvVideo_on);
end process video_on_interim_shadow_proc;

end structural;


