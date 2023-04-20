module bit_counter_tb;

  reg [3:0] in;
  wire out0, out1, out2, out3;

  bit_counter uut (
    .in(in),
    .out0(out0),
    .out1(out1),
    .out2(out2),
    .out3(out3)
  );

  initial begin
    #10 in = 4'b0000;
    #10 in = 4'b0001;
    #10 in = 4'b0010;
    #10 in = 4'b0100;
    #10 in = 4'b1000;
    #10 in = 4'b0101;
    #10 in = 4'b1111;
    #10 $finish;
  end

  always @(out0, out1, out2, out3) begin
    $display("Input = %b, Output = %b %b %b %b",
             in, out0, out1, out2, out3);
  end

endmodule

