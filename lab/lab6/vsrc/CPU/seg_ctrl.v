`define DMEM_RDATA 2'b10
module SEG_CTRL (
    input [0:0] rf_we_ex,
    input [1:0] rf_wd_sel_ex,
    input [4:0] rf_wa_ex,
    input [4:0] rf_ra0_id,
    input [4:0] rf_ra1_id,
    input [1:0] npc_sel_ex,
    output reg [0:0] stall_pc,
    output reg [0:0] stall_if_id,
    output reg [0:0] flush_if_id,
    output reg [0:0] flush_id_ex
);
    always @(*) begin
        stall_pc=0;
        stall_if_id=0;
        flush_id_ex=0;
        flush_if_id=0;
        if(rf_we_ex && rf_wd_sel_ex==`DMEM_RDATA && (rf_wa_ex==rf_ra0_id || rf_wa_ex==rf_ra1_id))begin
            flush_id_ex=1'b1;
            stall_pc=1'b1;
            stall_if_id=1'b1;
        end
        if(npc_sel_ex!=2'b00) begin
            flush_id_ex=1'b1;
            flush_if_id=1'b1;
        end
    end
endmodule