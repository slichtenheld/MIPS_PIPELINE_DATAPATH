-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "09/09/2015 22:41:04"

-- 
-- Device: Altera EP4CGX150DF31I7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux32 IS
    PORT (
	sel : IN std_logic;
	in1 : IN std_logic_vector(31 DOWNTO 0);
	in2 : IN std_logic_vector(31 DOWNTO 0);
	output : OUT std_logic_vector(31 DOWNTO 0)
	);
END mux32;

-- Design Ports Information
-- output[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_T30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_T29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[2]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[2]	=>  Location: PIN_AB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[3]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[3]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[4]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[4]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[5]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[5]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[6]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[6]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[7]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[7]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[8]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[8]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[9]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[10]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[10]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[11]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[11]	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[12]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[12]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[13]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[13]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[14]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[15]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[15]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[16]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[16]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[17]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[17]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[18]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[18]	=>  Location: PIN_W30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[19]	=>  Location: PIN_Y30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[19]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[20]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[20]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[21]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[21]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[22]	=>  Location: PIN_AA29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[22]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[23]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[23]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[24]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[24]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[25]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[25]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[26]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[26]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[27]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[27]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[28]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[28]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[29]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[29]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[30]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[30]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[31]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[31]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel : std_logic;
SIGNAL ww_in1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_in2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(31 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[8]~output_o\ : std_logic;
SIGNAL \output[9]~output_o\ : std_logic;
SIGNAL \output[10]~output_o\ : std_logic;
SIGNAL \output[11]~output_o\ : std_logic;
SIGNAL \output[12]~output_o\ : std_logic;
SIGNAL \output[13]~output_o\ : std_logic;
SIGNAL \output[14]~output_o\ : std_logic;
SIGNAL \output[15]~output_o\ : std_logic;
SIGNAL \output[16]~output_o\ : std_logic;
SIGNAL \output[17]~output_o\ : std_logic;
SIGNAL \output[18]~output_o\ : std_logic;
SIGNAL \output[19]~output_o\ : std_logic;
SIGNAL \output[20]~output_o\ : std_logic;
SIGNAL \output[21]~output_o\ : std_logic;
SIGNAL \output[22]~output_o\ : std_logic;
SIGNAL \output[23]~output_o\ : std_logic;
SIGNAL \output[24]~output_o\ : std_logic;
SIGNAL \output[25]~output_o\ : std_logic;
SIGNAL \output[26]~output_o\ : std_logic;
SIGNAL \output[27]~output_o\ : std_logic;
SIGNAL \output[28]~output_o\ : std_logic;
SIGNAL \output[29]~output_o\ : std_logic;
SIGNAL \output[30]~output_o\ : std_logic;
SIGNAL \output[31]~output_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \in2[2]~input_o\ : std_logic;
SIGNAL \in1[2]~input_o\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \in2[3]~input_o\ : std_logic;
SIGNAL \in1[3]~input_o\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \in1[4]~input_o\ : std_logic;
SIGNAL \in2[4]~input_o\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \in2[5]~input_o\ : std_logic;
SIGNAL \in1[5]~input_o\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \in2[6]~input_o\ : std_logic;
SIGNAL \in1[6]~input_o\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \in2[7]~input_o\ : std_logic;
SIGNAL \in1[7]~input_o\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \in1[8]~input_o\ : std_logic;
SIGNAL \in2[8]~input_o\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \in2[9]~input_o\ : std_logic;
SIGNAL \in1[9]~input_o\ : std_logic;
SIGNAL \output~9_combout\ : std_logic;
SIGNAL \in1[10]~input_o\ : std_logic;
SIGNAL \in2[10]~input_o\ : std_logic;
SIGNAL \output~10_combout\ : std_logic;
SIGNAL \in2[11]~input_o\ : std_logic;
SIGNAL \in1[11]~input_o\ : std_logic;
SIGNAL \output~11_combout\ : std_logic;
SIGNAL \in1[12]~input_o\ : std_logic;
SIGNAL \in2[12]~input_o\ : std_logic;
SIGNAL \output~12_combout\ : std_logic;
SIGNAL \in1[13]~input_o\ : std_logic;
SIGNAL \in2[13]~input_o\ : std_logic;
SIGNAL \output~13_combout\ : std_logic;
SIGNAL \in2[14]~input_o\ : std_logic;
SIGNAL \in1[14]~input_o\ : std_logic;
SIGNAL \output~14_combout\ : std_logic;
SIGNAL \in2[15]~input_o\ : std_logic;
SIGNAL \in1[15]~input_o\ : std_logic;
SIGNAL \output~15_combout\ : std_logic;
SIGNAL \in2[16]~input_o\ : std_logic;
SIGNAL \in1[16]~input_o\ : std_logic;
SIGNAL \output~16_combout\ : std_logic;
SIGNAL \in2[17]~input_o\ : std_logic;
SIGNAL \in1[17]~input_o\ : std_logic;
SIGNAL \output~17_combout\ : std_logic;
SIGNAL \in1[18]~input_o\ : std_logic;
SIGNAL \in2[18]~input_o\ : std_logic;
SIGNAL \output~18_combout\ : std_logic;
SIGNAL \in2[19]~input_o\ : std_logic;
SIGNAL \in1[19]~input_o\ : std_logic;
SIGNAL \output~19_combout\ : std_logic;
SIGNAL \in1[20]~input_o\ : std_logic;
SIGNAL \in2[20]~input_o\ : std_logic;
SIGNAL \output~20_combout\ : std_logic;
SIGNAL \in2[21]~input_o\ : std_logic;
SIGNAL \in1[21]~input_o\ : std_logic;
SIGNAL \output~21_combout\ : std_logic;
SIGNAL \in2[22]~input_o\ : std_logic;
SIGNAL \in1[22]~input_o\ : std_logic;
SIGNAL \output~22_combout\ : std_logic;
SIGNAL \in2[23]~input_o\ : std_logic;
SIGNAL \in1[23]~input_o\ : std_logic;
SIGNAL \output~23_combout\ : std_logic;
SIGNAL \in2[24]~input_o\ : std_logic;
SIGNAL \in1[24]~input_o\ : std_logic;
SIGNAL \output~24_combout\ : std_logic;
SIGNAL \in1[25]~input_o\ : std_logic;
SIGNAL \in2[25]~input_o\ : std_logic;
SIGNAL \output~25_combout\ : std_logic;
SIGNAL \in2[26]~input_o\ : std_logic;
SIGNAL \in1[26]~input_o\ : std_logic;
SIGNAL \output~26_combout\ : std_logic;
SIGNAL \in1[27]~input_o\ : std_logic;
SIGNAL \in2[27]~input_o\ : std_logic;
SIGNAL \output~27_combout\ : std_logic;
SIGNAL \in1[28]~input_o\ : std_logic;
SIGNAL \in2[28]~input_o\ : std_logic;
SIGNAL \output~28_combout\ : std_logic;
SIGNAL \in2[29]~input_o\ : std_logic;
SIGNAL \in1[29]~input_o\ : std_logic;
SIGNAL \output~29_combout\ : std_logic;
SIGNAL \in1[30]~input_o\ : std_logic;
SIGNAL \in2[30]~input_o\ : std_logic;
SIGNAL \output~30_combout\ : std_logic;
SIGNAL \in2[31]~input_o\ : std_logic;
SIGNAL \in1[31]~input_o\ : std_logic;
SIGNAL \output~31_combout\ : std_logic;

BEGIN

ww_sel <= sel;
ww_in1 <= in1;
ww_in2 <= in2;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X117_Y8_N2
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~1_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X117_Y52_N9
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~2_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~3_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~4_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~5_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~6_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~7_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X61_Y0_N16
\output[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~8_combout\,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\output[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~9_combout\,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\output[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~10_combout\,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\output[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~11_combout\,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\output[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~12_combout\,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\output[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~13_combout\,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\output[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~14_combout\,
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X39_Y0_N2
\output[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~15_combout\,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOOBUF_X117_Y24_N9
\output[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~16_combout\,
	devoe => ww_devoe,
	o => \output[16]~output_o\);

-- Location: IOOBUF_X117_Y27_N2
\output[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~17_combout\,
	devoe => ww_devoe,
	o => \output[17]~output_o\);

-- Location: IOOBUF_X117_Y28_N2
\output[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~18_combout\,
	devoe => ww_devoe,
	o => \output[18]~output_o\);

-- Location: IOOBUF_X117_Y49_N2
\output[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~19_combout\,
	devoe => ww_devoe,
	o => \output[19]~output_o\);

-- Location: IOOBUF_X117_Y23_N2
\output[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~20_combout\,
	devoe => ww_devoe,
	o => \output[20]~output_o\);

-- Location: IOOBUF_X117_Y43_N9
\output[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~21_combout\,
	devoe => ww_devoe,
	o => \output[21]~output_o\);

-- Location: IOOBUF_X117_Y23_N9
\output[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~22_combout\,
	devoe => ww_devoe,
	o => \output[22]~output_o\);

-- Location: IOOBUF_X117_Y44_N2
\output[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~23_combout\,
	devoe => ww_devoe,
	o => \output[23]~output_o\);

-- Location: IOOBUF_X53_Y0_N23
\output[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~24_combout\,
	devoe => ww_devoe,
	o => \output[24]~output_o\);

-- Location: IOOBUF_X117_Y52_N2
\output[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~25_combout\,
	devoe => ww_devoe,
	o => \output[25]~output_o\);

-- Location: IOOBUF_X117_Y48_N2
\output[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~26_combout\,
	devoe => ww_devoe,
	o => \output[26]~output_o\);

-- Location: IOOBUF_X117_Y42_N2
\output[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~27_combout\,
	devoe => ww_devoe,
	o => \output[27]~output_o\);

-- Location: IOOBUF_X117_Y22_N2
\output[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~28_combout\,
	devoe => ww_devoe,
	o => \output[28]~output_o\);

-- Location: IOOBUF_X117_Y26_N2
\output[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~29_combout\,
	devoe => ww_devoe,
	o => \output[29]~output_o\);

-- Location: IOOBUF_X117_Y51_N2
\output[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~30_combout\,
	devoe => ww_devoe,
	o => \output[30]~output_o\);

-- Location: IOOBUF_X117_Y51_N9
\output[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~31_combout\,
	devoe => ww_devoe,
	o => \output[31]~output_o\);

-- Location: IOIBUF_X117_Y8_N8
\sel~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: IOIBUF_X117_Y46_N1
\in1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: IOIBUF_X117_Y46_N8
\in2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: LCCOMB_X116_Y35_N16
\output~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\sel~input_o\ & ((\in2[0]~input_o\))) # (!\sel~input_o\ & (\in1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \in1[0]~input_o\,
	datad => \in2[0]~input_o\,
	combout => \output~0_combout\);

-- Location: IOIBUF_X50_Y0_N8
\in1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\in2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: LCCOMB_X41_Y1_N24
\output~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\sel~input_o\ & ((\in2[1]~input_o\))) # (!\sel~input_o\ & (\in1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[1]~input_o\,
	datac => \in2[1]~input_o\,
	datad => \sel~input_o\,
	combout => \output~1_combout\);

-- Location: IOIBUF_X117_Y39_N1
\in2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(2),
	o => \in2[2]~input_o\);

-- Location: IOIBUF_X117_Y31_N8
\in1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(2),
	o => \in1[2]~input_o\);

-- Location: LCCOMB_X116_Y35_N18
\output~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\sel~input_o\ & (\in2[2]~input_o\)) # (!\sel~input_o\ & ((\in1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in2[2]~input_o\,
	datac => \in1[2]~input_o\,
	combout => \output~2_combout\);

-- Location: IOIBUF_X30_Y0_N1
\in2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(3),
	o => \in2[3]~input_o\);

-- Location: IOIBUF_X44_Y0_N8
\in1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(3),
	o => \in1[3]~input_o\);

