
module assignments(
    input wire clk,
    input wire rst,
    output reg[7:0] data_nba, 
    output reg[7:0] data_ba);
	 
reg [7:0] nba_buffer;
reg [7:0] ba_buffer;
     
always @(posedge clk)
begin
    if(~rst)
    begin
        nba_buffer <= 0;
        data_nba <= 0;
    end
    else
    begin
        nba_buffer <= nba_buffer + 1;
        data_nba <= nba_buffer;
    end
end

always @(posedge clk)
begin
    if(~rst)
    begin
        data_ba = 0;
        ba_buffer = 0;
    end
    else
    begin
        ba_buffer = ba_buffer + 1;
        data_ba = ba_buffer;
    end
end
     
endmodule
