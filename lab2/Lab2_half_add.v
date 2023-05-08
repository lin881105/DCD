module	Lab2_half_add(a, b, sum, cout);
	output	sum, cout;
	input	a, b;
	
	xor	#(4)	G1(sum, a, b);
	and	#(2)	G2(cout, a, b);
endmodule