-- Location: LCCOMB_X41_Y1_N26
\output~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\sel~input_o\ & (\in2[3]~input_o\)) # (!\sel~input_o\ & ((\in1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[3]~input_o\,
	datac => \in1[3]~input_o\,
	datad => \sel~input_o\,
	combout => \output~3_combout\);

-- Location: IOIBUF_X28_Y0_N8
\in1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(4),
	o => \in1[4]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\in2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(4),
	o => \in2[4]~input_o\);

-- Location: LCCOMB_X41_Y1_N28
\output~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\sel~input_o\ & ((\in2[4]~input_o\))) # (!\sel~input_o\ & (\in1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[4]~input_o\,
	datab => \in2[4]~input_o\,
	datad => \sel~input_o\,
	combout => \output~4_combout\);

-- Location: IOIBUF_X48_Y0_N1
\in2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(5),
	o => \in2[5]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\in1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(5),
	o => \in1[5]~input_o\);

-- Location: LCCOMB_X41_Y1_N6
\output~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (\sel~input_o\ & (\in2[5]~input_o\)) # (!\sel~input_o\ & ((\in1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[5]~input_o\,
	datac => \in1[5]~input_o\,
	datad => \sel~input_o\,
	combout => \output~5_combout\);

-- Location: IOIBUF_X44_Y0_N15
\in2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(6),
	o => \in2[6]~input_o\);

