module sbox_layer(state_in, state_out);

	input [15:0] state_in;
	output [15:0] state_out;
 
	wire [3:0] w0, w1, w2, w3, w0_out, w1_out, w2_out, w3_out;
 
	assign w0 = state_in[3:0];
	assign w1 = state_in[7:4];
	assign w2 = state_in[11:8];
	assign w3 = state_in[15:12];
	
	sbox s1 (.w_in(w0), .w_out(w0_out));
	sbox s2 (.w_in(w1), .w_out(w1_out));
	sbox s3 (.w_in(w2), .w_out(w2_out));
	sbox s4 (.w_in(w3), .w_out(w3_out));
 
 
	assign state_out = {w3_out, w2_out, w1_out, w0_out};

endmodule