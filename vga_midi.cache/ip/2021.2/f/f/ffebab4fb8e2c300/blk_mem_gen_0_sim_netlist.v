// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 00:06:20 2023
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
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [23:0]douta;

  wire [5:0]addra;
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
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [23:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_READ_DEPTH_A = "50" *) 
  (* C_READ_DEPTH_B = "50" *) 
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
  (* C_WRITE_DEPTH_A = "50" *) 
  (* C_WRITE_DEPTH_B = "50" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "24" *) 
  (* C_WRITE_WIDTH_B = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19152)
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
