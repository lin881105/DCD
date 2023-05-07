module	LAB1_UDP(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	wire	neg_B, neg_D, w1, w2, w3;
	
    not                 G1(neg_B, B);
    or                  G2(w1, A, C);
    not                 G3(neg_D, D);
	Lab1_gatelevel_UDP	M1(w2, A, neg_B, C);
	Lab1_gatelevel_UDP	M2(w3, w1, B, neg_D);
    or                  G4(F, w2, w3);
endmodule