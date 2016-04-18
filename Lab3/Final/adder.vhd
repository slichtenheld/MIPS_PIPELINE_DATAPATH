library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
	generic(
			width: positive := 32
	);
	port(
		in0, in1 	: in std_logic_vector(width -1 downto 0);
		out0		: out std_logic_vector(width-1 downto 0)
	);
end adder;

architecture BHV of adder is

	begin

	out0 <= std_logic_vector(unsigned(in0) + unsigned(in1));


end BHV;