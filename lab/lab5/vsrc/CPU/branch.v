`define BEQ 4'b0000
`define BNE 4'b0001
`define BLT 4'b0010
`define BGE 4'b0011
`define BLTU 4'b0100
`define BGEU 4'b0101
`define JALR 4'b0110
`define JAL 4'b0111
`define ADD4 4'b1111
module BRANCH(input [3 : 0] br_type,
              input [31 : 0] br_src0,
              input [31 : 0] br_src1,
              output reg [1 : 0] npc_sel);
wire signed [31:0] src0;
wire signed [31:0] src1;
assign src0=br_src0;
assign src1=br_src1;
always @(*) begin
    case (br_type)
        `BEQ:npc_sel=br_src0==br_src1;
        `BNE:npc_sel=br_src0!=br_src1;
        `BLT:npc_sel=src0<src1;
        `BGE:npc_sel=src0>=src1;
        `BLTU:npc_sel=br_src0<br_src1;
        `BGEU:npc_sel=br_src0>=br_src1; 
        `JAL:npc_sel=2'b10;
        `JALR:npc_sel=2'b10;
        default:npc_sel=2'b00;
    endcase
end
endmodule
