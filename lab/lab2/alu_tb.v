`timescale 1ns / 1ps
module alu_testbench();
    parameter clk_sep  = 1;
    parameter time_sep = 10;
    reg [31:0] src0;
    reg [31:0] src1;
    reg [4:0] op;
    wire [31:0] res;
    reg clk;
    ALU alu(
        .alu_src0(src0),
        .alu_src1(src1),
        .alu_op(op),
        .alu_res(res)
    );
    initial begin
        clk=0;
        forever begin
            #time_sep
            clk=~clk;
        end
    end
    initial begin
        src0=32'h81111111;
        src1=32'h11111111;
        op=5'B00000;
        #clk_sep
        op=5'B00010;
        #clk_sep
        op=5'B00100;
        #clk_sep
        op=5'B00101;
        #clk_sep
        op=5'B01001;
        #clk_sep
        op=5'B01010;
        #clk_sep
        op=5'B01011;
        #clk_sep
        op=5'B01110;
        #clk_sep
        op=5'B01111;
        #clk_sep
        op=5'B10000;
        #clk_sep
        op=5'B10001;
        #clk_sep
        op=5'B10010;
        #clk_sep
        $finish;
    end
endmodule
