## This file is a general .xdc for the Basys3 rev B board for ENGS31/CoSc56
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project
## - these names should match the external ports (_ext_port) in the entity declaration of your shell/top level

##====================================================================
## External_Clock_Port
##====================================================================
## This is a 100 MHz external clock
set_property PACKAGE_PIN W5 [get_ports clk_exp_port]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk_exp_port]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk_exp_port]


##====================================================================
## Pmod Header JB
##====================================================================
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports SCI_in]					
	set_property IOSTANDARD LVCMOS33 [get_ports SCI_in]


##====================================================================
## VGA Connector
##====================================================================
##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## RED
##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set_property PACKAGE_PIN G19 [get_ports {vga_red[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[0]}]
set_property PACKAGE_PIN H19 [get_ports {vga_red[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[1]}]
set_property PACKAGE_PIN J19 [get_ports {vga_red[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[2]}]
set_property PACKAGE_PIN N19 [get_ports {vga_red[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[3]}]
##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## BLUE
##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set_property PACKAGE_PIN N18 [get_ports {vga_blue[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[0]}]
set_property PACKAGE_PIN L18 [get_ports {vga_blue[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[1]}]
set_property PACKAGE_PIN K18 [get_ports {vga_blue[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[2]}]
set_property PACKAGE_PIN J18 [get_ports {vga_blue[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[3]}]
##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## GREEN
##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set_property PACKAGE_PIN J17 [get_ports {vga_green[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[0]}]
set_property PACKAGE_PIN H17 [get_ports {vga_green[1]}]		
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[1]}]
set_property PACKAGE_PIN G17 [get_ports {vga_green[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[2]}]
set_property PACKAGE_PIN D17 [get_ports {vga_green[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[3]}]
##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
## Timing
##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set_property PACKAGE_PIN P19 [get_ports H_syncShell]						
	set_property IOSTANDARD LVCMOS33 [get_ports H_syncShell]
set_property PACKAGE_PIN R19 [get_ports V_syncShell]						
	set_property IOSTANDARD LVCMOS33 [get_ports V_syncShell]



##====================================================================
## Implementation Assist
##====================================================================	
## These additional constraints are recommended by Digilent, DO NOT REMOVE!
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]