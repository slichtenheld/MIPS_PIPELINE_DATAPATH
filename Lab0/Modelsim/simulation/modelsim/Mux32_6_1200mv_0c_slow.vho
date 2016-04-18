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

-- DATE "09/09/2015 22:34:27"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
-- output[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[6]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[8]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[8]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[9]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[10]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[10]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[11]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[11]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[12]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[12]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[13]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[14]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[14]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[15]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[15]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[16]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[16]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[17]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[17]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[18]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[18]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[19]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[19]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[20]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[20]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[21]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[21]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[22]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[22]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[23]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[23]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[24]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[24]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[25]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[25]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[26]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[26]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[27]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[27]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[28]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[28]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[29]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[29]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[30]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[30]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in2[31]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in1[31]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \in2[0]~input_o\ : std_logic;
SIGNAL \sel~input_o\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \in2[1]~input_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \in1[2]~input_o\ : std_logic;
SIGNAL \in2[2]~input_o\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \in1[3]~input_o\ : std_logic;
SIGNAL \in2[3]~input_o\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \in2[4]~input_o\ : std_logic;
SIGNAL \in1[4]~input_o\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \in2[5]~input_o\ : std_logic;
SIGNAL \in1[5]~input_o\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \in1[6]~input_o\ : std_logic;
SIGNAL \in2[6]~input_o\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \in1[7]~input_o\ : std_logic;
SIGNAL \in2[7]~input_o\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \in2[8]~input_o\ : std_logic;
SIGNAL \in1[8]~input_o\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \in1[9]~input_o\ : std_logic;
SIGNAL \in2[9]~input_o\ : std_logic;
SIGNAL \output~9_combout\ : std_logic;
SIGNAL \in1[10]~input_o\ : std_logic;
SIGNAL \in2[10]~input_o\ : std_logic;
SIGNAL \output~10_combout\ : std_logic;
SIGNAL \in1[11]~input_o\ : std_logic;
SIGNAL \in2[11]~input_o\ : std_logic;
SIGNAL \output~11_combout\ : std_logic;
SIGNAL \in1[12]~input_o\ : std_logic;
SIGNAL \in2[12]~input_o\ : std_logic;
SIGNAL \output~12_combout\ : std_logic;
SIGNAL \in1[13]~input_o\ : std_logic;
SIGNAL \in2[13]~input_o\ : std_logic;
SIGNAL \output~13_combout\ : std_logic;
SIGNAL \in1[14]~input_o\ : std_logic;
SIGNAL \in2[14]~input_o\ : std_logic;
SIGNAL \output~14_combout\ : std_logic;
SIGNAL \in1[15]~input_o\ : std_logic;
SIGNAL \in2[15]~input_o\ : std_logic;
SIGNAL \output~15_combout\ : std_logic;
SIGNAL \in1[16]~input_o\ : std_logic;
SIGNAL \in2[16]~input_o\ : std_logic;
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
SIGNAL \in1[21]~input_o\ : std_logic;
SIGNAL \in2[21]~input_o\ : std_logic;
SIGNAL \output~21_combout\ : std_logic;
SIGNAL \in1[22]~input_o\ : std_logic;
SIGNAL \in2[22]~input_o\ : std_logic;
SIGNAL \output~22_combout\ : std_logic;
SIGNAL \in2[23]~input_o\ : std_logic;
SIGNAL \in1[23]~input_o\ : std_logic;
SIGNAL \output~23_combout\ : std_logic;
SIGNAL \in1[24]~input_o\ : std_logic;
SIGNAL \in2[24]~input_o\ : std_logic;
SIGNAL \output~24_combout\ : std_logic;
SIGNAL \in1[25]~input_o\ : std_logic;
SIGNAL \in2[25]~input_o\ : std_logic;
SIGNAL \output~25_combout\ : std_logic;
SIGNAL \in2[26]~input_o\ : std_logic;
SIGNAL \in1[26]~input_o\ : std_logic;
SIGNAL \output~26_combout\ : std_logic;
SIGNAL \in2[27]~input_o\ : std_logic;
SIGNAL \in1[27]~input_o\ : std_logic;
SIGNAL \output~27_combout\ : std_logic;
SIGNAL \in1[28]~input_o\ : std_logic;
SIGNAL \in2[28]~input_o\ : std_logic;
SIGNAL \output~28_combout\ : std_logic;
SIGNAL \in1[29]~input_o\ : std_logic;
SIGNAL \in2[29]~input_o\ : std_logic;
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

-- Location: IOOBUF_X1_Y0_N9
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~1_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~2_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~3_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~4_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~5_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~6_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~7_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~8_combout\,
	devoe => ww_devoe,
	o => \output[8]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~9_combout\,
	devoe => ww_devoe,
	o => \output[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~10_combout\,
	devoe => ww_devoe,
	o => \output[10]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~11_combout\,
	devoe => ww_devoe,
	o => \output[11]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~12_combout\,
	devoe => ww_devoe,
	o => \output[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~13_combout\,
	devoe => ww_devoe,
	o => \output[13]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~14_combout\,
	devoe => ww_devoe,
	o => \output[14]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~15_combout\,
	devoe => ww_devoe,
	o => \output[15]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\output[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~16_combout\,
	devoe => ww_devoe,
	o => \output[16]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\output[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~17_combout\,
	devoe => ww_devoe,
	o => \output[17]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\output[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~18_combout\,
	devoe => ww_devoe,
	o => \output[18]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\output[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~19_combout\,
	devoe => ww_devoe,
	o => \output[19]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\output[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~20_combout\,
	devoe => ww_devoe,
	o => \output[20]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\output[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~21_combout\,
	devoe => ww_devoe,
	o => \output[21]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\output[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~22_combout\,
	devoe => ww_devoe,
	o => \output[22]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\output[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~23_combout\,
	devoe => ww_devoe,
	o => \output[23]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\output[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~24_combout\,
	devoe => ww_devoe,
	o => \output[24]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\output[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~25_combout\,
	devoe => ww_devoe,
	o => \output[25]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\output[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~26_combout\,
	devoe => ww_devoe,
	o => \output[26]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\output[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~27_combout\,
	devoe => ww_devoe,
	o => \output[27]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\output[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~28_combout\,
	devoe => ww_devoe,
	o => \output[28]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\output[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~29_combout\,
	devoe => ww_devoe,
	o => \output[29]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\output[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~30_combout\,
	devoe => ww_devoe,
	o => \output[30]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\output[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~31_combout\,
	devoe => ww_devoe,
	o => \output[31]~output_o\);

-- Location: IOIBUF_X5_Y0_N22
\in2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(0),
	o => \in2[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel,
	o => \sel~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\in1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

-- Location: LCCOMB_X9_Y3_N16
\output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\sel~input_o\ & (\in2[0]~input_o\)) # (!\sel~input_o\ & ((\in1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[0]~input_o\,
	datac => \sel~input_o\,
	datad => \in1[0]~input_o\,
	combout => \output~0_combout\);

-- Location: IOIBUF_X9_Y0_N8
\in2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(1),
	o => \in2[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\in1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

-- Location: LCCOMB_X9_Y3_N26
\output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\sel~input_o\ & (\in2[1]~input_o\)) # (!\sel~input_o\ & ((\in1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[1]~input_o\,
	datac => \sel~input_o\,
	datad => \in1[1]~input_o\,
	combout => \output~1_combout\);

-- Location: IOIBUF_X1_Y0_N15
\in1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(2),
	o => \in1[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\in2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(2),
	o => \in2[2]~input_o\);

-- Location: LCCOMB_X9_Y3_N4
\output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\sel~input_o\ & ((\in2[2]~input_o\))) # (!\sel~input_o\ & (\in1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[2]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[2]~input_o\,
	combout => \output~2_combout\);

-- Location: IOIBUF_X9_Y24_N8
\in1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(3),
	o => \in1[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\in2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(3),
	o => \in2[3]~input_o\);

-- Location: LCCOMB_X9_Y3_N6
\output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\sel~input_o\ & ((\in2[3]~input_o\))) # (!\sel~input_o\ & (\in1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[3]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[3]~input_o\,
	combout => \output~3_combout\);

-- Location: IOIBUF_X0_Y7_N15
\in2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(4),
	o => \in2[4]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\in1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(4),
	o => \in1[4]~input_o\);

-- Location: LCCOMB_X9_Y3_N0
\output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\sel~input_o\ & (\in2[4]~input_o\)) # (!\sel~input_o\ & ((\in1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in2[4]~input_o\,
	datac => \in1[4]~input_o\,
	combout => \output~4_combout\);

-- Location: IOIBUF_X11_Y0_N22
\in2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(5),
	o => \in2[5]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\in1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(5),
	o => \in1[5]~input_o\);

-- Location: LCCOMB_X9_Y3_N10
\output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (\sel~input_o\ & (\in2[5]~input_o\)) # (!\sel~input_o\ & ((\in1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[5]~input_o\,
	datac => \sel~input_o\,
	datad => \in1[5]~input_o\,
	combout => \output~5_combout\);

-- Location: IOIBUF_X32_Y0_N8
\in1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(6),
	o => \in1[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\in2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(6),
	o => \in2[6]~input_o\);

-- Location: LCCOMB_X31_Y4_N24
\output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (\sel~input_o\ & ((\in2[6]~input_o\))) # (!\sel~input_o\ & (\in1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[6]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[6]~input_o\,
	combout => \output~6_combout\);

-- Location: IOIBUF_X23_Y0_N15
\in1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(7),
	o => \in1[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\in2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(7),
	o => \in2[7]~input_o\);

-- Location: LCCOMB_X31_Y4_N10
\output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (\sel~input_o\ & ((\in2[7]~input_o\))) # (!\sel~input_o\ & (\in1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[7]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[7]~input_o\,
	combout => \output~7_combout\);

-- Location: IOIBUF_X1_Y0_N22
\in2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(8),
	o => \in2[8]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\in1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(8),
	o => \in1[8]~input_o\);

-- Location: LCCOMB_X9_Y3_N20
\output~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (\sel~input_o\ & (\in2[8]~input_o\)) # (!\sel~input_o\ & ((\in1[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[8]~input_o\,
	datab => \in1[8]~input_o\,
	datac => \sel~input_o\,
	combout => \output~8_combout\);

-- Location: IOIBUF_X34_Y9_N8
\in1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(9),
	o => \in1[9]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\in2[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(9),
	o => \in2[9]~input_o\);

-- Location: LCCOMB_X31_Y4_N4
\output~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~9_combout\ = (\sel~input_o\ & ((\in2[9]~input_o\))) # (!\sel~input_o\ & (\in1[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[9]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[9]~input_o\,
	combout => \output~9_combout\);

-- Location: IOIBUF_X0_Y5_N22
\in1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(10),
	o => \in1[10]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\in2[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(10),
	o => \in2[10]~input_o\);

-- Location: LCCOMB_X9_Y3_N30
\output~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~10_combout\ = (\sel~input_o\ & ((\in2[10]~input_o\))) # (!\sel~input_o\ & (\in1[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[10]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[10]~input_o\,
	combout => \output~10_combout\);

-- Location: IOIBUF_X11_Y0_N8
\in1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(11),
	o => \in1[11]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\in2[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(11),
	o => \in2[11]~input_o\);

-- Location: LCCOMB_X9_Y3_N8
\output~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~11_combout\ = (\sel~input_o\ & ((\in2[11]~input_o\))) # (!\sel~input_o\ & (\in1[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[11]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[11]~input_o\,
	combout => \output~11_combout\);

