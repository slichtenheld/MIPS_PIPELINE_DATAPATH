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

-- DATE "11/30/2015 13:11:11"

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

ENTITY 	ramControl2 IS
    PORT (
	clk : IN std_logic;
	address : IN std_logic_vector(9 DOWNTO 0);
	control : IN std_logic_vector(1 DOWNTO 0);
	wr_en : IN std_logic;
	data_IN : IN std_logic_vector(31 DOWNTO 0);
	data_OUT : OUT std_logic_vector(31 DOWNTO 0)
	);
END ramControl2;

-- Design Ports Information
-- data_OUT[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[1]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[2]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[4]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[5]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[6]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[7]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[8]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[9]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[10]	=>  Location: PIN_N27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[11]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[12]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[13]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[14]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[15]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[16]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[17]	=>  Location: PIN_N28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[18]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[19]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[20]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[21]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[22]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[23]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[24]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[25]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[26]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[27]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[28]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[29]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[30]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_OUT[31]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_T30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_T29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[0]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- control[1]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_en	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[0]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[16]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[8]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[24]	=>  Location: PIN_L30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[9]	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[1]	=>  Location: PIN_D29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[17]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[9]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[25]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[18]	=>  Location: PIN_H30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[10]	=>  Location: PIN_K29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[26]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[3]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[19]	=>  Location: PIN_E30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[11]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[27]	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[4]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[20]	=>  Location: PIN_W30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[12]	=>  Location: PIN_W29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[28]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[5]	=>  Location: PIN_K30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[21]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[13]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[29]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[6]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[22]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[14]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[30]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[7]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[23]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[15]	=>  Location: PIN_M30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_IN[31]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ramControl2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_address : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_control : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_wr_en : std_logic;
SIGNAL ww_data_IN : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_data_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_OUT[0]~output_o\ : std_logic;
SIGNAL \data_OUT[1]~output_o\ : std_logic;
SIGNAL \data_OUT[2]~output_o\ : std_logic;
SIGNAL \data_OUT[3]~output_o\ : std_logic;
SIGNAL \data_OUT[4]~output_o\ : std_logic;
SIGNAL \data_OUT[5]~output_o\ : std_logic;
SIGNAL \data_OUT[6]~output_o\ : std_logic;
SIGNAL \data_OUT[7]~output_o\ : std_logic;
SIGNAL \data_OUT[8]~output_o\ : std_logic;
SIGNAL \data_OUT[9]~output_o\ : std_logic;
SIGNAL \data_OUT[10]~output_o\ : std_logic;
SIGNAL \data_OUT[11]~output_o\ : std_logic;
SIGNAL \data_OUT[12]~output_o\ : std_logic;
SIGNAL \data_OUT[13]~output_o\ : std_logic;
SIGNAL \data_OUT[14]~output_o\ : std_logic;
SIGNAL \data_OUT[15]~output_o\ : std_logic;
SIGNAL \data_OUT[16]~output_o\ : std_logic;
SIGNAL \data_OUT[17]~output_o\ : std_logic;
SIGNAL \data_OUT[18]~output_o\ : std_logic;
SIGNAL \data_OUT[19]~output_o\ : std_logic;
SIGNAL \data_OUT[20]~output_o\ : std_logic;
SIGNAL \data_OUT[21]~output_o\ : std_logic;
SIGNAL \data_OUT[22]~output_o\ : std_logic;
SIGNAL \data_OUT[23]~output_o\ : std_logic;
SIGNAL \data_OUT[24]~output_o\ : std_logic;
SIGNAL \data_OUT[25]~output_o\ : std_logic;
SIGNAL \data_OUT[26]~output_o\ : std_logic;
SIGNAL \data_OUT[27]~output_o\ : std_logic;
SIGNAL \data_OUT[28]~output_o\ : std_logic;
SIGNAL \data_OUT[29]~output_o\ : std_logic;
SIGNAL \data_OUT[30]~output_o\ : std_logic;
SIGNAL \data_OUT[31]~output_o\ : std_logic;
SIGNAL \control[0]~input_o\ : std_logic;
SIGNAL \control[1]~input_o\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \wr_en2~0_combout\ : std_logic;
SIGNAL \wr_en~input_o\ : std_logic;
SIGNAL \wr_en2~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_IN[24]~input_o\ : std_logic;
SIGNAL \data_IN[8]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux15~1_combout\ : std_logic;
SIGNAL \data_IN[0]~input_o\ : std_logic;
SIGNAL \data_IN[16]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux15~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux15~2_combout\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \address[8]~input_o\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \address[9]~input_o\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \data_IN[9]~input_o\ : std_logic;
SIGNAL \data_IN[25]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux14~1_combout\ : std_logic;
SIGNAL \data_IN[17]~input_o\ : std_logic;
SIGNAL \data_IN[1]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux14~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux14~2_combout\ : std_logic;
SIGNAL \data_IN[26]~input_o\ : std_logic;
SIGNAL \data_IN[10]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux13~1_combout\ : std_logic;
SIGNAL \data_IN[2]~input_o\ : std_logic;
SIGNAL \data_IN[18]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux13~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux13~2_combout\ : std_logic;
SIGNAL \data_IN[11]~input_o\ : std_logic;
SIGNAL \data_IN[27]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux12~1_combout\ : std_logic;
SIGNAL \data_IN[3]~input_o\ : std_logic;
SIGNAL \data_IN[19]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux12~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux12~2_combout\ : std_logic;
SIGNAL \data_IN[28]~input_o\ : std_logic;
SIGNAL \data_IN[12]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux11~1_combout\ : std_logic;
SIGNAL \data_IN[20]~input_o\ : std_logic;
SIGNAL \data_IN[4]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux11~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux11~2_combout\ : std_logic;
SIGNAL \data_IN[13]~input_o\ : std_logic;
SIGNAL \data_IN[29]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux10~1_combout\ : std_logic;
SIGNAL \data_IN[5]~input_o\ : std_logic;
SIGNAL \data_IN[21]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux10~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux10~2_combout\ : std_logic;
SIGNAL \data_IN[14]~input_o\ : std_logic;
SIGNAL \data_IN[30]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux9~1_combout\ : std_logic;
SIGNAL \data_IN[6]~input_o\ : std_logic;
SIGNAL \data_IN[22]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux9~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux9~2_combout\ : std_logic;
SIGNAL \data_IN[7]~input_o\ : std_logic;
SIGNAL \data_IN[23]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux8~0_combout\ : std_logic;
SIGNAL \data_IN[15]~input_o\ : std_logic;
SIGNAL \data_IN[31]~input_o\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux8~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux8~2_combout\ : std_logic;
SIGNAL \wr_en0~0_combout\ : std_logic;
SIGNAL \wr_en0~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux31~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux31~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux31~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \addr0[0]~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \addr0[1]~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \addr0[2]~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \addr0[3]~3_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \addr0[4]~4_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \addr0[5]~5_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \addr0[6]~6_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \addr0[7]~7_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux30~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux30~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux30~2_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux29~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux29~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux29~2_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux28~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux28~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux28~2_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux27~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux27~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux27~2_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux26~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux26~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux26~2_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux25~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux25~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux25~2_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux24~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux24~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux24~2_combout\ : std_logic;
SIGNAL \data_OUT~1_combout\ : std_logic;
SIGNAL \wr_en3~0_combout\ : std_logic;
SIGNAL \wr_en3~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux7~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux6~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux5~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux4~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux3~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux2~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux1~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux0~0_combout\ : std_logic;
SIGNAL \wr_en1~0_combout\ : std_logic;
SIGNAL \wr_en1~1_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux23~0_combout\ : std_logic;
SIGNAL \addr1[0]~0_combout\ : std_logic;
SIGNAL \addr1[1]~1_combout\ : std_logic;
SIGNAL \addr1[2]~2_combout\ : std_logic;
SIGNAL \addr1[3]~3_combout\ : std_logic;
SIGNAL \addr1[4]~4_combout\ : std_logic;
SIGNAL \addr1[5]~5_combout\ : std_logic;
SIGNAL \addr1[6]~6_combout\ : std_logic;
SIGNAL \addr1[7]~7_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux22~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux21~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux20~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux19~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux18~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux17~0_combout\ : std_logic;
SIGNAL \U_mux4_1_IN|Mux16~0_combout\ : std_logic;
SIGNAL \data_OUT~0_combout\ : std_logic;
SIGNAL \data_OUT~2_combout\ : std_logic;
SIGNAL \data_OUT~4_combout\ : std_logic;
SIGNAL \data_OUT~3_combout\ : std_logic;
SIGNAL \data_OUT~5_combout\ : std_logic;
SIGNAL \data_OUT~7_combout\ : std_logic;
SIGNAL \data_OUT~6_combout\ : std_logic;
SIGNAL \data_OUT~8_combout\ : std_logic;
SIGNAL \data_OUT~10_combout\ : std_logic;
SIGNAL \data_OUT~9_combout\ : std_logic;
SIGNAL \data_OUT~11_combout\ : std_logic;
SIGNAL \data_OUT~12_combout\ : std_logic;
SIGNAL \data_OUT~13_combout\ : std_logic;
SIGNAL \data_OUT~14_combout\ : std_logic;
SIGNAL \data_OUT~15_combout\ : std_logic;
SIGNAL \data_OUT~16_combout\ : std_logic;
SIGNAL \data_OUT~17_combout\ : std_logic;
SIGNAL \data_OUT~18_combout\ : std_logic;
SIGNAL \data_OUT~19_combout\ : std_logic;
SIGNAL \data_OUT~20_combout\ : std_logic;
SIGNAL \data_OUT~21_combout\ : std_logic;
SIGNAL \data_OUT~22_combout\ : std_logic;
SIGNAL \data_OUT~23_combout\ : std_logic;
SIGNAL \data_OUT~24_combout\ : std_logic;
SIGNAL \data_OUT~25_combout\ : std_logic;
SIGNAL \data_OUT~26_combout\ : std_logic;
SIGNAL \data_OUT~27_combout\ : std_logic;
SIGNAL \data_OUT~28_combout\ : std_logic;
SIGNAL \data_OUT~29_combout\ : std_logic;
SIGNAL \data_OUT~30_combout\ : std_logic;
SIGNAL \data_OUT~31_combout\ : std_logic;
SIGNAL \data_OUT~32_combout\ : std_logic;
SIGNAL \data_OUT~33_combout\ : std_logic;
SIGNAL \data_OUT~34_combout\ : std_logic;
SIGNAL \data_OUT~35_combout\ : std_logic;
SIGNAL \data_OUT~36_combout\ : std_logic;
SIGNAL \data_OUT~37_combout\ : std_logic;
SIGNAL \data_OUT~38_combout\ : std_logic;
SIGNAL \data_OUT~39_combout\ : std_logic;
SIGNAL \data_OUT~40_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \data_OUT~41_combout\ : std_logic;
SIGNAL \data_OUT~42_combout\ : std_logic;
SIGNAL \data_OUT~43_combout\ : std_logic;
SIGNAL \data_OUT~44_combout\ : std_logic;
SIGNAL \data_OUT~45_combout\ : std_logic;
SIGNAL \data_OUT~46_combout\ : std_logic;
SIGNAL \data_OUT~47_combout\ : std_logic;
SIGNAL \data_OUT~48_combout\ : std_logic;
SIGNAL \data_OUT~49_combout\ : std_logic;
SIGNAL \data_OUT~50_combout\ : std_logic;
SIGNAL \data_OUT~51_combout\ : std_logic;
SIGNAL \data_OUT~52_combout\ : std_logic;
SIGNAL \data_OUT~53_combout\ : std_logic;
SIGNAL \data_OUT~54_combout\ : std_logic;
SIGNAL \data_OUT~55_combout\ : std_logic;
SIGNAL \data_OUT~56_combout\ : std_logic;
SIGNAL \data_OUT~57_combout\ : std_logic;
SIGNAL \data_OUT~58_combout\ : std_logic;
SIGNAL \data_OUT~59_combout\ : std_logic;
SIGNAL \data_OUT~60_combout\ : std_logic;
SIGNAL \data_OUT~61_combout\ : std_logic;
SIGNAL \data_OUT~62_combout\ : std_logic;
SIGNAL \data_OUT~63_combout\ : std_logic;
SIGNAL \U_Ram3_data|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram1_data|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram2_data|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_Ram0_data|altsyncram_component|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_address <= address;
ww_control <= control;
ww_wr_en <= wr_en;
ww_data_IN <= data_IN;
data_OUT <= ww_data_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\U_mux4_1_IN|Mux0~0_combout\ & \U_mux4_1_IN|Mux1~0_combout\ & \U_mux4_1_IN|Mux2~0_combout\ & \U_mux4_1_IN|Mux3~0_combout\ & \U_mux4_1_IN|Mux4~0_combout\ & \U_mux4_1_IN|Mux5~0_combout\ & \U_mux4_1_IN|Mux6~0_combout\ & \U_mux4_1_IN|Mux7~0_combout\);

