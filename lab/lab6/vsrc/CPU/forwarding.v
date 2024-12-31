module FORWARDING (
    input [0:0] rf_we_mem,
    input [0:0] rf_we_wb,
    input [4:0] rf_wa_mem,
    input [4:0] rf_wa_wb,
    input [31:0] rf_wd_mem,
    input [31:0] rf_wd_wb,
    input [4:0] rf_ra0_ex,
    input [4:0] rf_ra1_ex,
    output [0:0] rf_rd0_fe,
    output [0:0] rf_rd1_fe,
    output [31:0] rf_rd0_fd,
    output [31:0] rf_rd1_fd
);
    reg [31:0] rd0_fd,rd1_fd;
    reg [0:0] rd0_fe,rd1_fe;
    initial begin
        rd0_fd=0;
        rd0_fe=0;
        rd1_fd=0;
        rd1_fe=0;
    end

    assign rf_rd0_fe=rd0_fe;
    assign rf_rd1_fe=rd1_fe;
    assign rf_rd0_fd=rd0_fd;
    assign rf_rd1_fd=rd1_fd;

    always @(*) begin
        rd0_fd=0;
        rd1_fd=0;
        rd0_fe=0;
        rd1_fe=0;
        if(rf_we_wb && rf_wa_wb!=5'b00000 && rf_wa_wb==rf_ra0_ex) begin
            rd0_fd=rf_wd_wb;
            rd0_fe=1;
        end 
        if(rf_we_wb && rf_wa_wb!=5'b00000 && rf_wa_wb==rf_ra1_ex) begin
            rd1_fd=rf_wd_wb;
            rd1_fe=1;
        end 
        if(rf_we_mem && rf_wa_mem!=5'b00000 && rf_wa_mem==rf_ra0_ex) begin
            rd0_fd=rf_wd_mem;
            rd0_fe=1;
        end 
        if(rf_we_mem && rf_wa_mem!=5'b00000 && rf_wa_mem==rf_ra1_ex) begin
            rd1_fd=rf_wd_mem;
            rd1_fe=1;
        end 
    end
endmodule