-- Location: IOIBUF_X48_Y0_N22
\in1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(6),
	o => \in1[6]~input_o\);

-- Location: LCCOMB_X41_Y1_N16
\output~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (\sel~input_o\ & (\in2[6]~input_o\)) # (!\sel~input_o\ & ((\in1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[6]~input_o\,
	datac => \in1[6]~input_o\,
	datad => \sel~input_o\,
	combout => \output~6_combout\);

-- Location: IOIBUF_X50_Y0_N1
\in2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(7),
	o => \in2[7]~input_o\);

-- Location: IOIBUF_X53_Y0_N15
\in1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(7),
	o => \in1[7]~input_o\);

-- Location: LCCOMB_X50_Y1_N24
\output~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (\sel~input_o\ & (\in2[7]~input_o\)) # (!\sel~input_o\ & ((\in1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[7]~input_o\,
	datac => \in1[7]~input_o\,
	datad => \sel~input_o\,
	combout => \output~7_combout\);

-- Location: IOIBUF_X41_Y0_N8
\in1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(8),
	o => \in1[8]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\in2[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(8),
	o => \in2[8]~input_o\);

-- Location: LCCOMB_X41_Y1_N10
\output~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (\sel~input_o\ & ((\in2[8]~input_o\))) # (!\sel~input_o\ & (\in1[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[8]~input_o\,
	datab => \in2[8]~input_o\,
	datad => \sel~input_o\,
	combout => \output~8_combout\);

