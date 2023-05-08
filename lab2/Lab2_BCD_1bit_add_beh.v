module Lab2_BCD_1bit_add_beh(BCD_X,BCD_Y,cin,BCD_S,cout);
input           [3:0]   BCD_X,BCD_Y;
output  reg     [3:0]   BCD_S;
input           cin;
output  reg     cout;
reg    [3:0]   Z;
reg            K;

always @ (*) begin
    {K,Z} = BCD_X+BCD_Y+cin;
     cout = (Z[3]&Z[2])|K|(Z[3]&Z[1]);
    BCD_S = {1'b0,cout,cout,1'b0} + Z;
end



endmodule