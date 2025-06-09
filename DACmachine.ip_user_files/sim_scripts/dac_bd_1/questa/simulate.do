onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib dac_bd_1_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dac_bd_1.udo}

run 1000ns

quit -force
