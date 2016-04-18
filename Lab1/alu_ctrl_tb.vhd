library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_ctrl_tb is
end alu_ctrl_tb;


architecture TB of alu_ctrl_tb is

	constant C_ADD	: std_logic_vector(3 downto 0) := "0010";
	constant C_SUB	: std_logic_vector(3 downto 0) := "0110";
	constant C_AND	: std_logic_vector(3 downto 0) := "0000";
	constant C_OR	: std_logic_vector(3 downto 0) := "0001";
	constant C_NOR	: std_logic_vector(3 downto 0) := "1100";
	constant C_SLT	: std_logic_vector(3 downto 0) := "0111";
	constant C_SLTU	: std_logic_vector(3 downto 0) := "1111";
	constant C_SHL	: std_logic_vector(3 downto 0) := "0011";

	constant rOp	: std_logic_vector(2 downto 0) := "000";
	constant addOp	: std_logic_vector(2 downto 0) := "001";
	constant subOp	: std_logic_vector(2 downto 0) := "010";
	constant andOp	: std_logic_vector(2 downto 0) := "011";
	constant orOp	: std_logic_vector(2 downto 0) := "100";
	constant sltOp 	: std_logic_vector(2 downto 0) := "101";

	constant ADD_F 	: std_logic_vector(5 downto 0) := "100000";
	constant ADDU_F	: std_logic_vector(5 downto 0) := "100001";
	constant AND_F	: std_logic_vector(5 downto 0) := "100100";
	constant JR_F	: std_logic_vector(5 downto 0) := "001000";
	constant NOR_F	: std_logic_vector(5 downto 0) := "010111";
	constant OR_F	: std_logic_vector(5 downto 0) := "010101";
	constant SLT_F	: std_logic_vector(5 downto 0) := "011010";
	constant SLTU_F	: std_logic_vector(5 downto 0) := "011011";
	constant SLL_F	: std_logic_vector(5 downto 0) := "000000";
	constant SRL_F	: std_logic_vector(5 downto 0) := "000010";
	constant SUB_F	: std_logic_vector(5 downto 0) := "010010";
	constant SUBU_F	: std_logic_vector(5 downto 0) := "010011";


	signal 	func 	: std_logic_vector(5 downto 0);
	signal	ALUop	: std_logic_vector(2 downto 0);
	signal	ia, ib 	: std_logic_vector(31 downto 0);
	signal	shamt 	: std_logic_vector(4 downto 0);
	signal	shdir 	: std_logic;
	signal	o 		: std_logic_vector(31 downto 0);
	signal	C,Z,S,V : std_logic;


begin 

	UUT: entity work.alu_ctrl
		port map(
			func 	=> func,
			ALUop 	=> ALUop,
			ia 		=> ia,
			ib 	 	=> ib,
			shamt 	=> shamt,
			shdir 	=> shdir,
			o 		=> o,
			C 		=> C,
			Z 		=> Z,
			S 		=> S,
			V  		=> V
		);
	process
	begin

		func <= ADD_F;
		ALUop <= rOp;
		ia <= std_logic_vector(to_unsigned(37,32));
		ib <= std_logic_vector(to_unsigned(43,32));
		shamt <= std_logic_vector(to_unsigned(10,5));
		shdir <= '0';
		wait for 10 ns;

		func <= AND_F;
		wait for 10 ns;

		func <= OR_F;
		wait for 10 ns;

		func <= SLT_F;
		wait for 10 ns;

		func <= SLL_F;
		wait for 10 ns;

		shdir <= '1';
		wait for 10 ns;

		func <= SUB_F;
		wait for 10 ns;

		ALUop <= andOp;
		wait for 10 ns;


		wait;
	end process;
end TB;
