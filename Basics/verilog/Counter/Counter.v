
module counter #
(
    DATA_WIDTH = 4
)
(
    input wire clk,
	 input wire rst,
	 output wire [DATA_WIDTH-1:0] data
);

reg [DATA_WIDTH-1:0] buffer;

always @(posedge clk)
begin
    if(~rst)
	 begin
	     buffer <= 0;
	 end
	 else
	 begin
	     buffer <= get_next_gray_code_value(buffer);
	 end
end

function [DATA_WIDTH-1:0] get_next_gray_code_value;
    input reg [DATA_WIDTH-1:0] current_value;

    case (current_value)
	     4'b0000: get_next_gray_code_value = 4'b0001;
		  4'b0001: get_next_gray_code_value = 4'b0011;
		  4'b0011: get_next_gray_code_value = 4'b0010;
		  4'b0010: get_next_gray_code_value = 4'b0110;
		  4'b0110: get_next_gray_code_value = 4'b0111;
		  4'b0111: get_next_gray_code_value = 4'b0101;
		  4'b0101: get_next_gray_code_value = 4'b0100;
		  4'b0100: get_next_gray_code_value = 4'b1100;
		  4'b1100: get_next_gray_code_value = 4'b1101;
		  4'b1101: get_next_gray_code_value = 4'b1111;
		  4'b1111: get_next_gray_code_value = 4'b1110;
		  4'b1110: get_next_gray_code_value = 4'b1010;
		  4'b1010: get_next_gray_code_value = 4'b1011;
		  4'b1011: get_next_gray_code_value = 4'b1001;
		  4'b1001: get_next_gray_code_value = 4'b1000;
		  4'b1000: get_next_gray_code_value = 4'b0000;
	 endcase
endfunction

endmodule
