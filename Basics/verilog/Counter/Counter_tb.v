
module Counter_tb;

reg rst;
reg clk;
wire [7:0] data;

Counter #(.DATA_WIDTH(4), .OUTPUT_DATA_WIDTH(8)) uut (.rst(rst), .clk(clk), .data(data));

initial
begin
    clk <= 0;
    rst <= 1;
    #200
    rst <= 0;
    #200
    rst <= 1;
end

always
begin
    #50 clk <= ~clk;
end

endmodule
