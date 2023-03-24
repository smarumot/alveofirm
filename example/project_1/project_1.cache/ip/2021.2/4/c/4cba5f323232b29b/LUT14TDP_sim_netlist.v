// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Wed Jan 18 00:20:22 2023
// Host        : accel1 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LUT14TDP_sim_netlist.v
// Design      : LUT14TDP
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LUT14TDP,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.189618 mW" *) 
  (* C_FAMILY = "virtexuplus" *) 
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
  (* C_INIT_FILE = "LUT14TDP.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21840)
`pragma protect data_block
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
mZ3Y1W+CgTN6
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
