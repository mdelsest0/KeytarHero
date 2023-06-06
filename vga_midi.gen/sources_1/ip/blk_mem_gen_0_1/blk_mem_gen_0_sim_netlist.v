// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 01:17:55 2023
// Host        : mecha-9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               o:/CS56_S23/vga_midi/vga_midi/vga_midi.gen/sources_1/ip/blk_mem_gen_0_1/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [23:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [23:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0424 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "100" *) 
  (* C_READ_DEPTH_B = "100" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "24" *) 
  (* C_READ_WIDTH_B = "24" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "100" *) 
  (* C_WRITE_DEPTH_B = "100" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[23:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[23:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19472)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