\U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\U_Ram3_data|altsyncram_component|auto_generated|q_b\(0) <= \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\U_Ram3_data|altsyncram_component|auto_generated|q_b\(1) <= \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\U_Ram3_data|altsyncram_component|auto_generated|q_b\(2) <= \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\U_Ram3_data|altsyncram_component|auto_generated|q_b\(3) <= \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\U_Ram3_data|altsyncram_component|auto_generated|q_b\(4) <= \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\U_Ram3_data|altsyncram_component|auto_generated|q_b\(5) <= \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\U_Ram3_data|altsyncram_component|auto_generated|q_b\(6) <= \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\U_Ram3_data|altsyncram_component|auto_generated|q_b\(7) <= \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\U_mux4_1_IN|Mux16~0_combout\ & \U_mux4_1_IN|Mux17~0_combout\ & \U_mux4_1_IN|Mux18~0_combout\ & \U_mux4_1_IN|Mux19~0_combout\ & \U_mux4_1_IN|Mux20~0_combout\ & \U_mux4_1_IN|Mux21~0_combout\ & \U_mux4_1_IN|Mux22~0_combout\ & \U_mux4_1_IN|Mux23~0_combout\);

\U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr1[7]~7_combout\ & \addr1[6]~6_combout\ & \addr1[5]~5_combout\ & \addr1[4]~4_combout\ & \addr1[3]~3_combout\ & \addr1[2]~2_combout\ & \addr1[1]~1_combout\ & 
\addr1[0]~0_combout\);

\U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr1[7]~7_combout\ & \addr1[6]~6_combout\ & \addr1[5]~5_combout\ & \addr1[4]~4_combout\ & \addr1[3]~3_combout\ & \addr1[2]~2_combout\ & \addr1[1]~1_combout\ & 
\addr1[0]~0_combout\);

\U_Ram1_data|altsyncram_component|auto_generated|q_b\(0) <= \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\U_Ram1_data|altsyncram_component|auto_generated|q_b\(1) <= \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\U_Ram1_data|altsyncram_component|auto_generated|q_b\(2) <= \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\U_Ram1_data|altsyncram_component|auto_generated|q_b\(3) <= \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\U_Ram1_data|altsyncram_component|auto_generated|q_b\(4) <= \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\U_Ram1_data|altsyncram_component|auto_generated|q_b\(5) <= \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\U_Ram1_data|altsyncram_component|auto_generated|q_b\(6) <= \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\U_Ram1_data|altsyncram_component|auto_generated|q_b\(7) <= \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\U_mux4_1_IN|Mux8~2_combout\ & \U_mux4_1_IN|Mux9~2_combout\ & \U_mux4_1_IN|Mux10~2_combout\ & \U_mux4_1_IN|Mux11~2_combout\ & \U_mux4_1_IN|Mux12~2_combout\ & \U_mux4_1_IN|Mux13~2_combout\ & \U_mux4_1_IN|Mux14~2_combout\ & \U_mux4_1_IN|Mux15~2_combout\);

\U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Add5~14_combout\ & \Add5~12_combout\ & \Add5~10_combout\ & \Add5~8_combout\ & \Add5~6_combout\ & \Add5~4_combout\ & \Add5~2_combout\ & \Add5~0_combout\);

\U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Add5~14_combout\ & \Add5~12_combout\ & \Add5~10_combout\ & \Add5~8_combout\ & \Add5~6_combout\ & \Add5~4_combout\ & \Add5~2_combout\ & \Add5~0_combout\);

\U_Ram2_data|altsyncram_component|auto_generated|q_b\(0) <= \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\U_Ram2_data|altsyncram_component|auto_generated|q_b\(1) <= \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\U_Ram2_data|altsyncram_component|auto_generated|q_b\(2) <= \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\U_Ram2_data|altsyncram_component|auto_generated|q_b\(3) <= \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\U_Ram2_data|altsyncram_component|auto_generated|q_b\(4) <= \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\U_Ram2_data|altsyncram_component|auto_generated|q_b\(5) <= \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\U_Ram2_data|altsyncram_component|auto_generated|q_b\(6) <= \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\U_Ram2_data|altsyncram_component|auto_generated|q_b\(7) <= \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\U_mux4_1_IN|Mux24~2_combout\ & \U_mux4_1_IN|Mux25~2_combout\ & \U_mux4_1_IN|Mux26~2_combout\ & \U_mux4_1_IN|Mux27~2_combout\ & \U_mux4_1_IN|Mux28~2_combout\ & \U_mux4_1_IN|Mux29~2_combout\ & \U_mux4_1_IN|Mux30~2_combout\ & \U_mux4_1_IN|Mux31~2_combout\);

\U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr0[7]~7_combout\ & \addr0[6]~6_combout\ & \addr0[5]~5_combout\ & \addr0[4]~4_combout\ & \addr0[3]~3_combout\ & \addr0[2]~2_combout\ & \addr0[1]~1_combout\ & 
\addr0[0]~0_combout\);

\U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\addr0[7]~7_combout\ & \addr0[6]~6_combout\ & \addr0[5]~5_combout\ & \addr0[4]~4_combout\ & \addr0[3]~3_combout\ & \addr0[2]~2_combout\ & \addr0[1]~1_combout\ & 
\addr0[0]~0_combout\);

\U_Ram0_data|altsyncram_component|auto_generated|q_b\(0) <= \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\U_Ram0_data|altsyncram_component|auto_generated|q_b\(1) <= \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\U_Ram0_data|altsyncram_component|auto_generated|q_b\(2) <= \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\U_Ram0_data|altsyncram_component|auto_generated|q_b\(3) <= \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\U_Ram0_data|altsyncram_component|auto_generated|q_b\(4) <= \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\U_Ram0_data|altsyncram_component|auto_generated|q_b\(5) <= \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\U_Ram0_data|altsyncram_component|auto_generated|q_b\(6) <= \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\U_Ram0_data|altsyncram_component|auto_generated|q_b\(7) <= \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X117_Y39_N2
\data_OUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~2_combout\,
	devoe => ww_devoe,
	o => \data_OUT[0]~output_o\);

-- Location: IOOBUF_X117_Y35_N9
\data_OUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~5_combout\,
	devoe => ww_devoe,
	o => \data_OUT[1]~output_o\);

-- Location: IOOBUF_X117_Y72_N9
\data_OUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~8_combout\,
	devoe => ww_devoe,
	o => \data_OUT[2]~output_o\);

-- Location: IOOBUF_X117_Y36_N9
\data_OUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~11_combout\,
	devoe => ww_devoe,
	o => \data_OUT[3]~output_o\);

-- Location: IOOBUF_X117_Y42_N9
\data_OUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~14_combout\,
	devoe => ww_devoe,
	o => \data_OUT[4]~output_o\);

-- Location: IOOBUF_X117_Y41_N2
\data_OUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~17_combout\,
	devoe => ww_devoe,
	o => \data_OUT[5]~output_o\);

-- Location: IOOBUF_X117_Y55_N9
\data_OUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~20_combout\,
	devoe => ww_devoe,
	o => \data_OUT[6]~output_o\);

-- Location: IOOBUF_X117_Y74_N9
\data_OUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~23_combout\,
	devoe => ww_devoe,
	o => \data_OUT[7]~output_o\);

-- Location: IOOBUF_X117_Y66_N2
\data_OUT[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~25_combout\,
	devoe => ww_devoe,
	o => \data_OUT[8]~output_o\);

-- Location: IOOBUF_X117_Y62_N2
\data_OUT[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~27_combout\,
	devoe => ww_devoe,
	o => \data_OUT[9]~output_o\);

-- Location: IOOBUF_X117_Y56_N9
\data_OUT[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~29_combout\,
	devoe => ww_devoe,
	o => \data_OUT[10]~output_o\);

