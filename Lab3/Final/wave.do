onerror {resume}
quietly virtual signal -install /tb_tplvl/UUT { /tb_tplvl/UUT/pcRegOut(7 downto 2)} PC_DEC
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_tplvl/UUT/clk
add wave -noupdate /tb_tplvl/UUT/clk_mem
add wave -noupdate /tb_tplvl/UUT/rst
add wave -noupdate -radix hexadecimal -childformat {{/tb_tplvl/UUT/pcRegOut(31) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(30) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(29) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(28) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(27) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(26) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(25) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(24) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(23) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(22) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(21) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(20) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(19) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(18) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(17) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(16) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(15) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(14) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(13) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(12) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(11) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(10) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(9) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(8) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(7) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(6) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(5) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(4) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(3) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(2) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(1) -radix hexadecimal} {/tb_tplvl/UUT/pcRegOut(0) -radix hexadecimal}} -subitemconfig {/tb_tplvl/UUT/pcRegOut(31) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(30) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(29) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(28) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(27) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(26) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(25) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(24) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(23) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(22) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(21) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(20) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(19) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(18) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(17) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(16) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(15) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(14) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(13) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(12) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(11) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(10) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(9) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(8) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(7) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(6) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(5) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(4) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(3) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(2) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(1) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/pcRegOut(0) {-height 15 -radix hexadecimal}} /tb_tplvl/UUT/pcRegOut
add wave -noupdate -radix hexadecimal /tb_tplvl/UUT/PC_DEC
add wave -noupdate -radix hexadecimal /tb_tplvl/UUT/instr
add wave -noupdate -childformat {{/tb_tplvl/UUT/U_REGFILE/q_array(31) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(30) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(29) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(28) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(27) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(26) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(25) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(24) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(23) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(22) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(21) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(20) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(19) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(18) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(17) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(16) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(15) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(14) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(13) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(12) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(11) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(10) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(9) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(8) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(7) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(6) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(5) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(4) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(3) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(2) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(1) -radix hexadecimal} {/tb_tplvl/UUT/U_REGFILE/q_array(0) -radix hexadecimal}} -expand -subitemconfig {/tb_tplvl/UUT/U_REGFILE/q_array(31) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(30) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(29) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(28) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(27) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(26) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(25) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(24) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(23) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(22) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(21) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(20) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(19) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(18) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(17) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(16) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(15) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(14) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(13) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(12) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(11) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(10) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(9) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(8) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(7) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(6) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(5) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(4) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(3) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(2) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(1) {-height 15 -radix hexadecimal} /tb_tplvl/UUT/U_REGFILE/q_array(0) {-height 15 -radix hexadecimal}} /tb_tplvl/UUT/U_REGFILE/q_array
add wave -noupdate -radix hexadecimal /tb_tplvl/UUT/PC_DEC
add wave -noupdate -color Cyan -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/dataIn
add wave -noupdate -color Cyan -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/addr
add wave -noupdate -color Cyan /tb_tplvl/UUT/U_MEM_data/wr_en
add wave -noupdate -color Cyan /tb_tplvl/UUT/U_MEM_data/ctrl
add wave -noupdate -color Cyan -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/dataOut
add wave -noupdate -color Cyan -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/ramIn32
add wave -noupdate -color Cyan -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/ramOut32
add wave -noupdate -color Cyan -radix binary -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/ramChipEn
add wave -noupdate -color Cyan -radix binary -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/ramWriteEn
add wave -noupdate -color Cyan -radix binary -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/ramMuxIn
add wave -noupdate -color Cyan -radix binary -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/ramMuxOut
add wave -noupdate -color Cyan -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/U_MEM_data/ramAddr
add wave -noupdate /tb_tplvl/UUT/ALU_OP
add wave -noupdate /tb_tplvl/UUT/MemToReg
add wave -noupdate /tb_tplvl/UUT/ALUSrc
add wave -noupdate /tb_tplvl/UUT/ZSextend
add wave -noupdate -color Gold -radix hexadecimal /tb_tplvl/UUT/regWrite
add wave -noupdate -color Gold -radix hexadecimal /tb_tplvl/UUT/memWrite
add wave -noupdate /tb_tplvl/UUT/memCtrl
add wave -noupdate /tb_tplvl/UUT/regDst
add wave -noupdate /tb_tplvl/UUT/regDst_r31
add wave -noupdate /tb_tplvl/UUT/data_jal
add wave -noupdate /tb_tplvl/UUT/lui
add wave -noupdate /tb_tplvl/UUT/branch
add wave -noupdate /tb_tplvl/UUT/jump
add wave -noupdate /tb_tplvl/UUT/jumpReg
add wave -noupdate -radix hexadecimal /tb_tplvl/UUT/rr0_data
add wave -noupdate -color Gold -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/rr1_data
add wave -noupdate -color Gold -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/ALUSrcOut
add wave -noupdate -color Gold -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/extenderOut
add wave -noupdate -color Gold -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/alu_res
add wave -noupdate -radix unsigned /tb_tplvl/UUT/regDstOut
add wave -noupdate -color Gold -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/MemToRegOut
add wave -noupdate /tb_tplvl/UUT/regDst_r31Out
add wave -noupdate /tb_tplvl/UUT/data_jalOut
add wave -noupdate /tb_tplvl/UUT/luiOut
add wave -noupdate /tb_tplvl/UUT/branchSig
add wave -noupdate /tb_tplvl/UUT/branchSigOut
add wave -noupdate /tb_tplvl/UUT/jumpOut
add wave -noupdate /tb_tplvl/UUT/jumpRegOut
add wave -noupdate /tb_tplvl/UUT/Z_FlagOut
add wave -noupdate /tb_tplvl/UUT/SLL2Out
add wave -noupdate /tb_tplvl/UUT/PCplus4
add wave -noupdate /tb_tplvl/UUT/PCplus8
add wave -noupdate /tb_tplvl/UUT/branchAddOut
add wave -noupdate -color Gold -radix hexadecimal -radixshowbase 0 /tb_tplvl/UUT/ramOut
add wave -noupdate /tb_tplvl/UUT/C_Flag
add wave -noupdate /tb_tplvl/UUT/Z_Flag
add wave -noupdate /tb_tplvl/UUT/S_Flag
add wave -noupdate /tb_tplvl/UUT/V_Flag
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {899977 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 281
configure wave -valuecolwidth 98
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
WaveRestoreZoom {384615 ps} {592532 ps}
