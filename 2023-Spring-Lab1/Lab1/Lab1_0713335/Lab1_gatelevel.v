module	Lab1_gatelevel(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	wire	neg_B, neg_D, w1, w2, w3, w4, w5;

    not     G1(neg_B, B);
    not     G2(neg_D, D);
    or      G3(w1, C, A);
    and     G4(w2, A, neg_B);
    and     G5(w3, B, w1);
    nor     G6(w4, w2, C);
    nor     G7(w5, neg_D, w3);
    or      G8(F, w4, w5);
endmodule