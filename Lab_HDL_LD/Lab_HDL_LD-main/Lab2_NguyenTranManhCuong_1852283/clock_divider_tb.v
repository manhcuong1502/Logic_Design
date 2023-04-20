module clock_divider_tb;

reg clk = 0;
wire out;

clock_divider uut (
    .clk(clk),
    .out(out)
);

initial begin
    $display("Testing Clock Divider Module...");

    // Test for 10 cycles
    repeat (10) begin
        #20 clk <= ~clk;     // Toggle the clock every 20 time units
        $display("Clock: %b, Output: %b", clk, out);
    end

    $finish;
end

endmodule

