module clock_divider(
    input clk,
    output wire out
);

reg [26:0] count = 0;   // Counter to count the number of clock cycles 
reg toggle = 0;         // Toggle signal to generate the output

// Dividing the clock frequency by 125 million to generate a 1 Hz output signal
always @(posedge clk) begin
    count <= count + 1;     // Increment the counter by 1 for every clock cycle
    if (count == 124999999) begin        // Compare the counter with a threshold value
        count <= 0;         // Reset the counter when the threshold is reached
        toggle <= ~toggle;  // Toggle the output signal
    end
end

assign out = toggle;    // Assign the toggle signal to the output

endmodule

