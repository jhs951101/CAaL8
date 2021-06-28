
module FullAdder(a,b,cin,s,cout);

	input a,b,cin;
	output s,cout;
	wire n1, n2, n3;

	halfadder u1(a,b,n2,n1);
	halfadder u2(n2,cin,s,n3);
	or(cout,n1,n3);

endmodule
