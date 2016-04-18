
library ieee;
use ieee.std_logic_1164.all;

entity reg_gen is	
	generic (
		width : positive :=32
	);
	port (
		clk: in std_logic;
		rst: in std_logic;
		ld : in std_logic;
		d  : in std_logic_vector(width-1 downto 0);
		q  : out std_logic_vector (width-1 downto 0)
	);
end reg_gen;

architecture BHV of reg_gen is
begin
	process(clk,rst)
	begin
		if (rst = '1') then
			q <= (others=>'0');
		elsif (rising_edge(clk)) then
			if (ld = '1') then
				q <= d;
			end if;
		end if;
	end process;
end BHV;