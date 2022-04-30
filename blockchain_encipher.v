module blockchain_encipher(init_vec, key, plaintext, ciphertext);

input [15:0] init_vec;
input [19:0] key;
input [0:7][15:0] plaintext; // Array of plaintext blocks

output [0:7][15:0] ciphertext; // Array of ciphertext blocks

wire [0:7][15:0] cipher_in;

assign cipher_in[0] = init_vec ^ plaintext[0];
present_encipher en0(cipher_in[0], key, ciphertext[0]);

assign cipher_in[1] = ciphertext[0] ^ plaintext[1];
present_encipher en1(cipher_in[1], key, ciphertext[1]);

assign cipher_in[2] = ciphertext[1] ^ plaintext[2];
present_encipher en2(cipher_in[2], key, ciphertext[2]);

assign cipher_in[3] = ciphertext[2] ^ plaintext[3];
present_encipher en3(cipher_in[3], key, ciphertext[3]);

assign cipher_in[4] = ciphertext[3] ^ plaintext[4];
present_encipher en4(cipher_in[4], key, ciphertext[4]);

assign cipher_in[5] = ciphertext[4] ^ plaintext[5];
present_encipher en5(cipher_in[5], key, ciphertext[5]);

assign cipher_in[6] = ciphertext[5] ^ plaintext[6];
present_encipher en6(cipher_in[6], key, ciphertext[6]);

assign cipher_in[7] = ciphertext[6] ^ plaintext[7];
present_encipher en7(cipher_in[7], key, ciphertext[7]);

endmodule