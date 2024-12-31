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
`define LW 4'b0000
`define LH 4'b0001
`define LB 4'b0010
`define LHU 4'b0011
`define LBU 4'b0100
`define SW 4'b0101
`define SH 4'b0110
`define SB 4'b0111
`define BEQ 4'b0000
`define BNE 4'b0001
`define BLT 4'b0010
`define BGE 4'b0011
`define BLTU 4'b0100
`define BGEU 4'b0101
`define JALR 4'b0110
`define JAL 4'b0111
`define OTHERS 32'hFFFFFFFF
`define ADD4 4'b1111
`define PC_ADD4 2'b00
`define ALU_RES 2'b01
`define DMEM_RDATA 2'b10
`define ZERO 2'b11
module DECODER (input [31 : 0] inst,
                output reg [4 : 0] alu_op,
                output [3 : 0] dmem_access,
                output reg [31 : 0] imm,
                output [4 : 0] rf_ra0,
                output [4 : 0] rf_ra1,
                output [4 : 0] rf_wa,
                output [0 : 0] rf_we,
                output reg [1 : 0] rf_wd_sel,
                output [0 : 0] alu_src0_sel,
                output [0 : 0] alu_src1_sel,
                output [3 : 0] br_type,
                output dmem_we);
    
    reg [0:0] we;
    reg [4:0] ra0;
    reg [4:0] ra1;
    reg [4:0] wa;
    reg [0:0] src0_sel;
    reg [0:0] src1_sel;
    reg [31:0] d_a;
    reg [31:0] b_t;
    reg [0:0] d_we;
    initial begin
        alu_op       = 0;
        we       = 0;
        ra0      = 0;
        ra1      = 0;
        wa       = 0;
        src0_sel = 0;
        src1_sel = 0;
        imm     = 0;
        d_a=`OTHERS;
        b_t=`ADD4;
        rf_wd_sel=`ALU_RES;
        d_we=0;
    end
    
    assign rf_ra0       = ra0;
    assign rf_ra1       = ra1;
    assign rf_wa        = wa;
    assign rf_we        = we;
    assign alu_src0_sel = src0_sel;
    assign alu_src1_sel = src1_sel;
    assign dmem_access = d_a;
    assign br_type=b_t;
    assign dmem_we=d_we;
    always @(*) begin
        if (inst[6:0] == 7'b0110011) begin
            we       = 1;
            ra0      = inst[19:15];
            ra1      = inst[24:20];
            wa       = inst[11:7];
            src0_sel = 1'b0;
            src1_sel = 1'b0;
            imm     = 32'd00000000;
            d_a=`OTHERS;
            b_t=`ADD4;
            rf_wd_sel=`ALU_RES;
            d_we=0;
            case ({inst[31:25], inst[14:12]})
                {7'b0000000, 3'b000}: alu_op = `ADD;
                {7'b0100000, 3'b000}: alu_op = `SUB;
                {7'b0000000, 3'b001}: alu_op = `SLL;
                {7'b0000000, 3'b010}: alu_op = `SLT;
                {7'b0000000, 3'b011}: alu_op = `SLTU;
                {7'b0000000, 3'b100}: alu_op = `XOR;
                {7'b0000000, 3'b101}: alu_op = `SRL;
                {7'b0100000, 3'b101}: alu_op = `SRA;
                {7'b0000000, 3'b110}: alu_op = `OR;
                {7'b0000000, 3'b111}: alu_op = `AND;
                default:              alu_op = 5'b11111;
            endcase
        end
        else if (inst[6:0] == 7'b0010011) begin
            we       = 1;
            ra0      = inst[19:15];
            ra1      = 5'b00000;
            wa       = inst[11:7];
            src0_sel = 1'b0;
            src1_sel = 1'b1;
            imm     = {{20{inst[31]}},inst[31:20]};
            d_a=`OTHERS;
            b_t=`ADD4;
            rf_wd_sel=`ALU_RES;
            d_we=0;
            case (inst[14:12])
                3'b000: alu_op = `ADD;
                3'b010: alu_op = `SLT;
                3'b011: alu_op = `SLTU;
                3'b100: alu_op = `XOR;
                3'b110: alu_op = `OR;
                3'b111: alu_op = `AND;
                3'b001: begin
                    alu_op   = `SLL;
                    imm = {{27{inst[24]}},inst[24:20]};
                end
                3'b101:
                case (inst[31:25])
                    7'b0000000:begin
                        alu_op   = `SRL;
                        imm = {{27{inst[24]}},inst[24:20]};
                    end
                    7'b0100000:begin
                        alu_op   = `SRA;
                        imm = {{27{inst[24]}},inst[24:20]};
                    end
                    default: alu_op = 5'b11111;
                endcase
                default:alu_op = 5'b11111;
            endcase
        end
        else if (inst[6:0] == 7'b0110111) begin
            we       = 1;
            ra0      = 5'b00000;
            ra1      = 5'b00000;
            wa       = inst[11:7];
            src0_sel = 1'b0;
            src1_sel = 1'b1;
            imm     = {inst[31:12],12'b0};
            alu_op       = `SRC1;
            d_a=`OTHERS;
            b_t=`ADD4;
            rf_wd_sel=`ALU_RES;
            d_we=0;
        end
        else if (inst[6:0] == 7'b0010111) begin
            we       = 1;
            ra0      = 5'b00000;
            ra1      = 5'b00000;
            wa       = inst[11:7];
            src0_sel = 1'b1;
            src1_sel = 1'b1;
            imm     = {inst[31:12],12'b0};
            alu_op       = `ADD;
            d_a=`OTHERS;
            b_t=`ADD4;
            rf_wd_sel=`ALU_RES;
            d_we=0;
        end else if(inst[6:0] == 7'b0000011) begin
            we       = 1;
            ra0      = inst[19:15];
            ra1      = 5'b00000;
            wa       = inst[11:7];
            src0_sel = 1'b0;
            src1_sel = 1'b1;
            imm      = {{20{inst[31]}},inst[31:20]};
            alu_op   = `ADD;
            b_t=`ADD4;
            rf_wd_sel=`DMEM_RDATA;
            d_we=0;
            case (inst[14:12])
                3'b000:d_a=`LB;
                3'b001:d_a=`LH;
                3'b010:d_a=`LW;
                3'b100:d_a=`LBU;
                3'b101:d_a=`LHU;
                default: d_a=`OTHERS;
            endcase
        end else if(inst[6:0]==7'b0100011)begin
            we=0;
            ra0=inst[19:15];
            ra1=inst[24:20];
            wa=0;
            src0_sel=1'b0;
            src1_sel=1'b1;
            imm={{20{inst[31]}},inst[31:25],inst[11:7]};
            alu_op=`ADD;
            b_t=`ADD4;
            rf_wd_sel=`ZERO;
            d_we=1;
            case (inst[14:12])
                3'b000:d_a=`SB;
                3'b001:d_a=`SH;
                3'b010:d_a=`SW; 
                default:d_a=`OTHERS; 
            endcase
        end else if (inst[6:0]==7'b1101111)begin
            we=1;
            ra0=0;
            ra1=0;
            wa=inst[11:7];
            src0_sel=1'b1;
            src1_sel=1'b1;
            imm={{11{inst[31]}},inst[31],inst[19:12],inst[20],inst[30:21],1'b0};
            alu_op=`ADD;
            d_a=`OTHERS;
            b_t=`JAL;
            rf_wd_sel=`PC_ADD4;
            d_we=0;
        end else if (inst[6:0]==7'b1100111)begin
            we=1;
            ra0=inst[19:15];
            ra1=0;
            wa=inst[11:7];
            src0_sel=1'b0;
            src1_sel=1'b1;
            imm={{20{inst[31]}},inst[31:20]};
            alu_op=`ADD;
            d_a=`OTHERS;
            b_t=`JALR;
            rf_wd_sel=`PC_ADD4;
            d_we=0;
        end else if (inst[6:0]==7'b1100011)begin
            we=0;
            ra0=inst[19:15];
            ra1=inst[24:20];
            wa=0;
            src0_sel=1'b1;
            src1_sel=1'b1;
            imm={{19{inst[31]}},inst[31],inst[7],inst[30:25],inst[11:8],1'b0};
            alu_op=`ADD;
            d_a=`OTHERS;
            rf_wd_sel=`ZERO;
            d_we=0;
            case (inst[14:12])
                3'b000:b_t=`BEQ;
                3'b001:b_t=`BNE;
                3'b100:b_t=`BLT;
                3'b101:b_t=`BGE;
                3'b110:b_t=`BLTU;
                3'b111:b_t=`BGEU; 
                default: b_t=`OTHERS;
            endcase
        end
        else begin
            we       = 0;
            ra0      = 5'b00000;
            ra1      = 5'b00000;
            wa       = 5'b00000;
            src0_sel = 1'b0;
            src1_sel = 1'b0;
            imm     = 32'b0;
            alu_op       = 5'b11111;
            d_a=`OTHERS;
            b_t=`ADD4;
            rf_wd_sel=`ZERO;
            d_we=0;
        end
    end
endmodule