-- Location: IOIBUF_X48_Y0_N15
\in2[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(9),
	o => \in2[9]~input_o\);

-- Location: IOIBUF_X41_Y91_N22
\in1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(9),
	o => \in1[9]~input_o\);

-- Location: LCCOMB_X41_Y1_N20
\output~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~9_combout\ = (\sel~input_o\ & (\in2[9]~input_o\)) # (!\sel~input_o\ & ((\in1[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[9]~input_o\,
	datac => \in1[9]~input_o\,
	datad => \sel~input_o\,
	combout => \output~9_combout\);

-- Location: IOIBUF_X34_Y0_N8
\in1[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(10),
	o => \in1[10]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\in2[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(10),
	o => \in2[10]~input_o\);

-- Location: LCCOMB_X41_Y1_N22
\output~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~10_combout\ = (\sel~input_o\ & ((\in2[10]~input_o\))) # (!\sel~input_o\ & (\in1[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[10]~input_o\,
	datab => \in2[10]~input_o\,
	datad => \sel~input_o\,
	combout => \output~10_combout\);

-- Location: IOIBUF_X39_Y0_N15
\in2[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(11),
	o => \in2[11]~input_o\);

-- Location: IOIBUF_X53_Y0_N8
\in1[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(11),
	o => \in1[11]~input_o\);

