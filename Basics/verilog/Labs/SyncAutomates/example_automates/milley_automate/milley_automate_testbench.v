`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:      Ushakov M.V. (EvilLord666)
//
// Create Date:   
// Design Name:   
// Module Name:   
// Project Name:  millet_automate_testbench
// Target Device:  
// Tool versions:  
// Description:   testbench on example of Milley automate design
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////

module milley_automate_testbench();

reg [1:0] a;
wire [1:0] b;
reg clk;
reg reset;

reg [31:0] counter;

milley_automate uut(.clk(clk), .reset(reset), .a(a), .b(b));

initial
begin
    clk <= 0;
    reset <= 1;
    counter <= 0;
    # 400
    reset <= 0;
end

always
begin
    #50 clk <= ~clk;
    #100 counter <= counter + 1;
    if (counter == 5)
    begin
        a <= 2'b11;  // A3, c -> C3, b -> b4
    end
    if (counter == 7)
    begin
        a <= 2'b01;  // A1, c->C4
    end
    // B state should not changed until a1
    if (counter == 8)
    begin
        a <= 2'b00;
    end
    if (counter == 9)
    begin
        a <= 2'b01;
    end
    if (counter == 11)
    begin
        a <= 2'b11;
    end
    if (counter == 12)
    begin
        a <= 2'b11;
    end
end

endmodule