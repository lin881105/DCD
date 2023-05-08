module Lab2_BCD_9c_beh(BCD,BCD_9c);
input   [3:0]   BCD;
output  reg  [3:0]   BCD_9c;

reg     [4:0]   temp;

always @ (*) begin
    temp = 9 - BCD;
    BCD_9c = temp[4]?'dx:temp;
end

endmodule