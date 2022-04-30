transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/decipher_round.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/sbox_layer_inv.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/sbox_inv.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/sbox_layer.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/sbox.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/pbox.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/cipher_round.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/key_update.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/key_scheduler.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/present_decipher.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/present_encipher.v}
vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/present_cipher.v}

vlog -vlog01compat -work work +incdir+C:/Users/Corey/OneDrive/Desktop/PresentCipher {C:/Users/Corey/OneDrive/Desktop/PresentCipher/tb_cipher.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_cipher

add wave *
view structure
view signals
run -all
