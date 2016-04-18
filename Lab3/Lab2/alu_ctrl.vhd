library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_ctrl is 
	port(
		func	: in std_logic_vector(5 downto 0);
		ALUop	: in std_logic_vector(2 downto 0);
		ia, ib 	: in std_logic_vector(31 downto 0);
		shamt 	: in std_logic_vector(4 downto 0);
		shdir 	: in std_logic;
		o 		: out std_logic_vector(31 downto 0);
		C,Z,S,V : out std_logic
	);
end alu_ctrl;

architecture STR of alu_ctrl is

	signal ctrlSig	: std_logic_vector(3 downto 0);

begin

	U_ALU32CONTROL : entity work.alu32control
		port map (
			func => func,
			ALUop => ALUop,
			control => ctrlSig
		);

	U_ALU32: entity work.alu32 	
		port map (
			ia => ia,
			ib => ib,
			ctrl => ctrlSig,
			shamt => shamt, 
			shdir => shdir,
			o	=> o,
			C 	=> C,
			Z	=> Z,
			S 	=> S,
			V 	=> V
		);



end STR;



