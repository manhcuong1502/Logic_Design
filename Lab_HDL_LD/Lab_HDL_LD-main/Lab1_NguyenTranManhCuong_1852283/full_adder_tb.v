module full_adder_tb;
  reg a,b,cin;
  wire sum,cout;
 
  full_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
 
// insert all the inputs 
  initial begin a=1'b1;  #4; a=1'b0;#10 $stop();end
  initial begin b=1'b1; forever #2 b=~b;end
  initial begin cin=1'b1;forever #1 cin=~cin; #10 $stop();end

// monitor all the input and output ports at times 
// when any of the input changes its state

 initial begin $monitor(" time=%0d a=%b b=%b cin=%b sum=%b cout=%b",$time,a,b,cin,sum,cout);end
 endmodule

