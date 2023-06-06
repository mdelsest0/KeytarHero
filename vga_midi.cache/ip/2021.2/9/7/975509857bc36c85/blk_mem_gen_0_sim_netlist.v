// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 01:17:54 2023
// Host        : mecha-9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19488)
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
