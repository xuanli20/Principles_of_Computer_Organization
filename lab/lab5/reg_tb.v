`timescale 1ns / 1ps
module REG_TB();
    reg clk;
    reg [4 : 0] rf_ra0;
    reg [4 : 0] rf_ra1;
    reg [4 : 0] rf_wa;
    reg [0 : 0] rf_we;
    reg [31 : 0] rf_wd;
    wire [31 : 0] rf_rd0;
    wire [31 : 0] rf_rd1;
    reg [4:0] debug_reg_ra;
    wire [31:0] debug_reg_rd;
    REG_FILE reg_file(
        .clk(clk),
        .rf_ra0(rf_ra0),
        .rf_ra1(rf_ra1),
        .rf_wa(rf_wa),
        .rf_we(rf_we),
        .rf_wd(rf_wd),
        .rf_rd0(rf_rd0),
        .rf_rd1(rf_rd1),
        .debug_reg_ra(debug_reg_ra),
        .debug_reg_rd(debug_reg_rd)
    );
    localparam CLK_PERIOD      = 10;
    always #(CLK_PERIOD/2) clk = ~clk;
    initial begin
        clk = 0;
        rf_we=0;
        rf_wa=0;
        rf_wd=0;
        rf_ra0=5'b00001;
        rf_ra1=0;
        #100
        rf_we=1;
        rf_wa=5'b00001;
        rf_wd=32'h10000000;
        rf_ra0=5'b00001;
        rf_ra1=0;
        debug_reg_ra=0;
        #100
        $finish;
    end
    
endmodule