-- Location: LCCOMB_X41_Y1_N0
\output~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~11_combout\ = (\sel~input_o\ & (\in2[11]~input_o\)) # (!\sel~input_o\ & ((\in1[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[11]~input_o\,
	datac => \in1[11]~input_o\,
	datad => \sel~input_o\,
	combout => \output~11_combout\);

-- Location: IOIBUF_X41_Y0_N15
\in1[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(12),
	o => \in1[12]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\in2[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(12),
	o => \in2[12]~input_o\);

-- Location: LCCOMB_X41_Y1_N18
\output~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~12_combout\ = (\sel~input_o\ & ((\in2[12]~input_o\))) # (!\sel~input_o\ & (\in1[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[12]~input_o\,
	datac => \in2[12]~input_o\,
	datad => \sel~input_o\,
	combout => \output~12_combout\);

-- Location: IOIBUF_X53_Y0_N1
\in1[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(13),
	o => \in1[13]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\in2[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(13),
	o => \in2[13]~input_o\);

-- Location: LCCOMB_X41_Y1_N4
\output~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~13_combout\ = (\sel~input_o\ & ((\in2[13]~input_o\))) # (!\sel~input_o\ & (\in1[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[13]~input_o\,
	datac => \in2[13]~input_o\,
	datad => \sel~input_o\,
	combout => \output~13_combout\);

-- Location: IOIBUF_X37_Y0_N15
\in2[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(14),
	o => \in2[14]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\in1[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(14),
	o => \in1[14]~input_o\);

-- Location: LCCOMB_X41_Y1_N30
\output~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~14_combout\ = (\sel~input_o\ & (\in2[14]~input_o\)) # (!\sel~input_o\ & ((\in1[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[14]~input_o\,
	datac => \in1[14]~input_o\,
	datad => \sel~input_o\,
	combout => \output~14_combout\);

-- Location: IOIBUF_X48_Y0_N8
\in2[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(15),
	o => \in2[15]~input_o\);

-- Location: IOIBUF_X41_Y91_N8
\in1[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(15),
	o => \in1[15]~input_o\);

-- Location: LCCOMB_X41_Y1_N8
\output~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~15_combout\ = (\sel~input_o\ & (\in2[15]~input_o\)) # (!\sel~input_o\ & ((\in1[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[15]~input_o\,
	datac => \in1[15]~input_o\,
	datad => \sel~input_o\,
	combout => \output~15_combout\);

-- Location: IOIBUF_X117_Y27_N8
\in2[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(16),
	o => \in2[16]~input_o\);

-- Location: IOIBUF_X117_Y34_N8
\in1[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(16),
	o => \in1[16]~input_o\);

-- Location: LCCOMB_X116_Y35_N28
\output~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~16_combout\ = (\sel~input_o\ & (\in2[16]~input_o\)) # (!\sel~input_o\ & ((\in1[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \in2[16]~input_o\,
	datad => \in1[16]~input_o\,
	combout => \output~16_combout\);

-- Location: IOIBUF_X117_Y48_N8
\in2[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(17),
	o => \in2[17]~input_o\);

-- Location: IOIBUF_X117_Y43_N1
\in1[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(17),
	o => \in1[17]~input_o\);

-- Location: LCCOMB_X116_Y35_N6
\output~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~17_combout\ = (\sel~input_o\ & (\in2[17]~input_o\)) # (!\sel~input_o\ & ((\in1[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \in2[17]~input_o\,
	datad => \in1[17]~input_o\,
	combout => \output~17_combout\);

-- Location: IOIBUF_X117_Y38_N1
\in1[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(18),
	o => \in1[18]~input_o\);

-- Location: IOIBUF_X117_Y39_N8
\in2[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(18),
	o => \in2[18]~input_o\);

-- Location: LCCOMB_X116_Y35_N8
\output~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~18_combout\ = (\sel~input_o\ & ((\in2[18]~input_o\))) # (!\sel~input_o\ & (\in1[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in1[18]~input_o\,
	datad => \in2[18]~input_o\,
	combout => \output~18_combout\);

-- Location: IOIBUF_X117_Y31_N1
\in2[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(19),
	o => \in2[19]~input_o\);

-- Location: IOIBUF_X117_Y32_N1
\in1[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(19),
	o => \in1[19]~input_o\);

