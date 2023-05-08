module	t_Lab2_BCD_3bit_add();
	wire	[11:0]   BCD_S;
    wire             cout; 
	reg		[11:0]   BCD_X,BCD_Y;
    reg              cin;
	
	//instantiate device under test
	Lab2_BCD_3bit_add		BCD_3bit_add(BCD_X, BCD_Y, cin,BCD_S,cout);

	//apply inputs one at a time
	initial	begin
		BCD_X=12'b000000000000;BCD_Y=12'b000000000000;cin=1'b1;
		#100 BCD_X=12'b100110011001;BCD_Y=12'b100110011001;cin=1'b1;
		#100 BCD_X=12'b011010000010;BCD_Y=12'b100000110101;cin=1'b0;
		#100 BCD_X=12'b010001010001;BCD_Y=12'b000001101001;cin=1'b0;
		#100 BCD_X=12'b001110000111;BCD_Y=12'b011000010110;cin=1'b1;
		#100 BCD_X=12'b011101100101;BCD_Y=12'b100101000011;cin=1'b0;
		#100 BCD_X=12'b010110000101;BCD_Y=12'b010101010110;cin=1'b0;
		#100 BCD_X=12'b100101001000;BCD_Y=12'b000001010001;cin=1'b1;
	end
	initial #800 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_BCD_3bit_add.vcd");
		$dumpvars;

		#799 
		$display(" ______   __     __   __     __     ______     __  __    ");
		$display("/\\  ___\\ /\\ \\   /\\ \"-.\\ \\   /\\ \\   /\\  ___\\   /\\ \\_\\ \\   ");
		$display("\\ \\  __\\ \\ \\ \\  \\ \\ \\-.  \\  \\ \\ \\  \\ \\___  \\  \\ \\  __ \\  ");
		$display(" \\ \\_\\    \\ \\_\\  \\ \\_\\\\\"\\_\\  \\ \\_\\  \\/\\_____\\  \\ \\_\\ \\_\\ ");
		$display("  \\/_/     \\/_/   \\/_/ \\/_/   \\/_/   \\/_____/   \\/_/\\/_/ ");
	end
endmodule