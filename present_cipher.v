module present_cipher(plaintext, master_key, ciphertext, deciphered_text);

input [15:0] plaintext;
input [19:0] master_key;

output [15:0] ciphertext, deciphered_text;

present_encipher en(plaintext, master_key, ciphertext);
present_decipher dec(ciphertext, master_key, deciphered_text);

endmodule