-- Location: LCCOMB_X116_Y35_N10
\output~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~19_combout\ = (\sel~input_o\ & (\in2[19]~input_o\)) # (!\sel~input_o\ & ((\in1[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \in2[19]~input_o\,
	datad => \in1[19]~input_o\,
	combout => \output~19_combout\);

-- Location: IOIBUF_X117_Y49_N8
\in1[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(20),
	o => \in1[20]~input_o\);

-- Location: IOIBUF_X117_Y50_N8
\in2[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(20),
	o => \in2[20]~input_o\);

-- Location: LCCOMB_X116_Y35_N4
\output~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~20_combout\ = (\sel~input_o\ & ((\in2[20]~input_o\))) # (!\sel~input_o\ & (\in1[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \in1[20]~input_o\,
	datad => \in2[20]~input_o\,
	combout => \output~20_combout\);

-- Location: IOIBUF_X117_Y36_N1
\in2[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(21),
	o => \in2[21]~input_o\);

-- Location: IOIBUF_X117_Y26_N8
\in1[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(21),
	o => \in1[21]~input_o\);

-- Location: LCCOMB_X116_Y35_N22
\output~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~21_combout\ = (\sel~input_o\ & (\in2[21]~input_o\)) # (!\sel~input_o\ & ((\in1[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \in2[21]~input_o\,
	datad => \in1[21]~input_o\,
	combout => \output~21_combout\);

-- Location: IOIBUF_X117_Y29_N1
\in2[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(22),
	o => \in2[22]~input_o\);

-- Location: IOIBUF_X117_Y35_N1
\in1[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(22),
	o => \in1[22]~input_o\);

-- Location: LCCOMB_X116_Y35_N0
\output~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~22_combout\ = (\sel~input_o\ & (\in2[22]~input_o\)) # (!\sel~input_o\ & ((\in1[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in2[22]~input_o\,
	datad => \in1[22]~input_o\,
	combout => \output~22_combout\);

-- Location: IOIBUF_X117_Y33_N8
\in2[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(23),
	o => \in2[23]~input_o\);

-- Location: IOIBUF_X117_Y29_N8
\in1[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(23),
	o => \in1[23]~input_o\);

-- Location: LCCOMB_X116_Y35_N2
\output~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~23_combout\ = (\sel~input_o\ & (\in2[23]~input_o\)) # (!\sel~input_o\ & ((\in1[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in2[23]~input_o\,
	datac => \in1[23]~input_o\,
	combout => \output~23_combout\);

-- Location: IOIBUF_X37_Y0_N22
\in2[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(24),
	o => \in2[24]~input_o\);

-- Location: IOIBUF_X61_Y0_N1
\in1[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(24),
	o => \in1[24]~input_o\);

-- Location: LCCOMB_X41_Y1_N2
\output~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~24_combout\ = (\sel~input_o\ & (\in2[24]~input_o\)) # (!\sel~input_o\ & ((\in1[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[24]~input_o\,
	datac => \in1[24]~input_o\,
	datad => \sel~input_o\,
	combout => \output~24_combout\);

-- Location: IOIBUF_X117_Y35_N8
\in1[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(25),
	o => \in1[25]~input_o\);

-- Location: IOIBUF_X117_Y28_N8
\in2[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(25),
	o => \in2[25]~input_o\);

-- Location: LCCOMB_X116_Y35_N12
\output~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~25_combout\ = (\sel~input_o\ & ((\in2[25]~input_o\))) # (!\sel~input_o\ & (\in1[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in1[25]~input_o\,
	datad => \in2[25]~input_o\,
	combout => \output~25_combout\);

-- Location: IOIBUF_X117_Y44_N8
\in2[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(26),
	o => \in2[26]~input_o\);

-- Location: IOIBUF_X117_Y50_N1
\in1[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(26),
	o => \in1[26]~input_o\);

-- Location: LCCOMB_X116_Y42_N16
\output~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~26_combout\ = (\sel~input_o\ & (\in2[26]~input_o\)) # (!\sel~input_o\ & ((\in1[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[26]~input_o\,
	datac => \sel~input_o\,
	datad => \in1[26]~input_o\,
	combout => \output~26_combout\);