-- Location: IOIBUF_X7_Y0_N22
\in1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(12),
	o => \in1[12]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\in2[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(12),
	o => \in2[12]~input_o\);

-- Location: LCCOMB_X9_Y3_N18
\output~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~12_combout\ = (\sel~input_o\ & ((\in2[12]~input_o\))) # (!\sel~input_o\ & (\in1[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[12]~input_o\,
	datab => \in2[12]~input_o\,
	datac => \sel~input_o\,
	combout => \output~12_combout\);

-- Location: IOIBUF_X9_Y0_N15
\in1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(13),
	o => \in1[13]~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\in2[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(13),
	o => \in2[13]~input_o\);

-- Location: LCCOMB_X9_Y3_N28
\output~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~13_combout\ = (\sel~input_o\ & ((\in2[13]~input_o\))) # (!\sel~input_o\ & (\in1[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[13]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[13]~input_o\,
	combout => \output~13_combout\);

-- Location: IOIBUF_X0_Y7_N1
\in1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(14),
	o => \in1[14]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\in2[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(14),
	o => \in2[14]~input_o\);

-- Location: LCCOMB_X9_Y3_N14
\output~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~14_combout\ = (\sel~input_o\ & ((\in2[14]~input_o\))) # (!\sel~input_o\ & (\in1[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[14]~input_o\,
	datab => \in2[14]~input_o\,
	datac => \sel~input_o\,
	combout => \output~14_combout\);

