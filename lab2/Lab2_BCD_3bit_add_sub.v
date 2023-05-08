module Lab2_BCD_3bit_add_sub(BCD_X,BCD_Y,mode,BCD_R,kout);
input   [11:0]   BCD_X,BCD_Y;
output  [11:0]   BCD_R;
input            mode;
output           kout;
wire             cout1,cout2,cout3,cout4;
wire    [11:0]   BCD_Y_9c,temp1,temp2


always @ (*)begin
    if (mode) begin
        
    end
end

Lab2_BCD_1bit_add_beh		M1(BCD_X[3:0], BCD_Y[3:0], cin,BCD_S2[3:0],cout1);
Lab2_BCD_1bit_add_beh		M2(BCD_X[7:4], BCD_Y[7:4], cout1,BCD_S2[7:4],cout2);
Lab2_BCD_1bit_add_beh		M3(BCD_X[11:8], BCD_Y[11:8], cout2,BCD_S2[11:8],cout);

Lab2_BCD_9c_beh             M4(BCD_Y[3:0],BCD_Y_9c[3:0]);
Lab2_BCD_9c_beh             M4(BCD_Y[7:4],BCD_Y_9c[7:4]);
Lab2_BCD_9c_beh             M4(BCD_Y[11:8],BCD_Y_9c[11:8]);
Lab2_BCD_1bit_add_beh		M1(BCD_X[3:0], BCD_Y_9c[3:0], cin,BCD_S2[3:0],cout1);
Lab2_BCD_1bit_add_beh		M2(BCD_X[7:4], BCD_Y_9c[7:4], cout1,BCD_S2[7:4],cout2);
Lab2_BCD_1bit_add_beh		M3(BCD_X[11:8], BCD_Y_9c[11:8], cout2,BCD_S2[11:8],cout);


endmodule