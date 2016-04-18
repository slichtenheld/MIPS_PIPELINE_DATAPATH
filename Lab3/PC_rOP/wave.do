onerror {resume}
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/instr(31 downto 26)} instrOP
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/instr(25 downto 21)} instrRS
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/instr(20 downto 16)} instrRT
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/instr(15 downto 11)} instrRD
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/instr(10 downto 6)} instrSHAMT
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/instr(5 downto 0)} instrFUNCT
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/instr(15 downto 0)} instrIMM
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/instr(25 downto 0)} instrADDR
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/pcRegOut(16 downto 0)} PC
quietly virtual signal -install /tb_pc/UUT { /tb_pc/UUT/pcRegOut(16 downto 2)} PC_DEC
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_pc/UUT/clk
add wave -noupdate /tb_pc/UUT/rst
add wave -noupdate /tb_pc/UUT/clk_mem
add wave -noupdate -radix hexadecimal -childformat {{/tb_pc/UUT/PC_DEC(14) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(13) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(12) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(11) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(10) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(9) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(8) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(7) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(6) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(5) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(4) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(3) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(2) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(1) -radix hexadecimal} {/tb_pc/UUT/PC_DEC(0) -radix hexadecimal}} -subitemconfig {/tb_pc/UUT/pcRegOut(16) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(15) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(14) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(13) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(12) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(11) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(10) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(9) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(8) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(7) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(6) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(5) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(4) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(3) {-radix hexadecimal} /tb_pc/UUT/pcRegOut(2) {-radix hexadecimal}} /tb_pc/UUT/PC_DEC
add wave -noupdate -color Gold -radix hexadecimal -childformat {{/tb_pc/UUT/instr(31) -radix hexadecimal} {/tb_pc/UUT/instr(30) -radix hexadecimal} {/tb_pc/UUT/instr(29) -radix hexadecimal} {/tb_pc/UUT/instr(28) -radix hexadecimal} {/tb_pc/UUT/instr(27) -radix hexadecimal} {/tb_pc/UUT/instr(26) -radix hexadecimal} {/tb_pc/UUT/instr(25) -radix hexadecimal} {/tb_pc/UUT/instr(24) -radix hexadecimal} {/tb_pc/UUT/instr(23) -radix hexadecimal} {/tb_pc/UUT/instr(22) -radix hexadecimal} {/tb_pc/UUT/instr(21) -radix hexadecimal} {/tb_pc/UUT/instr(20) -radix hexadecimal} {/tb_pc/UUT/instr(19) -radix hexadecimal} {/tb_pc/UUT/instr(18) -radix hexadecimal} {/tb_pc/UUT/instr(17) -radix hexadecimal} {/tb_pc/UUT/instr(16) -radix hexadecimal} {/tb_pc/UUT/instr(15) -radix hexadecimal} {/tb_pc/UUT/instr(14) -radix hexadecimal} {/tb_pc/UUT/instr(13) -radix hexadecimal} {/tb_pc/UUT/instr(12) -radix hexadecimal} {/tb_pc/UUT/instr(11) -radix hexadecimal} {/tb_pc/UUT/instr(10) -radix hexadecimal} {/tb_pc/UUT/instr(9) -radix hexadecimal} {/tb_pc/UUT/instr(8) -radix hexadecimal} {/tb_pc/UUT/instr(7) -radix hexadecimal} {/tb_pc/UUT/instr(6) -radix hexadecimal} {/tb_pc/UUT/instr(5) -radix hexadecimal} {/tb_pc/UUT/instr(4) -radix hexadecimal} {/tb_pc/UUT/instr(3) -radix hexadecimal} {/tb_pc/UUT/instr(2) -radix hexadecimal} {/tb_pc/UUT/instr(1) -radix hexadecimal} {/tb_pc/UUT/instr(0) -radix hexadecimal}} -subitemconfig {/tb_pc/UUT/instr(31) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(30) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(29) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(28) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(27) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(26) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(25) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(24) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(23) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(22) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(21) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(20) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(19) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(18) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(17) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(16) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(15) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(14) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(13) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(12) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(11) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(10) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(9) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(8) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(7) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(6) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(5) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(4) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(3) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(2) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(1) {-color Gold -height 15 -radix hexadecimal} /tb_pc/UUT/instr(0) {-color Gold -height 15 -radix hexadecimal}} /tb_pc/UUT/instr
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(10)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(9)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(8)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(7)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(6)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(5)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(4)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(3)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(2)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(1)
add wave -noupdate -color White -height 15 -radix hexadecimal /tb_pc/UUT/U_REGFILE/q_array(0)
add wave -noupdate -color {Violet Red} -radix hexadecimal /tb_pc/UUT/instrOP
add wave -noupdate -color {Violet Red} -radix unsigned /tb_pc/UUT/instrRS
add wave -noupdate -color {Violet Red} -radix unsigned /tb_pc/UUT/instrRT
add wave -noupdate -color {Violet Red} -radix unsigned /tb_pc/UUT/instrRD
add wave -noupdate -color {Violet Red} -radix unsigned /tb_pc/UUT/instrSHAMT
add wave -noupdate -color {Violet Red} -radix hexadecimal /tb_pc/UUT/instrFUNCT
add wave -noupdate -color {Violet Red} -radix unsigned /tb_pc/UUT/instrIMM
add wave -noupdate -color {Violet Red} -radix unsigned /tb_pc/UUT/instrADDR
add wave -noupdate -color White -radix hexadecimal -childformat {{/tb_pc/UUT/U_REGFILE/q_array(31) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(30) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(29) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(28) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(27) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(26) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(25) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(24) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(23) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(22) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(21) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(20) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(19) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(18) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(17) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(16) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(15) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(14) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(13) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(12) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(11) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(10) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(9) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(8) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(7) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(6) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(5) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(4) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(3) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(2) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(1) -radix hexadecimal} {/tb_pc/UUT/U_REGFILE/q_array(0) -radix hexadecimal}} -subitemconfig {/tb_pc/UUT/U_REGFILE/q_array(31) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(30) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(29) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(28) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(27) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(26) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(25) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(24) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(23) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(22) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(21) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(20) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(19) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(18) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(17) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(16) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(15) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(14) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(13) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(12) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(11) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(10) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(9) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(8) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(7) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(6) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(5) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(4) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(3) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(2) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(1) {-color White -height 15 -radix hexadecimal} /tb_pc/UUT/U_REGFILE/q_array(0) {-color White -height 15 -radix hexadecimal}} /tb_pc/UUT/U_REGFILE/q_array
add wave -noupdate -color Cyan /tb_pc/UUT/rr0_data
add wave -noupdate -color Gray90 /tb_pc/UUT/rr1_data
add wave -noupdate -color Cyan /tb_pc/UUT/ALUSrcOut
add wave -noupdate -color Cyan /tb_pc/UUT/alu_res
add wave -noupdate -color Cyan /tb_pc/UUT/ALU_OP
add wave -noupdate -color Cyan /tb_pc/UUT/U_ALUplusCTRL/U_ALU32/ctrl
add wave -noupdate /tb_pc/UUT/MemToReg
add wave -noupdate /tb_pc/UUT/ALUSrc
add wave -noupdate /tb_pc/UUT/ZSextend
add wave -noupdate /tb_pc/UUT/regWrite
add wave -noupdate /tb_pc/UUT/memWrite
add wave -noupdate /tb_pc/UUT/regDst
add wave -noupdate /tb_pc/UUT/regDst_r31
add wave -noupdate /tb_pc/UUT/data_jal
add wave -noupdate /tb_pc/UUT/branch
add wave -noupdate /tb_pc/UUT/jump
add wave -noupdate /tb_pc/UUT/jumpReg
add wave -noupdate /tb_pc/UUT/extenderOut
add wave -noupdate /tb_pc/UUT/regDstOut
add wave -noupdate /tb_pc/UUT/MemToRegOut
add wave -noupdate /tb_pc/UUT/regDst_r31Out
add wave -noupdate /tb_pc/UUT/data_jalOut
add wave -noupdate /tb_pc/UUT/branchSig
add wave -noupdate /tb_pc/UUT/branchSigOut
add wave -noupdate /tb_pc/UUT/jumpOut
add wave -noupdate /tb_pc/UUT/jumpRegOut
add wave -noupdate /tb_pc/UUT/Z_FlagOut
add wave -noupdate /tb_pc/UUT/SLL2Out
add wave -noupdate /tb_pc/UUT/branchAddOut
add wave -noupdate /tb_pc/UUT/ramOut
add wave -noupdate /tb_pc/UUT/C_Flag
add wave -noupdate /tb_pc/UUT/Z_Flag
add wave -noupdate /tb_pc/UUT/S_Flag
add wave -noupdate /tb_pc/UUT/V_Flag
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {77535 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 38
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
WaveRestoreZoom {257508 ps} {481439 ps}
