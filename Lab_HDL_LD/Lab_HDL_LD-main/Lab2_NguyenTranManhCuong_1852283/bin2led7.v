module bin2led7(
    input enable,
    input [3:0] bin_in,
    output reg [6:0] led_out
);

always @(*) begin
    case (bin_in)
        4'b0000: led_out = 7'b1111110;
        4'b0001: led_out = 7'b0110000;
        4'b0010: led_out = 7'b1101101;
        4'b0011: led_out = 7'b1111001;
        4'b0100: led_out = 7'b0110011;
        4'b0101: led_out = 7'b1011011;
        4'b0110: led_out = 7'b1011111;
        4'b0111: led_out = 7'b1110000;
        4'b1000: led_out = 7'b1111111;
        4'b1001: led_out = 7'b1111011;
        4'b1010: led_out = 7'b1110111;
        4'b1011: led_out = 7'b0011111;
        4'b1100: led_out = 7'b1001110;
        4'b1101: led_out = 7'b0111101;
        4'b1110: led_out = 7'b1001111;
        4'b1111: led_out = 7'b1000111;
        default: led_out = 7'b1111111;
    endcase
end

// Turn off LEDs if enable is 0
always @(posedge enable) begin
    if (enable == 0) begin
        led_out <= 7'b0000000;
    end
end

endmodule

