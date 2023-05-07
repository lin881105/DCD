module	Lab1_gatelevel_UDP(F, A, B, C);
	output	F;
	input	A, B, C;
	wire	w1;

    and     G1(w1, A, B);
    nor     G2(F, w1, C);

endmodule