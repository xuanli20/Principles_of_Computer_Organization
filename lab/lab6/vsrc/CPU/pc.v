module PC (input [0 : 0] clk,
           input [0 : 0] rst,
           input [0 : 0] stall,
           input [0 : 0] flush,
           input [0 : 0] en,
           input [31 : 0] npc,
           output reg [31 : 0] pc);

initial begin
    pc = 32'h00400000;
end

always @(posedge clk) begin
    if (rst)
        pc <= 32'h00400000;
    else if (en)
        if(flush)
            pc <= 32'h00400000;
        else
        if (stall)
            pc <= pc;
        else
            pc <= npc;
    else
        pc <= pc;
end

endmodule
