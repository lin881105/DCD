module	t_Lab2_BCD_1bit_add();
	wire	[3:0]   BCD_S1,BCD_S2;
    wire            cout1,cout2; 
	reg		[3:0]   BCD_X,BCD_Y;
    reg             cin;
	
	//instantiate device under test
	Lab2_BCD_1bit_add_df		M1(BCD_X, BCD_Y, cin,BCD_S1,cout1);
	Lab2_BCD_1bit_add_beh		M2(BCD_X, BCD_Y, cin,BCD_S2,cout2);

	//apply inputs one at a time
	initial	begin
		BCD_X=4'b0000;BCD_Y=4'b0000;cin=1'b1;
		#100 BCD_X=4'b1001;BCD_Y=4'b1001;cin=1'b1;
		#100 BCD_X=4'b0011;BCD_Y=4'b0111;cin=1'b0;
		#100 BCD_X=4'b0101;BCD_Y=4'b1000;cin=1'b0;
		#100 BCD_X=4'b0011;BCD_Y=4'b0110;cin=1'b1;
		#100 BCD_X=4'b0110;BCD_Y=4'b0001;cin=1'b1;
		#100 BCD_X=4'b1001;BCD_Y=4'b0110;cin=1'b0;
		#100 BCD_X=4'b0101;BCD_Y=4'b0011;cin=1'b0;
	end
	initial #800 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_BCD_1bit_add.vcd");
		$dumpvars;

		#799 
		$display(" ______   __     __   __     __     ______     __  __    ");
		$display("/\\  ___\\ /\\ \\   /\\ \"-.\\ \\   /\\ \\   /\\  ___\\   /\\ \\_\\ \\   ");
		$display("\\ \\  __\\ \\ \\ \\  \\ \\ \\-.  \\  \\ \\ \\  \\ \\___  \\  \\ \\  __ \\  ");
		$display(" \\ \\_\\    \\ \\_\\  \\ \\_\\\\\"\\_\\  \\ \\_\\  \\/\\_____\\  \\ \\_\\ \\_\\ ");
		$display("  \\/_/     \\/_/   \\/_/ \\/_/   \\/_/   \\/_____/   \\/_/\\/_/ ");
	end
endmodule