library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mipsLib.all;

entity alu_ctrl_tb is
end alu_ctrl_tb;


architecture TB of alu_ctrl_tb is


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
