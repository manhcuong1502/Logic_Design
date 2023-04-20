module RGB_LED_control_tb;

  reg clk;
  reg reset;
  reg switch0;
  reg switch1;
  reg [3:0] button;
  wire [2:0] RGB_LED;
  
  RGB_LED_control dut (
    .clk(clk),
    .reset(reset),
    .switch0(switch0),
    .switch1(switch1),
    .button(button),
    .RGB_LED(RGB_LED)
  );
  
  initial begin
    clk = 0;
    reset = 1;
    switch0 = 0;
    switch1 = 0;
    button = 4'b0000;
    #10 reset = 0;
  end
  
  always #5 clk = ~clk;
  
  initial begin
    #20 switch0 = 1;
    #10 switch1 = 1;
    #10 button = 4'b0001;
    #50 button = 4'b0010;
    #50 button = 4'b0100;
    #50 button = 4'b1000;
    #50 button = 4'b1010;
    #50 button = 4'b1100;
    #50 button = 4'b0110;
    #50 button = 4'b1111;
  end
endmodule
