module	t_Lab2_BCD_9c();
	wire	[3:0]   BCD_9c1,BCD_9c2; 
	reg		[3:0]   BCD;
	
	//instantiate device under test
	Lab2_BCD_9c_df		M1(BCD, BCD_9c1);
	Lab2_BCD_9c_beh		M2(BCD, BCD_9c2);

	//apply inputs one at a time
	initial	begin
		BCD=4'b0000;
		#100 BCD=4'b0001; 
		#100 BCD=4'b0010;
		#100 BCD=4'b0011;
		#100 BCD=4'b0100;
		#100 BCD=4'b0101;
		#100 BCD=4'b0110;
		#100 BCD=4'b0111;
		#100 BCD=4'b1000;
		#100 BCD=4'b1001;
		#100 BCD=4'b1010;
		#100 BCD=4'b1011;
		#100 BCD=4'b1100;
		#100 BCD=4'b1101;
		#100 BCD=4'b1110;
		#100 BCD=4'b1111;
	end
	initial #1600 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_BCD_9c.vcd");
		$dumpvars;

		#1599 
		$display(" ______   __     __   __     __     ______     __  __    ");
		$display("/\\  ___\\ /\\ \\   /\\ \"-.\\ \\   /\\ \\   /\\  ___\\   /\\ \\_\\ \\   ");
		$display("\\ \\  __\\ \\ \\ \\  \\ \\ \\-.  \\  \\ \\ \\  \\ \\___  \\  \\ \\  __ \\  ");
		$display(" \\ \\_\\    \\ \\_\\  \\ \\_\\\\\"\\_\\  \\ \\_\\  \\/\\_____\\  \\ \\_\\ \\_\\ ");
		$display("  \\/_/     \\/_/   \\/_/ \\/_/   \\/_/   \\/_____/   \\/_/\\/_/ ");
	end
endmodule