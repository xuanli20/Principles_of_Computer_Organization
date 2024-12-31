module MUX1 (input [31 : 0] src0,
             input [31 : 0] src1,
             input [0 : 0] sel,
             output [31 : 0] res);

assign res = sel ? src1 : src0;

endmodule
