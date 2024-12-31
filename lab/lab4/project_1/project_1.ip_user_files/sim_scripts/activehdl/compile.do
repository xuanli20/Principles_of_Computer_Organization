transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/dist_mem_gen_v8_0_14
vlib activehdl/xil_defaultlib

vmap dist_mem_gen_v8_0_14 activehdl/dist_mem_gen_v8_0_14
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work dist_mem_gen_v8_0_14  -v2k5 -l dist_mem_gen_v8_0_14 -l xil_defaultlib \
"../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 -l dist_mem_gen_v8_0_14 -l xil_defaultlib \
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

