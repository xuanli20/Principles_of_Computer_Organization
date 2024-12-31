`include "./include/config.v"

module CPU (
    input                   [ 0 : 0]            clk,
    input                   [ 0 : 0]            rst,

    input                   [ 0 : 0]            global_en,

/* ------------------------------ Memory (inst) ----------------------------- */
    output                  [31 : 0]            imem_raddr,
    input                   [31 : 0]            imem_rdata,

/* ------------------------------ Memory (data) ----------------------------- */
    input                   [31 : 0]            dmem_rdata, // Unused
    output                  [ 0 : 0]            dmem_we,    // Unused
    output                  [31 : 0]            dmem_addr,  // Unused
    output                  [31 : 0]            dmem_wdata, // Unused

/* ---------------------------------- Debug --------------------------------- */
    output                  [ 0 : 0]            commit,
    output                  [31 : 0]            commit_pc,
    output                  [31 : 0]            commit_inst,
    output                  [ 0 : 0]            commit_halt,
    output                  [ 0 : 0]            commit_reg_we,
    output                  [ 4 : 0]            commit_reg_wa,
    output                  [31 : 0]            commit_reg_wd,
    output                  [ 0 : 0]            commit_dmem_we,
    output                  [31 : 0]            commit_dmem_wa,
    output                  [31 : 0]            commit_dmem_wd,

    input                   [ 4 : 0]            debug_reg_ra,
    output                  [31 : 0]            debug_reg_rd
);


// TODO
wire [31:0] cur_npc;
wire [31:0] cur_pc;
wire [31:0] cur_inst;
//assign global_en=!(cur_inst==32'H00100073);
PC_PLUS4 pc_plus(
.pc(cur_pc),
.pc_plus4(cur_npc)
);
PC pc(
.clk    (clk),
.rst    (rst),
.en     (global_en),    // 当 global_en 为高电平时，PC 才会更新，CPU 才会执行指令。
.npc    (cur_npc),
.pc     (cur_pc)
);

INST_MEM inst_mem(
.a({{cur_pc-32'h00400000}/'d4}),      // input wire [8 : 0] a
.d(32'b0),      // input wire [31 : 0] d
.clk(clk),  // input wire clk
.we(1'b0),    // input wire we
.spo(cur_inst)  // output wire [31 : 0] spo
);

wire [4:0] rf_ra0;
wire [4:0] rf_ra1;
wire [4:0] rf_wa;
wire [31:0] rf_wd;
wire [4:0] alu_op;
wire alu_src0_sel;
wire alu_src1_sel;
wire [31:0] imm;
wire rf_we;
wire [31:0] rf_rd0;
wire [31:0] rf_rd1;
DECODE decoder(
.inst(cur_inst),
.alu_op(alu_op),
.imm(imm),
.rf_ra0(rf_ra0),
.rf_ra1(rf_ra1),
.rf_wa(rf_wa),
.rf_we(rf_we),
.alu_src0_sel(alu_src0_sel),
.alu_src1_sel(alu_src1_sel)
);

REG_FILE reg_file(
.clk(clk),
.rf_ra0(rf_ra0),
.rf_ra1(rf_ra1),
.rf_wa(rf_wa),
.rf_we(rf_we),
.rf_wd(rf_wd),
.rf_rd0(rf_rd0),
.rf_rd1(rf_rd1),
.debug_reg_rd(debug_reg_rd),
.debug_reg_ra(debug_reg_ra)
);

wire [31:0] alu_src0;
wire [31:0] alu_src1;
MUX1 mux1(
    .src0(rf_rd0),
    .src1(cur_pc),
    .sel(alu_src0_sel),
    .res(alu_src0)
);
MUX1 mux2(
    .src0(rf_rd1),
    .src1(imm),
    .sel(alu_src1_sel),
    .res(alu_src1)
);

ALU alu(
    .alu_src0(alu_src0),
    .alu_src1(alu_src1),
    .alu_op(alu_op),
    .alu_res(rf_wd)
);
/* -------------------------------------------------------------------------- */
/*                                    Commit                                  */
/* -------------------------------------------------------------------------- */

    wire [ 0 : 0] commit_if     ;
    assign commit_if = 1'H1;

    reg  [ 0 : 0]   commit_reg          ;
    reg  [31 : 0]   commit_pc_reg       ;
    reg  [31 : 0]   commit_inst_reg     ;
    reg  [ 0 : 0]   commit_halt_reg     ;
    reg  [ 0 : 0]   commit_reg_we_reg   ;
    reg  [ 4 : 0]   commit_reg_wa_reg   ;
    reg  [31 : 0]   commit_reg_wd_reg   ;
    reg  [ 0 : 0]   commit_dmem_we_reg  ;
    reg  [31 : 0]   commit_dmem_wa_reg  ;
    reg  [31 : 0]   commit_dmem_wd_reg  ;

    always @(posedge clk) begin
        if (rst) begin
            commit_reg          <= 1'H0;
            commit_pc_reg       <= 32'H0;
            commit_inst_reg     <= 32'H0;
            commit_halt_reg     <= 1'H0;
            commit_reg_we_reg   <= 1'H0;
            commit_reg_wa_reg   <= 5'H0;
            commit_reg_wd_reg   <= 32'H0;
            commit_dmem_we_reg  <= 1'H0;
            commit_dmem_wa_reg  <= 32'H0;
            commit_dmem_wd_reg  <= 32'H0;
        end
        else if (global_en) begin
            commit_reg          <= commit_if;
            commit_pc_reg       <= cur_pc;       // TODO
            commit_inst_reg     <= cur_inst;       // TODO
            commit_halt_reg     <= cur_inst == `HALT_INST;       // TODO
            commit_reg_we_reg   <= rf_we;       // TODO
            commit_reg_wa_reg   <= rf_wa;       // TODO
            commit_reg_wd_reg   <= rf_wd;       // TODO
            commit_dmem_we_reg  <= 0;
            commit_dmem_wa_reg  <= 0;
            commit_dmem_wd_reg  <= 0;
        end
    end

    assign commit               = commit_reg;
    assign commit_pc            = commit_pc_reg;
    assign commit_inst          = commit_inst_reg;
    assign commit_halt          = commit_halt_reg;
    assign commit_reg_we        = commit_reg_we_reg;
    assign commit_reg_wa        = commit_reg_wa_reg;
    assign commit_reg_wd        = commit_reg_wd_reg;
    assign commit_dmem_we       = commit_dmem_we_reg;
    assign commit_dmem_wa       = commit_dmem_wa_reg;
    assign commit_dmem_wd       = commit_dmem_wd_reg;
endmodule