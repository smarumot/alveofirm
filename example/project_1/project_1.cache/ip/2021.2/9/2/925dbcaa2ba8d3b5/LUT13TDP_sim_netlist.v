// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 17 22:27:27 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LUT13TDP_sim_netlist.v
// Design      : LUT13TDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT13TDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [3:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [3:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [3:0]doutb;

  wire [12:0]addra;
  wire [12:0]addrb;
  wire clka;
  wire clkb;
  wire [3:0]dina;
  wire [3:0]dinb;
  wire [3:0]douta;
  wire [3:0]doutb;
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
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.510232 mW" *) 
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
  (* C_INIT_FILE = "LUT13TDP.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "8192" *) 
  (* C_READ_DEPTH_B = "8192" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
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
  (* C_WRITE_DEPTH_A = "8192" *) 
  (* C_WRITE_DEPTH_B = "8192" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29920)
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
