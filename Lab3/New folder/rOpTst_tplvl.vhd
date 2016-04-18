

library ieee;
use ieee.std_logic_1164.all;

entity rOpTst_tplvl is
	port (
		clk, rst 	: in std_logic;
		instr		: in std_logic_vector(31 downto 0)
	);
end rOpTst_tplvl;

architecture STR of rOpTst_tplvl is

	signal ALU_OP 	: std_logic_vector (2 downto 0);
	signal MemToReg : std_logic;
	signal ALUSrc 	: std_logic;
	signal ZSextend	: std_logic;
	signal regWrite	: std_logic;
	signal regDst 	: std_logic;

	signal rr0_data	: std_logic_vector(31 downto 0);
	signal rr1_data : std_logic_vector(31 downto 0);
	signal alu_res 	: std_logic_vector(31 downto 0);

	signal extenderOut: std_logic_vector(31 downto 0);
	signal regDstOut	: std_logic_vector(4 downto 0);
	signal MemToRegOut	: std_logic_vector(31 downto 0);
	signal ALUSrcOut	: std_logic_vector(31 downto 0);

	signal C_Flag	: std_logic;
	signal Z_Flag 	: std_logic;
	signal S_Flag 	: std_logic;
	signal V_Flag 	: std_logic;

begin


	U_MAIN_CTRL: entity work.control
		port map(
			instr31_26	=>	instr(31 downto 26),
			ALU_OP		=>	ALU_OP,
			MemToReg	=>	MemToReg,
			ALUSrc		=>	ALUSrc,
			ZSextend	=>	ZSextend,
			regWrite	=>	regWrite,
			regDst		=>	regDst
		);

	U_ALUplusCTRL: entity work.alu_ctrl
		port map(
			func	=>	instr(5 downto 0),
			ALUop	=>	ALU_OP,	
			ia		=>	rr0_data,
			ib 		=>	ALUSrcOut,
			shamt 	=>	instr(10 downto 6),
			shdir 	=>	instr(1),
			o 		=>	alu_res,
			C		=>	C_Flag,
			Z		=>	Z_Flag,
			S		=>	S_Flag,
			V		=>	V_Flag
		);

	U_REGFILE:	entity work.registerFile
		port map(
			clk		=>	clk,
			rst 	=>	rst,
			rr0		=>	instr(25 downto 21),
			rr1		=>	instr(20 downto 16),
			reg_wr	=>	regDstOut,
			d 		=>	MemToRegOut,
			w_en	=>	regWrite,
			q0		=>	rr0_data,
			q1		=>	rr1_data
		);

	U_EXTENDER:	entity work.extender
		port map(
			in0		=>	instr(15 downto 0),
			sel		=>	ZSextend,
			out0 	=>	extenderOut
		);

	U_MUX_regDst: entity work.mux2_1
		generic map(width => 5)
		port map(
		   sel		=>	regDst,
		   in0		=>	instr(20 downto 16),
		   in1		=>	instr(15 downto 11),
		   output	=>	regDstOut
		);

	U_MUX_ALUSrc:	entity work.mux2_1
		generic map(width => 32)
		port map(
		   sel		=>	ALUSrc,
		   in0		=>	rr1_data,
		   in1		=>	extenderOut,
		   output	=>	ALUSrcOut
		);

	U_MUX_MemToReg: entity work.mux2_1
		generic map(width => 32)
		port map(
		   sel		=>	MemToReg,
		   in0		=>	alu_res,
		   in1		=>	(others=>'0'), --CHANGE LATER
		   output	=>	MemToRegOut
		);

end STR;