onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+dcm40_to_320 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dcm40_to_320 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {dcm40_to_320.udo}

run -all

endsim

quit -force
