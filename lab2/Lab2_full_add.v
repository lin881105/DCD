module Lab2_full_add(a,b,cin,sum,cout);
    input  a,b,cin;
    wire   w1,w2,w3;
    output sum,cout;

    Lab2_half_add              G1(a,b,w1,w2);
    Lab2_half_add              G2(w1,cin,sum,w3);
    or              #(2)       G3(cout,w2,w3);    
endmodule