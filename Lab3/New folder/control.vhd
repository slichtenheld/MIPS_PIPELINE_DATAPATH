library ieee;
use ieee.std_logic_1164.all;

use work.mipsLib.all;

--add 
entity control is 
	port (
		instr31_26	: in std_logic_vector(5 downto 0);
		ALU_OP		: out std_logic_vector(2 downto 0);
		MemToReg	: out std_logic;
		ALUSrc		: out std_logic;
		ZSextend	: out std_logic;
		regWrite	: out std_logic;
		regDst		: out std_logic
	);
end control;

architecture BHV of control is

begin

	process (instr31_26)
	begin
	
		ALU_OP <= "---";
		MemToReg <= '-';
		ALUSrc <= '-';
		ZSextend <= '-';
		regWrite <= '-';
		regDst <= '-';

		case instr31_26 is
			when i_rOp =>
				ALU_OP <= rOp;
				MemToReg <= '0';
				ALUSrc <= '0';
				regWrite <= '1';
				regDst <= '1';
				ZSextend <= '-';
			when i_addi =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				ZSextend <= '1';
				regWrite <= '1';
				regDst <= '0';
			when i_addiu =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '0';
				regDst <= '0';
			when i_andi =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '0';
				regDst <= '0';
			when i_beq =>
				ALU_OP <= subOp;
				MemToReg <= '0';
				ALUSrc <= '0';
				regWrite <= '1';
				ZSextend <= '1';
				regDst <= '-';
			when i_bne =>
				ALU_OP <= subOp;
				MemToReg <= '0';
				ALUSrc <= '0';
				regWrite <= '0';
				ZSextend <= '1';
				regDst <= '-';
			when i_j =>
				ALU_OP <= "---";
				MemToReg <= '0';
				ALUSrc <= '-';
				regWrite <= '0';
				ZSextend <= '-';
				regDst <= '-';
			when i_jal =>
				ALU_OP <= "---";
				MemToReg <= '0';
				ALUSrc <= '-';
				regWrite <= '0';
				ZSextend <= '-';
				regDst <= '-';
			when i_lbu =>
				ALU_OP <= addOp;
				MemToReg <= '1';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '1';
				regDst <= '0';
			when i_lhu =>
				ALU_OP <= addOp;
				MemToReg <= '1';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '1';
				regDst <= '0';
			when i_lui =>
				ALU_OP <= "---";
				MemToReg <= '1';
				ALUSrc <= '-';
				regWrite <= '1';
				ZSextend <= '-';
				regDst <= '0';
			when i_lw =>
				ALU_OP <= addOp;
				MemToReg <= '1';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '1';
				regDst <= '0';
			when i_ori =>
				ALU_OP <= orOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '0';
				regDst <= '0';
			when i_slti =>
				ALU_OP <= sltOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '1';
				regDst <= '0';
			when i_sltiu =>
				ALU_OP <= sltOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '1';
				ZSextend <= '0';
				regDst <= '0';
			when i_sb =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '0';
				ZSextend <= '1';
				regDst <= '0';
			when i_sh =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '0';
				ZSextend <= '1';
				regDst <= '0';
			when i_sw =>
				ALU_OP <= addOp;
				MemToReg <= '0';
				ALUSrc <= '1';
				regWrite <= '0';
				ZSextend <= '1';
				regDst <= '0';
			when others => 

		end case;

	end process;



end BHV;