-- Location: IOOBUF_X117_Y76_N2
\data_OUT[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~31_combout\,
	devoe => ww_devoe,
	o => \data_OUT[11]~output_o\);

-- Location: IOOBUF_X117_Y54_N9
\data_OUT[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~33_combout\,
	devoe => ww_devoe,
	o => \data_OUT[12]~output_o\);

-- Location: IOOBUF_X117_Y35_N2
\data_OUT[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~35_combout\,
	devoe => ww_devoe,
	o => \data_OUT[13]~output_o\);

-- Location: IOOBUF_X117_Y51_N2
\data_OUT[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~37_combout\,
	devoe => ww_devoe,
	o => \data_OUT[14]~output_o\);

-- Location: IOOBUF_X117_Y70_N9
\data_OUT[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~39_combout\,
	devoe => ww_devoe,
	o => \data_OUT[15]~output_o\);

-- Location: IOOBUF_X117_Y48_N9
\data_OUT[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~41_combout\,
	devoe => ww_devoe,
	o => \data_OUT[16]~output_o\);

-- Location: IOOBUF_X117_Y55_N2
\data_OUT[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~43_combout\,
	devoe => ww_devoe,
	o => \data_OUT[17]~output_o\);

-- Location: IOOBUF_X117_Y67_N2
\data_OUT[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~45_combout\,
	devoe => ww_devoe,
	o => \data_OUT[18]~output_o\);

-- Location: IOOBUF_X117_Y76_N9
\data_OUT[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~47_combout\,
	devoe => ww_devoe,
	o => \data_OUT[19]~output_o\);

-- Location: IOOBUF_X117_Y54_N2
\data_OUT[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~49_combout\,
	devoe => ww_devoe,
	o => \data_OUT[20]~output_o\);

-- Location: IOOBUF_X95_Y91_N9
\data_OUT[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~51_combout\,
	devoe => ww_devoe,
	o => \data_OUT[21]~output_o\);

-- Location: IOOBUF_X117_Y69_N2
\data_OUT[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~53_combout\,
	devoe => ww_devoe,
	o => \data_OUT[22]~output_o\);

-- Location: IOOBUF_X117_Y72_N2
\data_OUT[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~55_combout\,
	devoe => ww_devoe,
	o => \data_OUT[23]~output_o\);

-- Location: IOOBUF_X117_Y43_N2
\data_OUT[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~56_combout\,
	devoe => ww_devoe,
	o => \data_OUT[24]~output_o\);

-- Location: IOOBUF_X117_Y51_N9
\data_OUT[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~57_combout\,
	devoe => ww_devoe,
	o => \data_OUT[25]~output_o\);

-- Location: IOOBUF_X117_Y56_N2
\data_OUT[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~58_combout\,
	devoe => ww_devoe,
	o => \data_OUT[26]~output_o\);

-- Location: IOOBUF_X117_Y66_N9
\data_OUT[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~59_combout\,
	devoe => ww_devoe,
	o => \data_OUT[27]~output_o\);

-- Location: IOOBUF_X117_Y42_N2
\data_OUT[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~60_combout\,
	devoe => ww_devoe,
	o => \data_OUT[28]~output_o\);

-- Location: IOOBUF_X117_Y78_N2
\data_OUT[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~61_combout\,
	devoe => ww_devoe,
	o => \data_OUT[29]~output_o\);

-- Location: IOOBUF_X117_Y62_N9
\data_OUT[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~62_combout\,
	devoe => ww_devoe,
	o => \data_OUT[30]~output_o\);

-- Location: IOOBUF_X117_Y70_N2
\data_OUT[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_OUT~63_combout\,
	devoe => ww_devoe,
	o => \data_OUT[31]~output_o\);

-- Location: IOIBUF_X117_Y50_N1
\control[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(0),
	o => \control[0]~input_o\);

-- Location: IOIBUF_X117_Y53_N1
\control[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_control(1),
	o => \control[1]~input_o\);

-- Location: LCCOMB_X95_Y54_N24
\Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\control[0]~input_o\ & \control[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control[0]~input_o\,
	datac => \control[1]~input_o\,
	combout => \Equal4~0_combout\);

-- Location: IOIBUF_X117_Y46_N8
\address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X117_Y46_N1
\address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X95_Y54_N12
\wr_en2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en2~0_combout\ = (\control[1]~input_o\ & (!\address[0]~input_o\ & (\address[1]~input_o\ & !\control[0]~input_o\))) # (!\control[1]~input_o\ & ((\address[0]~input_o\ $ (\address[1]~input_o\)) # (!\control[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \control[1]~input_o\,
	datad => \control[0]~input_o\,
	combout => \wr_en2~0_combout\);

-- Location: IOIBUF_X117_Y44_N1
\wr_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_en,
	o => \wr_en~input_o\);

-- Location: LCCOMB_X96_Y54_N0
\wr_en2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en2~1_combout\ = (\wr_en2~0_combout\ & \wr_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en2~0_combout\,
	datad => \wr_en~input_o\,
	combout => \wr_en2~1_combout\);

-- Location: IOIBUF_X57_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G29
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X117_Y60_N1
\data_IN[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(24),
	o => \data_IN[24]~input_o\);

-- Location: IOIBUF_X117_Y58_N1
\data_IN[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(8),
	o => \data_IN[8]~input_o\);

-- Location: LCCOMB_X113_Y56_N0
\U_mux4_1_IN|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux15~1_combout\ = (\address[1]~input_o\ & (\data_IN[24]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \data_IN[24]~input_o\,
	datac => \data_IN[8]~input_o\,
	combout => \U_mux4_1_IN|Mux15~1_combout\);

-- Location: IOIBUF_X117_Y58_N8
\data_IN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(0),
	o => \data_IN[0]~input_o\);

-- Location: IOIBUF_X117_Y57_N8
\data_IN[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(16),
	o => \data_IN[16]~input_o\);

-- Location: LCCOMB_X113_Y56_N24
\U_mux4_1_IN|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux15~0_combout\ = (\address[1]~input_o\ & (\data_IN[0]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[0]~input_o\,
	datad => \data_IN[16]~input_o\,
	combout => \U_mux4_1_IN|Mux15~0_combout\);

-- Location: LCCOMB_X113_Y56_N4
\U_mux4_1_IN|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux15~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux15~1_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_mux4_1_IN|Mux15~1_combout\,
	datad => \U_mux4_1_IN|Mux15~0_combout\,
	combout => \U_mux4_1_IN|Mux15~2_combout\);

-- Location: IOIBUF_X117_Y49_N8
\address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: LCCOMB_X93_Y55_N30
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\address[0]~input_o\ & \address[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datac => \address[1]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X93_Y55_N12
\Add5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\address[2]~input_o\ & (\Equal2~0_combout\ $ (VCC))) # (!\address[2]~input_o\ & (\Equal2~0_combout\ & VCC))
-- \Add5~1\ = CARRY((\address[2]~input_o\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \Equal2~0_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: IOIBUF_X117_Y44_N8
\address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: LCCOMB_X93_Y55_N14
\Add5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\address[3]~input_o\ & (!\Add5~1\)) # (!\address[3]~input_o\ & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!\address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \address[3]~input_o\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: IOIBUF_X117_Y48_N1
\address[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: LCCOMB_X93_Y55_N16
\Add5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\address[4]~input_o\ & (\Add5~3\ $ (GND))) # (!\address[4]~input_o\ & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\address[4]~input_o\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: IOIBUF_X117_Y49_N1
\address[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: LCCOMB_X93_Y55_N18
\Add5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\address[5]~input_o\ & (!\Add5~5\)) # (!\address[5]~input_o\ & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!\address[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[5]~input_o\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: IOIBUF_X117_Y53_N8
\address[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: LCCOMB_X93_Y55_N20
\Add5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\address[6]~input_o\ & (\Add5~7\ $ (GND))) # (!\address[6]~input_o\ & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((\address[6]~input_o\ & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \address[6]~input_o\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: IOIBUF_X95_Y91_N15
\address[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: LCCOMB_X93_Y55_N22
\Add5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\address[7]~input_o\ & (!\Add5~9\)) # (!\address[7]~input_o\ & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!\address[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[7]~input_o\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: IOIBUF_X117_Y50_N8
\address[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(8),
	o => \address[8]~input_o\);

-- Location: LCCOMB_X93_Y55_N24
\Add5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\address[8]~input_o\ & (\Add5~11\ $ (GND))) # (!\address[8]~input_o\ & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((\address[8]~input_o\ & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \address[8]~input_o\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: IOIBUF_X117_Y52_N8
\address[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(9),
	o => \address[9]~input_o\);

