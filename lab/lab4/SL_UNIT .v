`define LW 4'b0000
`define LH 4'b0001
`define LB 4'b0010
`define LHU 4'b0011
`define LBU 4'b0100
`define SW 4'b0101
`define SH 4'b0110
`define SB 4'b0111
module SL_UNIT  (input [31 : 0] addr,
            input [3 : 0] dmem_access,
            input [31 : 0] rd_in,
            input [31 : 0] wd_in,
            output reg [31 : 0] rd_out,
            output reg [31 : 0] wd_out,
            output reg [0:3] mask);
wire [31:0] addr_;
initial begin
    rd_out=0;
    wd_out=0;
    mask=0;
end
assign addr_=addr-32'h10010000;
always @(*) begin
    case(dmem_access)
        `LW:
        begin
            mask=4'b1111;
            rd_out = rd_in;
            wd_out =0;
        end
        `LH:begin
            mask=4'b1111;
            wd_out =0;
            if(addr_%4 == 0)
                rd_out = {{16{rd_in[15]}},rd_in[15:0]};
            else
                rd_out = {{16{rd_in[31]}},rd_in[31:16]};
        end
        `LB:begin
            mask=4'b1111;
            case(addr_%4)
                0:rd_out = {{24{rd_in[7]}},rd_in[7:0]};
                1:rd_out = {{24{rd_in[15]}},rd_in[15:8]};
                2:rd_out = {{24{rd_in[23]}},rd_in[23:16]};
                3:rd_out = {{24{rd_in[31]}},rd_in[31:24]};
            endcase
            wd_out =0;
        end
            
        `LHU:begin
            mask=4'b1111;
            if(addr_%4 == 0)
                rd_out = {16'b0,rd_in[15:0]};
            else
                rd_out = {16'b0,rd_in[31:16]};
            wd_out =0;
        end
            
        `LBU:begin
            mask=4'b1111;
            case(addr_%4)
                0:rd_out = {24'b0,rd_in[7:0]};
                1:rd_out = {24'b0,rd_in[15:8]};
                2:rd_out = {24'b0,rd_in[23:16]};
                3:rd_out = {24'b0,rd_in[31:24]};
            endcase
            wd_out =0;
        end
        `SW:begin
            mask=4'b1111;
            wd_out=wd_in;
            rd_out = 0;
        end 
        `SH:begin
            if(addr_%4 == 0)
                mask=4'b0011;
            else
                mask=4'b1100;
            wd_out=wd_in;
            rd_out = 0;
        end
            
        `SB:begin
            case(addr_%4)
                0:mask=4'b0001;
                1:mask=4'b0010;
                2:mask=4'b0100;
                3:mask=4'b1000;
            endcase
            wd_out=wd_in;
            rd_out = 0;
        end
        default:
            begin
                mask=4'b0000;
                rd_out = 0;
                wd_out =0;
            end
    endcase
end
endmodule
