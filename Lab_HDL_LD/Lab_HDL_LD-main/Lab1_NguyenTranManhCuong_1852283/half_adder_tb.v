module half_adder_tb;
//inputs
	reg a;
	reg b;
//outputs
	wire s;
	wire c;
	
	half_adder uut(.a(a),.b(b),.s(s),.c(c));
	initial begin
	// Initialize Inputs
        	a = 1'b0;
                b = 1'b0;
                 
                #2 a = 1'b0; b = 1'b1;
                #2 a = 1'b1; b = 1'b0;
                #2 a = 1'b1; b = 1'b1;
	end
	initial $monitor("$time=%g,s=%b,c=%b,a=%b,b=%b",$time,s,c,a,b);
	initial #10 $finish;
endmodule


