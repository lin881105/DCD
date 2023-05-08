module Lab2_4_bit_CLA_beh(A,B,cin,S,cout);
    input   [3:0]   A,B;
    input           cin;
    output  reg [3:0]   S;
    output  reg       cout;

    always @ (A,B,cin) 
    begin
        S[0] = (A[0]^B[0])^cin;
        S[1] = (A[1]^B[1])^(A[0]&B[0] + (A[0]^B[0]) & cin);
        S[2] = (A[2]^B[2])^(A[1]&B[1] + (A[1]^B[1]) & (A[0]&B[0]+ (A[0]^B[0]) &cin));
        S[3] = (A[3]^B[3])^((A[2]&B[2])+(A[2]^B[2])&(A[1]&B[1] + (A[1]^B[1]) & (A[0]&B[0]+ (A[0]^B[0]) &cin)));
        cout = (A[3]&B[3])+(A[3]^B[3])&((A[2]&B[2])+(A[2]^B[2])&(A[1]&B[1] + (A[1]^B[1]) & (A[0]&B[0]+ (A[0]^B[0]) &cin)));
    end
endmodule