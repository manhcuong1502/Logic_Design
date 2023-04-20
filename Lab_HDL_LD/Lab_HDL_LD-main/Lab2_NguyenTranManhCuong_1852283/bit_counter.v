module bit_counter (
  input [3:0] in,
  output wire out0,
  output wire out1,
  output wire out2,
  output wire out3
);
  
  // Output 0: active when there are even number of bit 1 in the input.
  assign out0 = ~^in[3:0];

  // Output 1: active when there are only 1 bit 1 in the input.
  assign out1 = (^in[3:0] == 1'b1);

  // Output 2: active when there is no bit 1 in the input.
  assign out2 = ~|in[3:0];

  // Output 3: active when all bit in the input are 1.
  assign out3 = (in[3:0] == 4'b1111);

endmodule

