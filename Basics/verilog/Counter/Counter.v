
module Counter #
(
    DATA_WIDTH = 4,
    OUTPUT_DATA_WIDTH = 8
)
(
    input wire clk,
    input wire rst,
    output reg [OUTPUT_DATA_WIDTH-1:0] data
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
        data <= encode_gray_code_to_bcd(buffer);
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

function [2*DATA_WIDTH-1:0] encode_gray_code_to_bcd; // 8421
    input reg [DATA_WIDTH-1:0] gray_code_value;
    case (gray_code_value)
        4'b0000: encode_gray_code_to_bcd = 8'b00000000; // 0
        4'b0001: encode_gray_code_to_bcd = 8'b00000001; // 1
        4'b0011: encode_gray_code_to_bcd = 8'b00000010; // 2
        4'b0010: encode_gray_code_to_bcd = 8'b00000011; // 3
        4'b0110: encode_gray_code_to_bcd = 8'b00000100; // 4
        4'b0111: encode_gray_code_to_bcd = 8'b00000101; // 5
        4'b0101: encode_gray_code_to_bcd = 8'b00000110; // 6
        4'b0100: encode_gray_code_to_bcd = 8'b00000111; // 7
        4'b1100: encode_gray_code_to_bcd = 8'b00001000; // 8
        4'b1101: encode_gray_code_to_bcd = 8'b00001001; // 9
        4'b1111: encode_gray_code_to_bcd = 8'b00010000; // 10
        4'b1110: encode_gray_code_to_bcd = 8'b00010001; // 11
        4'b1010: encode_gray_code_to_bcd = 8'b00010010; // 12
        4'b1011: encode_gray_code_to_bcd = 8'b00010011; // 13
        4'b1001: encode_gray_code_to_bcd = 8'b00010100; // 14
        4'b1000: encode_gray_code_to_bcd = 8'b00010101; // 15
    endcase
endfunction

endmodule
