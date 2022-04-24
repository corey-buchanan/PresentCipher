module sbox(w_in, w_out);

	input [3:0] w_in;
	output reg [3:0] w_out;
  
	always @(*)
	begin
		case (w_in)
			4'b0000: w_out = 4'b1100;
			4'b0001: w_out = 4'b0101;
			4'b0010: w_out = 4'b0110;
			4'b0011: w_out = 4'b1011;
			4'b0100: w_out = 4'b1001;
			4'b0101: w_out = 4'b0000;
			4'b0110: w_out = 4'b1010;
			4'b0111: w_out = 4'b1101;
			4'b1000: w_out = 4'b0011;
			4'b1001: w_out = 4'b1110;
			4'b1010: w_out = 4'b1111;
			4'b1011: w_out = 4'b1000;
			4'b1100: w_out = 4'b0100;
			4'b1101: w_out = 4'b0111;
			4'b1110: w_out = 4'b0001;
			4'b1111: w_out = 4'b0010;
			default:	w_out = w_in;
		endcase
	end
endmodule