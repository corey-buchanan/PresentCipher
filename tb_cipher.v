`timescale 1ns / 1ps

module tb_cipher;

reg [15:0] plaintext;
reg [19:0] master_key;

wire [15:0] ciphertext, deciphered_text;

present_cipher uut(plaintext, master_key, ciphertext, deciphered_text);

initial begin

plaintext = 16'h0000;
master_key = 20'h00000;

#10;

master_key = 20'hfffff;

#10;

plaintext = 16'hdead;
master_key = 20'hbeef5;

#10;

end

endmodule