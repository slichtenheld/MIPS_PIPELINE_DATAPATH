onerror {resume}
quietly virtual signal -install /tb/UUT/U_PC_REG { /tb/UUT/U_PC_REG/q(7 downto 2)} PC_HEX
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/UUT/clk
add wave -noupdate /tb/clk_reg
add wave -noupdate /tb/UUT/memclk
add wave -noupdate /tb/UUT/rst
add wave -noupdate -label pc_reg_OUT -radix hexadecimal /tb/UUT/U_PC_REG/q
add wave -noupdate -color Gold -radix hexadecimal /tb/UUT/U_PC_REG/PC_HEX
add wave -noupdate -color Green -radix hexadecimal /tb/UUT/U_PIPE_1/instrreg_OUT
add wave -noupdate -radix hexadecimal -childformat {{/tb/UUT/U_REGFILE/q_array(31) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(30) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(29) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(28) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(27) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(26) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(25) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(24) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(23) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(22) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(21) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(20) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(19) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(18) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(17) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(16) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(15) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(14) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(13) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(12) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(11) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(10) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(9) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(8) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(7) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(6) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(5) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(4) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(3) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(2) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(1) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(0) -radix hexadecimal}} -expand -subitemconfig {/tb/UUT/U_REGFILE/q_array(31) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(30) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(29) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(28) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(27) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(26) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(25) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(24) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(23) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(22) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(21) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(20) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(19) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(18) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(17) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(16) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(15) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(14) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(13) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(12) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(11) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(10) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(9) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(8) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(7) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(6) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(5) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(4) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(3) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(2) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(1) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(0) {-height 15 -radix hexadecimal}} /tb/UUT/U_REGFILE/q_array
add wave -noupdate /tb/UUT/U_HAZARD_DETECTION_UNIT/stall_SEL
add wave -noupdate -color Red -label P1_INSTR_REG_OUT -radix hexadecimal /tb/UUT/U_PIPE_1/instrreg_OUT
add wave -noupdate -color Gold -label PC_HEX -radix hexadecimal /tb/UUT/U_PC_REG/PC_HEX
add wave -noupdate -label P1_opcode -radix hexadecimal /tb/UUT/U_HAZARD_DETECTION_UNIT/instr_op_31_26
add wave -noupdate -label P2_REGWRITE -radix hexadecimal /tb/UUT/U_HAZARD_DETECTION_UNIT/regWrite_P2_OUT
add wave -noupdate -label P2_DST -radix hexadecimal /tb/UUT/U_HAZARD_DETECTION_UNIT/regDst_P2_OUT
add wave -noupdate -label P1_RT -radix hexadecimal /tb/UUT/U_HAZARD_DETECTION_UNIT/instr_RT_20_16
add wave -noupdate -label P1_RS -radix hexadecimal /tb/UUT/U_HAZARD_DETECTION_UNIT/instr_RS_25_21
add wave -noupdate -label P2_RT -radix hexadecimal /tb/UUT/U_HAZARD_DETECTION_UNIT/RT_P2_OUT
add wave -noupdate -label P3_DST -radix hexadecimal /tb/UUT/U_HAZARD_DETECTION_UNIT/regDst_P3_OUT
add wave -noupdate -label P2_MEMTOREG -radix hexadecimal /tb/UUT/U_HAZARD_DETECTION_UNIT/memtoreg_P2_OUT
add wave -noupdate -label P3_MEMTOREG -radix hexadecimal /tb/UUT/U_HAZARD_DETECTION_UNIT/memtoreg_P3_OUT
add wave -noupdate -color {Slate Blue} /tb/UUT/U_COMPARATOR/equal
add wave -noupdate -color {Slate Blue} -radix binary /tb/UUT/U_COMP0_SEL/sel
add wave -noupdate -color {Slate Blue} -radix binary /tb/UUT/U_COMP1_SEL/sel
add wave -noupdate -color {Slate Blue} -radix hexadecimal /tb/UUT/U_COMP0_SEL/output
add wave -noupdate -color {Slate Blue} -radix hexadecimal /tb/UUT/U_COMP1_SEL/output
add wave -noupdate -color Red -label VALID_P1_OUT -radix hexadecimal /tb/UUT/U_PIPE_1/valid_OUT
add wave -noupdate -color Red -label P1_INSTR_REG_OUT -radix hexadecimal /tb/UUT/U_PIPE_1/instrreg_OUT
add wave -noupdate -color Gold -label P2_REGWRITE_OUT -radix hexadecimal /tb/UUT/U_PIPE_2/regWrite_OUT
add wave -noupdate -color Gold -label P2_REG0_OUT -radix hexadecimal /tb/UUT/U_PIPE_2/reg0_OUT
add wave -noupdate -color Gold -label P2_REG1JAL_OUT -radix hexadecimal /tb/UUT/U_PIPE_2/reg1jal_OUT
add wave -noupdate -color Gold -label P2_EXTENDED_OUT -radix hexadecimal /tb/UUT/U_PIPE_2/extended_OUT
add wave -noupdate -color Gold -label P2_REGDSTSEL_OUT -radix hexadecimal /tb/UUT/U_REGDST_SEL/output
add wave -noupdate -color Khaki -label ALU_SRC0SEL_OUT /tb/UUT/U_ALUSRC0_SEL/sel
add wave -noupdate -color Khaki -label ALU_SRC1SEL_OUT /tb/UUT/U_ALUSRC1_SEL/sel
add wave -noupdate -color Khaki -label ALU_INA -radix hexadecimal /tb/UUT/U_ALUSRC0_SEL/output
add wave -noupdate -color Khaki -label ALU_INB -radix hexadecimal /tb/UUT/U_ALUSRC1_SEL/output
add wave -noupdate -color Khaki -label ALU_OUT -radix hexadecimal /tb/UUT/U_ALUandCTRL/o
add wave -noupdate -color {Dark Orchid} -label P3_ALUREG_OUT -radix hexadecimal /tb/UUT/U_PIPE_3/alureg_OUT
add wave -noupdate -color {Dark Orchid} -label P3_REG1JAL_OUT -radix hexadecimal /tb/UUT/U_PIPE_3/reg1jal_OUT
add wave -noupdate -color {Dark Orchid} -label P3_DSTREG_OUT -radix hexadecimal /tb/UUT/U_PIPE_3/dstreg_OUT
add wave -noupdate -color Cyan -label P4_MEMDATA_OUT -radix hexadecimal /tb/UUT/U_PIPE_4/memdata_OUT
add wave -noupdate -color Cyan -label P4_REG1ALU_OUT -radix hexadecimal /tb/UUT/U_PIPE_4/reg1alu_OUT
add wave -noupdate -color Cyan -label P4_DSTREG_OUT -radix hexadecimal /tb/UUT/U_PIPE_4/dstreg_OUT
add wave -noupdate -color Cyan -label P4_WBSIG_OUT -radix hexadecimal /tb/UUT/U_PIPE_4/wbreg_OUTSIG
add wave -noupdate /tb/UUT/U_FORWARDING_UNIT/ALUSRC0_FW
add wave -noupdate /tb/UUT/U_FORWARDING_UNIT/ALUSRC1_FW
add wave -noupdate -radix binary /tb/UUT/U_FORWARDING_UNIT/regWrite_P3_out
add wave -noupdate -radix binary /tb/UUT/U_FORWARDING_UNIT/regWrite_P4_out
add wave -noupdate -radix binary /tb/UUT/U_FORWARDING_UNIT/AlUSRC1_P2_OUT
add wave -noupdate -radix hexadecimal /tb/UUT/U_FORWARDING_UNIT/regdst_P3_out
add wave -noupdate -radix hexadecimal /tb/UUT/U_FORWARDING_UNIT/regdst_P4_out
add wave -noupdate -radix hexadecimal /tb/UUT/U_FORWARDING_UNIT/rs_P2_OUT
add wave -noupdate -radix hexadecimal /tb/UUT/U_FORWARDING_UNIT/rt_P2_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {698169 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 190
configure wave -valuecolwidth 60
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {883148 ps} {1147735 ps}
