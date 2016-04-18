library ieee;
use ieee.std_logic_1164.all;

entity comparator is
	generic (width : positive:=32);
	port (
		in0 : in std_logic_vector(width-1 downto 0);
		in1 : in std_logic_vector(width-1 downto 0);
		equal : out std_logic
	);
end comparator;

architecture BHV of comparator is
begin

	process(in0, in1)
	begin
		if (in0 = in1) then
			equal <= '1';
		else equal <= '0';
		end if;
	end process;
end BHV;
