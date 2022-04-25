module key_update(k_i, k_i_plus_one, round_count_lsb);

input [19:0] k_i;
input round_count_lsb;

output [19:0] k_i_plus_one;

wire [19:0] k_i_shifted, k_i_sboxed;

assign k_i_shifted[19:0] = {k_i[6:0], k_i[19:7]}; // Shift 13 to the left

sbox s(k_i_shifted[19:16], k_i_sboxed[19:16]);
assign k_i_sboxed[15:0] = k_i_shifted[15:0];

assign k_i_plus_one[7] = k_i_sboxed[7] ^ round_count_lsb;
assign k_i_plus_one[6] = k_i_sboxed[6] ^ round_count_lsb;
assign k_i_plus_one[5] = k_i_sboxed[5] ^ round_count_lsb;
assign k_i_plus_one[4] = k_i_sboxed[4] ^ round_count_lsb;

assign k_i_plus_one[19:8] = k_i_sboxed[19:8];
assign k_i_plus_one[3:0] = k_i_sboxed[3:0];

endmodule