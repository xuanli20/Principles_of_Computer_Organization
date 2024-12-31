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
module DECODE (input [31 : 0] inst,
               output [4 : 0] alu_op,
               output [31 : 0] imm,
               output [4 : 0] rf_ra0,
               output [4 : 0] rf_ra1,
               output [4 : 0] rf_wa,
               output [0 : 0] rf_we,
               output [0 : 0] alu_src0_sel,
               output [0 : 0] alu_src1_sel);
reg [4:0] op;
reg [0:0] we;
reg [4:0] ra0;
reg [4:0] ra1;
reg [4:0] wa;
reg [0:0] src0_sel;
reg [0:0] src1_sel;
reg [31:0] imm_;

initial begin
    op       = 0;
    we       = 0;
    ra0      = 0;
    ra1      = 0;
    wa       = 0;
    src0_sel = 0;
    src1_sel = 0;
    imm_     = 0;
end

assign alu_op       = op;
assign imm          = imm_;
assign rf_ra0       = ra0;
assign rf_ra1       = ra1;
assign rf_wa        = wa;
assign rf_we        = we;
assign alu_src0_sel = src0_sel;
assign alu_src1_sel = src1_sel;

always @(*) begin
    if (inst[6:0] == 7'b0110011) begin
        we       = 1;
        ra0      = inst[19:15];
        ra1      = inst[24:20];
        wa       = inst[11:7];
        src0_sel = 1'b0;
        src1_sel = 1'b0;
        imm_     = 32'h00000000;
        case ({inst[31:25], inst[14:12]})
            {7'b0000000, 3'b000}: op = `ADD;
            {7'b0100000, 3'b000}: op = `SUB;
            {7'b0000000, 3'b001}: op = `SLL;
            {7'b0000000, 3'b010}: op = `SLT;
            {7'b0000000, 3'b011}: op = `SLTU;
            {7'b0000000, 3'b100}: op = `XOR;
            {7'b0000000, 3'b101}: op = `SRL;
            {7'b0100000, 3'b101}: op = `SRA;
            {7'b0000000, 3'b110}: op = `OR;
            {7'b0000000, 3'b111}: op = `AND;
            default:              op = 5'b11111;
        endcase
    end
    else if (inst[6:0] == 7'b0010011) begin
        we       = 1;
        ra0      = inst[19:15];
        ra1      = 5'b00000;
        wa       = inst[11:7];
        src0_sel = 1'b0;
        src1_sel = 1'b1;
        imm_     = {{20{inst[31]}},inst[31:25]};
        case (inst[14:12])
            3'b000: op = `ADD;
            3'b010: op = `SLT;
            3'b011: op = `SLTU;
            3'b100: op = `XOR;
            3'b110: op = `OR;
            3'b111: op = `AND;
            3'b001: begin
                op   = `SLL;
                imm_ = {{27{inst[24]}},inst[24:20]};
            end
            3'b101:
            case (inst[31:25])
                7'b0000000:begin
                    op   = `SRL;
                    imm_ = {{27{inst[24]}},inst[24:20]};
                end
                7'b0100000:begin
                    op   = `SRA;
                    imm_ = {{27{inst[24]}},inst[24:20]};
                end
                default: op = 5'b11111;
            endcase
            default:op = 5'b11111;
        endcase
    end
    else if (inst[6:0] == 7'b0110111) begin
        we       = 1;
        ra0      = 5'b00000;
        ra1      = 5'b00000;
        wa       = inst[11:7];
        src0_sel = 1'b0;
        src1_sel = 1'b1;
        imm_     = {inst[31:12],12'b0};
        op       = `SRC1;
    end
    else if (inst[6:0] == 7'b0010111) begin
            we       = 1;
            ra0      = 5'b00000;
            ra1      = 5'b00000;
            wa       = inst[11:7];
            src0_sel = 1'b1;
            src1_sel = 1'b1;
            imm_     = {inst[31:12],12'b0};
            op       = `ADD;
    end else begin
            we       = 0;
            ra0      = 5'b00000;
            ra1      = 5'b00000;
            wa       = 5'b00000;
            src0_sel = 1'b0;
            src1_sel = 1'b0;
            imm_     = 32'b0;
            op       = 5'b11111;
    end
end
endmodule
