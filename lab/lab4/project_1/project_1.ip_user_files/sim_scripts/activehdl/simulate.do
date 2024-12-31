transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+TB  -L dist_mem_gen_v8_0_14 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.TB xil_defaultlib.glbl

do {TB.udo}

run

endsim

quit -force