-- Location: LCCOMB_X93_Y55_N26
\Add5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = \Add5~13\ $ (\address[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \address[9]~input_o\,
	cin => \Add5~13\,
	combout => \Add5~14_combout\);

-- Location: IOIBUF_X117_Y65_N8
\data_IN[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(9),
	o => \data_IN[9]~input_o\);

-- Location: IOIBUF_X117_Y67_N8
\data_IN[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(25),
	o => \data_IN[25]~input_o\);

-- Location: LCCOMB_X109_Y56_N0
\U_mux4_1_IN|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux14~1_combout\ = (\address[1]~input_o\ & ((\data_IN[25]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[9]~input_o\,
	datad => \data_IN[25]~input_o\,
	combout => \U_mux4_1_IN|Mux14~1_combout\);

-- Location: IOIBUF_X117_Y59_N1
\data_IN[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(17),
	o => \data_IN[17]~input_o\);

-- Location: IOIBUF_X117_Y74_N1
\data_IN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(1),
	o => \data_IN[1]~input_o\);

-- Location: LCCOMB_X109_Y56_N24
\U_mux4_1_IN|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux14~0_combout\ = (\address[1]~input_o\ & ((\data_IN[1]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[17]~input_o\,
	datac => \data_IN[1]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux14~0_combout\);

-- Location: LCCOMB_X109_Y56_N20
\U_mux4_1_IN|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux14~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux14~1_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_mux4_1_IN|Mux14~1_combout\,
	datad => \U_mux4_1_IN|Mux14~0_combout\,
	combout => \U_mux4_1_IN|Mux14~2_combout\);

-- Location: IOIBUF_X117_Y36_N1
\data_IN[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(26),
	o => \data_IN[26]~input_o\);

-- Location: IOIBUF_X117_Y64_N8
\data_IN[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(10),
	o => \data_IN[10]~input_o\);

-- Location: LCCOMB_X109_Y56_N16
\U_mux4_1_IN|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux13~1_combout\ = (\address[1]~input_o\ & (\data_IN[26]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \data_IN[26]~input_o\,
	datac => \data_IN[10]~input_o\,
	combout => \U_mux4_1_IN|Mux13~1_combout\);

-- Location: IOIBUF_X117_Y52_N1
\data_IN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(2),
	o => \data_IN[2]~input_o\);

-- Location: IOIBUF_X117_Y61_N1
\data_IN[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(18),
	o => \data_IN[18]~input_o\);

-- Location: LCCOMB_X109_Y56_N8
\U_mux4_1_IN|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux13~0_combout\ = (\address[1]~input_o\ & (\data_IN[2]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[2]~input_o\,
	datad => \data_IN[18]~input_o\,
	combout => \U_mux4_1_IN|Mux13~0_combout\);

-- Location: LCCOMB_X109_Y56_N28
\U_mux4_1_IN|Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux13~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux13~1_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux13~1_combout\,
	datac => \U_mux4_1_IN|Mux13~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux13~2_combout\);

-- Location: IOIBUF_X117_Y73_N8
\data_IN[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(11),
	o => \data_IN[11]~input_o\);

-- Location: IOIBUF_X117_Y77_N1
\data_IN[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(27),
	o => \data_IN[27]~input_o\);

-- Location: LCCOMB_X95_Y57_N0
\U_mux4_1_IN|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux12~1_combout\ = (\address[1]~input_o\ & ((\data_IN[27]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_IN[11]~input_o\,
	datac => \address[1]~input_o\,
	datad => \data_IN[27]~input_o\,
	combout => \U_mux4_1_IN|Mux12~1_combout\);

-- Location: IOIBUF_X117_Y61_N8
\data_IN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(3),
	o => \data_IN[3]~input_o\);

-- Location: IOIBUF_X117_Y69_N8
\data_IN[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(19),
	o => \data_IN[19]~input_o\);

-- Location: LCCOMB_X95_Y57_N8
\U_mux4_1_IN|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux12~0_combout\ = (\address[1]~input_o\ & (\data_IN[3]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[3]~input_o\,
	datac => \address[1]~input_o\,
	datad => \data_IN[19]~input_o\,
	combout => \U_mux4_1_IN|Mux12~0_combout\);

-- Location: LCCOMB_X95_Y57_N12
\U_mux4_1_IN|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux12~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux12~1_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux12~1_combout\,
	datac => \U_mux4_1_IN|Mux12~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux12~2_combout\);

-- Location: IOIBUF_X117_Y34_N8
\data_IN[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(28),
	o => \data_IN[28]~input_o\);

-- Location: IOIBUF_X117_Y39_N8
\data_IN[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(12),
	o => \data_IN[12]~input_o\);

-- Location: LCCOMB_X93_Y54_N16
\U_mux4_1_IN|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux11~1_combout\ = (\address[1]~input_o\ & (\data_IN[28]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[28]~input_o\,
	datac => \data_IN[12]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux11~1_combout\);

-- Location: IOIBUF_X117_Y38_N1
\data_IN[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(20),
	o => \data_IN[20]~input_o\);

-- Location: IOIBUF_X117_Y41_N8
\data_IN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(4),
	o => \data_IN[4]~input_o\);

-- Location: LCCOMB_X93_Y54_N8
\U_mux4_1_IN|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux11~0_combout\ = (\address[1]~input_o\ & ((\data_IN[4]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_IN[20]~input_o\,
	datab => \data_IN[4]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux11~0_combout\);

-- Location: LCCOMB_X93_Y54_N28
\U_mux4_1_IN|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux11~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux11~1_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux11~1_combout\,
	datac => \U_mux4_1_IN|Mux11~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux11~2_combout\);

-- Location: IOIBUF_X117_Y59_N8
\data_IN[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(13),
	o => \data_IN[13]~input_o\);

-- Location: IOIBUF_X117_Y60_N15
\data_IN[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(29),
	o => \data_IN[29]~input_o\);

-- Location: LCCOMB_X113_Y56_N16
\U_mux4_1_IN|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux10~1_combout\ = (\address[1]~input_o\ & ((\data_IN[29]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[13]~input_o\,
	datad => \data_IN[29]~input_o\,
	combout => \U_mux4_1_IN|Mux10~1_combout\);

-- Location: IOIBUF_X117_Y60_N8
\data_IN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(5),
	o => \data_IN[5]~input_o\);

-- Location: IOIBUF_X117_Y64_N1
\data_IN[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(21),
	o => \data_IN[21]~input_o\);

-- Location: LCCOMB_X113_Y56_N8
\U_mux4_1_IN|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux10~0_combout\ = (\address[1]~input_o\ & (\data_IN[5]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[5]~input_o\,
	datad => \data_IN[21]~input_o\,
	combout => \U_mux4_1_IN|Mux10~0_combout\);

-- Location: LCCOMB_X113_Y56_N20
\U_mux4_1_IN|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux10~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux10~1_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux10~1_combout\,
	datac => \U_mux4_1_IN|Mux10~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux10~2_combout\);

-- Location: IOIBUF_X117_Y38_N8
\data_IN[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(14),
	o => \data_IN[14]~input_o\);

-- Location: IOIBUF_X117_Y34_N1
\data_IN[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(30),
	o => \data_IN[30]~input_o\);

-- Location: LCCOMB_X93_Y54_N0
\U_mux4_1_IN|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux9~1_combout\ = (\address[1]~input_o\ & ((\data_IN[30]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[14]~input_o\,
	datac => \data_IN[30]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux9~1_combout\);

-- Location: IOIBUF_X92_Y91_N8
\data_IN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(6),
	o => \data_IN[6]~input_o\);

-- Location: IOIBUF_X117_Y43_N8
\data_IN[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(22),
	o => \data_IN[22]~input_o\);

-- Location: LCCOMB_X93_Y54_N24
\U_mux4_1_IN|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux9~0_combout\ = (\address[1]~input_o\ & (\data_IN[6]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_IN[6]~input_o\,
	datac => \data_IN[22]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux9~0_combout\);

-- Location: LCCOMB_X93_Y54_N20
\U_mux4_1_IN|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux9~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux9~1_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_mux4_1_IN|Mux9~1_combout\,
	datad => \U_mux4_1_IN|Mux9~0_combout\,
	combout => \U_mux4_1_IN|Mux9~2_combout\);

-- Location: IOIBUF_X117_Y65_N1
\data_IN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(7),
	o => \data_IN[7]~input_o\);

-- Location: IOIBUF_X117_Y73_N1
\data_IN[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(23),
	o => \data_IN[23]~input_o\);

-- Location: LCCOMB_X95_Y57_N16
\U_mux4_1_IN|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux8~0_combout\ = (\address[1]~input_o\ & (\data_IN[7]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[7]~input_o\,
	datac => \address[1]~input_o\,
	datad => \data_IN[23]~input_o\,
	combout => \U_mux4_1_IN|Mux8~0_combout\);

-- Location: IOIBUF_X117_Y57_N1
\data_IN[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(15),
	o => \data_IN[15]~input_o\);

-- Location: IOIBUF_X117_Y68_N1
\data_IN[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_IN(31),
	o => \data_IN[31]~input_o\);

-- Location: LCCOMB_X95_Y57_N24
\U_mux4_1_IN|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux8~1_combout\ = (\address[1]~input_o\ & ((\data_IN[31]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[15]~input_o\,
	datac => \address[1]~input_o\,
	datad => \data_IN[31]~input_o\,
	combout => \U_mux4_1_IN|Mux8~1_combout\);

-- Location: LCCOMB_X95_Y57_N20
\U_mux4_1_IN|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux8~2_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux8~1_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_mux4_1_IN|Mux8~0_combout\,
	datad => \U_mux4_1_IN|Mux8~1_combout\,
	combout => \U_mux4_1_IN|Mux8~2_combout\);

-- Location: M9K_X94_Y55_N0
\U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_data:U_Ram2_data|altsyncram:altsyncram_component|altsyncram_j9q3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en2~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \wr_en2~1_combout\,
	portadatain => \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U_Ram2_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X95_Y54_N30
\wr_en0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en0~0_combout\ = (\control[1]~input_o\ & (!\address[0]~input_o\ & (!\address[1]~input_o\ & !\control[0]~input_o\))) # (!\control[1]~input_o\ & ((\address[0]~input_o\ $ (!\address[1]~input_o\)) # (!\control[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \control[1]~input_o\,
	datad => \control[0]~input_o\,
	combout => \wr_en0~0_combout\);

-- Location: LCCOMB_X96_Y54_N10
\wr_en0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en0~1_combout\ = (\wr_en0~0_combout\ & \wr_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_en0~0_combout\,
	datad => \wr_en~input_o\,
	combout => \wr_en0~1_combout\);

-- Location: LCCOMB_X113_Y56_N10
\U_mux4_1_IN|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux31~0_combout\ = (\address[1]~input_o\ & ((\data_IN[8]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \data_IN[24]~input_o\,
	datac => \data_IN[8]~input_o\,
	combout => \U_mux4_1_IN|Mux31~0_combout\);

-- Location: LCCOMB_X113_Y56_N22
\U_mux4_1_IN|Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux31~1_combout\ = (\address[1]~input_o\ & ((\data_IN[16]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[0]~input_o\,
	datad => \data_IN[16]~input_o\,
	combout => \U_mux4_1_IN|Mux31~1_combout\);

-- Location: LCCOMB_X113_Y56_N14
\U_mux4_1_IN|Mux31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux31~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux31~0_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux31~0_combout\,
	datac => \U_mux4_1_IN|Mux31~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux31~2_combout\);

-- Location: LCCOMB_X93_Y56_N4
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \address[2]~input_o\ $ (VCC)
-- \Add0~1\ = CARRY(\address[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X93_Y55_N8
\addr0[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr0[0]~0_combout\ = (\address[1]~input_o\ & (\Add0~0_combout\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\Add0~0_combout\)) # (!\address[0]~input_o\ & ((\address[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
	combout => \addr0[0]~0_combout\);

-- Location: LCCOMB_X93_Y56_N6
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\address[3]~input_o\ & (!\Add0~1\)) # (!\address[3]~input_o\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\address[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \address[3]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X93_Y55_N2
\addr0[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr0[1]~1_combout\ = (\address[0]~input_o\ & (\Add0~2_combout\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\Add0~2_combout\)) # (!\address[1]~input_o\ & ((\address[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \Add0~2_combout\,
	datac => \address[1]~input_o\,
	datad => \address[3]~input_o\,
	combout => \addr0[1]~1_combout\);

-- Location: LCCOMB_X93_Y56_N8
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\address[4]~input_o\ & (\Add0~3\ $ (GND))) # (!\address[4]~input_o\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\address[4]~input_o\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[4]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X93_Y55_N28
\addr0[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr0[2]~2_combout\ = (\address[0]~input_o\ & (\Add0~4_combout\)) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & (\Add0~4_combout\)) # (!\address[1]~input_o\ & ((\address[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \Add0~4_combout\,
	datac => \address[1]~input_o\,
	datad => \address[4]~input_o\,
	combout => \addr0[2]~2_combout\);

-- Location: LCCOMB_X93_Y56_N10
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\address[5]~input_o\ & (!\Add0~5\)) # (!\address[5]~input_o\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\address[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \address[5]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X93_Y56_N26
\addr0[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr0[3]~3_combout\ = (\address[1]~input_o\ & (\Add0~6_combout\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\Add0~6_combout\)) # (!\address[0]~input_o\ & ((\address[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[5]~input_o\,
	combout => \addr0[3]~3_combout\);

-- Location: LCCOMB_X93_Y56_N12
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\address[6]~input_o\ & (\Add0~7\ $ (GND))) # (!\address[6]~input_o\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\address[6]~input_o\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \address[6]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X93_Y56_N20
\addr0[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr0[4]~4_combout\ = (\address[1]~input_o\ & (\Add0~8_combout\)) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\Add0~8_combout\)) # (!\address[0]~input_o\ & ((\address[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \address[6]~input_o\,
	combout => \addr0[4]~4_combout\);

-- Location: LCCOMB_X93_Y56_N14
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\address[7]~input_o\ & (!\Add0~9\)) # (!\address[7]~input_o\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\address[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[7]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X95_Y56_N16
\addr0[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr0[5]~5_combout\ = (\address[0]~input_o\ & (((\Add0~10_combout\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\Add0~10_combout\))) # (!\address[1]~input_o\ & (\address[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[7]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[1]~input_o\,
	datad => \Add0~10_combout\,
	combout => \addr0[5]~5_combout\);

-- Location: LCCOMB_X93_Y56_N16
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\address[8]~input_o\ & (\Add0~11\ $ (GND))) # (!\address[8]~input_o\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\address[8]~input_o\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \address[8]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X93_Y55_N6
\addr0[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr0[6]~6_combout\ = (\address[0]~input_o\ & (((\Add0~12_combout\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\Add0~12_combout\))) # (!\address[1]~input_o\ & (\address[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[8]~input_o\,
	datac => \address[1]~input_o\,
	datad => \Add0~12_combout\,
	combout => \addr0[6]~6_combout\);

-- Location: LCCOMB_X93_Y56_N18
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (\address[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \address[9]~input_o\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X93_Y56_N22
\addr0[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr0[7]~7_combout\ = (\address[0]~input_o\ & (((\Add0~14_combout\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\ & ((\Add0~14_combout\))) # (!\address[1]~input_o\ & (\address[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[9]~input_o\,
	datab => \address[0]~input_o\,
	datac => \address[1]~input_o\,
	datad => \Add0~14_combout\,
	combout => \addr0[7]~7_combout\);

-- Location: LCCOMB_X109_Y56_N10
\U_mux4_1_IN|Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux30~0_combout\ = (\address[1]~input_o\ & (\data_IN[9]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[9]~input_o\,
	datad => \data_IN[25]~input_o\,
	combout => \U_mux4_1_IN|Mux30~0_combout\);

-- Location: LCCOMB_X109_Y56_N14
\U_mux4_1_IN|Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux30~1_combout\ = (\address[1]~input_o\ & (\data_IN[17]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[17]~input_o\,
	datac => \data_IN[1]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux30~1_combout\);

-- Location: LCCOMB_X109_Y56_N30
\U_mux4_1_IN|Mux30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux30~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux30~0_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux30~0_combout\,
	datac => \U_mux4_1_IN|Mux30~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux30~2_combout\);

-- Location: LCCOMB_X109_Y56_N18
\U_mux4_1_IN|Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux29~0_combout\ = (\address[1]~input_o\ & ((\data_IN[10]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \data_IN[26]~input_o\,
	datac => \data_IN[10]~input_o\,
	combout => \U_mux4_1_IN|Mux29~0_combout\);

-- Location: LCCOMB_X109_Y56_N22
\U_mux4_1_IN|Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux29~1_combout\ = (\address[1]~input_o\ & ((\data_IN[18]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[2]~input_o\,
	datad => \data_IN[18]~input_o\,
	combout => \U_mux4_1_IN|Mux29~1_combout\);

-- Location: LCCOMB_X109_Y56_N6
\U_mux4_1_IN|Mux29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux29~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux29~0_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux29~0_combout\,
	datac => \U_mux4_1_IN|Mux29~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux29~2_combout\);

-- Location: LCCOMB_X95_Y57_N10
\U_mux4_1_IN|Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux28~0_combout\ = (\address[1]~input_o\ & (\data_IN[11]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_IN[11]~input_o\,
	datac => \address[1]~input_o\,
	datad => \data_IN[27]~input_o\,
	combout => \U_mux4_1_IN|Mux28~0_combout\);

-- Location: LCCOMB_X95_Y57_N22
\U_mux4_1_IN|Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux28~1_combout\ = (\address[1]~input_o\ & ((\data_IN[19]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[3]~input_o\,
	datac => \address[1]~input_o\,
	datad => \data_IN[19]~input_o\,
	combout => \U_mux4_1_IN|Mux28~1_combout\);

-- Location: LCCOMB_X95_Y57_N6
\U_mux4_1_IN|Mux28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux28~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux28~0_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux28~0_combout\,
	datac => \U_mux4_1_IN|Mux28~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux28~2_combout\);

-- Location: LCCOMB_X93_Y54_N10
\U_mux4_1_IN|Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux27~0_combout\ = (\address[1]~input_o\ & ((\data_IN[12]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[28]~input_o\,
	datac => \data_IN[12]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux27~0_combout\);

-- Location: LCCOMB_X93_Y54_N30
\U_mux4_1_IN|Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux27~1_combout\ = (\address[1]~input_o\ & (\data_IN[20]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_IN[20]~input_o\,
	datab => \data_IN[4]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux27~1_combout\);

-- Location: LCCOMB_X93_Y54_N22
\U_mux4_1_IN|Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux27~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux27~0_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux27~0_combout\,
	datac => \U_mux4_1_IN|Mux27~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux27~2_combout\);

-- Location: LCCOMB_X113_Y56_N18
\U_mux4_1_IN|Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux26~0_combout\ = (\address[1]~input_o\ & (\data_IN[13]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[13]~input_o\,
	datad => \data_IN[29]~input_o\,
	combout => \U_mux4_1_IN|Mux26~0_combout\);

-- Location: LCCOMB_X113_Y56_N30
\U_mux4_1_IN|Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux26~1_combout\ = (\address[1]~input_o\ & ((\data_IN[21]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datac => \data_IN[5]~input_o\,
	datad => \data_IN[21]~input_o\,
	combout => \U_mux4_1_IN|Mux26~1_combout\);

-- Location: LCCOMB_X113_Y56_N6
\U_mux4_1_IN|Mux26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux26~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux26~0_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux26~0_combout\,
	datac => \U_mux4_1_IN|Mux26~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux26~2_combout\);

-- Location: LCCOMB_X93_Y54_N6
\U_mux4_1_IN|Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux25~1_combout\ = (\address[1]~input_o\ & ((\data_IN[22]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_IN[6]~input_o\,
	datac => \data_IN[22]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux25~1_combout\);

-- Location: LCCOMB_X93_Y54_N2
\U_mux4_1_IN|Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux25~0_combout\ = (\address[1]~input_o\ & (\data_IN[14]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[14]~input_o\,
	datac => \data_IN[30]~input_o\,
	datad => \address[1]~input_o\,
	combout => \U_mux4_1_IN|Mux25~0_combout\);

-- Location: LCCOMB_X93_Y54_N14
\U_mux4_1_IN|Mux25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux25~2_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux25~0_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux25~1_combout\,
	datab => \U_mux4_1_IN|Mux25~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux25~2_combout\);

-- Location: LCCOMB_X95_Y57_N26
\U_mux4_1_IN|Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux24~0_combout\ = (\address[1]~input_o\ & (\data_IN[15]~input_o\)) # (!\address[1]~input_o\ & ((\data_IN[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[15]~input_o\,
	datac => \address[1]~input_o\,
	datad => \data_IN[31]~input_o\,
	combout => \U_mux4_1_IN|Mux24~0_combout\);

-- Location: LCCOMB_X95_Y57_N30
\U_mux4_1_IN|Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux24~1_combout\ = (\address[1]~input_o\ & ((\data_IN[23]~input_o\))) # (!\address[1]~input_o\ & (\data_IN[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_IN[7]~input_o\,
	datac => \address[1]~input_o\,
	datad => \data_IN[23]~input_o\,
	combout => \U_mux4_1_IN|Mux24~1_combout\);

-- Location: LCCOMB_X95_Y57_N14
\U_mux4_1_IN|Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux24~2_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux24~0_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux24~0_combout\,
	datac => \U_mux4_1_IN|Mux24~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux24~2_combout\);

-- Location: M9K_X94_Y57_N0
\U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_data:U_Ram0_data|altsyncram:altsyncram_component|altsyncram_j9q3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en0~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \wr_en0~1_combout\,
	portadatain => \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U_Ram0_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X95_Y55_N18
\data_OUT~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~1_combout\ = (\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(0))) # (!\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(0),
	datac => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(0),
	combout => \data_OUT~1_combout\);

-- Location: LCCOMB_X95_Y54_N28
\wr_en3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en3~0_combout\ = (\address[1]~input_o\ & (\address[0]~input_o\ & !\control[0]~input_o\)) # (!\address[1]~input_o\ & ((\control[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datad => \control[0]~input_o\,
	combout => \wr_en3~0_combout\);

-- Location: LCCOMB_X95_Y54_N14
\wr_en3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en3~1_combout\ = (\wr_en~input_o\ & ((\wr_en3~0_combout\ & (\address[1]~input_o\)) # (!\wr_en3~0_combout\ & ((!\control[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_en3~0_combout\,
	datab => \address[1]~input_o\,
	datac => \control[1]~input_o\,
	datad => \wr_en~input_o\,
	combout => \wr_en3~1_combout\);

-- Location: LCCOMB_X113_Y56_N12
\U_mux4_1_IN|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux7~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux15~0_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux31~0_combout\,
	datab => \U_mux4_1_IN|Mux15~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux7~0_combout\);

-- Location: LCCOMB_X109_Y56_N4
\U_mux4_1_IN|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux6~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux14~0_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux30~0_combout\,
	datab => \U_mux4_1_IN|Mux14~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux6~0_combout\);

-- Location: LCCOMB_X109_Y56_N12
\U_mux4_1_IN|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux5~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux13~0_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux29~0_combout\,
	datac => \U_mux4_1_IN|Mux13~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux5~0_combout\);

-- Location: LCCOMB_X95_Y57_N4
\U_mux4_1_IN|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux4~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux12~0_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux28~0_combout\,
	datac => \U_mux4_1_IN|Mux12~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux4~0_combout\);

-- Location: LCCOMB_X93_Y54_N4
\U_mux4_1_IN|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux3~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux11~0_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux27~0_combout\,
	datac => \U_mux4_1_IN|Mux11~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y56_N28
\U_mux4_1_IN|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux2~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux10~0_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux26~0_combout\,
	datac => \U_mux4_1_IN|Mux10~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux2~0_combout\);

-- Location: LCCOMB_X93_Y54_N12
\U_mux4_1_IN|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux1~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux9~0_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \U_mux4_1_IN|Mux25~0_combout\,
	datad => \U_mux4_1_IN|Mux9~0_combout\,
	combout => \U_mux4_1_IN|Mux1~0_combout\);

-- Location: LCCOMB_X95_Y57_N28
\U_mux4_1_IN|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux0~0_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux8~0_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux8~0_combout\,
	datac => \U_mux4_1_IN|Mux24~0_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux0~0_combout\);

-- Location: M9K_X94_Y54_N0
\U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_data:U_Ram3_data|altsyncram:altsyncram_component|altsyncram_j9q3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en3~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \wr_en3~1_combout\,
	portadatain => \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U_Ram3_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X95_Y54_N16
\wr_en1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en1~0_combout\ = (\address[1]~input_o\ & (((!\control[1]~input_o\ & !\control[0]~input_o\)))) # (!\address[1]~input_o\ & (((\address[0]~input_o\ & !\control[0]~input_o\)) # (!\control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \control[1]~input_o\,
	datad => \control[0]~input_o\,
	combout => \wr_en1~0_combout\);

-- Location: LCCOMB_X95_Y54_N18
\wr_en1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en1~1_combout\ = (\wr_en1~0_combout\ & \wr_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_en1~0_combout\,
	datad => \wr_en~input_o\,
	combout => \wr_en1~1_combout\);

-- Location: LCCOMB_X113_Y56_N2
\U_mux4_1_IN|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux23~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux31~1_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux15~1_combout\,
	datac => \U_mux4_1_IN|Mux31~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux23~0_combout\);

-- Location: LCCOMB_X93_Y55_N0
\addr1[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr1[0]~0_combout\ = (\address[1]~input_o\ & ((\Add0~0_combout\))) # (!\address[1]~input_o\ & (\address[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \Add0~0_combout\,
	combout => \addr1[0]~0_combout\);

-- Location: LCCOMB_X93_Y56_N0
\addr1[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr1[1]~1_combout\ = (\address[1]~input_o\ & (\Add0~2_combout\)) # (!\address[1]~input_o\ & ((\address[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \address[1]~input_o\,
	datac => \address[3]~input_o\,
	combout => \addr1[1]~1_combout\);

-- Location: LCCOMB_X93_Y55_N10
\addr1[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr1[2]~2_combout\ = (\address[1]~input_o\ & (\Add0~4_combout\)) # (!\address[1]~input_o\ & ((\address[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~4_combout\,
	datac => \address[1]~input_o\,
	datad => \address[4]~input_o\,
	combout => \addr1[2]~2_combout\);

-- Location: LCCOMB_X93_Y56_N2
\addr1[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr1[3]~3_combout\ = (\address[1]~input_o\ & (\Add0~6_combout\)) # (!\address[1]~input_o\ & ((\address[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \address[1]~input_o\,
	datad => \address[5]~input_o\,
	combout => \addr1[3]~3_combout\);

-- Location: LCCOMB_X93_Y56_N28
\addr1[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr1[4]~4_combout\ = (\address[1]~input_o\ & (\Add0~8_combout\)) # (!\address[1]~input_o\ & ((\address[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \address[1]~input_o\,
	datad => \address[6]~input_o\,
	combout => \addr1[4]~4_combout\);

-- Location: LCCOMB_X93_Y56_N30
\addr1[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr1[5]~5_combout\ = (\address[1]~input_o\ & ((\Add0~10_combout\))) # (!\address[1]~input_o\ & (\address[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[7]~input_o\,
	datab => \address[1]~input_o\,
	datac => \Add0~10_combout\,
	combout => \addr1[5]~5_combout\);

-- Location: LCCOMB_X93_Y55_N4
\addr1[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr1[6]~6_combout\ = (\address[1]~input_o\ & (\Add0~12_combout\)) # (!\address[1]~input_o\ & ((\address[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \address[1]~input_o\,
	datad => \address[8]~input_o\,
	combout => \addr1[6]~6_combout\);

-- Location: LCCOMB_X93_Y56_N24
\addr1[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \addr1[7]~7_combout\ = (\address[1]~input_o\ & (\Add0~14_combout\)) # (!\address[1]~input_o\ & ((\address[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \address[1]~input_o\,
	datad => \address[9]~input_o\,
	combout => \addr1[7]~7_combout\);

-- Location: LCCOMB_X109_Y56_N2
\U_mux4_1_IN|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux22~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux30~1_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux14~1_combout\,
	datac => \U_mux4_1_IN|Mux30~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux22~0_combout\);

-- Location: LCCOMB_X109_Y56_N26
\U_mux4_1_IN|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux21~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux29~1_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux13~1_combout\,
	datac => \U_mux4_1_IN|Mux29~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux21~0_combout\);

-- Location: LCCOMB_X95_Y57_N18
\U_mux4_1_IN|Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux20~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux28~1_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux12~1_combout\,
	datac => \U_mux4_1_IN|Mux28~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux20~0_combout\);

-- Location: LCCOMB_X93_Y54_N18
\U_mux4_1_IN|Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux19~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux27~1_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux11~1_combout\,
	datac => \U_mux4_1_IN|Mux27~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux19~0_combout\);

-- Location: LCCOMB_X113_Y56_N26
\U_mux4_1_IN|Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux18~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux26~1_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux10~1_combout\,
	datac => \U_mux4_1_IN|Mux26~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux18~0_combout\);

-- Location: LCCOMB_X93_Y54_N26
\U_mux4_1_IN|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux17~0_combout\ = (\address[0]~input_o\ & (\U_mux4_1_IN|Mux25~1_combout\)) # (!\address[0]~input_o\ & ((\U_mux4_1_IN|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_mux4_1_IN|Mux25~1_combout\,
	datab => \U_mux4_1_IN|Mux9~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux17~0_combout\);

-- Location: LCCOMB_X95_Y57_N2
\U_mux4_1_IN|Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U_mux4_1_IN|Mux16~0_combout\ = (\address[0]~input_o\ & ((\U_mux4_1_IN|Mux24~1_combout\))) # (!\address[0]~input_o\ & (\U_mux4_1_IN|Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_mux4_1_IN|Mux8~1_combout\,
	datac => \U_mux4_1_IN|Mux24~1_combout\,
	datad => \address[0]~input_o\,
	combout => \U_mux4_1_IN|Mux16~0_combout\);

-- Location: M9K_X94_Y56_N0
\U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM_data:U_Ram1_data|altsyncram:altsyncram_component|altsyncram_j9q3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en1~1_combout\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \wr_en1~1_combout\,
	portadatain => \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U_Ram1_data|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X95_Y55_N24
\data_OUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~0_combout\ = (\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(0))) # (!\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(0),
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(0),
	datac => \address[1]~input_o\,
	combout => \data_OUT~0_combout\);

