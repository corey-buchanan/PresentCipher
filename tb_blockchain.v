`timescale 1ns/1ps

module tb_blockchain;

reg [127:0] plaintext;
reg [19:0] key;
reg [15:0] init_vec;

wire [127:0] ciphertext, deciphered_text;

blockchain_present_cipher uut(plaintext, key, init_vec, ciphertext, deciphered_text);

initial begin

plaintext = 128'h44444444444444444444444444444444;
init_vec = 16'hA63E;
key = 20'h48FA2;

#1;

plaintext = 128'h44444544444444444444444444444444;

#1;

init_vec = 16'h32A9;

#1;

plaintext = 128'hBADDCAFEBADDF00DD15EA5EDDEADBEEF;
init_vec = 16'hAB84;
key = 20'hB00B5;

#1;

end

endmodule
