module PC_PLUS4(input [31:0] pc,
                output [31:0] pc_plus4);
assign pc_plus4 = pc+32'h4;
endmodule
