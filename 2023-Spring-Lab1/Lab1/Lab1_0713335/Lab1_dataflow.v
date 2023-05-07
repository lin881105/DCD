module	Lab1_dataflow(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	wire	w1, w2, w3, w4, w5;

    assign  w1 = A | C;
    assign  w2 = A & ~B;
    assign  w3 = B & w1;
    assign  w4 = ~(w2 | C);
    assign  w5 = ~(~D | w3);
    assign  F = w4 | w5;

endmodule