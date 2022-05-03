module key_update(k_i, k_i_plus_one, round_count);

input [19:0] k_i;
input [3:0] round_count;

output [19:0] k_i_plus_one;

wire [19:0] k_i_shifted, k_i_sboxed;

assign k_i_shifted[19:0] = {k_i[6:0], k_i[19:7]}; // Shift 13 to the left

sbox s(k_i_shifted[19:16], k_i_sboxed[19:16]);
assign k_i_sboxed[15:0] = k_i_shifted[15:0];

assign k_i_plus_one[7:4] = k_i_sboxed[7:4] ^ round_count;
assign k_i_plus_one[19:8] = k_i_sboxed[19:8];
assign k_i_plus_one[3:0] = k_i_sboxed[3:0];

endmodule