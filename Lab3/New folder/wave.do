onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_rop/clk
add wave -noupdate /tb_rop/rst
add wave -noupdate /tb_rop/instr
add wave -noupdate /tb_rop/done
add wave -noupdate -color {Dark Green} -itemcolor {Dark Green} /tb_rop/UUT/U_ALUplusCTRL/ia
add wave -noupdate -color {Dark Green} -itemcolor {Dark Green} /tb_rop/UUT/U_ALUplusCTRL/ib
add wave -noupdate -color {Dark Green} -itemcolor {Dark Green} /tb_rop/UUT/U_ALUplusCTRL/shamt
add wave -noupdate -color {Dark Green} -itemcolor {Dark Green} /tb_rop/UUT/U_ALUplusCTRL/shdir
add wave -noupdate -color {Dark Green} -itemcolor {Dark Green} /tb_rop/UUT/U_ALUplusCTRL/o
add wave -noupdate -color Gold -itemcolor Gold /tb_rop/UUT/U_REGFILE/rr0
add wave -noupdate -color Gold -itemcolor Gold /tb_rop/UUT/U_REGFILE/rr1
add wave -noupdate -color Gold -itemcolor Gold -subitemconfig {/tb_rop/UUT/U_REGFILE/reg_wr(4) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/reg_wr(3) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/reg_wr(2) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/reg_wr(1) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/reg_wr(0) {-color Gold -itemcolor Gold}} /tb_rop/UUT/U_REGFILE/reg_wr
add wave -noupdate -color Gold -itemcolor Gold /tb_rop/UUT/U_REGFILE/d
add wave -noupdate -color Gold -itemcolor Gold /tb_rop/UUT/U_REGFILE/w_en
add wave -noupdate -color Gold -itemcolor Gold /tb_rop/UUT/U_REGFILE/q0
add wave -noupdate -color Gold -itemcolor Gold /tb_rop/UUT/U_REGFILE/q1
add wave -noupdate -color Gold -itemcolor Gold -subitemconfig {/tb_rop/UUT/U_REGFILE/ldi(31) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(30) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(29) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(28) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(27) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(26) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(25) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(24) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(23) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(22) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(21) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(20) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(19) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(18) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(17) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(16) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(15) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(14) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(13) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(12) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(11) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(10) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(9) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(8) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(7) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(6) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(5) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(4) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(3) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(2) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(1) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/ldi(0) {-color Gold -itemcolor Gold}} /tb_rop/UUT/U_REGFILE/ldi
add wave -noupdate -color Gold -itemcolor Gold -expand -subitemconfig {/tb_rop/UUT/U_REGFILE/q_array(31) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(30) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(29) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(28) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(27) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(26) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(25) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(24) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(23) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(22) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(21) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(20) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(19) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(18) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(17) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(16) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(15) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(14) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(13) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(12) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(11) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(10) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(9) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(8) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(7) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(6) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(5) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(4) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(3) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(2) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(1) {-color Gold -itemcolor Gold} /tb_rop/UUT/U_REGFILE/q_array(0) {-color Gold -itemcolor Gold}} /tb_rop/UUT/U_REGFILE/q_array
add wave -noupdate -color Red -itemcolor Red /tb_rop/UUT/U_MAIN_CTRL/MemToReg
add wave -noupdate -color Red -itemcolor Red /tb_rop/UUT/U_MAIN_CTRL/ALUSrc
add wave -noupdate -color Red -itemcolor Red /tb_rop/UUT/U_MAIN_CTRL/ZSextend
add wave -noupdate -color Red -itemcolor Red /tb_rop/UUT/U_MAIN_CTRL/regWrite
add wave -noupdate -color Red -itemcolor Red /tb_rop/UUT/U_MAIN_CTRL/regDst
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {279 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 151
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {998 ps}
