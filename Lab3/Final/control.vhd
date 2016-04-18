library ieee;
use ieee.std_logic_1164.all;

use work.mipsLib.all;

--add 
entity control is 
	port (
		instr31_26	: in std_logic_vector(5 downto 0);
		ALU_OP		: out std_logic_vector(2 downto 0);
		MemToReg	: out std_logic;
		memWrite 	: out std_logic;
		memCtrl 	: out std_logic_vector(1 downto 0);
		ALUSrc		: out std_logic;
		ZSextend	: out std_logic;
		regWrite	: out std_logic;
		regDst		: out std_logic;
		--
		regDst_r31 	: out std_logic;
		data_jal   	: out std_logic;
		lui 		: out std_logic;
		jump 		: out std_logic;
		branch 		: out std_logic_vector(1 downto 0)
	);
end control;

architecture BHV of control is

begin

	process (instr31_26)
	begin
	
		ALU_OP <= "---";
		MemToReg <= '-';
		memWrite <= '0';
		ALUSrc <= '-';
		ZSextend <= '-';
		regWrite <= '-';
		regDst <= '-';
		--
		regDst_r31 <= '-';
		data_jal <= '-';
		jump <= '-';
		branch <= "--";
		lui <= '0';
		memCtrl <= "--";

		case instr31_26 is
			when i_rOp =>
				ALU_OP <= rOp;
				MemToReg <= '0';
				ALUSrc <= '0';
				regWrite <= '1';
				regDst <= '1';
				ZSextend <= '-';
				--
				regDst_r31 <= '0';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
			when i_addi =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				ZSextend <= '1';
				regWrite <= '1';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
			when i_addiu =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '0';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
			when i_andi =>
				ALU_OP <= andOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '0';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
			when i_beq =>
				ALU_OP <= subOp; --CHANGE TO XOR
				MemToReg <= '0';
				ALUSrc <= '0';
				regWrite <= '0';
				ZSextend <= '-';
				regDst <= '-';
				--
				regDst_r31 <= '-';
				data_jal <= '-';
				jump <= '0';
				branch <= "11";
			when i_bne => --CHANGE TO XOR
				ALU_OP <= subOp; 
				MemToReg <= '0';
				ALUSrc <= '0';
				regWrite <= '0';
				ZSextend <= '-';
				regDst <= '-';
				--
				regDst_r31 <= '-';
				data_jal <= '-';
				jump <= '0';
				branch <= "10";
			when i_j =>
				ALU_OP <= "---";
				MemToReg <= '-';
				ALUSrc <= '-';
				regWrite <= '0';
				ZSextend <= '-';
				regDst <= '-';
				--
				regDst_r31 <= '-';
				data_jal <= '-';
				jump <= '1';
				branch <= "--";
			when i_jal =>
				ALU_OP <= "---";
				MemToReg <= '-';
				ALUSrc <= '-';
				regWrite <= '1';
				ZSextend <= '-';
				regDst <= '1'; --needed to load in r31
				--
				regDst_r31 <= '1';
				data_jal <= '1';
				jump <= '1';
				branch <= "--";
			when i_lbu =>
				ALU_OP <= addOp;
				MemToReg <= '1';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '1';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
				memCtrl <= ramByte;
			when i_lhu =>
				ALU_OP <= addOp;
				MemToReg <= '1';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '1';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
				memCtrl <= ramHalf;
			when i_lui => --CHECK THIS ONE
				ALU_OP <= "---";
				MemToReg <= '-';
				ALUSrc <= '-';
				regWrite <= '1';
				ZSextend <= '-';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '-';
				jump <= '0';
				branch <= "0-";
				lui <= '1'; --ADDED
			when i_lw =>
				ALU_OP <= addOp;
				MemToReg <= '1';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '1';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
				memCtrl <= ramWord;
			when i_ori =>
				ALU_OP <= orOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '0';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
			when i_slti =>
				ALU_OP <= sltOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '1';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
			when i_sltiu =>
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '0';
				regDst <= '0';
				--
				regDst_r31 <= '-';
				data_jal <= '0';
				jump <= '0';
				branch <= "0-";
			when i_sb =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '0';
				ZSextend <= '1';
				regDst <= '0';
				--
				memWrite <= '1';
				regDst_r31 <= '-';
				data_jal <= '-';
				jump <= '0';
				branch <= "0-";
				memCtrl <= ramByte;
			when i_sh =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '0';
				ZSextend <= '1';
				regDst <= '0';
				--
				memWrite <= '1';
				regDst_r31 <= '-';
				data_jal <= '-';
				jump <= '0';
				branch <= "0-";
				memCtrl <= ramHalf;
			when i_sw =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '0';
				ZSextend <= '1';
				regDst <= '0';
				--
				memWrite <= '1';
				regDst_r31 <= '-';
				data_jal <= '-';
				jump <= '0';
				branch <= "0-";
				memCtrl <= ramWord;
			when others => 

		end case;

	end process;



end BHV;