-- Location: LCCOMB_X95_Y55_N20
\data_OUT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~2_combout\ = (!\Equal4~0_combout\ & ((\address[0]~input_o\ & ((\data_OUT~0_combout\))) # (!\address[0]~input_o\ & (\data_OUT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \data_OUT~1_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~0_combout\,
	combout => \data_OUT~2_combout\);

-- Location: LCCOMB_X98_Y55_N10
\data_OUT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~4_combout\ = (\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(1))) # (!\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(1),
	datac => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(1),
	combout => \data_OUT~4_combout\);

-- Location: LCCOMB_X98_Y55_N24
\data_OUT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~3_combout\ = (\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(1))) # (!\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(1),
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(1),
	datac => \address[1]~input_o\,
	combout => \data_OUT~3_combout\);

-- Location: LCCOMB_X98_Y55_N20
\data_OUT~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~5_combout\ = (!\Equal4~0_combout\ & ((\address[0]~input_o\ & ((\data_OUT~3_combout\))) # (!\address[0]~input_o\ & (\data_OUT~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~4_combout\,
	datab => \data_OUT~3_combout\,
	datac => \address[0]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \data_OUT~5_combout\);

-- Location: LCCOMB_X101_Y56_N10
\data_OUT~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~7_combout\ = (\address[1]~input_o\ & ((\U_Ram2_data|altsyncram_component|auto_generated|q_b\(2)))) # (!\address[1]~input_o\ & (\U_Ram0_data|altsyncram_component|auto_generated|q_b\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(2),
	datac => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(2),
	datad => \address[1]~input_o\,
	combout => \data_OUT~7_combout\);

