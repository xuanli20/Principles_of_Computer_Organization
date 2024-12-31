module ID_EX(
    input clk,
    input rst,
    input flush,
    input stall,
    input en,
    // PC
    input [31:0] pc_add4_in,
    input [31:0] pc_in,

    output [31:0] pc_add4_out,
    output [31:0] pc_out,

    // INST
    input [31:0] inst_in,

    output [31:0] inst_out,
    
    // DECODER
    input [4:0] alu_op_in,
    input [3:0] dmem_access_in,
    input [31:0] imm_in,
    input [4:0] rf_ra0_in,
    input [4:0] rf_ra1_in,
    input [4:0] rf_wa_in,
    input [0:0] rf_we_in,
    input [1:0] rf_wd_sel_in,
    input [0:0] alu_src0_sel_in,
    input [0:0] alu_src1_sel_in,
    input [3:0] br_type_in,
    input [0:0] dmem_we_in,

    output [4:0] alu_op_out,
    output [3:0] dmem_access_out,
    output [31:0] imm_out,
    output [4:0] rf_ra0_out,
    output [4:0] rf_ra1_out,
    output [4:0] rf_wa_out,
    output [0:0] rf_we_out,
    output [1:0] rf_wd_sel_out,
    output [0:0] alu_src0_sel_out,
    output [0:0] alu_src1_sel_out,
    output [3:0] br_type_out,
    output [0:0] dmem_we_out,

    // REG_FILE
    input [31:0] rf_rd0_in,
    input [31:0] rf_rd1_in,

    output [31:0] rf_rd0_out,
    output [31:0] rf_rd1_out,

    // MUX1
    input [31:0] alu_src0_in,
    input [31:0] alu_src1_in,

    output [31:0] alu_src0_out,
    output [31:0] alu_src1_out,

    // NPC
    input [31:0] npc_in,

    output [31:0] npc_out,
    // BRANCH
    input [1 : 0] npc_sel_in,
    
    output [1 : 0] npc_sel_out,
    // ALU
    input [31:0] alu_res_in,
    
    output [31:0] alu_res_out,

    // SLU
    input [31:0] dmem_rd_out_in,
    input [31:0] dmem_wdata_mem_in,

    output [31:0] dmem_rd_out_out,
    output [31:0] dmem_wdata_mem_out,

    // DM
    input [31:0] dmem_rdata_mem_in,

    output [31:0] dmem_rdata_mem_out,

    // COMMIT
    input [0:0] commit_in,
    
    output [0:0] commit_out
);
    reg [31:0] pc_add4;
    reg [31:0] pc;
    reg [31:0] inst;

    reg [4:0] alu_op;
    reg [3:0] dmem_access;
    reg [31:0] imm;
    reg [4:0] rf_ra0;
    reg [4:0] rf_ra1;
    reg [4:0] rf_wa;
    reg [0:0] rf_we;
    reg [1:0] rf_wd_sel;
    reg [0:0] alu_src0_sel;
    reg [0:0] alu_src1_sel;
    reg [3:0] br_type;
    reg [0:0] dmem_we;
    reg [31:0] rf_rd0;
    reg [31:0] rf_rd1;
    reg [0:0] commit;

    reg [31:0] alu_src0;
    reg [31:0] alu_src1;
    reg [31:0] npc;
    reg [1:0] npc_sel;
    reg [31:0] alu_res;

    reg [31:0] dmem_rd_out;
    reg [31:0] dmem_wdata_mem;
    reg [31:0] dmem_rdata_mem;

    initial begin
        commit=0;
        pc_add4=0;
        pc=32'h00400000;
        inst=0;

        alu_op=5'b11111;
        dmem_access=0;
        imm=0;
        rf_ra0=0;
        rf_ra1=0;
        rf_wa=0;
        rf_we=0;
        rf_wd_sel=0;
        alu_src0_sel=0;
        alu_src1_sel=0;
        br_type=4'b1111;
        dmem_we=0;
        rf_rd0=0;
        rf_rd1=0;
        
        alu_src0=0;
        alu_src1=0;
        npc=0;
        npc_sel=0;
        alu_res=0;

        dmem_rd_out=0;
        dmem_wdata_mem=0;
        dmem_rdata_mem=0;
    end

    assign commit_out=commit;
    assign pc_add4_out=pc_add4;
    assign pc_out=pc;
    assign inst_out=inst;
    
    assign alu_op_out=alu_op;
    assign dmem_access_out=dmem_access;
    assign imm_out=imm;
    assign rf_ra0_out=rf_ra0;
    assign rf_ra1_out=rf_ra1;
    assign rf_wa_out=rf_wa;
    assign rf_we_out=rf_we;
    assign rf_wd_sel_out=rf_wd_sel;
    assign alu_src0_sel_out=alu_src0_sel;
    assign alu_src1_sel_out=alu_src1_sel;
    assign br_type_out=br_type;
    assign dmem_we_out=dmem_we;
    assign rf_rd0_out=rf_rd0;
    assign rf_rd1_out=rf_rd1;

    assign alu_src0_out=alu_src0;
    assign alu_src1_out=alu_src1;
    assign npc_out=npc;
    assign npc_sel_out=npc_sel;
    assign alu_res_out=alu_res;
    assign dmem_rd_out_out=dmem_rd_out;
    assign dmem_wdata_mem_out=dmem_wdata_mem;
    assign dmem_rdata_mem_out=dmem_rdata_mem;

    always @(posedge clk) begin
        if(rst)begin
            commit<=0;
            pc_add4<=0;
            pc<=32'h00400000;
            inst<=0;

            alu_op<=5'b11111;
            dmem_access<=0;
            imm<=0;
            rf_ra0<=0;
            rf_ra1<=0;
            rf_wa<=0;
            rf_we<=0;
            rf_wd_sel<=0;
            alu_src0_sel<=0;
            alu_src1_sel<=0;
            br_type<=4'b1111;
            dmem_we<=0;
            rf_rd0=0;
            rf_rd1=0;

            alu_src0<=0;
            alu_src1<=0;
            npc<=0;
            npc_sel<=0;
            alu_res<=0;

            dmem_rd_out<=0;
            dmem_wdata_mem<=0;
            dmem_rdata_mem<=0;
        end
        else if(en)begin
            if(flush)begin
                commit<=0;
                pc_add4<=0;
                pc<=32'h00400000;
                inst<=0;

                alu_op<=5'b11111;
                dmem_access<=0;
                imm<=0;
                rf_ra0<=0;
                rf_ra1<=0;
                rf_wa<=0;
                rf_we<=0;
                rf_wd_sel<=0;
                alu_src0_sel<=0;
                alu_src1_sel<=0;
                br_type<=4'b1111;
                dmem_we<=0;
                rf_rd0=0;
                rf_rd1=0;

                alu_src0<=0;
                alu_src1<=0;
                npc<=0;
                npc_sel<=0;
                alu_res<=0;

                dmem_rd_out<=0;
                dmem_wdata_mem<=0;
                dmem_rdata_mem<=0;
            end
            else if(stall)begin
                commit<=commit;

                pc_add4<=pc_add4;
                pc<=pc;
                inst<=inst;

                alu_op<=alu_op;
                dmem_access<=dmem_access;
                imm<=imm;
                rf_ra0<=rf_ra0;
                rf_ra1<=rf_ra1;
                rf_wa<=rf_wa;
                rf_we<=rf_we;
                rf_wd_sel<=rf_wd_sel;
                alu_src0_sel<=alu_src0_sel;
                alu_src1_sel<=alu_src1_sel;
                br_type<=br_type;
                dmem_we<=dmem_we;
                rf_rd0<=rf_rd0;
                rf_rd1<=rf_rd1;

                alu_src0<=alu_src0;
                alu_src1<=alu_src1;
                npc<=npc;
                npc_sel<=npc_sel;
                alu_res<=alu_res;

                dmem_rd_out<=dmem_rd_out;
                dmem_wdata_mem<=dmem_wdata_mem;
                dmem_rdata_mem<=dmem_rdata_mem;
            end 
            else begin
                commit<=commit_in;

                pc_add4<=pc_add4_in;
                pc<=pc_in;
                inst<=inst_in;

                alu_op<=alu_op_in;
                dmem_access<=dmem_access_in;
                imm<=imm_in;
                rf_ra0<=rf_ra0_in;
                rf_ra1<=rf_ra1_in;
                rf_wa<=rf_wa_in;
                rf_we<=rf_we_in;
                rf_wd_sel<=rf_wd_sel_in;
                alu_src0_sel<=alu_src0_sel_in;
                alu_src1_sel<=alu_src1_sel_in;
                br_type<=br_type_in;
                dmem_we<=dmem_we_in;
                rf_rd0=rf_rd0_in;
                rf_rd1=rf_rd1_in;

                alu_src0<=alu_src0_in;
                alu_src1<=alu_src1_in;
                npc<=npc_in;
                npc_sel<=npc_sel_in;
                alu_res<=alu_res_in;

                dmem_rd_out<=dmem_rd_out_in;
                dmem_wdata_mem<=dmem_wdata_mem_in;
                dmem_rdata_mem<=dmem_rdata_mem_in;
            end
        end
        else begin
            commit<=commit;

            pc_add4<=pc_add4;
            pc<=pc;
            inst<=inst;

            alu_op<=alu_op;
            dmem_access<=dmem_access;
            imm<=imm;
            rf_ra0<=rf_ra0;
            rf_ra1<=rf_ra1;
            rf_wa<=rf_wa;
            rf_we<=rf_we;
            rf_wd_sel<=rf_wd_sel;
            alu_src0_sel<=alu_src0_sel;
            alu_src1_sel<=alu_src1_sel;
            br_type<=br_type;
            dmem_we<=dmem_we;
            rf_rd0=rf_rd0;
            rf_rd1=rf_rd1;

            alu_src0<=alu_src0;
            alu_src1<=alu_src1;
            npc<=npc;
            npc_sel<=npc_sel;
            alu_res<=alu_res;

            dmem_rd_out<=dmem_rd_out;
            dmem_wdata_mem<=dmem_wdata_mem;
            dmem_rdata_mem<=dmem_rdata_mem;
        end
    end
endmodule