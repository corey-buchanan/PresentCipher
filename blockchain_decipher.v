module blockchain_decipher(init_vec, key, ciphertext, plaintext);

input [15:0] init_vec;
input [19:0] key;
input [0:7][15:0] ciphertext; // Array of plaintext blocks

output [0:7][15:0] plaintext; // Array of ciphertext blocks

wire [0:7][15:0] decipher_out;


present_decipher dec0(ciphertext[0], key, cipher_out[0]);
assign plaintext[0] = init_vec ^ decipher_out[0];

present_decipher dec1(ciphertext[1], key, decipher_out[1]);
assign plaintext[1] = ciphertext[0] ^ decipher_out[1];

present_decipher dec2(ciphertext[2], key, decipher_out[2]);
assign plaintext[2] = ciphertext[1] ^ decipher_out[2];

present_decipher dec3(ciphertext[3], key, decipher_out[3]);
assign plaintext[3] = ciphertext[2] ^ decipher_out[3];

present_decipher dec4(ciphertext[4], key, decipher_out[4]);
assign plaintext[4] = ciphertext[3] ^ decipher_out[4];

present_decipher dec5(ciphertext[5], key, decipher_out[5]);
assign plaintext[5] = ciphertext[4] ^ decipher_out[5];

present_decipher dec6(ciphertext[6], key, decipher_out[6]);
assign plaintext[6] = ciphertext[5] ^ decipher_out[6];

present_decipher dec7(ciphertext[7], key, decipher_out[7]);
assign plaintext[7] = ciphertext[6] ^ decipher_out[7];

endmodule