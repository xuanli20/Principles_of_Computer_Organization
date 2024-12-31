vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_14
vlib modelsim_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_14 modelsim_lib/msim/dist_mem_gen_v8_0_14
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_14 -64 -incr -mfcu  \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../lab3_vivado.gen/sources_1/ip/INST_MEM/sim/INST_MEM.v" \


vlog -work xil_defaultlib \
"glbl.v"

