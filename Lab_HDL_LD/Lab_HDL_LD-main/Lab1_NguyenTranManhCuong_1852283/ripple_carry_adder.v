module ripple_carry_adder(x,y,cin,s,cout);
	input [3:0] x,y;
	input cin;
	output [3:0] s;
	output cout;
	wire w1,w2,w3;
	full_adder f1(x[0], y[0], cin, s[0], w1);
	full_adder f2(x[1], y[1], w1, s[1], w2);
	full_adder f3(x[2], y[2], w2, s[2], w3);
	full_adder f4(x[3], y[3], w3, s[3], cout);
endmodule

