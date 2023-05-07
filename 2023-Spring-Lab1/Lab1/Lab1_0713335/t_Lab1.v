module	t_LAB1();
	wire	F1, F2, F3;
	reg		A, B, C, D;
	
	//instantiate device under test
	Lab1_gatelevel	M1(F1, A, B, C, D);
	Lab1_dataflow	M2(F2, A, B, C, D);
	LAB1_UDP	M3(F3, A, B, C, D);
	
	//apply inputs one at a time
	initial	begin
		A=1'b0; B=1'b0; C=1'b0; D=1'b0;
		#10 A=1'b0; B=1'b0; C=1'b0; D=1'b1; 
		#20 A=1'b0; B=1'b0; C=1'b1; D=1'b0; 
		#30 A=1'b0; B=1'b0; C=1'b1; D=1'b1; 
		#40 A=1'b0; B=1'b1; C=1'b0; D=1'b0; 
		#50 A=1'b0; B=1'b1; C=1'b0; D=1'b1; 
		#60 A=1'b0; B=1'b1; C=1'b1; D=1'b0; 
		#70 A=1'b0; B=1'b1; C=1'b1; D=1'b1; 
		#80 A=1'b1; B=1'b0; C=1'b0; D=1'b0; 
		#90 A=1'b1; B=1'b0; C=1'b0; D=1'b1; 
		#100 A=1'b1; B=1'b0; C=1'b1; D=1'b0; 
		#110 A=1'b1; B=1'b0; C=1'b1; D=1'b1; 
		#120 A=1'b1; B=1'b1; C=1'b0; D=1'b0; 
		#130 A=1'b1; B=1'b1; C=1'b0; D=1'b1; 
		#140 A=1'b1; B=1'b1; C=1'b1; D=1'b0; 
		#150 A=1'b1; B=1'b1; C=1'b1; D=1'b1; 
	end
	initial #160 $finish;

	//dump the result of simulation
	initial begin
		$dumpfile("Lab1_design.vcd");
		$dumpvars;
	end
endmodule