module present_encipher(ptext, master_key, ctext); //input key, instantiate key_scheduler and pass in key input?

	input [15:0] ptext;
	input [19:0] master_key;
	output [15:0] ctext;
	
	wire [15:0] r1_r2, r2_r3, r3_r4, r4_r5, r5_r6, r7_out;
	wire [19:0] k0, k1, k2, k3, k4, k5, k6, k7;

	key_scheduler(.master_key(master_key), .k0(k0), .k1(k1), .k2(k2), .k3(k3), .k4(k4), .k5(k5), .k6(k6), .k7(k7));
	
	cipher_round r1 (.round_in(ptext), .round_key(k0), .round_out(r1_r2));
	
	cipher_round r2 (.round_in(r1_r2), .round_key(k1), .round_out(r2_r3));
	
	cipher_round r3 (.round_in(r2_r3), .round_key(k2), .round_out(r3_r4));
	
	cipher_round r4 (.round_in(r3_r4), .round_key(k3), .round_out(r4_r5));
	
	cipher_round r5 (.round_in(r4_r5), .round_key(k4), .round_out(r5_r6));
	
	cipher_round r6 (.round_in(r5_r6), .round_key(k5), .round_out(r6_r7));
	
	cipher_round r7 (.round_in(r6_r7), .round_key(k6), .round_out(r7));
	
	assign ctext = r7_out ^ k7;
	
endmodule