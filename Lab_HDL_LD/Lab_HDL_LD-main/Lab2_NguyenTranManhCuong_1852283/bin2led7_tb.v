module bin2led7_tb;

reg enable;
reg [3:0] bin_in;
wire [6:0] led_out;

bin2led7 uut (
    .enable(enable),
    .bin_in(bin_in),
    .led_out(led_out)
);

initial begin
    $display("Testing bin2led7 Module...");
    
    enable = 1;
    bin_in = 4'b0000;
    #10 $display("Binary Input: %b, LED Output: %b", bin_in, led_out);
    
    bin_in = 4'b0101;
    #10 $display("Binary Input: %b, LED Output: %b", bin_in, led_out);

    bin_in = 4'b1010;
    #10 $display("Binary Input: %b, LED Output: %b", bin_in, led_out);

    bin_in = 4'b1111;
    #10 $display("Binary Input: %b, LED Output: %b", bin_in, led_out);
    
    enable = 0;
    #10 $display("LED Output off when Enable = 0");

    $finish;
end

endmodule

