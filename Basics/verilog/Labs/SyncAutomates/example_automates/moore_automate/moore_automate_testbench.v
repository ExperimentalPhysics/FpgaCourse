////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:      Ushakov M.V. (EvilLord666)
//
// Create Date:   
// Design Name:   
// Module Name:   
// Project Name:  moore_automate_testbench
// Target Device:  
// Tool versions:  
// Description:   Testbench on Moore automate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
////////////////////////////////////////////////////////////////////////////////
module moore_automate_testbench();
    
    reg clk;
    reg reset;
    reg [1:0] a;
    wire [1:0] b;
    reg [31:0] counter;
    
    moore_automate uut(.clk(clk), .reset(reset), .a(a), .b(b));
    
    initial
begin
    clk <= 0;
    reset <= 1;
    a <= 0;
    counter <= 0;
    # 300
    reset <= 0;
end

always
begin
    #50 clk <= ~clk;
    #100 counter <= counter + 1;
    if (counter == 5)
    begin
        a <= 2'b00;  // A1, c -> C2
    end
    if (counter == 7)
    begin
        a <= 2'b10;   // A3, c -> C1
    end
    if (counter == 8)
    begin
        a <= 2'b01;   // A2, c -> C3
    end
    if (counter == 11)
    begin
        a <= 2'b10;   // A3 -> c2
        counter <= 0;
    end
end

endmodule
