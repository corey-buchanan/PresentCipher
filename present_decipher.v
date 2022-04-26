module present_decipher(ctext, master_key, ptext); //input key, instantiate key_scheduler and pass in key input?

	input [15:0] ctext;
	input [19:0] master_key;
	output [15:0] ptext;
	
	wire [15:0] r1_in, r1_r2, r2_r3, r3_r4, r4_r5, r5_r6, r6_r7;
	wire [15:0] k0, k1, k2, k3, k4, k5, k6, k7;

	key_scheduler k(.master_key(master_key), .k0(k0), .k1(k1), .k2(k2), .k3(k3), .k4(k4), .k5(k5), .k6(k6), .k7(k7));		
	
	decipher_round d1 (.round_in(ctext), .round_key(k7), .round_out(r1_r2));
	
	decipher_round d2 (.round_in(r1_r2), .round_key(k6), .round_out(r2_r3));
	
	decipher_round d3 (.round_in(r2_r3), .round_key(k5), .round_out(r3_r4));
	
	decipher_round d4 (.round_in(r3_r4), .round_key(k4), .round_out(r4_r5));
	
	decipher_round d5 (.round_in(r4_r5), .round_key(k3), .round_out(r5_r6));
	
	decipher_round d6 (.round_in(r5_r6), .round_key(k2), .round_out(r6_r7));
	
	decipher_round d7 (.round_in(r6_r7), .round_key(k1), .round_out(r1_in));
	
	assign  ptext = r1_in ^ k0;
	
	
endmodule