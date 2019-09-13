
module assignments(
    input wire clk,
    input wire rst,
    output reg[7:0] data_nba, 
    output reg[7:0] data_ba);
     
always @(posedge clk)
begin
    if(~rst)
        data_nba <= 0;
    else
    begin
        data_nba <= data_nba + 1;
    end
end

always @(posedge clk)
begin
    if(~rst)
        data_ba = 0;
    else
    begin
        data_ba = data_ba + 1;
    end
end
     
endmodule
