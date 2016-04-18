library ieee;
use ieee.std_logic_1164.all;

entity reg32 is
	port(	
		clk:	in std_logic;
		d:	in std_logic_vector(31 downto 0);
		q: 	out std_logic_vector(31 downto 0);
		wr:	in std_logic; --write enable
		clr:	in std_logic); --asynchronous clear
end reg32;

architecture BHV of reg32 is
begin		
	process(clr, clk)
	begin
		if (clr = '1') then
			q <= (others=>'0');
		elsif (rising_edge(clk)) then
			if (wr = '1') then
				q <= d;
			end if;
		end if;
	end process;
end BHV;
	

		
