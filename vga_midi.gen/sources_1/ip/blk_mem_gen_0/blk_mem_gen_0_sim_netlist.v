// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 01:06:58 2023
// Host        : mecha-9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               o:/CS56_S23/vga_midi/vga_midi/vga_midi.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [23:0]douta;
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
  (* C_HAS_ENA = "0" *) 
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
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19200)
`pragma protect data_block
JrXgcvkceMfXn1wxKAjA/rwe8cMRLo4f806obC4C+sEF5AOGkPdwa6fI2qedu7RWFko/G8cxOVUS
TXtqejQ/52+Y9Dg+oKFFHJ1iTEp8nOnYPtccDTN1dWyUpQofbOEHbQTez6xUK2mbW03MypBucUNn
NQCXlnHR9fqROLIwUTepWCchvCHQAkBd+LGvdgrTGr3W+VhCO8ulRHoAOzkrAVLI7YBhU1ipG5Ro
HkPDXlvIIArmsQku2CBHZZqTayY0/0U9ihXpj657HNDujzRfYHGecb5IMFEWPQtpIE10qKdzF5nc
eK40TmQEeueJA8awQs2XPejtgv0ty7VLmlP3VT3n25uMtAqe+idgkexy3N73lW9+CR3tI2WX/RlJ
0biKFKmEpIfntmBGDvW3o7Utb4Ftjhs6qVU3Xg8UcMrwU6MMusAIUsqntxHqJbyoxiPOeZBgbqOC
2YzGe3Vjqa5h3E2+o8o3vJ18AOuLppnr5iTazZjtfpbrBSfloMkY0vyVbJjGWM1aSVxT9f9juaQC
Dx4qrGvxGYO0C+z7sZDZm9djBPX+kD8Idjxn0u1p+pZplv6bEAsFiEzI/YZFsfXjV1F/4OAsV2T3
XWj1LB9m29Bu6GkMd7VK3UKbqUKJ4PZCQ2Kb/pZwqImTPWdzUVohzzGGVWedgaNKo4vNBJQS1OHg
9syahHBfDcCDizUCFfZVSdNmPJaLdxVHIkNfjjHrtekIQrEx3Tq0QltGWSb+sySv8MOcP8ceRm38
6Hdu2GfVrSO1SQlJYxNU5lr/SsDKfUi2Art7kQUbPP2aF8dQicA664i8gy+U179sEhPbv6G9wwT6
PvD7x8hh392vF6HwctNRcQApIC2wDkA4XzU5rML9ZIKDanOnyGMzSda0dRqHu5fCRE5KWYVc2QvG
6/hULNw/sHRKesxfJIf1p2B0Twap4zpprlsxC0b9Zz1NJFYan1DQ3z7BEZE4TBHgWWrK7KDFquIa
u8OWRjU9p6XtOJ2M9B7l2jkR07Ifk1OATECGLF/j5DE12CeTOmoqIPBuoGgAEHrG2BRy9VcLCeKJ
BRNPU08nEGP469dtPN9hnjo5CVPuoutMpDtWjDi4HbOjgYovfTYFIjeNaRBqQY5vVC5AKCwwP4Rj
O7Ax44gQ4gGdkD5X0hJTIOthFAXR9EKdZKNmY5h0HKFqYEqMp4v4rdjsyfrkYXTiF5uuNnelBR0y
EPGNtSaLKS5ZCGEfPhWv0G691trg26gfSF4zoK4TYnO49xfeNWdTm73a/PyvqcdqEU4je1RpbHRK
aUF+6WXp+mDxYhMAc0gOvGen10Ni4lzHK8TBCvNvvsgfiyGSbqS7rV9w8VmWJ0FGs4YV2hIAVErf
unzB84HYrUf/p4ZOablBhNUqg7Tt5Sb0holbSON6DMB/Cj4gFTQ07IFyYE79spZw9mVzBrFbZ2x8
WqtgOYtIpZH4fWD3FMqy7mSf0haossj4zijCdvEUhoL4o9EPnme7cRN8FQ3qTrW0T2E7VgFdY4wO
UHiTQINMsq8lG7GLPQrDkuQffMNbr8hhp5PFuErM8mp36kOefdKn96x6pJd+haq7ifeF2MBmwFie
bx+jj4LR1q2Y6KC1g01WzBg+KDtbAu8HPSMRBBa5SUx2Wj5TzHgpGIcNqsxTmrTkijv5rUnT+6r0
clPJBuNgkcXIlg3NiNs2DG0/tZAcGsqLYKoNIIr2bPMpig7+We9DWW+Ry5vL+CA2JN/hTh5PPUi6
OBdHh1NVqh9m4ok+stNJaHgrzIEGRXP1s2sIMux2uQYBHBKIYzmh4c48KtugrtO3MXifHY4y9XCr
OBgRJ5yDRuA2p6Avdf5vHyQcvBiev1B/CTVVr32WIRbzz2v+h8LRQfb5S9uAZEzH3LbZEoFEKfkx
TdYfDCBsO8b3X082HifvBFXSLVM4bLYL5UCiowtfVlQtLthcpSQ63I4X/pI70kUGi1QT7c/EsAr3
PnqXzTs1I4mT5bnzfYL9/Zbga7b81S8rk2SXqlsrXqxQW00l0Yj+c2CfmrzHJqrJsR+DObdfIHtD
xT8hHojkx5GelHerdzDUSXhmV2UI2ZYhqrP0F8iRhXkKe0mm1Kz6ocX7Ne7PDgYcNzX6N7p6OggH
4MvdHSM72YIM7kTyK188iikPtsk1DHtfVFm4dGNNEM0zlh3WXGc1I+eCLs1M8U/kvf/TUI/8nIQa
hRXNDfmvquRyHKB0iC6nWTqJsGWKKMCgRK9IWMq47uqu3g8t7mNn/c+rSN2XdduP50t0Rrwl32SH
Fge+8JXKPZDgCiW64tO2diuM2uyuKt6PsiV8M8E2YjSu6WEGl13UyefvH0Npq6ucZFhXb/3xzx5I
zMv3n5tx48VrGu+zYYGHOv694Cr5H6jGYR3xqR9P4gRR73CnBaTZpnBrkLr4ejBq699vJ2lMRpJS
NI50oxpOAqR9wM81g2nWcbby8GC9jX1B4YD8qjILWy01vFPn4EqS0RneonCiVxPnQ3DniY1AOLk5
fkOLdESFT0zlIGUYZayJG4sJpnRuLKfw/Bi0G6soXdpkIYadSNfOIWbAGuyvUrkF1t+TlI9aooC8
nF60d5SgSgEFbDHnl7VrIGMOhRFo2O/jAdxBQZtzNpvM3SFXX1z3n8FeYknTq9Emcw1XlKM2i4XG
H00StqFwU5nMPRlfKLol/HohfueXFYGlRq8VJ2kI6wEThdyY67ME4/wL3+/1JbsLfApH6iIS8mZu
/rKwzpG5QMWIvH8g9jsTYmNFLz36AzCzllf0kuhChiZuiJ5iIvvjmXzx6WQQDeZZBEe+rZsUIYv4
RqqdBNROelqpYgLXHy88i9rs7zHCQcAtnoXxsVOH7kXh9Pc/WxjExMYBGmsL45bm/gLuYtTpjNJB
o0fE/nB5fm6ycWgtLJuBM2QTDipw+cfqWjMnoWJNeaQj9MKUZzgIjaK6GYbkpAI3+R5Dl/aoPED6
rdo/JWsVUvf9X3lfLKwtIAEz/JsWcC+nHJLUWag22cN9gATBcyI2RSsIxSf9X2NCo6i2zBECercT
8OJHzNte8X9JLfO4QTF1VcUifcCqtNcWLme5OMawj6jGIGUUEpj5gXgo1BFYBwtegZrqj8nJO2J0
Bgp9uM5WuppiuQTGdQvPiQIlrebjCDdgEqJnObPtl3XOG9qDUUSu1I8L8A5gOYP0N5VixHkCkQmA
Mi9396f1z6H31QggLYrX+BX+IJfxKT/jblQNa5jJXEQekLuMehPRbdxRPik7AOIslND4Pvn8IYUS
sm/08DRHB0wAxDlCGYe3brGstO6uA1X2tuktBror82Zq8mjoPIaej5k+hq0tc61Vm/SZx/gkhE4c
8bf6ezx6q3NMmcjhnmljxfM/dNGJpZsZufdv4UirVwmkLga2spgfQ6l8PIKM4JgpfnhxcchLfwe3
Tgzgu1mdUXxYuODhaEQNZuFAYRI70KEG1VDNJoppzgQx0UIL2ePPnH2xV37NtiiRa3yUjEypCouK
KaxUJqB3r6oj6Jkp+XTuJHN3cuwxyBaq+ADe1wzyBQPyjE0RcsiCJfq0tWxbarer1ehxa0nD+Cbu
Ntox0YLNBvPMkMre/T3ZWhIRgvta1zXO9ubtxQPOvKmY5GiGt1guXwcreKdvb8epGGc76WqBsQwU
IYbWYBQa9jf7adqCFl1HFrZB+/LHm07G63gqAl8OfgBCgwekUh3HxbZo4BCkSL67sIg84HmxFzfl
DpnKPlmW1mze5ifi8FuzdGxF9rCZOVi6EipKHR3E34whcIvL6UUGrfqx/JdYRP6S6o/jLq/lU8b1
itSi5eWfwvEpUW2sqT2vZUu1ejexYS7Rk6M/djmRqspjKtY1ami7A1GHxSaK0xh/LJMlrNoN+Uyk
QeOmzK2bJo8f2dvYER8/8Dihd5bOcBfVNSwh6/cKA28BenKNBXXncxNkRwA7HIPBeaRWFU5V5rZc
Ff2I91eJUl2BXqfzWNFhMJauNjHtvuUBnTbawUkNVbiBbHv1mFYJ7j/0HJDFQjTOGZIxVEtZ2upF
QlJn2mU1+okgQOmPCCIVa7kxCx9aEmi5vFcaA+51ErZWJKoqP7t6IeAHbHtbfdDKFNg66ssREP6v
rogoXus1d3RlbIpIk4Bcj39oEH+Amvil7RtlX5C84kWNYXz5qPsFzAfbJUgV4IicM2NhiutSJca8
5Vsi5KpoLfVOU1s9wbtzCq6E7nmLC1snEjUT2ksiYk1D4DgX9OiMfybDLd+OUdK50XPmcQFps1q3
HJcD8i1Qi9I5mcCcaRYRdPdBnSGOTul7JKaGRZQhM942qKkvq5knP3tKN8OWmGFtn8E7N9PEJJKU
NyWl5N/GKKQEB/Dww+zxtOqzzEhNSw8cTJK7Z63ahLH/+xVa5RE8MC8mVR9+z/HjO+Jn5pK/Hpx+
fucv537h5I1m6/4EuPT4byuNC7KU08l5iK+IuqSXsxTAxxWUaXQA3Am/MdZa3ghQxgG9BSUW1tzq
61flVh3WQ+jt8zaRl16mszmeKjI715fyR+xH3IQ1bsyJWtUPI0kXwMvH9IkNw6/+SMkqX2G1BGKe
EMysgvPdWFmhqBM5E5jHywAbYbXCRIhNV5uZZpZFzo7PmKOzdcQKhmMII8qjFwJPNp5ZvNBOBSGJ
kWUUD3A9K4TxGihJ8g7v5lKnsVY89zIBpyy/yQ2GB6Pa+pcQT/r35t45Z3KXm60a2fc4K2lKJxpd
rIUto5Wekx+MMwnY2juCvGoenP9O+yjWZDI8PxwB+v6R+bhk/mIhcosrmZxFgF9iP8Mokf8HmZxW
xmPWzlx3kK3n0STlKtvhHvXTbNzfmZGftJmMmpQucePcRczA5dYhuu6UHP2GBHHl+W4z05GK5HNx
xcdeG3c+7iwe/IcfUS/QSeXodYf6Z2TP/4tkoL62/5gzWknMOUEVJJ7l9p0MySNb8/PvvUTpMAhp
aM+Plgr3DW9QzP7OBaKpjkS6UN5gZABMxlVX7PFVF8IttI2jiPalHTzQcizOQ/ahrUWuAMmnb9A/
553nqg5kZbP3FRJtW96avnweybzcxRKxHP4LG2stdLncJLB9z9h1KVPVnIYcM41zW/K1diJltx6x
LaIRvrlVmXRQTB+SOvmHLHGz4ugrwg09ihCslpvqr5jyftFMBPJBW6SHMoqDxqG6p27Jte1xHgT0
oqdMkgDvk6ATZkYFURq3BfSH7Av61BrL3QKdjCrsYuErejQWDPc/cxgAEoX1fBgxBI8VIVXI+fHE
3roRJct3vQM5lVsCkeBF6Tg8VuSSCjpOFGsKaerikCOLrh+4Kue4BE11r7/l7KgG8SNe+q6dnc7H
jQNLpfqY2+wvRzcQfUf12fnhkeRkaWadEdBomSOg9vR49aOLyiqtvWRrIVRcZ9/3tN3R3T9HuviW
SHsTs03XdfoMqBWt68siyPZ75OTScnvPrq4sGOPAO0GFiDYkdFMZixcJxUSWWer3m/RPThGvI73n
Hz0brvFZyUEgLedEZGiaEtIvpRrzDno3hr+4SpOJnBRWpAYAT54P6jHiOejKNu85vhsruifCyL9z
9elQtvFqDUXuohfbOXYw7cS1mA7ab71D/aVxgpCrvh8tBmhcpwmxLsvaNtxOICPMILe5p8iuGUE0
UeJkVABFIRxGoZKTGE1Iae3hzCKalpUO4ojgg9EB6acqh1XRe9kvXd0DIPKA7KvwdNQI4uvqnDEX
OBrNpsymykyMT4wlozx4aG559vAkzi9OHb+dPXV5vww47Pyl2PQIJmwYYVrOkAN0TgRB+00/5x7/
IpCd0HhtvzWsVPa1nQcIPuWWQ1hxu+YLWOa0bM3fiE5OG6y2cXGkzExwKbDxD03uD80DkSKavqwk
u6DbjzkarT7lhH0kdvVI2ibNzSM2V1aWoje1BEIvzcrqz2PDnndgrJC7WbDIErmvbu90GEXD25Go
nGYXdzvhwL+ZoDUo9QwjuPoIQAhLXUXivosb7CTrEqFxj0giLkBa4003NSs06Km7n6NkgoXolOrM
HRjvWMnU/00ai7UWprQJl4GZVFuOHvLKNVbHjWYeavfRO4Cznuxpdj8RHW9rTTbAv3qsAkVHNX41
EnWfx2090nQFRLLRnm0e2hYa3ciAEepo1O4RFQVczhOtoutgb3Ps6PCuGoC74sKSP7lWlbeF4sbm
jy5aOCYS+nMuqqnDFIV56fdDF3cDqnPEdUQWv3Slwo1aQ31A6nPmAOhXrQ4SrrAZmoOOs6Gcc9Q3
gaNeaVPAQRe+yVnmeV8lGy/gjHW2BJ5kfkjA7yV8XL/9w4vvzD7xcLz2+vQGwfag3nZDQG58yEX/
K8EU3eEQMSC+H1f05syb2QAt+CBfSP+FePHtH8AU+RjbnWTjz4mI6IBXRhEmVetJN2qsaNKeKQKM
/y9VRxNYc5p81qr50+Ph1mkZ2wqKbRFnTd1JKqL6eToE6vIIl9gMc+NNY6JbkfqWdDj7Y3IrHsjK
/tkQcg/z59Hq+O+sNoFjaxleTnVxz0a/BN43tZePaOu33rM7chDFo96xU7lMxsp698XogzL5yCKU
Apb+PtvV4n00Ka2Hv7jXMVLlHGRYxYfyOwm9im10cbYwjzkNxJTFF1j8myg751DKf9lN1of4CMJ5
6tatYUPPOObdgJkvAi9XVfC2f9Vr7xiWTUBdTx80Cw2b7OZY+FS5UUO/AfbTlGsgEV5gxQPX5rn4
0FpuWEd63tUrxDfMPADEut0n2WyjQv3x/S/dib+52CFCqtsSSf3LJwEca6H3VhJwEcZ/tQHKAidp
/UlaX85Icfp6Dsg9v/+Umflgc6FwECr8dSIaeUAAjbPSl10kulODT8GfJ9r+3y7B/Fuu5an+2vFW
V0YBdNS/uzpWJn/h4TClfKBAyykamqnb9ISnu4rpGvmkNf72HH0NQA6ums+2g1GSpsezG7rjsbVw
8G96VB2zY6CCbcZ2W6Xv5fDCPwjWSBgEa7Vyc4iAZqV3MOhzzbUIlsQS6JDj1pyU1SZDtVmmAHrA
KN3tKli7Dk9GMq+f/hG8S1XXsDeoJtwDAfktCWrEv/Y/CTGhCbu41n8uhORwxVV8HNmExNpMnfBD
6XsI1wiTaEl1ZH1BmknYu7ksMAetKsWWU0CT0F5lu97vBHbzBESB54jR1ish+bPor8gQblCjU9la
XYnSgzoRloRLY6ZikIl/00OEGM9UIQu3Yq4UgDoCPv7zoqdqMiNvouJrjxVa1rogPOJtl7Srt8e6
evBFtjWiSDlcg+C+pMSW6wN6GIQqDLcBBfoc2yw3YOkSMOrOB1gQHJIEwRXdKevlrg6bLLNboNPd
K7NDkIVaozauoF3Kkl/BXNmpbE4Xcd+7k3mpX9WqLLTYl8nP+fQeu0g8DFTLsmvhi3jepDol82j7
5B9P/q70+EkyNYqK51UMrlqH0bQLYAh/ZA887Sxs4aECU3Vf9Paa0yBJ92qvOPdjf8HfHzLyB0Mj
KQuGjf0zs8CIa589jCt1yaI3B1rMho7G/mvvKtiQz4md+S+Kffpc3a9p9mksp1XyOnl5j8ju08el
Vh4CBLnphSjrFX+/PnVmad6fxOlp/1rd9ou1sDR6OLO/GDeK/bf+jHh5csz86th7wPDaX6qjl2HB
yFiqeBUfhAF/fiOK62VFChGcGnAkFOQN7qEBgudqJNPNT/D5EDj1DunhgnHgDQ/SIkzwTvkx0xpk
FaAB5v1YCQluGeC2YkytF2DwW6w/xkKbyTLsSDwN3qRDe2wC0WyvWL1oddNVvMLwuP+TqKgWRQwx
fi5ZIc5iEmFGJ6naTzKGoLXxgHlDBctp74GFKBNHDele40cI2gS/A22/GYBdT6ldi1Lly2WctNee
MCuZdwnWBBnBIiNnzQnl69M49ry80isVGQtMJTVI0Bmw49S0bAZLzTOB3xN1GmCzULcxUcQyfDPI
Mf/oRb/djg/n84xth5nuSY/eoyfFYsnNi5tI85VoVEb9RpOTERuEA5lkn1ntTFGrsx9qC4RJP3Vk
jWRG2YHQBnvYuTEXG+6cbHLRQuHShnRlTJktJTE6TEftWcjlUEiGKbekLxX0IAxNGoJsj0kPVNpS
w/M2AUWHN+3HAK5oy0p9miQJ+rap08anDR+kVEr1OrJ4MzSB+SKhyI4FzjhjSFPagmTD38/IQByM
FNUiKvhWJy9pt97qEljv/Y1UBMCTZ7fHO+s1ECjELaHlvOoM0Wi6gWgBo22H5IIDIRJVoDU2FzKL
34dQMQVeGIAcl+JlEV8l2RZwzp7c8w4OSIBrsvyeById4WoYd0qm6ceSKn0nyYkfwbm5wZg3Jk7Y
mwUQF5rpaemA1asjvpF/mkMbuYwszIvCvh0I0QcynSGZgerO4wClNYXiBpGfg45Fmytk8RCIWKFU
V7UqXAFrpqov6tAKFTUGvTPdPK8S4YN1AkXpiq3cDrnlssDrRp8ujhDKEaC+63T7dK51dTf6xj5r
+orQ93jtQBvQ4bY3dpZL2M5xq95lczw7z6R6HrTABLWkh85XIkxZCEdeSf8eabC1JFDSjIlhe+Ci
ebhjOYgTasJpbXneMWc5zTFlOfx0gun4ONU5oL6NCSVdBqPTCwBXL40akUC/blTpBu1v8azKV5BA
mq6U281sHycxL+aq8HIKXFyPIBoAkDwKEIKDEc3Fyp1BnMVChRiqM8gNN5j4/fv/aQwWh5O9C0ed
+WLxl7Bip+qdJ1vqbHT1Sv08ja+KQ9lsj/K8tHxDDv0HiEtI+RXcMFKyl4+XVV3yK+oXkIZGJm4C
8VcSvRZU8Ob7t/LtJ0vI2KMGBoLP0ssW5w6Qdgc110qUalWJ/Jty7UqBoZLliZkPGdXq+dspu1wn
b53hCSXOdSE62vzP0TrFeXEmdhwovLELVV8wYoX9a0xWuYrhFGTfRxGKJIQulH/2a5zyYEJZNZ1j
V9KqYngfmmpNNFvu9ltXeKP0xPwaWkdIfTABfhos2Z/9cmjGUOAPrPk7v6eZS3nLko+BU6caCiDX
0BEMKq/YdbfzzfwcozJjmleuhCQuHYZsEEvjKLKhz2yRUqOqOPBS91ghd05llmJJpGMh+9aLzCqk
sy72uY0qs0iqYZbxCyTzf7Fb8O4Vh861bchtPMvkEuWq/09ltv1fydWWBLk3/9sJW1O8D7s1IMP2
+Gq8JuKfw2yA5UDNB+57aeTAP85SEBaFD0gEqe2zX57S2YPYEfYl2WSOgPkQ9/hma33ZqVza/3j9
j1mELLyxI7Px2Yav2HXCdERYuDEjI4EUGRyLW8PUiv7b3JXSJ9Cx2iHeHSc0X2X8KkfIzYNW3sKV
F5nc/oW16FTWjMwyxzpKICRJMxS6IemYZtJI8o2ohzWn7mC+R49IkClgPworFrx8VruW3HZ7FfVP
6JOctf1waFkiQcAqeuR36JQww14q8wzdfW26SjcDhQZ/NCHzO718fQzrwUZUp6Z5EHVNWBWkY3T5
Ti0yQL5sWlgdudoFlW1Z2/guj+8B+ahQh1Zvainz1u+IryLR/UKQpZrF0rHDvsjEv6hBpM19BcXy
/70p9NvH6Ntf0gPdhu9jURe9rz1rnpLjjEZs2fIrugOIp5HiwAuzdjKHR6k4dSqGvI/5SyAbiMF+
rM2ZFiIjGGWFVY4JHIXUwzOx3N4JsprjCqeNn3Fm2ZL7/BHlUPv3oDqdRn6J3uYNt99I2fLtRz8+
jt81/2tjFbgBPmagdBwDLcpS05nJcJTDnPqm86xu5XwWER7YG7C/WWcC08yejVuB9RFn7FGi7vSI
qAAmD7aBkdOqaTrCbgFhU3MaAD8gVjKzX3oHT68CYajcylWl/PhNrSTyhXtilEWsME8uwFAFxIxr
skugg2IgZ7hF6qYy19NoA9U2CWq+uIOKHWwNr0L5NxrUtdmDlBFFbxf7ZOtbsC/9MGQs2o7sBfKP
sVdMEwd9F3MpWL/wYA3uuXcdrSVUw9FAbSN/nqVREpvKRBgdgz//bpyKse4VgNBF6+P47MChMHCS
QRlvIS5ILh8bXBhq0KcfOfKKMmjtb1Y0E0UtSyxHa7ZopSw1GEOiTv5LHJKi52P3+AOfdvsttK93
yHu8NHjTCKJDJ3m0MToHnLKFbZGxgdC5iDDmPPhgghdSBr6gqNhU5O7jf4y3yMH940gcT2O/bYsl
kc0Ztis9H5bOThpvgH/nSi9hJPbWfasclBRaWtwZoYKLuNyFbWA1pxLPHeD7RQt4PEOTzPkXUb+7
ab+lbWG3yP8HWe18ndJvradcofmAaVGuG+/BVz6bEOHn9rtWVhPuUCiYA9WG9cvlFDbLSI7Yd5Ev
e0dkLa+8DV+9ELGCZzM9oaoKrPFA6sFyV3PeE5zqZ7nkI7vaABztGACsHiIn+mv8HjtyD9RMA2BQ
7vanoCU+zlBHg4tBraXXzLHDQb5hBo++6ZFVtaQBVE45QbL87W1VEZPtHWHG+1DuBZsQEWCO74Np
1cxpkwX0uIm90ocKx/ECoyBLN1CluqGd/Hh3KuISZ+w3dy48HFoyjrUoKIzDZjqK73ispbRbWvsC
ONNbMZ1+pJItLAnc9SHq7oywRQQJsZ4luu4sxfme9JjRMu/15Ja6Nujef9eo/+taxiGNaZVbrAVd
kR1bFYU2rk3lwFpS7DxBSjVwBw3Kgyi5FKknsCh3jwGjKfdcbzlgWzGiXPBFMIpujsCnlEbniA9f
fHErMtSHrYJCwRrTdGl40v4nc68NGyBSufrA7YfZWNasbLMIpy69jkjRHplqpw6PfwY0qmoNnO45
c+k3RfOK/q47ka8DXQY5IgchgQGXeV3VXVzBAtO+6Cm4Buno7ghcAYY5fw9bB8azXAFB04Wt9eeR
jIgb/4VPLy4TCWqW8kaWHAqJh9kX7KmWrECPfR1cLl1uyXLXX1LhOCOlIcIrJEM5mq9qO1g1ANS+
w1ZTFhDEkwVMLXqdI1pDZy0m4EZWXIWCzwgzG/aQL1tfzGG2aQll8sinZ4wR3zeVQ62sl8NhEOXA
C1Thh1vFiAfAt/NtVrClDnl0XLfF3E1nAvRHdVSwP3U8dcBtwkFm6jw4l6splH6HjLH0n425AGAa
6O8pqB26tlygUHadwl2Efs7EnBwvAE6G0raZM/YL+Fw9WBva55kWXGpPUn+dano8Wa4xs6Qae0jW
26K51VrD+xxjT5fc5NHH+5/FUmHkUT3HSrholZdRaM3fZ86Zd8pFtTKtafbVrGh1cIdiJmRRucrF
6A7KCkCzEQDgo74hJ0CBtt6CN5BLSHEgRTLCnNOdDrCzslReKP/4PLQgc93VYw3Vcq9LIU2of2Vh
xosTldIs6b8zQBRcSwCvZyBROjm12hulKcxS+3YMOL57Mulft3BrczuwlAd15x74yGiFsSD3CqGN
AlU474HPKiRYIhb/e6Nqh9946XaZACFTiEFmbQmT4q10MbE35VK+Vv7931qK9oIboe3oaNA3oT2V
tesgyEnI2bXQVDa8dM0K3CJx6sv8liWcaZ/XxqZ9y6uCnespYBoWyFdZB+FwBTK+fGSOgQQeeZqM
JgoE3zmj6dCJW31tIbsw3FV6hdQ/wfF2MZUZCfaVSMJIZcHS4XzTjP4397CkodKW8Kt2xzpVUvB0
EKzx0WdsfYykFs+iIMJrWl62ud4IyyhuepjcnJvl3jU9s9ukQ/aG8n3KzaLKG5NewwSG9gVqfJ8A
ByTxU+n420uWo5rh86htx2CgSUx3BomLW0aUlRu8JGl+zpnBhE9xqY+4CgPDosOUtEU9hJZe6bK5
QcPu2cBs1dvAPXeA4MBEn/tyYeNdJiuXyyb8uZTMG1eQY+P02uUuhidPekRCQ3KONxrhckE6jD0M
eQQ2i5Dk1VxBrg+PdviL4+sFUENRHpLGp4FgrQwdHOadbP2jDPO1ASLxe6UYZsx09vr0ndqbHO28
OsCdSMKbv64QlQRMp5jrtyuRpFRWX0O2iKAbqR25YPm/VwTnuYqofg/D2rH4+7GywbtpmDNnmWZS
prCh3V+JTt51JRcbvJFLk15TkUtgMOkyAgktXmiJPAyj3uAnj4bsu+kGwjlEtWcFOSROPIeXesOB
iAtwtVLpDTZm8GEEd0+FgdfoowBCYaSOxiZvXqbWh+cDeAlAuZBzrENaAG0h1z/rTDl5JfFGZi6X
d3RO9IIexTd/sSm7BjgqNh58xT3Dqpa9uygOoKU1R9ptbSl2tnov71muVcE+8cOJpAwCsLVkoaSj
CF0hKpbS7bN3FSVNaeQB6UWQP5/FM6dGxlwlV5jUQveeHt2n0hGCpBIRbcMTJ78a+FBy4Rec1+b0
FaQVbPG3bq0PlanXiogE+KbPYJvuR6P0BONrzoNaZiwEKnPHaH6BelB5wMvE1o4g6MnQTJ+lgp3S
QBGSaWTUh4OJYltWIUVzyOKhlPqQu/LCqzFx6c8iIxLD2P6ZmdTclEXUHKYgZ24TB8OxP7Bw8W5R
WuykhT21gDjJBc3YwDMiVSEjT+aqqQGTyTXk4I4wntX4AKNk0KTNj8pdFAaFcyq7IvNdT9oaqvz1
xieDAJV+MSLnCeL1w5brWEDX6zIu2rfk1U3gIzPVsfH2hvS4HL4FKpXa0fHhsp8k0LSsx80RB5s+
WpDUqX/wJw2pYp43ldEdGUd/wmgwbF1bpTmH/S/nCyFdfI1MMde/xbarnFrwMp+Xd3ZQklgGka7T
4F+7gEHnUpLziQ4pDdbYDIweXiVOsQW1eK/Mf1gc5pO0wasa62elwvc1njSp3d+pAwh6EBgKQhyI
HmpQtfOz8aiedxM6Q+E2xinOSASwuvvyi2OJBu/xeUOaao3zcnasjd99EpljrFdvrT+65Cu9uiH+
3cexC9Kd9w6Yy2+5ZbqCZktDvQGOUzOqEpJ27lsB3GP+ZE8d+MTbppUsaRpjfQEO3qavtBw4z7x1
JyMQIZ/gg+MvX/RohE0dst48OQ7oYpq4zD1xl7xccWDs8RkEHccbp2jMzxhleNic9853LgGdI3sw
CmiJP860e+eOjga5IL+48o2x2iTzagVoyipFHHrlxM5dYwP/tQYRRj0F/LCnD5N6u4NsmYiBkIpV
GJoCadGeqQCFzdCLRPxrbEmmpeNcODCY2FVxLhbiIKOxk2wsHAQlBmPb9vzURhTGgX13Pm+oF9cv
0g3dwepdXqP98+iyudfjYnMUtg7A0TQTbCKVZDtPDS/O/R+DvRBf97eoBVh1XBuhiHk3LaIrvZje
N8wI7iwE+0NoWLLn/tsJPXs53ocbuLifPYDtWw3hvSGxI2LxChM8hOhRVoApEFmIbGBkuaXjsyKp
RzpXBttuiHTNB/T//pjQ0qJsPtTBMB03u79HC8CBeHJuJLCzomZn/x86VvcryW2QgYjnyaccksO/
+PsDLVDA4AJlBjwUF3877sPag7YDq5r/5+g18SWE2dNRxcZwWQKgpSCX93WJ/A8fFK2CHQbgpkyT
B60Vba3nPJrtSHJiGX57CvWG0KJbiEfvgT7v4KtsBaBh2ke+csy2DEgOWKqpVgh2IhSOkZPr8+ez
cQrKcDzPGNnRziJcpentnImSc8QVE+XRTRPtYDGN0EcQkifLz3x0XD15AKktw6Jdlwq3ImvljRdv
QUzCNPzfUHhowx8/+pmo/1+Nhzw+7PxBiY2mtuZgMLyx8PZ2VidsrGrBCx0kxepxBcadRBb/7bOG
1kbY5zy1tgwSIn95eeMHFDYoNNTjghexd3o9sw3aBEotT6/cpzSJMMoreu/YcpLjn84anXEhiPtn
A8JFzF3qt2ZjnqHRNznwFJcw798kbF3zW04E4HUD2x1waw5BKdE6xKKytUAQd/j/OHnXn7L42164
RAWZgcD70sW+LpraQ4TX5pCtjxVq43ChUdOMGxe77x8Z3pfaUKQUTcTxOsBn9KUkP2Ix41YE1eZx
N3h3FSNug/HQ0W61cX5/juAVdVpXEAQbF9ieu4ZV6tQdBixb6y1Y73MjwS38Pu3/2PkummdY6J7Z
zxVB/ing5nfdeDTuZb4jBJ+rgPB3xnAh7XqZuufOWNtpnplIXIl1aMWiqkDzXLdCVKHLyxxSMmzR
N8P+zpjxZ3FbzBWod6Q6HWgbHWuGTiEPB8I1mQYA2vUYdgNajbiN5rBq1Ji4GUoe07/RcTrw3AMW
Nlnch2Vx32kV79AUp56ozvEvn/ySNMdAxFf4ePCnckqolCnziZP72PnqhE4kvkV5zdGcWcrQ3uJW
yAxusleiDsFF/NilDknWPzFXkDtArD+DVkLSRjw1YN+BvcQlQghsdHLwh4HvORa2+BQ959QCXbnR
+G/sPAxKey6rgC9105x2HF0FF1b3RnnM7wT5JYBYuSKBdUMl2P53SlkVvfREbe6QyoIJ/GfoYMhu
wP0U/KgUYesfYqnLB4bfjOMy/DeOhB2MxqUQUesxDa+qy3mlBJy5rN9LYmNZ0yKP0sNoGpD8/qjU
LmXT2OW2LjxRknwa2p21Dvg2heUGENCksJ9Gg2Xl4G4WAS1EwfFkX/gBhEIvU3PYcgzcTq8EqOQX
cgTuVeanQcKyWCRKuS5uZSQBOFD06DluVy7A3thxQXigW0E+Ib/fM7IXnFSn/UiKvk5KgHxZ9lPX
sJvV5bhJ6v4EBOGYpV8XJYdcIjxtACsOmSCvuUv+FrTeqq8hfqxesbwzM2esBbwCwqhqyUTgHpO0
zPlsKkspvAObdUa28lStZD/as0odug7Ig9ovKTmOVQyhem61pvFJ0lXT9Rs3uPEzTKFZsVxORGfz
7ASRt91jUqr8Wy+PONIbOUccF9AyFk+qyNmhbyaLz5AHIJUmCCaD+HPWVsqxr2g+m5tGlqbXEblR
M0o8wCDLSyQkB1prNiIRQpzm202GIqtCJs5HdEv/mbP52wpIukBJsjSd/aqtEewqttqotBOZgC4v
rmuOQ/y2/R69Dxh7w4if9+W2LzcwEaE2N+jJfAvAoXZxEauIQL9KUvmGzQtPlq255cJP2WIJ8GZF
f0k3tja3S4HXSwK+4Ozwp5hPmYcpxK+4sdEW/En3FlnNLyF1JwStLFXn0WOH3zRaHgRw9b/6y2wC
i/05CB7EOPWq35EWR6TCjT8iZnZahDv9J42nMvFciitL03dj0QYAFUt8qtv/d0w0gWZmla2WlsDR
5T5nD3ziaI/5TeRztk05VdLTm/LGhYP1UYdXgtyE9LdJGJzgNV7ZoUJFx5J4pJ0pqUNv3+P5iJrU
40TSh+Bh/bd9sy+iorS9FrBvllcSnSXIweqKFSK0uR8TPwk3IdLwpIFVgM+kTRW7SaNqpwBLTa3l
zsvshvLuX4Y2I4TQtkSb3f597XIplao09RVzSQzO59mP5XSUUwMphh4NUxq5diLzJZzexxl6jlC9
DzIukXgMiWRB+kdx1MRugmCHT2y7DTMwI6dDGhCWaXTj9a4v3zlgARJhxQbyALZpXFH3sNKNd9ol
Chmc4ns0hO01myTGOLyFdCQXHGAdE3bidFjPvObtSdW1flFpoij0xzHs1XHK0FpS+m3959paRfKe
KHUTXshJCMv9CVZYTydrfUjpmjSUVdW1DlXcEJ8kpe+SUF5azUG0iGlJx2q1bloMfLQEyKqJCth8
m/0BlkyRJcVyD6GwE4QAXuTLSwObCW7viuUZFuE3lvgYXPmtE0njbew3BYTKyMKU347brVZQmMiw
OQSMyQNMgcIsQvF/Ye5dmwGpDgvLOisURZiT3zEx2yjFmKqP5s0xeYtNyxYlqpWWtpag4lMxdsfz
e8k6iHxw+CrtPx8w1i5tZySpE8bvqaYr/B6DNSX4QY7dG++5YwtzvjoG4Ll88MmgmPKnCob4BZmF
i9m2/gvFcz0hzin501Q58aRuA/bWTbbU/vZC6oawz5NtqBdM8ulfIbMoB/FK5QBVqRGfcHChadXi
aBUyq0jaARW2wf5Fy7DyD2/nzo/0PJQAjkgdTUA/SJPlQxe1wdAH2/tHy7HJ0JpvzWyNaW6HjBfn
E7HBQNwRSvqKkmcq5GGSw2b2QGgzCE4Fjvk1cyNavSFaEjb0DT112uoeNq5bQkdq0B4rqubcpIiq
ZjdfK7pK+s+I8SeU+Z6D9MmARPhTU0680FKS+Jit0DuKtXtSc7Uqhrzc6EUkf+mqnIXwNhknsWgH
ph4wrj4YZ/avQpijD2fvkGtiu1ZhDTW57VRndfKkt8pldhkwQWlHnI0FmGkOIwPlvkzdNfpyqqER
qifp00uLYTBDRs0bXqc8aZ1wU8UYtr0xUY3dxamtm5efP2xhxL9N/ygqq1B+APlMdb6c94b+5njS
EHWGjmn1ZF2vsALOFTzSxHC8L/NWOWZLfkTY2veLB039ZOSpyAWdZ3Zg1uC/v3tByf3pCNtAEJFH
1lkI+8gZszcmp+/ILICBLOOVUzZU30HOEk7KnFI1xtfk9sV52P/hrMepBkG5FjzIy8efJ0Tol3YI
L9u/pPMuEzNWagxrEAlVSWs3dX8yTz/o6tcun3+zbZmSgenfzg4RcZMY2qHmuqa7/e5WZVyQee9Z
fzGM2+iWoJXaXKwRLvgt7U3tR6GUrISonaeAWgEd4RY6WDFmpQjpo5aR7KDkxffiiY7aQ67CWBug
MwDirMT1h0zjEjL5Af/ZZvR/wZduvYIjHn71qfxRny+l72xN9H3gYt5aP/OpX4NUhpwBJtrnuAev
nrhXYChUfdWp6IU8F4jOjv2zFwm8rR/KzILYwBxfLB705QiDm9UqEKxg/kLB6d4X6okHSG/r9osQ
UTMSpmVVWb7LXcH/cHHOtQcBzhQpsFgJGC0pDPAQibVBaL97LYz8gKJCnMj2FVl1h+Ip1h+RgjvO
FvPn4AzULVyJhqpDYd3iLPdbX6oTj27UixvT0fey9w0ZDY1Ru+gl5OSW5j3u9Oet/NaEJFwIGVxk
yT/5qHzaLsywQEsY8VpsDHBTFVRS0Dbk0359at5TLDT6UPvN+vxv7SbbeAzpKhPKOmof7AToanOA
YO+0lUA3PvrfrdDtjWd+03hkOPiM/4JixYeL6m1sON7iRjYUEpZTciA/2kh5TfqnTzkn1vEzGlFG
ObW8Y6J/PgO6PS3y2ZL5u9pgEBcMDooDoT1TNxDNrpynnMXrhfvB3AqzADko4BmGEVscgtiOHBLx
GcwZ86fweskA1LxVgjpesyAsdg3Ym1s3KhwER+UDO+gVsWJ1ARJftuiYY2dVBsVQYOkvmSfGr7wY
0UL1m2bok4YwoaWA2+B33HT1mKZFxgCnPNBRGAf7e6WrGih1vYaxG0k77H4JZQdwHzQn/+KkQQxE
Tm9tSxwCk69KhXdAfQLC5AsNMqplaNTaxBMXDEElr1wOyHPFgJLEHxS6JXlxjyFseldzk36FuFa0
3F7hSA1No26kkOhnGUZznynnU5A1fAdn/g9tHOwj1IU1d8MEBvCfl5xEN1N6TFYWmM3A13mAW7ow
20AQ8MneUy/hAC/L59xuU8tCAjj2qbD6VVejRz7q2Y2dgu0ZjYsagEGiJ6KwAmoVg5+xUmMxK4HG
TCVKkr6SXJZKteaEygyElBQf0BaqodNYdQeYJjxM7Spy+4QWhvErHOr7fOvOUuEgSz86MlOdMxPe
Y52unUabyD1a82C4UhXzWewe+rRr+tcyzAwcqIdKcmmha5KpKELYHtLMal5NasyWZR0D7m1prk0p
NVCcDwF1sgDhRyT/+18rQVzHS2RT4qxrDGiq5lXF6ODUOk8Ek9DdXdPKuYEM65IvN6EaYnlIH8dX
v3aUSs46H7iykv+hxc2ErAOdn6LATjoS/a9KID/vOv33NL4FijLwYARDzfFxBty853RuJSb17Qjy
JcYwpqIjkskA/i2SQT4Iwm4eokOBXXESoNhG/FVlsnaQZ82pkhpI59IQMObVlZ52LSxsagp8NgwD
SMkPjtkH7t5b1ZAoxOL84lsv0uCkRAvuMJshNagwJ8qATcu0rta5ber1tI9ZgDbaiTZzpkIs9ZW8
WIgb+3Aonw3Wq9UBfuBhwh43NgaTez36ryJrbVi6KGFF+9r5+aHUq+T6Y4MwUS1ZtHJF0OaxD5k+
5qKL7BoszblbIFCyKvW80/e9XRyTrjPXm8hFq+L2IL+yvLXda0zm8QNTMTWkEnJ+NTWSBnR3Ihkl
LIX8qQJARhJ0NOLp1Cl7ZG5pTUw3oXrHOT1i12ogagpphRJcvYoYMvEUFP9diUd1lQ+pXZR/uaSv
KSZcfEuCm78thTDYBjY5dSpXHsA7eyTeUurUXbmttQXgCI27U6mGfEN8AKpq0p/GsDUdiTgqIOHV
iSN1+jMHuIGa2oXQeBV+QHM5VNTT/Dq6Isp0f4CCIlg7zMrGFzlMBmwTw4/NtmZ/RXyLmT0Ap0yB
cNcvdgTWNLXYE5Ejeyht6oUDbNvAG7yCWXmeqdEKu/K0hIAYkTMbF2Sca9H1Jm+JR7vlpDgI2c6K
E5AAQiG5awu1BJtKqn6K4qL+adPSd1/VZm8eauj5te4WzCjUkSRcQRC1jt+RG6ycy3KpcbH2Ltou
vo6nK81mgwp8z9ArXZ15odqqysbdeda40YwFCHzPoWaNdud+jP5NINZiPYu5rIvzfEzDzjrj+oc9
LLjjycGm9mrRzjT1j/SpoBtQsCibEjXslTd6ODnPo61cjv+TPf79UJawJLSunnohsdOXMlMSLP76
W2pQC5KQoDja0kD3G2O7Owdk21Bhdu2+nizvhcYekUHx5Ll6DGbV21CF74dVMq02FalhxwbXc0O+
yyNIIF3N/YqfRDz47mVhewY8pRU/85Im3jcJphsYkgYRlGgakPHDwvnZUesaT+aZyA2PRTAhl2/X
lXnrJIfLHG2UFWFe2ST/A2M4NbWJGg6jocvnUElLIzHCK/HjBFRQNTvTP9UU7VcGdG56htBEb/HB
TS/RWuFFY/TmfTX8RrtQA9Fy3p5dSBpdc99dbK5bDnzn5oj8vBY7Rxft9+Shn0DAXkf8Am7p6B/s
C5OpG9KmaEUaLoNMVYLtjIRA28oY9PUCmYLy0eQGE3dNvGo8Cmffu35uV/FPJx+9P+mK5HlWCPd2
hkem92cnbqcOXIEAR2atSxOpkFJN5axUnn2MyZf1OUiH9vQAG5nWbntz4LFyFPFf+5Kr9bm7LWXm
l3QAn+2Xd0i3vgFKZolpW3rqLvamWlU9GZ8xQIrXvTXoiUASI80FTDBJ5XfgihRK1i/pAnWY9TjT
TN46NoLuPdKMyvWmh6j0yUM6NsfEPvfOJA8UvGNEQ8hvE4mMfPZbMcywCRBwqe/jcYz3yPBZyiLB
ByOViZdYsRB1JxzqJrD7U+hBx6aH1sjhDoIFa72yelMrvnesq0qtkzvuy0PoPwLhGntqXaSnMZ2e
pqcevzNAcuSquc3XwYAsyPOOaxbsuCV2lx7P+ZNZ9GQAl9vJbMCmpy0c0CceF2mWC7XhndzFZZP5
AGF9WOIyyAqOkYd6xYRMMR/Z5PIBU6i7p7hMpjvgd5RHYVLQ6cdHRWaCwfpUdzbWRZv7Es4uDEYf
hoIvOfw+MSIZmJZnPopg2dX7PEZYrmYsL62Y9/Wm1O5Lstzr2Jqio2JXBcZg1M83odJwRFMB+TBe
rB/5LUVyaX1bjjwwFCOhmIuMT6IHkHez6kK0TrdaUKpmK88/86luSRM89Q87ikel9eu6YmtKRw3A
oSxTCkhzqViqExAFYEYUmrDryyxEKLmurAPoee4Z6A3Y5JLoIYlbAZxWt95c08lk8zTlkpEMuxJx
PA7UevoD9L3aDiCA59vS/TV/lUSNQ7olKAwRez//o+tof9WJa0Mr14BwyXRDPPCc4M1RhRdXP4TO
mY/xtXJ76so7UKMz5EUsNkE61WMYtlKEnrXWtYQClBCJYrJkX1T2TFoHP1Sl/r9KEAt42Dy6pUD8
OLdB5f8O45oRiylQP5PjAzlqOqY6p1kF8StLcIBwoES+WBz/fIWJShfWQ22Gl1HBNrm+p9S63iGY
MpCJ7o2LyaPnp5Ovxr+xmQ55jm/rxZmp78RF75yRa7s+x792QODzOrXJR1jqLTmts9wqHWfZ8RIH
R1IsdtPd2Irmt6JJbsBKbt34uuuyg0EBnUGRB8JKRs4rl6kVYBvn+CFwa1k+aT4Hi1LAKhyob6DH
6pCq1NfvWgJ3GyB60Ma3rzFG/xf7DPZpN3mt4fmSlx0GqvOhxlKpCKmLp2+Uz2Lbdd8/WfAYOxpJ
VCYhFNZkGs1YgTPizn1YIbpj8maX1ptmCaTPunR+jKw0+5LPzqvxroYWVpiq9UdqNyfp4jjk4WjJ
RhEvTXSIkADfdlScbgSDdieLswAYhWBwTDTrKauLqLrWyUfgAB5JNkV7VDJAPq2YNg/ewrNkx7PZ
qCz2C3uQ51j50Akg/iOPB4nq0drPxsm+NJvaWrdU5JpkMbpMc595dIV0E/ID4Cd/Oq/PwbLV6piP
Z5SlR25tUne6AxeA4Ajmy4PYmXck3mYr5cgqWlK4xe9Rn8Y+Hz/SgB14Hzs+9MPrjtAVHFbnDsXF
Z5nYEyAL/SKKdVAWUOLeficdMG0PRICx3gxqPP+myUkP/PUwWE7j/YnUXX1nir06q/WTUM9wsjp3
BkbVdAcANv3aAEmH66+tY7+LM5+wgPOLhZjZYmkBlXpAg0kHayYMQAgx+eXI5cwbdrs4TOKAbcZa
UqWnZihaF9IFt/hTRrbmRZGwqu0XqM+Q84QqnVvpiC5NcB2Xkqxqt3eEG3wJDhnx87HSawZV9A1P
QAO6b1WuY1iZ8K5V/DtpDdxINOZzpc8pUvEPaQ6umbXn9RfpdJSMtSO7jM128j+qMzUSc6yEV/kg
21sp8av1rcfBNBuMywFtRi2YD9r62VS8nDPA2hlHhQzo8ZIDXqPjFV/a8BH7pDSyaD+orcd9y7WX
4y/BgjCqPacTmjKmIieQ6zf3JPrq770aaHLz2+EoQr2Krf2HvS8GTO7wATViswtvPfTtQAPB8wL3
tOAGALLpECHYn+10IfUFs50W9ohCGXt6B7k6ImXQ6mviXneZJnhz9lkD/A7wlhVHocHKSt/oeuAV
vX2g9WHBM9N3s5M4n9euZOZsZu8Sq5sppB/B2BhzLCLIQAu/UtIl9N2TWdF4PWbBmrR6Y69RsA6r
p3horLqoH8en92oZCY1JJtjBzsYb2CqLA0cGwcYR4+0oHYALQifXdRTPUnFYkk71jJVw1f7KlMdD
7LCDb46gd5J+KmsKdOUYa75V3HIiFEcZ5IP48/qiV0pReAqRFwW1nSjIINetwfVFrn/P/tQykopb
OjpFVA8kboNdsbQ1Tf5hXTzgS5N8FnxQavlKX7X7PdWvJmDKvisk8PQZp4wBeiF5snKk868dkkSF
jtfpMNWb6EujVqj4tMNZd84nV6W3IXbehKPAJgebimo8YmoKumYpbnQodG/NJKgB6Nn64M+v3w7x
Jy8rmTsly35DTROFY8qV2owPZJdLF/gTgF5Av3IYsnuBYWSVUjBqQGR/7xNJGmQxKFSSa4OANDOq
5dbRUfZldX3ROMFs1Py3P0qgUgLfiSaNXHhHOyMCo42qNFKUr6PDe7a9IlxG+HgTNE48IlXXPwRw
72Y70vncsqCDHzaHO7ohRus6vFUjXmH06BcA6/k5+68J8dlGI5LJpp8OxqJ6dMVAez4Qj/Jjo3wY
IOHbT5D34/TXXa232mwS3mnzeEeieF6rE2t2dHy6IozkJR+bcbSPh0HF0Yjnx8iqYIYsc/jeN7Ks
dJAfIYV+138Ic8QQ2ourzyjVPmBaeeBX7iBKSHiyHzsQ8wzESUusSL9Aqg7lOG/XSbdOoXJM+yHZ
mZI2mxhjfz0GKkQleWGEQY+2ce21c8I6KnACUhdM+dKnnjerRwZj4Qh/FeST7qWfkUkfm30PrxfI
ies2nu3u1InGqtcmTRvj4VScjQ5XKxVwRA2ShyYGpdRk29guzCdLfQuUgNC9YFIMP/A91L6PNow6
3aY0TN17yErjJ5awxM0n75u2/Xrs40kM9k2G6P/fsBE6lmFBBspGCszGFQpVZVliWVI8OHWNz2r1
D2wU8d7jI9DErw60XFJ7ltmOX4UED7jGx0ugMFKGwLOuOPbIuElcTDncPJktttyJC2pEeJ9h17au
44zyg9Yn9jZ+MRslwD8srEL7x/0WShjlBdDrp1xUqBkREC85dR1TgrbABGTKtiElazILl2jfXqSw
ofcFxYvCQYMP4M3bseFrzf2zAvaqSq0E43m3jcXi/KTjeHsz/vx8wA3NCTVC1UFnkeY+C3W2yXnA
a9xVL2Y2F4XM3p8bfAjgxs9B2+dm73FQjAFdb4cjUB5xl4QqLtbA8YsZGdvj5IBJSEXEsHtiNF4p
FwuySs1BG/VudAl18HjXFkRUXUS1+BUuqEK+qdj6lnWyxMRKuYtjOg9qQGpiRj2Bc09fe0dMA2Ve
pnzB29C9vd5MWUsP2uB+Fa6dcPmMyG+9vm5j4J3d7yaEO56kq1JPuww0j9/ONkKKcEn4l8Tti6aU
R5mTo+gatUo3uTAZ/BIl7DqRR/EqmKksar6O2VdKr0sLmX1ZdBZYUCyf0oXOb3SIaggPZlR9Ugnt
7O3u9g9hZQ2PieUNyTdqbqCWqmrWTHb8SAuXCy0r4PdaVdZmdnPDriob34a5UTPgc0d/GhJfudCN
7WrZ02YZk6UkP0SIQahQ2rF9Zx0xtpoJ9gy84RLA8naBSE2jq6Fq/TjVjixhHUSMVlz1qUKSPqec
6T92haITx4OMnIZRkexigQmQwpXQMxaXoNnhzxblCVtOGNCqXBvj2FKIF4CfVLWC5Ge+mNrypRGU
ofawNpsxdbuNi/ozaTMtGH81H615kMagSkplAQI1mO10ky+slVgECJ5j/F+upVOS+lQO7/cwV/Fo
6MFNuxpQcpsPJmGUeCYuEsuwkXsihM4gNqKMpGgn2z4RfdtylrTOLWnJsRisUSCUHTxe7+xiVGSb
0X0WIr1ydzQP8Qo0nX8P4CkAkJ902mktZ75ikZEGlD9aeiaLW9MzX9I+wVTgFNoP1xxoycSV7u+N
PErK+DrUaCXoUMyHy5FUKIDKxPtTZtIQFI3HXCXFs/eO9nlZED9JS6Z4d0meubQrlnRbs6U7cdDD
Bh2yP+xXIiGxeLscj4aWSMMSjJlIabkkaB4faQmVBXCjK/LFcBJq0FWL6o9xl9Jzc19VpF5/Aj90
nShOgI/xtOoZW/gRShT9dai9Pnn61f9FR/e1DJ+VUbV6+POqukA7O476TpsbPbjeZFiv33vPSOXV
sbjYQN0NVCTP2ZxgYSt8k5z762fpv7lMVz4nVU/YbGJxuEoprDpzqqII5A0yzUzx+fpfBrnGC5PC
8KIQFjw5dJjdZ5Xr8qKiqwDoedExq/HeES1W+y27HvVjFoErRzBv6IDJ2Qn3ZeSjO36sCtE3oUH8
SKFl377d2Cw3qGjUKi/HgqO+Ud+Es4b1FYmVcxOLQ02GVz6hEXJrp1EJaiIbXTFJU3spSKNqDtiP
ptuTSuEUY7ebmKIDEdTJ/hMnuCihLolSWx2nFnHEQroDFf78XyMjvw1j6eDZ5nTE/FJJsVuGnknP
m541hNONFo6f5DDdajKQ1jI5c/TERK+7mCQLIwsS7frrEJHtFI6/cIiRV6+7d+L8AGo5vnWhxCr7
Wa8b7uv4owdymPUAqh9GgPbKPaeopH5rZ3C8433K+miw+PYL7po5md/3NSfe2uC0LaMg/mAaWua9
rMTG71LveMA/OTJKDQr/qkR42w8Ss2eWB3Oq6BJiwXsZNISQoVitt4p8UxPfy0XrrfrO52tgS82k
e/0aoAvdjoi6QHYmN0dZtTW8mRNURj4qYq0r/0J7R2GghiQNMPOLitB1v8fFRpQ8poNGvzOCQlKk
wak/825wcKY9FF/vZRkwAs5Nhgy9QWSPemo7aRxUx3lTgJhqGfIpnDwjJwoKRimpDC1n6ECGnayj
yitneP+igS9IwBD21cdCJLSRmAzX2/P+CRx1J4La2ltL3vsUF5yC28bLOSx80eSpSkXnTk04Y2jv
K7NBOw9cX+b3GCjrtZRsi7tSlFrt96v6LOU098x34CLEhHiNZUfafDNFKKUXZzrCDuh476XRU7EK
Np0su57r2Al+4ImT7hR4u5u8wU6jA5armnJH2wZXeATp86tFhV9xuWMM3Tt7E0ojVrnQ/QMvmvZf
F35YV7ZIGFcp2Qu3bMu3XDyJ5DWuD4TIjVm7W5X5AKmHiSRRlneurjH50GHp51//CxMIFVBGlvh4
5zqPiOLQ7T+c5QAU6sEnZC7Npf34GKLabS33Svp9hKyyJAz4mFwY5Og59bHqrQGkgTPmiQzwdJIy
915OrAlRRe1VZdcWjGD9cE3c6bQXCxywEl06o7Qvm5sU3Bh94penVEZ5jw9UzQW02pC6OCT5XQgk
MVoSEZ12f0KdGm32UEHZmYB/jclQlb+4xZOe7hlkwcS2r28JrxAqXJy6PeKdcBJxB32/XPBFbqsb
o7xkWreQjCM/BZ5l8SN+4X+kc+ejXDH4HnS/6/cCViByJ/b9GhvwX9bhw/nGqa1w2DoqeYVVCeUI
7CNsmir+KqtWyi3Z1sYpaiJJbLJ7rxMC/a2mxIbC2+tiaiEX+g5cxB4YQsPxMm60jRqcYCj+01VA
sPZro4aK5sDpsiWszHBDlx0BEgTWvh3gLGvqQSz3tpIbvxP8idrp3wt2GNVSg+NNLO87NIjYQi50
8RksAO4A3zYGsF8wD4HWdoHRUdXiK/us8nKIPGSZsAVWcszmHfWrx150Puodcktm+R3bPHIXld2x
gBGHTZHJBnKVWKOEu29lB6Y/ipImwjuBXDdnu96w54aYPQiL3OMaqva7OMOWh2B33p9oAn62rl1k
haOF+OvlaepoAy2kRp+1aLed1PPif9iXInYEV9uUMggVdpNw0a/NsVe9dKF1roa/refT+JqL7i3a
eN/+MBwuxsmBypFQIWiC8bFT5+gwPJT34pKVXA6FItwi6KwuH2z2qWH0equRjnaPlWL4qLKd3zgO
FKrwoezTbA0fhJ2aMMcu+OroVEC1e8zwUepvegj5XJFIVcYoHPhQ8kKc5YXVyVqsbw6o2Hp6h9PC
Ifca9lP4xUkmgSCv5CdnOfphItrwdK/5ltQ6eMY9VBmxWHvsAP5QYSw/OdH3hAYY1nJfZ9N0HUAk
RV2NPE1jxRWFNsrBv2XzZdt96/s5g5boIBB7dDRrIv7DvLRu0nr9q9bQlD8e9Zf20Bs3F1/d2q6y
Y8z6Zjgla34O7jgVGzQsqyMXshUXxj0I0ueEF8iirWYKkOUojaipwc9d5KodmsZnlPuCnn/kCDMz
BDNJXVsqcoUtS9oxO04BbWjyC9iMQtrv+EUneLJUL4v+xjknot0awjw/09JXEcM+QNCIvi0Sa4ir
3Zrw4NqKr0pTUiZWwu6Vk+4OPT9hbuUeKyo+zp6QxqeeFHjrJeHu/C3KTlDgz81Qesv+kHpDpyeK
dNXbrYcRhzfmnHuh67HprIofVhBniQWBcBVUbjxq2IJuZN93GU75FI3VYloHV60AQaYEbdamfF0u
BwmaHKMvltEgcEwddrktTIYvAkTAJ21NrL39x2nj5ObYHNzeWwIq7u7HsE+d2EVC65dE0kZBd0EN
cQy/L3NnedNyrtCSAxJjLulgHMubkIARpQXqBQwtotSkEJsKjW0UYCRuKN1unoFJtzxMJwpXB+ze
Vndt53XNUNNqaCK0sDTC9T5Wr6/qSBlWcuPXVFMUV2dQWktt6pIYYDS5HoYQOw3c
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
