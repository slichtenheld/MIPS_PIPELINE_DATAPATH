onerror {resume}
quietly virtual signal -install /tb/UUT { /tb/UUT/PCREG_OUT(10 downto 2)} PC_DEC
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/clk
add wave -noupdate /tb/clk_mem
add wave -noupdate /tb/rst
add wave -noupdate /tb/UUT/PCREG_OUT
add wave -noupdate -label PC_HEX -radix hexadecimal /tb/UUT/PC_DEC
add wave -noupdate -color Gold -radix hexadecimal /tb/UUT/instrPipe_OUT
add wave -noupdate -childformat {{/tb/UUT/U_REGFILE/q_array(31) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(30) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(29) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(28) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(27) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(26) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(25) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(24) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(23) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(22) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(21) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(20) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(19) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(18) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(17) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(16) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(15) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(14) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(13) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(12) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(11) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(10) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(9) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(8) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(7) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(6) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(5) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(4) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(3) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(2) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(1) -radix hexadecimal} {/tb/UUT/U_REGFILE/q_array(0) -radix hexadecimal}} -expand -subitemconfig {/tb/UUT/U_REGFILE/q_array(31) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(30) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(29) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(28) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(27) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(26) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(25) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(24) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(23) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(22) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(21) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(20) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(19) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(18) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(17) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(16) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(15) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(14) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(13) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(12) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(11) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(10) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(9) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(8) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(7) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(6) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(5) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(4) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(3) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(2) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(1) {-height 15 -radix hexadecimal} /tb/UUT/U_REGFILE/q_array(0) {-height 15 -radix hexadecimal}} /tb/UUT/U_REGFILE/q_array
add wave -noupdate -color Gold -label PC_HEX -radix hexadecimal /tb/UUT/PC_DEC
add wave -noupdate -color Gold -radix hexadecimal /tb/UUT/instrPipe_OUT
add wave -noupdate /tb/UUT/U_NOP_PIPE0/q
add wave -noupdate /tb/UUT/U_NOP_PIPE1/q
add wave -noupdate /tb/UUT/U_NOP_PIPE2/q
add wave -noupdate /tb/UUT/U_NOP_PIPE3/q
add wave -noupdate /tb/UUT/U_WB_PIPE1/q
add wave -noupdate /tb/UUT/U_WB_PIPE2/q
add wave -noupdate /tb/UUT/U_WB_PIPE3/q
add wave -noupdate /tb/UUT/U_M_PIPE1/q
add wave -noupdate /tb/UUT/U_M_PIPE2/q
add wave -noupdate /tb/UUT/U_ALUSRC0_PIPE1/q
add wave -noupdate /tb/UUT/U_ALUSRC1_PIPE1/q
add wave -noupdate /tb/UUT/U_ALUOP_PIPE1/q
add wave -noupdate /tb/UUT/U_REGDST_PIPE1/q
add wave -noupdate /tb/UUT/U_REGDST_PIPE2/q
add wave -noupdate /tb/UUT/U_REGDST_PIPE3/q
add wave -noupdate -radix hexadecimal /tb/UUT/U_REG0_PIPE1/q
add wave -noupdate -radix hexadecimal /tb/UUT/U_REG1_PIPE1/q
add wave -noupdate -radix hexadecimal /tb/UUT/U_REG1_PIPE2/q
add wave -noupdate -radix hexadecimal /tb/UUT/U_EXT_PIPE1/q
add wave -noupdate -radix hexadecimal /tb/UUT/U_ALU_PIPE2/q
add wave -noupdate -radix hexadecimal /tb/UUT/U_ALU_PIPE3/q
add wave -noupdate -radix hexadecimal /tb/UUT/U_DATMEM/dataIn
add wave -noupdate -radix hexadecimal /tb/UUT/U_DATMEM/dataOut
add wave -noupdate -radix hexadecimal /tb/UUT/U_DAT_PIPE3/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {55993 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 203
configure wave -valuecolwidth 58
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
WaveRestoreZoom {0 ps} {222562 ps}
