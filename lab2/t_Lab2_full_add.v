module	t_Lab2_full_add();
	wire	sum, cout;
	reg		A, B, cin;
	
	//instantiate device under test
	Lab2_full_add	M1(A, B,cin, sum, cout);

	//apply inputs one at a time
	initial	begin
		A=1'b0; B=1'b0; cin=1'b0;
		#100 A=1'b0; B=1'b0; cin=1'b1;
		#100 A=1'b0; B=1'b1; cin=1'b0;
		#100 A=1'b0; B=1'b1; cin=1'b1;
		#100 A=1'b1; B=1'b0; cin=1'b0;
		#100 A=1'b1; B=1'b0; cin=1'b1;
		#100 A=1'b1; B=1'b1; cin=1'b0;
		#100 A=1'b1; B=1'b1; cin=1'b1;
	end
	initial #800 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_full_add.vcd");
		$dumpvars;

		#799 
		$display(" ______   __     __   __     __     ______     __  __    ");
		$display("/\\  ___\\ /\\ \\   /\\ \"-.\\ \\   /\\ \\   /\\  ___\\   /\\ \\_\\ \\   ");
		$display("\\ \\  __\\ \\ \\ \\  \\ \\ \\-.  \\  \\ \\ \\  \\ \\___  \\  \\ \\  __ \\  ");
		$display(" \\ \\_\\    \\ \\_\\  \\ \\_\\\\\"\\_\\  \\ \\_\\  \\/\\_____\\  \\ \\_\\ \\_\\ ");
		$display("  \\/_/     \\/_/   \\/_/ \\/_/   \\/_/   \\/_____/   \\/_/\\/_/ ");
	end
endmodule