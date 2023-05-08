module Lab2_BCD_1bit_add_df(BCD_X,BCD_Y,cin,BCD_S,cout);
input   [3:0]   BCD_X,BCD_Y;
output  [3:0]   BCD_S;
input           cin;
output          cout;
wire    [3:0]   Z;
wire            K;

assign  {K,Z} = BCD_X+BCD_Y+cin;
assign   cout = (Z[3]&Z[2])|K|(Z[3]&Z[1]);
assign  BCD_S = {1'b0,cout,cout,1'b0} + Z;

endmodule