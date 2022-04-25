module cipher_round(round_in, round_key, round_out); //do xor with key here or in encipher module?

	input [15:0] round_in, round_key;
	output [15:0] round_out;
	
	wire [15:0] r_in, r;

	
	assign r_in = round_in ^ round_key;
	
	sbox_layer s (.state_in(r_in), .state_out(r));
	pbox p (.state_in(r), .state_out(round_out));

	
endmodule