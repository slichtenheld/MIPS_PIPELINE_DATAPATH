transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/zeroext.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/SLL2.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/signext.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/reg_gen.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/pcReg.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/mux32_1.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/mux2_1BIT.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/mux2_1.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/mipsLib.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/decoder.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/adder.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/ROM_instr.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/RAM_data.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/registerFile.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/extender.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/control.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/alu32control.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/alu32.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/alu_ctrl.vhd}
vcom -93 -work work {C:/Users/slichtenheld/Documents/UF/Fall15/CompArch/Lab3/PC_rOP/PC_tplvl.vhd}

