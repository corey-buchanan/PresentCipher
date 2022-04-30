module blockchain_present_cipher(plaintext, key, init_vec, ciphertext, deciphered_text);

input [0:7][15:0] plaintext;
input [19:0] key;
input [15:0] init_vec;

output [0:7][15:0] ciphertext, deciphered_text;

blockchain_encipher en(init_vec, key, plaintext, ciphertext);
blockchain_decipher dec(init_vec, key, ciphertext, deciphered_text);

endmodule