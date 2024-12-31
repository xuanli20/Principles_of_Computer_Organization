module TOP (input [0 : 0] clk,
            input [0 : 0] rst,
            input [0 : 0] enable,
            input [4 : 0] in,
            input [1 : 0] ctrl,
            output [3 : 0] seg_data,
            output [2 : 0] seg_an);
    reg [31:0] src0;
    reg [31:0] src1;
    reg [4:0] op;
    wire [31:0] res;
    ALU alu(
        .alu_src0(src0),
        .alu_src1(src1),
        .alu_op(op),
        .alu_res(res)
    );
    reg     [ 4 : 0]    ra0, ra1, wa;
    reg     [ 0 : 0]    we;
    reg     [31 : 0]    wd;
    wire    [31 : 0]    rd0;
    wire    [31 : 0]    rd1;
    REG_FILE regfile (
        .clk    (clk),
        .rf_ra0    (ra0),
        .rf_ra1    (ra1),
        .rf_wa     (wa),
        .rf_we     (we),
        .rf_wd     (wd),
        .rf_rd0    (rd0),
        .rf_rd1    (rd1)
    );
    Segment segment(
        .clk(clk),
        .rst(rst),
        .output_data(res),
        .seg_data(seg_data),
        .seg_an(seg_an)
    );
    reg flage;
    reg [2:0] t0;
    reg [2:0] t1;
    initial begin
        src0=0;
        src1=0;
        op=0;
        ra0=0;
        ra1=0;
        wa=0;
        we=1'b1;
        wd=0;
        flage=0;
        t0=0;
        t1=0;
    end
    always @(posedge clk) begin
        if(rst)begin
            src0<=0;
            src1<=0;
            op<=0;
            ra0<=0;
            ra1<=0;
            wa<=0;
            we<=1'b1;
            wd<=0;
            flage<=0;
            t0<=0;
            t1<=0;
        end else begin
            if(flage) begin
            if(t0==3'h0) begin
                op<=rd0;
                src0<=rd1;
                t1<=t0+1;
                t0<=t1+1;
            end else begin
                if(t0==3'h1) begin
                    ra1<=5'h3;
                    t0<=t1+1;
                    t1<=t0+1;
                end else begin
                    src1<=rd1;
                    t0<=0;
                    t1<=0;
                    flage<=0;
                end
            end
        end else begin
            if(enable)
                case(ctrl)
                    2'b00:
                    begin 
                        wd<={27'h0,in};
                        wa<=5'h1;
                    end
                    2'b01:
                    begin 
                        wd<={{27{in[4]}},in};
                        wa<=5'h2;
                    end
                    2'b10:
                    begin
                        wd<={{27{in[4]}},in};
                        wa<=5'h3;
                    end
                    2'b11:
                    begin
                        ra0<=5'h1;
                        ra1<=5'h2;
                        flage<=1;
                        t0<=0;
                        t1<=0;
                    end
                endcase
            else begin
                src0<=src0;
                src1<=src1;
                op<=op;
                ra0<=ra0;
                ra1<=ra1;
                wa<=wa;
                we<=1'b1;
                wd<=wd;
            end
        end
        end
    end
endmodule
