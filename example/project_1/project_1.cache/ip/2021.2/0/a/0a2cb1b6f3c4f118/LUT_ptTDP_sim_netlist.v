// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Jan 18 00:25:08 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LUT_ptTDP_sim_netlist.v
// Design      : LUT_ptTDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT_ptTDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
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
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.29156 mW" *) 
  (* C_FAMILY = "virtexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "LUT_ptTDP.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "virtexuplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21488)
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
