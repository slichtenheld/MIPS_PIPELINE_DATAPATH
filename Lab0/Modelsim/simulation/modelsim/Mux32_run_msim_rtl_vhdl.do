transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab0/mux32.vhd}

