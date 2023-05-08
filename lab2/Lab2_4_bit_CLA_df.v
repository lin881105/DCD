module Lab2_4_bit_CLA_df(A,B,cin,S,cout);
input   [3:0]   A,B;
input           cin;
output  [3:0]   S;
output          cout;

wire            p0,p1,p2,p3;
wire            g0,g1,g2,g3;
wire            c1,c2,c3;

assign  p0 = A[0]^B[0];
assign  p1 = A[1]^B[1];
assign  p2 = A[2]^B[2];
assign  p3 = A[3]^B[3];
assign  g0 = A[0]&B[0];
assign  g1 = A[1]&B[1];
assign  g2 = A[2]&B[2];
assign  g3 = A[3]&B[3];
assign  S[0] = p0^cin;
assign  S[1] = p1^c1;
assign  S[2] = p2^c2;
assign  S[3] = p3^c3;
assign  c1 = g0|p0&cin;
assign  c2 = g1|p1&c1;
assign  c3 = g2|p2&c2;
assign  cout = g3|p3&c3;

endmodule