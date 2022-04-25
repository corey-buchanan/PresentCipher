module key_scheduler(master_key, k0, k1, k2, k3, k4, k5, k6, k7);

input [19:0] master_key;
output [15:0] k0, k1, k2, k3, k4, k5, k6, k7;

wire [19:0] k1_full, k2_full, k3_full, k4_full, k5_full, k6_full, k7_full;

key_update k_1(master_key, k1_full, 1'b1);
key_update k_2(k1_full, k2_full, 1'b0);
key_update k_3(k2_full, k3_full, 1'b1);
key_update k_4(k3_full, k4_full, 1'b0);
key_update k_5(k4_full, k5_full, 1'b1);
key_update k_6(k5_full, k6_full, 1'b0);
key_update k_7(k6_full, k7_full, 1'b1);

assign k0 = master_key[19:4];
assign k1 = k1_full[19:4];
assign k2 = k2_full[19:4];
assign k3 = k3_full[19:4];
assign k4 = k4_full[19:4];
assign k5 = k5_full[19:4];
assign k6 = k6_full[19:4];
assign k7 = k7_full[19:4];

endmodule