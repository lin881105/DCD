module Lab2_BCD_9c_df(BCD,BCD_9c);
input   [3:0]   BCD;
output  [3:0]   BCD_9c;

wire [4:0]temp;
assign temp = 9 - BCD;

assign BCD_9c = temp[4]?'dx:temp;
endmodule