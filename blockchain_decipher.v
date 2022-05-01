module blockchain_decipher(init_vec, key, ciphertext, plaintext);

input [15:0] init_vec;
input [19:0] key;
input [127:0] ciphertext; // Array of plaintext blocks

output [127:0] plaintext; // Array of ciphertext blocks

wire [127:0] decipher_out;

present_decipher dec0(ciphertext[15:0], key, decipher_out[15:0]);
assign plaintext[15:0] = init_vec ^ decipher_out[15:0];

present_decipher dec1(ciphertext[31:16], key, decipher_out[31:16]);
assign plaintext[31:16] = ciphertext[15:0] ^ decipher_out[31:16];

present_decipher dec2(ciphertext[47:32], key, decipher_out[47:32]);
assign plaintext[47:32] = ciphertext[31:16] ^ decipher_out[47:32];

present_decipher dec3(ciphertext[63:48], key, decipher_out[63:48]);
assign plaintext[63:48] = ciphertext[47:32] ^ decipher_out[63:48];

present_decipher dec4(ciphertext[79:64], key, decipher_out[79:64]);
assign plaintext[79:64] = ciphertext[63:48] ^ decipher_out[79:64];

present_decipher dec5(ciphertext[95:80], key, decipher_out[95:80]);
assign plaintext[95:80] = ciphertext[79:64] ^ decipher_out[95:80];

present_decipher dec6(ciphertext[111:96], key, decipher_out[111:96]);
assign plaintext[111:96] = ciphertext[95:80] ^ decipher_out[111:96];

present_decipher dec7(ciphertext[127:112], key, decipher_out[127:112]);
assign plaintext[127:112] = ciphertext[111:96] ^ decipher_out[127:112];

endmodule