-- Location: IOIBUF_X117_Y41_N1
\in1[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(27),
	o => \in1[27]~input_o\);

-- Location: IOIBUF_X117_Y42_N8
\in2[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(27),
	o => \in2[27]~input_o\);

-- Location: LCCOMB_X116_Y42_N18
\output~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~27_combout\ = (\sel~input_o\ & ((\in2[27]~input_o\))) # (!\sel~input_o\ & (\in1[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[27]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[27]~input_o\,
	combout => \output~27_combout\);

-- Location: IOIBUF_X117_Y24_N1
\in1[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(28),
	o => \in1[28]~input_o\);

-- Location: IOIBUF_X117_Y22_N8
\in2[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(28),
	o => \in2[28]~input_o\);

-- Location: LCCOMB_X116_Y25_N8
\output~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~28_combout\ = (\sel~input_o\ & ((\in2[28]~input_o\))) # (!\sel~input_o\ & (\in1[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel~input_o\,
	datac => \in1[28]~input_o\,
	datad => \in2[28]~input_o\,
	combout => \output~28_combout\);

-- Location: IOIBUF_X117_Y32_N8
\in2[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(29),
	o => \in2[29]~input_o\);

-- Location: IOIBUF_X117_Y41_N8
\in1[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(29),
	o => \in1[29]~input_o\);

-- Location: LCCOMB_X116_Y35_N30
\output~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~29_combout\ = (\sel~input_o\ & (\in2[29]~input_o\)) # (!\sel~input_o\ & ((\in1[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \in2[29]~input_o\,
	datad => \in1[29]~input_o\,
	combout => \output~29_combout\);

-- Location: IOIBUF_X117_Y34_N1
\in1[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(30),
	o => \in1[30]~input_o\);

-- Location: IOIBUF_X117_Y33_N1
\in2[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(30),
	o => \in2[30]~input_o\);

-- Location: LCCOMB_X116_Y35_N24
\output~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~30_combout\ = (\sel~input_o\ & ((\in2[30]~input_o\))) # (!\sel~input_o\ & (\in1[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \in1[30]~input_o\,
	datad => \in2[30]~input_o\,
	combout => \output~30_combout\);

-- Location: IOIBUF_X117_Y36_N8
\in2[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(31),
	o => \in2[31]~input_o\);

-- Location: IOIBUF_X117_Y38_N8
\in1[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(31),
	o => \in1[31]~input_o\);

-- Location: LCCOMB_X116_Y35_N26
\output~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \output~31_combout\ = (\sel~input_o\ & (\in2[31]~input_o\)) # (!\sel~input_o\ & ((\in1[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datac => \in2[31]~input_o\,
	datad => \in1[31]~input_o\,
	combout => \output~31_combout\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(8) <= \output[8]~output_o\;

ww_output(9) <= \output[9]~output_o\;

ww_output(10) <= \output[10]~output_o\;

ww_output(11) <= \output[11]~output_o\;

ww_output(12) <= \output[12]~output_o\;

ww_output(13) <= \output[13]~output_o\;

ww_output(14) <= \output[14]~output_o\;

ww_output(15) <= \output[15]~output_o\;

ww_output(16) <= \output[16]~output_o\;

ww_output(17) <= \output[17]~output_o\;

ww_output(18) <= \output[18]~output_o\;

ww_output(19) <= \output[19]~output_o\;

ww_output(20) <= \output[20]~output_o\;

ww_output(21) <= \output[21]~output_o\;

ww_output(22) <= \output[22]~output_o\;

ww_output(23) <= \output[23]~output_o\;

ww_output(24) <= \output[24]~output_o\;

ww_output(25) <= \output[25]~output_o\;

ww_output(26) <= \output[26]~output_o\;

ww_output(27) <= \output[27]~output_o\;

ww_output(28) <= \output[28]~output_o\;

ww_output(29) <= \output[29]~output_o\;

ww_output(30) <= \output[30]~output_o\;

ww_output(31) <= \output[31]~output_o\;
END structure;


