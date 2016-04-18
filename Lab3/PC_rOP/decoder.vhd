library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is 
	generic (
			width: positive := 5
		);
	port (
		input : in std_logic_vector(width-1 downto 0);
		output : out std_logic_vector(2**width -1 downto 0)
		);
end decoder;

architecture BHV of decoder is 

	begin

	process(input)
		variable temp : std_logic_vector(2**width-1 downto 0);
	begin

		temp := (others=>'0');
		temp(to_integer(unsigned(input))) := '1';
		output <= temp;

	end process;

	

end BHV;