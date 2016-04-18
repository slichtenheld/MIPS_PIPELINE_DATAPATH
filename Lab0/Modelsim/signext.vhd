
library ieee;
use ieee.std_logic_1164.all;

entity signext is
	port (
	in0:	in std_logic_vector(15 downto 0);
	out0: 	out std_logic_vector(31 downto 0)
	);
end signext;

architecture BHV of signext is
begin

	process (in0)
	begin
		if (in0(15) = '1') then
			out0 <= "0000000000000000" & in0;
		else 
			out0 <= "1111111111111111" & in0;
		end if;
	end process;
end BHV;