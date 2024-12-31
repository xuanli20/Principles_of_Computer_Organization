`timescale 1ns / 1ps
module tb_();
reg clk;
reg rst;
wire [31:0] imem_raddr;
wire dmem_we;
wire [31 : 0]            dmem_addr;
wire [31 : 0]            dmem_wdata;
wire [ 0 : 0]            commit;
wire [31 : 0]            commit_pc;
wire [31 : 0]            commit_inst;
wire [ 0 : 0]            commit_halt;
wire [ 0 : 0]            commit_reg_we;
wire [ 4 : 0]            commit_reg_wa;
wire [31 : 0]            commit_reg_wd;
wire [ 0 : 0]            commit_dmem_we;
wire [31 : 0]            commit_dmem_wa;
wire [31 : 0]            commit_dmem_wd;
wire [31 : 0]            debug_reg_rd;
CPU cpu(
    .rst (rst),
    .clk (clk),
    .global_en(1'b1),
    .imem_rdata(0),
    .dmem_rdata(0),
    .debug_reg_ra(0),
    .imem_raddr(imem_raddr),
    .dmem_we(dmem_we),
    .dmem_addr(dmem_addr),
    .dmem_wdata(dmem_wdata),
    .commit(commit),
    .commit_pc(commit_pc),
    .commit_inst(commit_inst),
    .commit_halt(commit_halt),
    .commit_reg_we(commit_reg_we),
    .commit_reg_wa(commit_reg_wa),
    .commit_reg_wd(commit_reg_wd),
    .commit_dmem_we(commit_dmem_we),
    .commit_dmem_wa(commit_dmem_wa),
    .commit_dmem_wd(commit_dmem_wd),
    .debug_reg_rd(debug_reg_rd)
);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk=~clk;

initial begin
    clk=0;
    rst=0;
    #10000
    $finish;
end

endmodule