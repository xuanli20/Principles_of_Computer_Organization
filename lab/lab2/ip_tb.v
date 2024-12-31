module IP_tb ();
    reg                 clk;
    reg     [4 : 0]    a;
    reg     [0 : 0]    we;
    reg     [31 : 0]    d;
    wire    [31 : 0]    spo;
    
    dist_mem_gen_0 IP (
    .a(a),      // input wire [4 : 0] a
    .d(d),      // input wire [31 : 0] d
    .clk(clk),  // input wire clk
    .we(we),    // input wire we
    .spo(spo)  // output wire [31 : 0] spo
    );
    
    initial begin
        clk = 0;
        we  = 1'b0;
        d   = 32'h0;
        a   = 5'h0;
        #10
        a=5'h1;
        #10
        $finish;
    end
    always #5 clk = ~clk;
endmodule
