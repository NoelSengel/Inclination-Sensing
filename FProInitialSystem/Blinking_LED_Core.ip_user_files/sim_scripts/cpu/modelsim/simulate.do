onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xpm -L microblaze_v11_0_11 -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L lmb_v10_v3_0_12 -L lmb_bram_if_cntlr_v4_0_22 -L blk_mem_gen_v8_4_6 -L iomodule_v3_1_8 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.cpu xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cpu.udo}

run 1000ns

quit -force
