// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu Jun  1 01:06:57 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19216)
`pragma protect data_block
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
+lD1CyjasA==
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
