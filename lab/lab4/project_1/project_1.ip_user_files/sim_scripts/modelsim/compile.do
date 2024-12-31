vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/dist_mem_gen_v8_0_14
vlib modelsim_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_14 modelsim_lib/msim/dist_mem_gen_v8_0_14
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_14 -64 -incr -mfcu  \
"../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../../lab4_vivado/lab4_vivado.gen/sources_1/ip/DATA_MEM/sim/DATA_MEM.v" \
"../../../../lab4_vivado/lab4_vivado.gen/sources_1/ip/INST_MEM/sim/INST_MEM.v" \
"../../../../vsrc/CPU/CPU.v" \
"../../../../vsrc/CPU/alu.v" \
"../../../../vsrc/CPU/branch.v" \
"../../../../vsrc/CPU/decoder.v" \
"../../../../vsrc/CPU/mux1.v" \
"../../../../vsrc/CPU/mux2.v" \
"../../../../vsrc/CPU/npc.v" \
"../../../../vsrc/CPU/pc.v" \
"../../../../vsrc/CPU/pc_plus4.v" \
"../../../../vsrc/CPU/reg.v" \
"../../../../vsrc/CPU/slu.v" \
"../../../../tb.v" \

vlog -work xil_defaultlib \
"glbl.v"