-- Location: IOIBUF_X34_Y5_N22
\in1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(15),
	o => \in1[15]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\in2[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(15),
	o => \in2[15]~input_o\);

-- Location: LCCOMB_X31_Y4_N6
\output~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~15_combout\ = (\sel~input_o\ & ((\in2[15]~input_o\))) # (!\sel~input_o\ & (\in1[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[15]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[15]~input_o\,
	combout => \output~15_combout\);

-- Location: IOIBUF_X28_Y0_N8
\in1[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(16),
	o => \in1[16]~input_o\);

-- Location: IOIBUF_X34_Y11_N8
\in2[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(16),
	o => \in2[16]~input_o\);

-- Location: LCCOMB_X31_Y4_N16
\output~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~16_combout\ = (\sel~input_o\ & ((\in2[16]~input_o\))) # (!\sel~input_o\ & (\in1[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[16]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[16]~input_o\,
	combout => \output~16_combout\);

-- Location: IOIBUF_X32_Y0_N1
\in2[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(17),
	o => \in2[17]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\in1[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(17),
	o => \in1[17]~input_o\);

-- Location: LCCOMB_X31_Y4_N2
\output~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~17_combout\ = (\sel~input_o\ & (\in2[17]~input_o\)) # (!\sel~input_o\ & ((\in1[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[17]~input_o\,
	datac => \sel~input_o\,
	datad => \in1[17]~input_o\,
	combout => \output~17_combout\);

