# PresentCipher
Project for ECE 5960/6960 - Hardware Cryptography

In this project, you'll find 3 useful testbenches of our design that can be run.

tb_key_scheduler.v - This test bench demonstrates the key mixing used within our cipher. It uses key_scheduler.v as the top level module and also uses key_update.v

tb_cipher.v - This test bench demonstrates the encryption and decryption ability of our cipher. It uses present_cipher.v as the top level module and depends on all other verilog files except for the ones with blockchain or tb in their name.

tb_blockchain.v - This test bench demonstrates the operation of our cipher in cipher block chain (CBC) mode. It uses blockchain_present_cipher.v as the top level module and depends on all other verilog files except for the ones with tb in their name.

These files can be added to a quartus project or compiled directly in Modelsim/Questasim.