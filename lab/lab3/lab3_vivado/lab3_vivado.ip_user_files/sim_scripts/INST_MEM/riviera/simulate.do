transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+INST_MEM  -L dist_mem_gen_v8_0_14 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.INST_MEM xil_defaultlib.glbl

do {INST_MEM.udo}

run 1000ns

endsim

quit -force