-- Location: LCCOMB_X101_Y56_N0
\data_OUT~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~6_combout\ = (\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(2))) # (!\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(2),
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(2),
	datad => \address[1]~input_o\,
	combout => \data_OUT~6_combout\);

-- Location: LCCOMB_X101_Y56_N12
\data_OUT~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~8_combout\ = (!\Equal4~0_combout\ & ((\address[0]~input_o\ & ((\data_OUT~6_combout\))) # (!\address[0]~input_o\ & (\data_OUT~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~7_combout\,
	datab => \data_OUT~6_combout\,
	datac => \address[0]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \data_OUT~8_combout\);

-- Location: LCCOMB_X95_Y56_N26
\data_OUT~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~10_combout\ = (\address[1]~input_o\ & ((\U_Ram2_data|altsyncram_component|auto_generated|q_b\(3)))) # (!\address[1]~input_o\ & (\U_Ram0_data|altsyncram_component|auto_generated|q_b\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(3),
	datac => \address[1]~input_o\,
	datad => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(3),
	combout => \data_OUT~10_combout\);

-- Location: LCCOMB_X95_Y56_N24
\data_OUT~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~9_combout\ = (\address[1]~input_o\ & ((\U_Ram3_data|altsyncram_component|auto_generated|q_b\(3)))) # (!\address[1]~input_o\ & (\U_Ram1_data|altsyncram_component|auto_generated|q_b\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(3),
	datab => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(3),
	datac => \address[1]~input_o\,
	combout => \data_OUT~9_combout\);

