module	t_Lab2_4_bit_add();
	wire	[3:0]   S1,S2,S3,S4; 
    wire            cout1,cout2,cout3,cout4;
	reg		[3:0]   A,B;
    reg             cin;
	
	//instantiate device under test
	Lab2_4_bit_RCA		RCA(A, B, cin, S1, cout1);
	Lab2_4_bit_CLA_gate	CLA_gate(A, B, cin, S2, cout2);
	Lab2_4_bit_CLA_df	CLA_df(A, B, cin, S3, cout3);
	Lab2_4_bit_CLA_beh	CLA_beh(A, B, cin, S4, cout4);

	//apply inputs one at a time
	initial	begin
		A=4'b0000; B=4'b0000; cin=1'b1;
		#100 A=4'b1111; B=4'b1111; cin=1'b1; 
		#100 A=4'b0011; B=4'b0110; cin=1'b1;
		#100 A=4'b0101; B=4'b1001; cin=1'b0;
		#100 A=4'b0111; B=4'b1010; cin=1'b1;
		#100 A=4'b1101; B=4'b0010; cin=1'b0;
		#100 A=4'b1111; B=4'b0111; cin=1'b0;
		#100 A=4'b1110; B=4'b0101; cin=1'b1;
	end
	initial #800 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("t_Lab2_4_bit_add.vcd");
		$dumpvars;

		#799 
		$display(" ______   __     __   __     __     ______     __  __    ");
		$display("/\\  ___\\ /\\ \\   /\\ \"-.\\ \\   /\\ \\   /\\  ___\\   /\\ \\_\\ \\   ");
		$display("\\ \\  __\\ \\ \\ \\  \\ \\ \\-.  \\  \\ \\ \\  \\ \\___  \\  \\ \\  __ \\  ");
		$display(" \\ \\_\\    \\ \\_\\  \\ \\_\\\\\"\\_\\  \\ \\_\\  \\/\\_____\\  \\ \\_\\ \\_\\ ");
		$display("  \\/_/     \\/_/   \\/_/ \\/_/   \\/_/   \\/_____/   \\/_/\\/_/ ");
	end
endmodule