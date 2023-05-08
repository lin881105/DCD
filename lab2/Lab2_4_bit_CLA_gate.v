module Lab2_4_bit_CLA_gate(A,B,cin,S,cout);
    input  [3:0] A,B;
    input        cin;
    output [3:0] S;
    output       cout;
    wire         c1,c2,c3;
    wire         P0,P1,P2,P3;
    wire         g0,g1,g2,g3;
    wire         w0,w1,w2,w3;

    xor #(4)    G1(P0,A[0],B[0]);
    xor #(4)    G2(P1,A[1],B[1]);
    xor #(4)    G3(P2,A[2],B[2]);
    xor #(4)    G4(P3,A[3],B[3]);
    and #(2)    G5(g0,A[0],B[0]);
    and #(2)    G6(g1,A[1],B[1]);
    and #(2)    G7(g2,A[2],B[2]);
    and #(2)    G8(g3,A[3],B[3]);
    xor #(4)    G9(S[0],P0,cin);
    xor #(4)    G10(S[1],P1,c1);
    xor #(4)    G11(S[2],P2,c2);
    xor #(4)    G12(S[3],P3,c3);
    and #(2)    G13(w0,P0,cin);
    and #(2)    G14(w1,P1,c1);
    and #(2)    G15(w2,P2,c2);
    and #(2)    G16(w3,P3,c3);
    or  #(2)    G17(c1,g0,w0);
    or  #(2)    G18(c2,g1,w1);
    or  #(2)    G19(c3,g2,w2);
    or  #(2)    G20(cout,g3,w3);

endmodule