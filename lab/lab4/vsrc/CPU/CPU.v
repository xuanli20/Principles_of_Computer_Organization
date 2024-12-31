`include "./include/config.v"

module CPU (input [0 : 0] clk,
            input [0 : 0] rst,
            input [0 : 0] global_en,
            output [31 : 0] imem_raddr,
            input [31 : 0] imem_rdata,
            input [31 : 0] dmem_rdata,      // Unused
            output [0 : 0] dmem_we,        // Unused
            output [31 : 0] dmem_addr,      // Unused
            output [31 : 0] dmem_wdata,     // Unused
            output [0 : 0] commit,
            output [31 : 0] commit_pc,
            output [31 : 0] commit_inst,
            output [0 : 0] commit_halt,
            output [0 : 0] commit_reg_we,
            output [4 : 0] commit_reg_wa,
            output [31 : 0] commit_reg_wd,
            output [0 : 0] commit_dmem_we,
            output [31 : 0] commit_dmem_wa,
            output [31 : 0] commit_dmem_wd,
            input [4 : 0] debug_reg_ra,
            output [31 : 0] debug_reg_rd);
    
    
    // TODO
    wire [31:0] cur_npc;
    wire [31:0] cur_pc;
    wire [31:0] cur_inst;
    wire [31:0] pc_add4;
    wire [31:0] pc_offset;
    wire [1:0] pc_sel;
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
    wire [31:0] alu_src0;
    wire [31:0] alu_src1;
    wire [31:0] alu_res;
    wire [31:0] pc_j;
    wire [1:0] npc_sel;
    wire [3:0] dmem_access;
    wire [1:0] rf_wd_sel;
    wire [3:0] br_type;
    wire [31:0] dmem_wd_in;
    wire [31:0] dmem_wd_out;
    wire [31:0] dmem_rd_in;
    wire [31:0] dmem_rd_out;
    wire dmem_we_;
    
    //assign global_en  = !(cur_inst == 32'H00000013);
    assign imem_raddr = {{cur_pc-32'h00400000}/'d4};
    assign cur_inst   = imem_rdata;
    assign pc_offset  = alu_res;
    assign pc_j       = alu_res&~1;
    assign dmem_wd_in = rf_rd1;
    assign dmem_we    = dmem_we_;
    assign dmem_addr  = {(alu_res-32'h10010000)/'d4};
    assign dmem_wdata = dmem_wd_out;
    assign dmem_rd_in = dmem_rdata;
    PC_PLUS4 pc_plus(
    .pc(cur_pc),
    .pc_plus4(pc_add4)
    );
    
    NPC npc(
    .pc_offset(pc_offset),
    .pc_add4(pc_add4),
    .pc_j(pc_j),
    .npc_sel(npc_sel),
    .npc(cur_npc)
    );
    
    PC pc(
    .clk    (clk),
    .rst    (rst),
    .en     (global_en),    // 当 global_en 为高电平时，PC 才会更新，CPU 才会执行指令。
    .npc    (cur_npc),
    .pc     (cur_pc)
    );
    
    DECODER decoder(
    .inst(cur_inst),
    .alu_op(alu_op),
    .imm(imm),
    .rf_ra0(rf_ra0),
    .rf_ra1(rf_ra1),
    .rf_wa(rf_wa),
    .rf_we(rf_we),
    .alu_src0_sel(alu_src0_sel),
    .alu_src1_sel(alu_src1_sel),
    .dmem_access(dmem_access),
    .rf_wd_sel(rf_wd_sel),
    .br_type(br_type),
    .dmem_we(dmem_we_)
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
    .alu_res(alu_res)
    );
    
    SLU slu(
    .addr(alu_res),
    .dmem_access(dmem_access),
    .rd_in(dmem_rd_in),
    .wd_in(dmem_wd_in),
    .rd_out(dmem_rd_out),
    .wd_out(dmem_wd_out)
    );
    
    MUX2 RF_MUX(
    .src0(pc_add4),
    .src1(alu_res),
    .src2(dmem_rd_out),
    .src3(0),
    .sel(rf_wd_sel),
    .res(rf_wd)
    );
    
    BRANCH branch(
    .br_type(br_type),
    .br_src0(rf_rd0),
    .br_src1(rf_rd1),
    .npc_sel(npc_sel)
    );
    /* -------------------------------------------------------------------------- */
    /*                                    Commit                                  */
    /* -------------------------------------------------------------------------- */
    
    wire [0 : 0] commit_if     ;
    assign commit_if = 1'H1;
    
    reg  [0 : 0]   commit_reg          ;
    reg  [31 : 0]   commit_pc_reg       ;
    reg  [31 : 0]   commit_inst_reg     ;
    reg  [0 : 0]   commit_halt_reg     ;
    reg  [0 : 0]   commit_reg_we_reg   ;
    reg  [4 : 0]   commit_reg_wa_reg   ;
    reg  [31 : 0]   commit_reg_wd_reg   ;
    reg  [0 : 0]   commit_dmem_we_reg  ;
    reg  [31 : 0]   commit_dmem_wa_reg  ;
    reg  [31 : 0]   commit_dmem_wd_reg  ;
    
    always @(posedge clk) begin
        if (rst) begin
            commit_reg         <= 1'H0;
            commit_pc_reg      <= 32'H0;
            commit_inst_reg    <= 32'H0;
            commit_halt_reg    <= 1'H0;
            commit_reg_we_reg  <= 1'H0;
            commit_reg_wa_reg  <= 5'H0;
            commit_reg_wd_reg  <= 32'H0;
            commit_dmem_we_reg <= 1'H0;
            commit_dmem_wa_reg <= 32'H0;
            commit_dmem_wd_reg <= 32'H0;
        end
        else if (global_en) begin
            commit_reg      <= commit_if;
            commit_pc_reg   <= cur_pc;       // TODO
            commit_inst_reg <= cur_inst;       // TODO
            commit_halt_reg     <= cur_inst == `HALT_INST;       // TODO
            commit_reg_we_reg  <= rf_we;       // TODO
            commit_reg_wa_reg  <= rf_wa;       // TODO
            commit_reg_wd_reg  <= rf_wd;       // TODO
            commit_dmem_we_reg <= dmem_we;
            commit_dmem_wa_reg <= dmem_addr;
            commit_dmem_wd_reg <= dmem_wd_out;
        end
            end
            
            assign commit         = commit_reg;
            assign commit_pc      = commit_pc_reg;
            assign commit_inst    = commit_inst_reg;
            assign commit_halt    = commit_halt_reg;
            assign commit_reg_we  = commit_reg_we_reg;
            assign commit_reg_wa  = commit_reg_wa_reg;
            assign commit_reg_wd  = commit_reg_wd_reg;
            assign commit_dmem_we = commit_dmem_we_reg;
            assign commit_dmem_wa = commit_dmem_wa_reg;
            assign commit_dmem_wd = commit_dmem_wd_reg;
endmodule