-- Location: IOIBUF_X23_Y0_N8
\in1[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(18),
	o => \in1[18]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\in2[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(18),
	o => \in2[18]~input_o\);

-- Location: LCCOMB_X31_Y4_N12
\output~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~18_combout\ = (\sel~input_o\ & ((\in2[18]~input_o\))) # (!\sel~input_o\ & (\in1[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[18]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[18]~input_o\,
	combout => \output~18_combout\);

-- Location: IOIBUF_X9_Y24_N22
\in2[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(19),
	o => \in2[19]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\in1[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(19),
	o => \in1[19]~input_o\);

-- Location: LCCOMB_X9_Y3_N24
\output~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~19_combout\ = (\sel~input_o\ & (\in2[19]~input_o\)) # (!\sel~input_o\ & ((\in1[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[19]~input_o\,
	datab => \in1[19]~input_o\,
	datac => \sel~input_o\,
	combout => \output~19_combout\);

-- Location: IOIBUF_X34_Y4_N15
\in1[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(20),
	o => \in1[20]~input_o\);

-- Location: IOIBUF_X34_Y8_N15
\in2[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(20),
	o => \in2[20]~input_o\);

-- Location: LCCOMB_X31_Y4_N14
\output~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~20_combout\ = (\sel~input_o\ & ((\in2[20]~input_o\))) # (!\sel~input_o\ & (\in1[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[20]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[20]~input_o\,
	combout => \output~20_combout\);

-- Location: IOIBUF_X21_Y0_N22
\in1[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(21),
	o => \in1[21]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\in2[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(21),
	o => \in2[21]~input_o\);

-- Location: LCCOMB_X31_Y4_N0
\output~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~21_combout\ = (\sel~input_o\ & ((\in2[21]~input_o\))) # (!\sel~input_o\ & (\in1[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[21]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[21]~input_o\,
	combout => \output~21_combout\);

-- Location: IOIBUF_X34_Y7_N8
\in1[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(22),
	o => \in1[22]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\in2[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(22),
	o => \in2[22]~input_o\);

-- Location: LCCOMB_X31_Y4_N26
\output~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~22_combout\ = (\sel~input_o\ & ((\in2[22]~input_o\))) # (!\sel~input_o\ & (\in1[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in1[22]~input_o\,
	datac => \in2[22]~input_o\,
	combout => \output~22_combout\);

