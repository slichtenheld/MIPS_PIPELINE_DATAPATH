library ieee;
use ieee.std_logic_1164.all;

use work.mipsLib.all;

entity controller is
	port (
		clk, rst 	: in std_logic;
		instr31_26 	: in std_logic_vector(5 downto 0);
		ALU_OP		: out std_logic_vector(2 downto 0);
		MemToReg	: out std_logic;
		memWrite 	: out std_logic;
		memCtrl 	: out std_logic_vector(1 downto 0);
		ALUSELA		: out std_logic;
		ALUSELB		: out std_logic;
		ZSextend	: out std_logic;
		regWrite	: out std_logic;
		regDst		: out std_logic;
		PCWr 		: out std_logic;
		PCWrCond 	: out std_logic;
		PCSrc 		: out std_logic;
		brWr 		: out std_logic;
		irWr 		: out std_logic;
		IorD 		: out std_logic;
		--
		regDst_r31 	: out std_logic;
		data_jal   	: out std_logic;
		lui 		: out std_logic;
		jump 		: out std_logic;
		branch 		: out std_logic_vector(1 downto 0)
	);

architecture BHV of controller is 

	type STATE_TYPE is (iFetch, rFetchDecode,
						brComplete,
						rtypeExec, rtypeStore,
						rImmExec, rImmStore,
						addrCalc,
						swMem,
						lw,
						lwStore,
						jump,
						jumpLink
						);
	signal state, next_state : STATE_TYPE;

begin

  process(clk, rst)
  begin
    if (rst = '1') then
      state <= iFetch;
    elsif (clk'event and clk = '1') then
      state <= next_state;
    end if;
  end process;


process (instr31_26)
	begin

	next_state 	<= state; --in case of non-defined case
	ALU_OP 		<= "---";
	MemToReg 	<= '0';
	memWrite 	<= '0';
	memCtrl 	<= "00";
	ALUSELA		<= '0';
	ALUSELB		<= '0';
	ZSextend	<= '0';
	regWrite	<= '0';
	regDst		<= '0';
	PCWr 		<= '0';
	PCWrCond 	<= '0';
	PCSrc		<= '0';
	brWr 		<= '0';
	irWr 		<= '0';
	IorD 		<= '0';

	case state is 
		when iFetch =>
			ALUSELA <= PC;
			ALUSELB <= four;
			ALU_OP <= addOp;
			PCWr <= '1';

			PCWrCond <= '-';
			regDst <= '-';
			MemToReg <= '-';

			next_state <= rFetchDecode;

		when rFetchDecode =>
			ALUSELA <= PC;
			ALUSELB <= ExtOut;
			ALU_OP <= addOp;
			brWr <= '1';
			ZSextend <= '1';

			regDst <= '-';
			PCSrc <= '-';
			IorD <= '-';
			MemToReg <= '-';

			case instr31_26 is
				when i_rOp =>
					next_state <= rtypeExec;
				when i_addi =>
					next_state <= rImmExec;
				when i_addiu => 
					next_state <= rImmExec;
				when i_andi =>
					next_state <= rImmExec;
				when i_beq =>
					next_state <= brComplete;
				when i_bne => 		--CHANGE TO XOR
					next_state <= brComplete;
				when i_j =>
					next_state <= jump;
				when i_jal =>
					next_state <= jumpLink;
				when i_lbu =>
					next_state <= lw;
				when i_lhu =>
					next_state <= lw;
				when i_lui => --CHECK THIS ONE
					next_state <= lw;
				when i_lw =>
					next_state <= lw;
				when i_ori =>
					next_state <= rImmExec;
				when i_slti =>
					next_state <= rImmExec;
				when i_sltiu =>
					next_state <= rImmExec;
				when i_sb =>
					next_state <= swMem,
				when i_sh =>
					next_state <= swMem,
				when i_sw =>
					next_state <= swMem,
				when others => 
					next_state <= state;

		when rtypeExec =>
			ALUSELA <= BUS_A;
			ALUSELB <= BUS_B;
			ALU_OP  <= rOp;
			regDst <= rd;

			PCSrc <= '-';
			IorD <= '-';
			MemToReg <= '-';
			ZSextend <= '-';

			next_state <= rtypeStore;

		when rtypeStore =>
			ALUSELA <= BUS_A;
			ALUSELB <= BUS_B;
			regWrite <= '1';
			regDst <= rd;

			IorD <= '-';
			MemToReg <= '-';
			ZSextend <= '-';

			next_state <= iFetch;

		when rImmExec =>
			ALUSELA <= BUS_A;
			ALUSELB <= ExtOut;
			regDst <= rt;

			PCSrc <= '-';
			IorD <= '-';
			MemToReg <= '-';

			case instr31_26 is
			when i_addi =>
				ALU_OP <= addOp;
				ZSextend <= '1';
			when i_addiu =>
				ALU_OP <= addOp;
				ZSextend <= '0';
			when i_andi =>
				ALU_OP <= andOp;
				ZSextend <= '0';
			when i_ori =>
				ALU_OP <= orOp;
				ZSextend <= '0';
			when i_slti =>
				ALU_OP <= sltOp;
				ZSextend <= '1';
			when i_sltiu =>
				ALU_OP <= sltOp;
				ZSextend <= '0';
			when others => 
		end case;

		when rImmStore =>
			ALUSELA <= BUS_A;
			ALUSELB <= ExtOut;
			regDst <= rt;

			IorD <= '-';
			MemToReg <= '-';

		case instr31_26 is
			when i_rOp =>
				ALU_OP <= rOp;
			when i_addi =>
				ALU_OP <= addOp;
			when i_addiu =>
				ALU_OP <= addOp;
			when i_andi =>
				ALU_OP <= andOp;
			when i_beq =>
				ALU_OP <= subOp; --CHANGE TO XOR
			when i_bne => 		--CHANGE TO XOR
				ALU_OP <= subOp; 
			when i_j =>
				ALU_OP <= "---";
			when i_jal =>
				ALU_OP <= "---";
			when i_lbu =>
				ALU_OP <= addOp;
				memCtrl <= ramByte;
			when i_lhu =>
				ALU_OP <= addOp;
				memCtrl <= ramHalf;
			when i_lui => --CHECK THIS ONE
				ALU_OP <= "---";
			when i_lw =>
				ALU_OP <= addOp;
				memCtrl <= ramWord;
			when i_ori =>
				ALU_OP <= orOp;
			when i_slti =>
				ALU_OP <= sltOp;
			when i_sltiu =>
				ALU_OP <= sltOp;
			when i_sb =>
				ALU_OP <= addOp;
				memCtrl <= ramByte;
			when i_sh =>
				ALU_OP <= addOp;
				memCtrl <= ramHalf;
			when i_sw =>
				ALU_OP <= addOp;
				memCtrl <= ramWord;
			when others => 

		end case;

	end process;