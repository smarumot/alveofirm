// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jan 17 22:30:20 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LUT7TDP_sim_netlist.v
// Design      : LUT7TDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT7TDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [2:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [2:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [2:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [2:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [2:0]dina;
  wire [2:0]dinb;
  wire [2:0]douta;
  wire [2:0]doutb;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.494195 mW" *) 
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
  (* C_INIT_FILE = "LUT7TDP.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "3" *) 
  (* C_READ_WIDTH_B = "3" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "3" *) 
  (* C_WRITE_WIDTH_B = "3" *) 
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[2:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24672)
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
