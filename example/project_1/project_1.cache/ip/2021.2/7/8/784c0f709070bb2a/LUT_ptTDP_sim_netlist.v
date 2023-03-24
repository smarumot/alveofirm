// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 17 22:28:25 2023
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [4:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [4:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [4:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [4:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [4:0]dina;
  wire [4:0]dinb;
  wire [4:0]douta;
  wire [4:0]doutb;
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
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.119658 mW" *) 
  (* C_FAMILY = "virtexuplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "LUT_ptTDP.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "5" *) 
  (* C_READ_WIDTH_B = "5" *) 
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
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "5" *) 
  (* C_WRITE_WIDTH_B = "5" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[4:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30928)
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
