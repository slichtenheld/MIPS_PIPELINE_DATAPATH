library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_gen is 
	generic (
		width : positive := 32
	);
	port (
		in0			: in std_logic_vector (width-1 downto 0);
		in1 		: in std_logic_vector (width-1 downto 0);
		carry 	 	: out std_logic;
		sum 		: out std_logic_vector (width-1 downto 0)
	);
end adder_gen;

architecture BHV of adder_gen is
begin
	process(in0, in1)

	variable temp : unsigned (width downto 0);

	begin
		temp := unsigned("0"&in0) + unsigned("0"&in1);
		sum <= std_logic_vector(temp(width-1 downto 0));
		carry <= std_logic(temp(width));
	end process;
end BHV;


