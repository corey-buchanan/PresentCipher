module present_decipher(ctext, ptext); //input key, instantiate key_scheduler and pass in key input?

	input [15:0] ctext;
	output [15:0] ptext;
	
	wire [15:0] r1_r2, r2_r3, r3_r4, r4_r5, r5_r6, r7;

					
	
	reg [3:0] round_counter;
	
	//update key: pass in round_counter
	// store key register in this module?, pass into update key, then connect output of 
	// update with input of next update
	
	//keys in reverse order as encipher
	
	cipher_round r1 (.round_in(ctext), .round_key(key1), .round_out(r1_r2));
	
	cipher_round r2 (.round_in(r1_r2), .round_key(key1), .round_out(r2_r3));
	
	cipher_round r3 (.round_in(r2_r3), .round_key(key1), .round_out(r3_r4));
	
	cipher_round r4 (.round_in(r3_r4), .round_key(key1), .round_out(r4_r5));
	
	cipher_round r5 (.round_in(r4_r5), .round_key(key1), .round_out(r5_r6));
	
	cipher_round r6 (.round_in(r5_r6), .round_key(key1), .round_out(r6_r7));
	
	cipher_round r7 (.round_in(r6_r7), .round_key(key1), .round_out(r7));
	
	assign ptext = r7 ^ key;
	

	
endmodule