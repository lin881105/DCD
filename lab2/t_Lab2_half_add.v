module	t_Lab2_half_add();
	wire	sum, cout;
	reg		A, B;
	
	//instantiate device under test
	Lab2_half_add	M1(A, B, sum, cout);

	//apply inputs one at a time
	initial	begin
		A=1'b0; B=1'b0;
		#100 A=1'b0; B=1'b1;
		#100 A=1'b1; B=1'b0;
		#100 A=1'b1; B=1'b1;
	end
	initial #400 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_half_add.vcd");
		$dumpvars;

		#399 
		$display(" ______   __     __   __     __     ______     __  __    ");
		$display("/\\  ___\\ /\\ \\   /\\ \"-.\\ \\   /\\ \\   /\\  ___\\   /\\ \\_\\ \\   ");
		$display("\\ \\  __\\ \\ \\ \\  \\ \\ \\-.  \\  \\ \\ \\  \\ \\___  \\  \\ \\  __ \\  ");
		$display(" \\ \\_\\    \\ \\_\\  \\ \\_\\\\\"\\_\\  \\ \\_\\  \\/\\_____\\  \\ \\_\\ \\_\\ ");
		$display("  \\/_/     \\/_/   \\/_/ \\/_/   \\/_/   \\/_____/   \\/_/\\/_/ ");
	end
endmodule