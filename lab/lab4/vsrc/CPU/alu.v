`define ADD                 5'B00000
`define SUB                 5'B00010
`define SLT                 5'B00100
`define SLTU                5'B00101
`define AND                 5'B01001
`define OR                  5'B01010
`define XOR                 5'B01011
`define SLL                 5'B01110
`define SRL                 5'B01111
`define SRA                 5'B10000
`define SRC0                5'B10001
`define SRC1                5'B10010
module ALU (input [31 : 0] alu_src0,
            input [31 : 0] alu_src1,
            input [4 : 0] alu_op,
            output reg [31 : 0] alu_res);
reg signed[31:0] tem0;
reg signed[31:0] tem1;
always @(*) begin
    tem0 = alu_src0;
    tem1 = alu_src1;
    case(alu_op)
        `ADD  :
        alu_res = tem0 + tem1;
        `SUB:
        alu_res = tem0 - tem1;
        `SLT:
        alu_res = (tem0 < tem1)?32'h00000001:32'h00000000;
        `SLTU:
        alu_res = (alu_src0 < alu_src1)?32'h00000001:32'h00000000;
        `AND:
        alu_res = tem0&tem1;
        `OR:
        alu_res = tem0|tem1;
        `XOR:
        alu_res = tem0^tem1;
        `SLL:
        alu_res = tem0<<tem1[4:0];
        `SRL:
        alu_res = tem0>>tem1[4:0];
        `SRA:
        alu_res = tem0>>>tem1[4:0];
        `SRC0:
        alu_res = alu_src0;
        `SRC1:
        alu_res = alu_src1;
        default :
        alu_res = 32'H0;
    endcase
end
endmodule
