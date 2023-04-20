module RGB_LED_control(
  input wire clk,
  input wire reset,
  input wire switch0,
  input wire switch1,
  input wire [3:0] button,
  output reg [2:0] RGB_LED
);

  reg [1:0] led_select;
  reg [3:0] color_select;
  
  always @ (posedge clk) begin
    if (reset) begin
      led_select <= 2'b0;
      color_select <= 4'b0000;
      RGB_LED <= 3'b000;
    end else begin
      if (switch0) begin
        led_select <= 2'b11; // 2-LED display mode
        color_select <= button;
      end else begin
        case (switch1)
          1'b0: begin // select left LED in 1-LED display mode
            led_select <= 2'b00;
            color_select <= button;
          end
          1'b1: begin // select right LED in 1-LED display mode
            led_select <= 2'b01;
            color_select <= button;
          end
        endcase
      end
      
      case (color_select)
        4'b0000: RGB_LED <= 3'b000; // OFF
        4'b0001: RGB_LED <= (led_select == 2'b11) ? 3'b011 : 3'b001; // Blue
        4'b0010: RGB_LED <= (led_select == 2'b11) ? 3'b110 : 3'b010; // Green
        4'b0100: RGB_LED <= (led_select == 2'b11) ? 3'b101 : 3'b100; // Red
        4'b1000: RGB_LED <= (led_select == 2'b11) ? 3'b111 : 3'b111; // White
        default: RGB_LED <= (led_select == 2'b11) ? 3'b111 : {RGB_LED[2], color_select[2:1]}; // Mixed of above
      endcase
    end
  end
  
endmodule
