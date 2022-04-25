`timescale 1ns / 1ps

module tb_key_scheduler;

reg [19:0] master_key;

wire [15:0] k0, k1, k2, k3, k4, k5, k6, k7;

key_scheduler uut(.master_key(master_key), .k0(k0), .k1(k1), .k2(k2), .k3(k3), .k4(k4), .k5(k5), .k6(k6), .k7(k7));

initial begin

master_key = 20'h00000;

#10;

master_key = 20'hfffff;

#10;

master_key = 20'h8a11b;

#10;

master_key = 20'h75ee4;

#10;

end

endmodule