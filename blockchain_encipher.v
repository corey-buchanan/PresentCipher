module blockchain_encipher(init_vec, key, plaintext, ciphertext);

input [15:0] init_vec;
input [19:0] key;
input [127:0] plaintext; // Array of plaintext blocks

output [127:0] ciphertext; // Array of ciphertext blocks

wire [127:0] cipher_in;

assign cipher_in[15:0] = init_vec ^ plaintext[15:0];
present_encipher en0(cipher_in[15:0], key, ciphertext[15:0]);

assign cipher_in[31:16] = ciphertext[15:0] ^ plaintext[31:16];
present_encipher en1(cipher_in[31:16], key, ciphertext[31:16]);

assign cipher_in[47:32] = ciphertext[31:16] ^ plaintext[47:32];
present_encipher en2(cipher_in[47:32], key, ciphertext[47:32]);

assign cipher_in[63:48] = ciphertext[47:32] ^ plaintext[63:48];
present_encipher en3(cipher_in[63:48], key, ciphertext[63:48]);

assign cipher_in[79:64] = ciphertext[63:48] ^ plaintext[79:64];
present_encipher en4(cipher_in[79:64], key, ciphertext[79:64]);

assign cipher_in[95:80] = ciphertext[79:64] ^ plaintext[95:80];
present_encipher en5(cipher_in[95:80], key, ciphertext[95:80]);

assign cipher_in[111:96] = ciphertext[95:80] ^ plaintext[111:96];
present_encipher en6(cipher_in[111:96], key, ciphertext[111:96]);

assign cipher_in[127:112] = ciphertext[111:96] ^ plaintext[127:112];
present_encipher en7(cipher_in[127:112], key, ciphertext[127:112]);

endmodule