-- Location: LCCOMB_X95_Y56_N20
\data_OUT~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~11_combout\ = (!\Equal4~0_combout\ & ((\address[0]~input_o\ & ((\data_OUT~9_combout\))) # (!\address[0]~input_o\ & (\data_OUT~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \address[0]~input_o\,
	datac => \data_OUT~10_combout\,
	datad => \data_OUT~9_combout\,
	combout => \data_OUT~11_combout\);

-- Location: LCCOMB_X95_Y54_N10
\data_OUT~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~12_combout\ = (\address[1]~input_o\ & ((\U_Ram3_data|altsyncram_component|auto_generated|q_b\(4)))) # (!\address[1]~input_o\ & (\U_Ram1_data|altsyncram_component|auto_generated|q_b\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(4),
	datac => \address[1]~input_o\,
	datad => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(4),
	combout => \data_OUT~12_combout\);

-- Location: LCCOMB_X95_Y54_N20
\data_OUT~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~13_combout\ = (\address[1]~input_o\ & ((\U_Ram2_data|altsyncram_component|auto_generated|q_b\(4)))) # (!\address[1]~input_o\ & (\U_Ram0_data|altsyncram_component|auto_generated|q_b\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(4),
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(4),
	datac => \address[1]~input_o\,
	combout => \data_OUT~13_combout\);

-- Location: LCCOMB_X95_Y54_N22
\data_OUT~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~14_combout\ = (!\Equal4~0_combout\ & ((\address[0]~input_o\ & (\data_OUT~12_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \Equal4~0_combout\,
	datac => \data_OUT~12_combout\,
	datad => \data_OUT~13_combout\,
	combout => \data_OUT~14_combout\);

-- Location: LCCOMB_X95_Y55_N30
\data_OUT~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~15_combout\ = (\address[1]~input_o\ & ((\U_Ram3_data|altsyncram_component|auto_generated|q_b\(5)))) # (!\address[1]~input_o\ & (\U_Ram1_data|altsyncram_component|auto_generated|q_b\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(5),
	datac => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(5),
	combout => \data_OUT~15_combout\);

-- Location: LCCOMB_X95_Y55_N8
\data_OUT~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~16_combout\ = (\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(5))) # (!\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(5),
	datab => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(5),
	datac => \address[1]~input_o\,
	combout => \data_OUT~16_combout\);

-- Location: LCCOMB_X95_Y55_N26
\data_OUT~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~17_combout\ = (!\Equal4~0_combout\ & ((\address[0]~input_o\ & (\data_OUT~15_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~15_combout\,
	datab => \data_OUT~16_combout\,
	datac => \address[0]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \data_OUT~17_combout\);

-- Location: LCCOMB_X98_Y55_N30
\data_OUT~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~18_combout\ = (\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(6))) # (!\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(6),
	datac => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(6),
	combout => \data_OUT~18_combout\);

-- Location: LCCOMB_X98_Y55_N0
\data_OUT~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~19_combout\ = (\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(6))) # (!\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(6),
	datac => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(6),
	combout => \data_OUT~19_combout\);

-- Location: LCCOMB_X98_Y55_N2
\data_OUT~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~20_combout\ = (!\Equal4~0_combout\ & ((\address[0]~input_o\ & (\data_OUT~18_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~18_combout\,
	datab => \data_OUT~19_combout\,
	datac => \address[0]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \data_OUT~20_combout\);

-- Location: LCCOMB_X101_Y56_N6
\data_OUT~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~21_combout\ = (\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(7))) # (!\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(7),
	datac => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(7),
	datad => \address[1]~input_o\,
	combout => \data_OUT~21_combout\);

-- Location: LCCOMB_X101_Y56_N24
\data_OUT~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~22_combout\ = (\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(7))) # (!\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(7),
	datac => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(7),
	datad => \address[1]~input_o\,
	combout => \data_OUT~22_combout\);

-- Location: LCCOMB_X101_Y56_N26
\data_OUT~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~23_combout\ = (!\Equal4~0_combout\ & ((\address[0]~input_o\ & (\data_OUT~21_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~21_combout\,
	datab => \data_OUT~22_combout\,
	datac => \address[0]~input_o\,
	datad => \Equal4~0_combout\,
	combout => \data_OUT~23_combout\);

-- Location: LCCOMB_X95_Y55_N28
\data_OUT~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~24_combout\ = (\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(0)))) # (!\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(0),
	datac => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(0),
	combout => \data_OUT~24_combout\);

-- Location: LCCOMB_X95_Y55_N6
\data_OUT~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~25_combout\ = (!\control[1]~input_o\ & ((\address[0]~input_o\ & ((\data_OUT~24_combout\))) # (!\address[0]~input_o\ & (\data_OUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \data_OUT~0_combout\,
	datac => \control[1]~input_o\,
	datad => \data_OUT~24_combout\,
	combout => \data_OUT~25_combout\);

-- Location: LCCOMB_X98_Y55_N4
\data_OUT~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~26_combout\ = (\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(1)))) # (!\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(1),
	datac => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(1),
	combout => \data_OUT~26_combout\);

-- Location: LCCOMB_X98_Y55_N22
\data_OUT~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~27_combout\ = (!\control[1]~input_o\ & ((\address[0]~input_o\ & (\data_OUT~26_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control[1]~input_o\,
	datab => \data_OUT~26_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~3_combout\,
	combout => \data_OUT~27_combout\);

-- Location: LCCOMB_X101_Y56_N4
\data_OUT~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~28_combout\ = (\address[1]~input_o\ & (\U_Ram0_data|altsyncram_component|auto_generated|q_b\(2))) # (!\address[1]~input_o\ & ((\U_Ram2_data|altsyncram_component|auto_generated|q_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(2),
	datac => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(2),
	datad => \address[1]~input_o\,
	combout => \data_OUT~28_combout\);

-- Location: LCCOMB_X101_Y56_N22
\data_OUT~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~29_combout\ = (!\control[1]~input_o\ & ((\address[0]~input_o\ & ((\data_OUT~28_combout\))) # (!\address[0]~input_o\ & (\data_OUT~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \data_OUT~6_combout\,
	datac => \data_OUT~28_combout\,
	datad => \control[1]~input_o\,
	combout => \data_OUT~29_combout\);

-- Location: LCCOMB_X95_Y56_N22
\data_OUT~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~30_combout\ = (\address[1]~input_o\ & (\U_Ram0_data|altsyncram_component|auto_generated|q_b\(3))) # (!\address[1]~input_o\ & ((\U_Ram2_data|altsyncram_component|auto_generated|q_b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(3),
	datac => \address[1]~input_o\,
	datad => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(3),
	combout => \data_OUT~30_combout\);

-- Location: LCCOMB_X95_Y56_N8
\data_OUT~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~31_combout\ = (!\control[1]~input_o\ & ((\address[0]~input_o\ & (\data_OUT~30_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~30_combout\,
	datab => \data_OUT~9_combout\,
	datac => \address[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \data_OUT~31_combout\);

-- Location: LCCOMB_X95_Y54_N8
\data_OUT~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~32_combout\ = (\address[1]~input_o\ & (\U_Ram0_data|altsyncram_component|auto_generated|q_b\(4))) # (!\address[1]~input_o\ & ((\U_Ram2_data|altsyncram_component|auto_generated|q_b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(4),
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(4),
	datac => \address[1]~input_o\,
	combout => \data_OUT~32_combout\);

-- Location: LCCOMB_X95_Y54_N2
\data_OUT~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~33_combout\ = (!\control[1]~input_o\ & ((\address[0]~input_o\ & ((\data_OUT~32_combout\))) # (!\address[0]~input_o\ & (\data_OUT~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~12_combout\,
	datab => \control[1]~input_o\,
	datac => \data_OUT~32_combout\,
	datad => \address[0]~input_o\,
	combout => \data_OUT~33_combout\);

-- Location: LCCOMB_X95_Y55_N0
\data_OUT~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~34_combout\ = (\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(5)))) # (!\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(5),
	datab => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(5),
	datac => \address[1]~input_o\,
	combout => \data_OUT~34_combout\);

-- Location: LCCOMB_X95_Y55_N10
\data_OUT~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~35_combout\ = (!\control[1]~input_o\ & ((\address[0]~input_o\ & ((\data_OUT~34_combout\))) # (!\address[0]~input_o\ & (\data_OUT~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~15_combout\,
	datab => \control[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~34_combout\,
	combout => \data_OUT~35_combout\);

-- Location: LCCOMB_X98_Y55_N8
\data_OUT~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~36_combout\ = (\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(6)))) # (!\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(6),
	datac => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(6),
	combout => \data_OUT~36_combout\);

-- Location: LCCOMB_X98_Y55_N26
\data_OUT~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~37_combout\ = (!\control[1]~input_o\ & ((\address[0]~input_o\ & ((\data_OUT~36_combout\))) # (!\address[0]~input_o\ & (\data_OUT~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~18_combout\,
	datab => \data_OUT~36_combout\,
	datac => \address[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \data_OUT~37_combout\);

-- Location: LCCOMB_X101_Y56_N16
\data_OUT~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~38_combout\ = (\address[1]~input_o\ & ((\U_Ram0_data|altsyncram_component|auto_generated|q_b\(7)))) # (!\address[1]~input_o\ & (\U_Ram2_data|altsyncram_component|auto_generated|q_b\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ram2_data|altsyncram_component|auto_generated|q_b\(7),
	datac => \U_Ram0_data|altsyncram_component|auto_generated|q_b\(7),
	datad => \address[1]~input_o\,
	combout => \data_OUT~38_combout\);

-- Location: LCCOMB_X101_Y56_N18
\data_OUT~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~39_combout\ = (!\control[1]~input_o\ & ((\address[0]~input_o\ & ((\data_OUT~38_combout\))) # (!\address[0]~input_o\ & (\data_OUT~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~21_combout\,
	datab => \data_OUT~38_combout\,
	datac => \address[0]~input_o\,
	datad => \control[1]~input_o\,
	combout => \data_OUT~39_combout\);

-- Location: LCCOMB_X95_Y55_N12
\data_OUT~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~40_combout\ = (\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(0)))) # (!\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(0),
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(0),
	datac => \address[1]~input_o\,
	combout => \data_OUT~40_combout\);

-- Location: LCCOMB_X95_Y54_N4
\Equal4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\control[0]~input_o\) # (\control[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control[0]~input_o\,
	datac => \control[1]~input_o\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X95_Y55_N22
