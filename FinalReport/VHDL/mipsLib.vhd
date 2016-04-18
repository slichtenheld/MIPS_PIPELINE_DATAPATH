
-- Samuel Lichtenheld
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;

package mipsLib is

--ALU controls
	constant C_ADD	: std_logic_vector(3 downto 0) := "0010";
	constant C_SUB	: std_logic_vector(3 downto 0) := "0110";
	constant C_AND	: std_logic_vector(3 downto 0) := "0000";
	constant C_OR	: std_logic_vector(3 downto 0) := "0001";
	constant C_NOR	: std_logic_vector(3 downto 0) := "1100";
	constant C_SLT	: std_logic_vector(3 downto 0) := "0111";
	constant C_SLTU	: std_logic_vector(3 downto 0) := "1111";
	constant C_SHL	: std_logic_vector(3 downto 0) := "0011";
	constant C_LUI 	: std_logic_vector(3 downto 0) := "0100";
	constant C_NOP 	: std_logic_vector(3 downto 0) := "1000";

--Control to ALUcontrol
	constant rOp	: std_logic_vector(2 downto 0) := "000";
	constant addOp	: std_logic_vector(2 downto 0) := "001";
	constant subOp	: std_logic_vector(2 downto 0) := "010";
	constant andOp	: std_logic_vector(2 downto 0) := "011";
	constant orOp	: std_logic_vector(2 downto 0) := "100";
	constant sltOp 	: std_logic_vector(2 downto 0) := "101";
	constant sltuOp	: std_logic_vector(2 downto 0) := "110";
	constant luiOp	: std_logic_vector(2 downto 0) := "111";

--FUNCT
	constant ADD_F 	: std_logic_vector(5 downto 0) := "100000";
	constant ADDU_F	: std_logic_vector(5 downto 0) := "100001";
	constant AND_F	: std_logic_vector(5 downto 0) := "100100";
	constant JR_F	: std_logic_vector(5 downto 0) := "001000";
	constant NOR_F	: std_logic_vector(5 downto 0) := "100111";
	constant OR_F	: std_logic_vector(5 downto 0) := "100101";
	constant SLT_F	: std_logic_vector(5 downto 0) := "101010";
	constant SLTU_F	: std_logic_vector(5 downto 0) := "101011";
	constant SLL_F	: std_logic_vector(5 downto 0) := "000000";
	constant SRL_F	: std_logic_vector(5 downto 0) := "000010";
	constant SUB_F	: std_logic_vector(5 downto 0) := "100010";
	constant SUBU_F	: std_logic_vector(5 downto 0) := "100011";

--INSTR(31 downto 26)
	constant i_rOp 	: std_logic_vector(5 downto 0) := "000000";
	constant i_addi : std_logic_vector(5 downto 0) := "001000";
	constant i_addiu: std_logic_vector(5 downto 0) := "001001";
	constant i_andi	: std_logic_vector(5 downto 0) := "001100";
	constant i_beq 	: std_logic_vector(5 downto 0) := "000100";
	constant i_bne 	: std_logic_vector(5 downto 0) := "000101";
	constant i_j 	: std_logic_vector(5 downto 0) := "000010";
	constant i_jal 	: std_logic_vector(5 downto 0) := "000011";
	constant i_lbu 	: std_logic_vector(5 downto 0) := "100100";
	constant i_lhu 	: std_logic_vector(5 downto 0) := "100101";
	constant i_lui 	: std_logic_vector(5 downto 0) := "001111";
	constant i_lw 	: std_logic_vector(5 downto 0) := "100011";
	constant i_ori 	: std_logic_vector(5 downto 0) := "001101";
	constant i_slti	: std_logic_vector(5 downto 0) := "001010";
	constant i_sltiu: std_logic_vector(5 downto 0) := "001011";
	constant i_sb 	: std_logic_vector(5 downto 0) := "101000";
	constant i_sh 	: std_logic_vector(5 downto 0) := "101001";
	constant i_sw 	: std_logic_vector(5 downto 0) := "101011";

--REGISTERS
	constant r_0	: std_logic_vector(4 downto 0) := "00000";
	constant r_1	: std_logic_vector(4 downto 0) := "00001";
	constant r_2	: std_logic_vector(4 downto 0) := "00010";
	constant r_3	: std_logic_vector(4 downto 0) := "00011";
	constant r_4	: std_logic_vector(4 downto 0) := "00100";
	constant r_5	: std_logic_vector(4 downto 0) := "00101";
	constant r_6	: std_logic_vector(4 downto 0) := "00110";
	constant r_7	: std_logic_vector(4 downto 0) := "00111";
	constant r_8	: std_logic_vector(4 downto 0) := "01000";
	constant r_9	: std_logic_vector(4 downto 0) := "01001";
	constant r_10	: std_logic_vector(4 downto 0) := "01010";
	constant r_11	: std_logic_vector(4 downto 0) := "01011";
	constant r_12	: std_logic_vector(4 downto 0) := "01100";
	constant r_13	: std_logic_vector(4 downto 0) := "01101";
	constant r_14	: std_logic_vector(4 downto 0) := "01110";
	constant r_15	: std_logic_vector(4 downto 0) := "01111";
	constant r_16	: std_logic_vector(4 downto 0) := "10000";
	constant r_17	: std_logic_vector(4 downto 0) := "10001";
	constant r_18	: std_logic_vector(4 downto 0) := "10010";
	constant r_19	: std_logic_vector(4 downto 0) := "10011";
	constant r_20	: std_logic_vector(4 downto 0) := "10100";
	constant r_21	: std_logic_vector(4 downto 0) := "10101";
	constant r_22	: std_logic_vector(4 downto 0) := "10110";
	constant r_23	: std_logic_vector(4 downto 0) := "10111";
	constant r_24	: std_logic_vector(4 downto 0) := "11000";
	constant r_25	: std_logic_vector(4 downto 0) := "11001";
	constant r_26	: std_logic_vector(4 downto 0) := "11010";
	constant r_27	: std_logic_vector(4 downto 0) := "11011";
	constant r_28	: std_logic_vector(4 downto 0) := "11100";
	constant r_29	: std_logic_vector(4 downto 0) := "11101";
	constant r_30	: std_logic_vector(4 downto 0) := "11110";
	constant r_31	: std_logic_vector(4 downto 0) := "11111";

	constant ramWord	: std_logic_vector(1 downto 0) := "00";
	constant ramHalf	: std_logic_vector(1 downto 0) := "01";
	constant ramByte	: std_logic_vector(1 downto 0) := "10"; 

	constant PC 		: std_logic := '0';
	constant BUS_A		: std_logic := '1';

	constant rt 		: std_logic := '0';
	constant rd			: std_logic := '1';

	constant four 		: std_logic_vector(1 downto 0) := "00";
	constant BUS_B 		: std_logic_vector(1 downto 0) := "00";
	constant ExtOut		: std_logic_vector(1 downto 0) := "00";
	constant SS2Out		: std_logic_vector(1 downto 0) := "00";


end mipsLib;
	