-- Location: IOIBUF_X28_Y0_N15
\in2[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(23),
	o => \in2[23]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\in1[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(23),
	o => \in1[23]~input_o\);

-- Location: LCCOMB_X31_Y4_N28
\output~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~23_combout\ = (\sel~input_o\ & (\in2[23]~input_o\)) # (!\sel~input_o\ & ((\in1[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[23]~input_o\,
	datac => \sel~input_o\,
	datad => \in1[23]~input_o\,
	combout => \output~23_combout\);

-- Location: IOIBUF_X30_Y0_N15
\in1[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(24),
	o => \in1[24]~input_o\);

-- Location: IOIBUF_X25_Y0_N22
\in2[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(24),
	o => \in2[24]~input_o\);

-- Location: LCCOMB_X31_Y4_N22
\output~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~24_combout\ = (\sel~input_o\ & ((\in2[24]~input_o\))) # (!\sel~input_o\ & (\in1[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in1[24]~input_o\,
	datac => \in2[24]~input_o\,
	combout => \output~24_combout\);

-- Location: IOIBUF_X11_Y24_N15
\in1[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(25),
	o => \in1[25]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\in2[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(25),
	o => \in2[25]~input_o\);

-- Location: LCCOMB_X9_Y3_N2
\output~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~25_combout\ = (\sel~input_o\ & ((\in2[25]~input_o\))) # (!\sel~input_o\ & (\in1[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[25]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[25]~input_o\,
	combout => \output~25_combout\);

-- Location: IOIBUF_X0_Y11_N15
\in2[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(26),
	o => \in2[26]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\in1[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(26),
	o => \in1[26]~input_o\);

-- Location: LCCOMB_X5_Y8_N24
\output~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~26_combout\ = (\sel~input_o\ & (\in2[26]~input_o\)) # (!\sel~input_o\ & ((\in1[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[26]~input_o\,
	datac => \in1[26]~input_o\,
	datad => \sel~input_o\,
	combout => \output~26_combout\);

-- Location: IOIBUF_X30_Y0_N22
\in2[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(27),
	o => \in2[27]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\in1[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(27),
	o => \in1[27]~input_o\);

-- Location: LCCOMB_X31_Y4_N8
\output~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~27_combout\ = (\sel~input_o\ & (\in2[27]~input_o\)) # (!\sel~input_o\ & ((\in1[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2[27]~input_o\,
	datac => \sel~input_o\,
	datad => \in1[27]~input_o\,
	combout => \output~27_combout\);

-- Location: IOIBUF_X11_Y0_N15
\in1[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(28),
	o => \in1[28]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\in2[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(28),
	o => \in2[28]~input_o\);

-- Location: LCCOMB_X9_Y3_N12
\output~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~28_combout\ = (\sel~input_o\ & ((\in2[28]~input_o\))) # (!\sel~input_o\ & (\in1[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in1[28]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[28]~input_o\,
	combout => \output~28_combout\);

-- Location: IOIBUF_X32_Y0_N22
\in1[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(29),
	o => \in1[29]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\in2[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(29),
	o => \in2[29]~input_o\);

-- Location: LCCOMB_X31_Y4_N18
\output~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~29_combout\ = (\sel~input_o\ & ((\in2[29]~input_o\))) # (!\sel~input_o\ & (\in1[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[29]~input_o\,
	datac => \sel~input_o\,
	datad => \in2[29]~input_o\,
	combout => \output~29_combout\);

-- Location: IOIBUF_X34_Y5_N15
\in1[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(30),
	o => \in1[30]~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\in2[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(30),
	o => \in2[30]~input_o\);

-- Location: LCCOMB_X31_Y4_N20
\output~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~30_combout\ = (\sel~input_o\ & ((\in2[30]~input_o\))) # (!\sel~input_o\ & (\in1[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel~input_o\,
	datab => \in1[30]~input_o\,
	datac => \in2[30]~input_o\,
	combout => \output~30_combout\);

-- Location: IOIBUF_X21_Y0_N15
\in2[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in2(31),
	o => \in2[31]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\in1[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(31),
	o => \in1[31]~input_o\);

-- Location: LCCOMB_X31_Y4_N30
\output~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~31_combout\ = (\sel~input_o\ & (\in2[31]~input_o\)) # (!\sel~input_o\ & ((\in1[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2[31]~input_o\,
	datac => \sel~input_o\,
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


