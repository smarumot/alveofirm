-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/mnt/dsk1/tools/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../project_1.gen/sources_1/ip/dcm40_to_320/dcm40_to_320_clk_wiz.v" \
  "../../../../project_1.gen/sources_1/ip/dcm40_to_320/dcm40_to_320.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

