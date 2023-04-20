module ripple_carry_adder_tb;
	reg [3:0] x,y;
	reg cin;
	wire [3:0] s;
	wire cout;

	ripple_carry_adder uut(.x(x),.y(y),.cin(cin),.s(s),.cout(cout));
	initial begin
		x = 0;
  		y = 0;
 		cin = 0;
  		// Wait 100 ns for global reset to finish
  		#100;        
  		// Add stimulus here
  		x=4'b0001; y=4'b0000; cin=1'b0;
  		#10 x=4'b1010; y=4'b0011; cin=1'b0;
  		#10 x=4'b1101; y=4'b1010; cin=1'b1;
 	end 
 	initial begin
  		$monitor("time=%g, x=%b y=%b cin=%b : s=%b cout=%b",$time,x,y,cin,s,cout); 
 	end
endmodule

