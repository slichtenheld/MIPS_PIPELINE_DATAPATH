onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/clk
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/done
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/dataIn
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/addr
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/wr_en
add wave -noupdate -radix binary /tb_ram_ctrl/ctrl
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/dataOut
add wave -noupdate /tb_ram_ctrl/UUT/U_ramControl/ramChipEn
add wave -noupdate /tb_ram_ctrl/UUT/U_ramControl/ramWriteEn
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/UUT/U_ramControl/ramAddr0
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/UUT/U_ramControl/ramAddr1
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/UUT/U_ramControl/ramAddr2
add wave -noupdate -radix hexadecimal /tb_ram_ctrl/UUT/U_ramControl/ramAddr3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6473 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 149
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ps} {75088 ps}