\data_OUT~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~41_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & (\data_OUT~40_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~40_combout\,
	datab => \Equal4~1_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~24_combout\,
	combout => \data_OUT~41_combout\);

-- Location: LCCOMB_X98_Y55_N28
\data_OUT~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~42_combout\ = (\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(1)))) # (!\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(1),
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(1),
	datac => \address[1]~input_o\,
	combout => \data_OUT~42_combout\);

-- Location: LCCOMB_X98_Y55_N6
\data_OUT~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~43_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & ((\data_OUT~42_combout\))) # (!\address[0]~input_o\ & (\data_OUT~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \address[0]~input_o\,
	datac => \data_OUT~26_combout\,
	datad => \data_OUT~42_combout\,
	combout => \data_OUT~43_combout\);

-- Location: LCCOMB_X101_Y56_N28
\data_OUT~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~44_combout\ = (\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(2)))) # (!\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(2),
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(2),
	datad => \address[1]~input_o\,
	combout => \data_OUT~44_combout\);

-- Location: LCCOMB_X101_Y56_N30
\data_OUT~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~45_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & ((\data_OUT~44_combout\))) # (!\address[0]~input_o\ & (\data_OUT~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \address[0]~input_o\,
	datac => \data_OUT~28_combout\,
	datad => \data_OUT~44_combout\,
	combout => \data_OUT~45_combout\);

-- Location: LCCOMB_X95_Y56_N10
\data_OUT~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~46_combout\ = (\address[1]~input_o\ & (\U_Ram1_data|altsyncram_component|auto_generated|q_b\(3))) # (!\address[1]~input_o\ & ((\U_Ram3_data|altsyncram_component|auto_generated|q_b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(3),
	datab => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(3),
	datac => \address[1]~input_o\,
	combout => \data_OUT~46_combout\);

-- Location: LCCOMB_X95_Y56_N4
\data_OUT~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~47_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & ((\data_OUT~46_combout\))) # (!\address[0]~input_o\ & (\data_OUT~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~30_combout\,
	datab => \Equal4~1_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~46_combout\,
	combout => \data_OUT~47_combout\);

-- Location: LCCOMB_X95_Y54_N6
\data_OUT~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~48_combout\ = (\address[1]~input_o\ & (\U_Ram1_data|altsyncram_component|auto_generated|q_b\(4))) # (!\address[1]~input_o\ & ((\U_Ram3_data|altsyncram_component|auto_generated|q_b\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(4),
	datac => \address[1]~input_o\,
	datad => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(4),
	combout => \data_OUT~48_combout\);

-- Location: LCCOMB_X95_Y54_N0
\data_OUT~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~49_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & (\data_OUT~48_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~48_combout\,
	datab => \Equal4~1_combout\,
	datac => \data_OUT~32_combout\,
	datad => \address[0]~input_o\,
	combout => \data_OUT~49_combout\);

-- Location: LCCOMB_X95_Y55_N16
\data_OUT~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~50_combout\ = (\address[1]~input_o\ & (\U_Ram1_data|altsyncram_component|auto_generated|q_b\(5))) # (!\address[1]~input_o\ & ((\U_Ram3_data|altsyncram_component|auto_generated|q_b\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(5),
	datac => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(5),
	combout => \data_OUT~50_combout\);

-- Location: LCCOMB_X95_Y55_N2
\data_OUT~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~51_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & (\data_OUT~50_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \data_OUT~50_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~34_combout\,
	combout => \data_OUT~51_combout\);

-- Location: LCCOMB_X98_Y55_N16
\data_OUT~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~52_combout\ = (\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(6)))) # (!\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(6),
	datac => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(6),
	combout => \data_OUT~52_combout\);

-- Location: LCCOMB_X98_Y55_N18
\data_OUT~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~53_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & ((\data_OUT~52_combout\))) # (!\address[0]~input_o\ & (\data_OUT~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \address[0]~input_o\,
	datac => \data_OUT~36_combout\,
	datad => \data_OUT~52_combout\,
	combout => \data_OUT~53_combout\);

-- Location: LCCOMB_X101_Y56_N8
\data_OUT~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~54_combout\ = (\address[1]~input_o\ & ((\U_Ram1_data|altsyncram_component|auto_generated|q_b\(7)))) # (!\address[1]~input_o\ & (\U_Ram3_data|altsyncram_component|auto_generated|q_b\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_Ram3_data|altsyncram_component|auto_generated|q_b\(7),
	datac => \U_Ram1_data|altsyncram_component|auto_generated|q_b\(7),
	datad => \address[1]~input_o\,
	combout => \data_OUT~54_combout\);

-- Location: LCCOMB_X101_Y56_N2
\data_OUT~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~55_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & (\data_OUT~54_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \address[0]~input_o\,
	datac => \data_OUT~54_combout\,
	datad => \data_OUT~38_combout\,
	combout => \data_OUT~55_combout\);

-- Location: LCCOMB_X95_Y55_N4
\data_OUT~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~56_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & ((\data_OUT~1_combout\))) # (!\address[0]~input_o\ & (\data_OUT~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~40_combout\,
	datab => \Equal4~1_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~1_combout\,
	combout => \data_OUT~56_combout\);

-- Location: LCCOMB_X98_Y55_N12
\data_OUT~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~57_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & (\data_OUT~4_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~4_combout\,
	datab => \data_OUT~42_combout\,
	datac => \address[0]~input_o\,
	datad => \Equal4~1_combout\,
	combout => \data_OUT~57_combout\);

-- Location: LCCOMB_X101_Y56_N20
\data_OUT~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~58_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & ((\data_OUT~7_combout\))) # (!\address[0]~input_o\ & (\data_OUT~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \data_OUT~44_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~7_combout\,
	combout => \data_OUT~58_combout\);

-- Location: LCCOMB_X95_Y56_N6
\data_OUT~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~59_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & (\data_OUT~10_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~10_combout\,
	datab => \Equal4~1_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~46_combout\,
	combout => \data_OUT~59_combout\);

-- Location: LCCOMB_X95_Y54_N26
\data_OUT~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~60_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & ((\data_OUT~13_combout\))) # (!\address[0]~input_o\ & (\data_OUT~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_OUT~48_combout\,
	datab => \data_OUT~13_combout\,
	datac => \Equal4~1_combout\,
	datad => \address[0]~input_o\,
	combout => \data_OUT~60_combout\);

-- Location: LCCOMB_X95_Y55_N14
\data_OUT~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~61_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & (\data_OUT~16_combout\)) # (!\address[0]~input_o\ & ((\data_OUT~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \data_OUT~16_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~50_combout\,
	combout => \data_OUT~61_combout\);

-- Location: LCCOMB_X98_Y55_N14
\data_OUT~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~62_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & ((\data_OUT~19_combout\))) # (!\address[0]~input_o\ & (\data_OUT~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \data_OUT~52_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~19_combout\,
	combout => \data_OUT~62_combout\);

-- Location: LCCOMB_X101_Y56_N14
\data_OUT~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data_OUT~63_combout\ = (!\Equal4~1_combout\ & ((\address[0]~input_o\ & ((\data_OUT~22_combout\))) # (!\address[0]~input_o\ & (\data_OUT~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \data_OUT~54_combout\,
	datac => \address[0]~input_o\,
	datad => \data_OUT~22_combout\,
	combout => \data_OUT~63_combout\);

ww_data_OUT(0) <= \data_OUT[0]~output_o\;

ww_data_OUT(1) <= \data_OUT[1]~output_o\;

ww_data_OUT(2) <= \data_OUT[2]~output_o\;

ww_data_OUT(3) <= \data_OUT[3]~output_o\;

ww_data_OUT(4) <= \data_OUT[4]~output_o\;

ww_data_OUT(5) <= \data_OUT[5]~output_o\;

ww_data_OUT(6) <= \data_OUT[6]~output_o\;

ww_data_OUT(7) <= \data_OUT[7]~output_o\;

ww_data_OUT(8) <= \data_OUT[8]~output_o\;

ww_data_OUT(9) <= \data_OUT[9]~output_o\;

ww_data_OUT(10) <= \data_OUT[10]~output_o\;

ww_data_OUT(11) <= \data_OUT[11]~output_o\;

ww_data_OUT(12) <= \data_OUT[12]~output_o\;

ww_data_OUT(13) <= \data_OUT[13]~output_o\;

ww_data_OUT(14) <= \data_OUT[14]~output_o\;

ww_data_OUT(15) <= \data_OUT[15]~output_o\;

ww_data_OUT(16) <= \data_OUT[16]~output_o\;

ww_data_OUT(17) <= \data_OUT[17]~output_o\;

ww_data_OUT(18) <= \data_OUT[18]~output_o\;

ww_data_OUT(19) <= \data_OUT[19]~output_o\;

ww_data_OUT(20) <= \data_OUT[20]~output_o\;

ww_data_OUT(21) <= \data_OUT[21]~output_o\;

ww_data_OUT(22) <= \data_OUT[22]~output_o\;

ww_data_OUT(23) <= \data_OUT[23]~output_o\;

ww_data_OUT(24) <= \data_OUT[24]~output_o\;

ww_data_OUT(25) <= \data_OUT[25]~output_o\;

ww_data_OUT(26) <= \data_OUT[26]~output_o\;

ww_data_OUT(27) <= \data_OUT[27]~output_o\;

ww_data_OUT(28) <= \data_OUT[28]~output_o\;

ww_data_OUT(29) <= \data_OUT[29]~output_o\;

ww_data_OUT(30) <= \data_OUT[30]~output_o\;

ww_data_OUT(31) <= \data_OUT[31]~output_o\;
END structure;


