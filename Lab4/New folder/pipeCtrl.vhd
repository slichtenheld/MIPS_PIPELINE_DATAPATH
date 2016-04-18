library ieee;
use ieee.std_logic_1164.all;

use work.mipsLib.all;


entity pipeCtrl is
	port (
		opcode 	: in std_logic_vector(5 downto 0);
		funct 	: in std_logic_vector (5 downto 0);
		comparator_out : in std_logic;
		nop 	: in std_logic;

		--all
		valid 	: out std_logic;

		--IF
		PC_SEL 	: out std_logic_vector(1 downto 0);

		--ID
		ZSextend: out std_logic;
		jal_sel : out std_logic;
		regDst  : out std_logic_vector(1 downto 0);

		--EX
		ALUSRC0: out std_logic_vector(1 downto 0);
		ALUSRC1: out std_logic_vector(1 downto 0);
		ALU_OP : out std_logic_vector(2 downto 0);

		--MEM
		memWr_en: out std_logic;
		memCtrl : out std_logic_vector(1 downto 0);
		--WB
		regWrite: out std_logic;
		memToReg: out std_logic
	);
end pipeCtrl;


architecture BHV of pipeCtrl is

begin
	
	process(opcode, comparator_out, funct, nop)

	begin
	valid <= '1';
	PC_SEL <= "00";
	ZSextend <= '1';
	jal_sel <= '0';
	ALUSRC0 <= "--";
	ALUSRC1 <= "--";
	regDst <= "--";
	ALU_OP <= "---";
	memWr_en <= '0';
	memCtrl <="--";
	regWrite <= '0';
	memToReg <= '-';

		if (nop = '0') then
		regWrite <= '0';
		memWr_en <= '0';

		else 
			case opcode is
				when i_rOp =>
					ALU_OP <= rOp;
					memToReg <= '0';
					ALUSrc0 <= "00";
					ALUSRC1 <= "00";
					regWrite <= '1';
					regDst <= "00";

					if (funct = JR_F) then 
						valid <= '0';
						regWrite <= '0';
						PC_SEL <= "11";

						ALU_OP <= "---";
						memToReg <= '-';
						ALUSRC0 <= "--";
						ALUSRC1 <= "--";
						regDst <= "--";
					end if;

				when i_addi =>
					ALU_OP <= addOp;
					memToReg <= '0';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					ZSextend <= '1';
					regWrite <= '1';
					regDst <= "01";
				when i_addiu =>
					ALU_OP <= addOp;
					memToReg <= '0';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					ZSextend <= '0';
					regWrite <= '1';
					regDst <= "01";
				when i_andi =>
					ALU_OP <= andOp;
					memToReg <= '0';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					ZSextend <= '0';
					regWrite <= '1';
					regDst <= "01";

				when i_beq =>
					regWrite <= '0';
					
					if (comparator_out = '1') then
						PC_SEL <= "01";
						valid <= '0';
					end if; 

				when i_bne => --CHANGE TO XOR
					regWrite <= '0';

					if (comparator_out = '0') then
						PC_SEL <= "01";
						valid <= '0';
					end if;  

				when i_j =>
					regWrite <= '0';
					valid <= '0';
					PC_SEL <= "10";

				when i_jal =>
					regWrite <= '1';
					valid <= '0';
					regDst <= "10"; --needed to load in r31
					memToReg <= '0';

					PC_SEL <= "10";
					jal_sel <= '1';

				when i_lbu =>
					ALU_OP <= addOp;
					memToReg <= '1';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					regWrite <= '1';
					ZSextend <= '1';
					regDst <= "01";
					memCtrl <= ramByte;

				when i_lhu =>
					ALU_OP <= addOp;
					memToReg <= '1';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					regWrite <= '1';
					ZSextend <= '1';
					regDst <= "01";
					memCtrl <= ramHalf;
					
				when i_lui => --CHECK THIS ONE
					ALU_OP <= luiOp;
					memToReg <= '0';
					ALUSrc0 <= "--";
					ALUSRC1 <= "01";
					regWrite <= '1';
					ZSextend <= '-';
					regDst <= "01";

				when i_lw =>
					ALU_OP <= addOp;
					memToReg <= '1';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					regWrite <= '1';
					ZSextend <= '1';
					regDst <= "01";
					memCtrl <= ramWord;

				when i_ori =>
					ALU_OP <= orOp;
					memToReg <= '0';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					regWrite <= '1';
					ZSextend <= '0';
					regDst <= "01";
					--
				when i_slti =>
					ALU_OP <= sltOp;
					memToReg <= '0';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					regWrite <= '1';
					ZSextend <= '1';
					regDst <= "01";
					--
				when i_sltiu =>
					ALU_OP <= sltuOp;
					memToReg <= '0';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					regWrite <= '1';
					ZSextend <= '0';
					regDst <= "01";
					--
				when i_sb =>
					ALU_OP <= addOp;
					regWrite <= '0';
					memToReg <= '-';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					
					ZSextend <= '1';
					regDst <= "--";
					--
					memWr_en <= '1';
					memCtrl <= ramByte;
				when i_sh =>
					ALU_OP <= addOp;
					regWrite <= '0';
					memToReg <= '-';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					
					ZSextend <= '1';
					regDst <= "--";
					--
					memWr_en <= '1';
					memCtrl <= ramHalf;
				when i_sw =>
					ALU_OP <= addOp;
					regWrite <= '0';
					memToReg <= '-';
					ALUSrc0 <= "00";
					ALUSRC1 <= "01";
					
					ZSextend <= '1';
					regDst <= "--";
					--
					memWr_en <= '1';
					memCtrl <= ramWord;
				when others => 

			end case;
		end if;

	end process;


end BHV;

