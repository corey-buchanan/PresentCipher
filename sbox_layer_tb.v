`timescale 1ns / 1ps


module sbox_layer_tb;

	reg [15:0] state_in;
	wire [15:0] state_out;
	
	sbox_layer UUT (.state_in(state_in), .state_out(state_out));
	
	initial 
		begin
		
			assign state_in = 16'b0000_0000_0000_0000;
			
			#10
			
			assign state_in = 16'b0000_0001_0010_0011;
			
			#10
			assign state_in = 16'b0100_0101_0110_0111;
			
			#10
			assign state_in = 16'b1000_1001_1010_1011;
			
			#10
			assign state_in = 16'b1100_1101_1110_1111;

		end
	
endmodule