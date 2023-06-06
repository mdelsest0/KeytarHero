// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 01:06:57 2023
// Host        : mecha-9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18912)
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
