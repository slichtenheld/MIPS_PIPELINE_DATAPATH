library ieee;
use ieee.std_logic_1164.all;

entity reg1 is	
	port (
		clk: in std_logic;
		rst: in std_logic;
		ld : in std_logic;
		d  : in std_logic;
		q  : out std_logic
	);
end reg1;

architecture BHV of reg1 is
begin
	process(clk,rst)
	begin
		if (rst = '1') then
			q <= '0';
		elsif (rising_edge(clk)) then
			if (ld = '1') then
				q <= d;
			end if;
		end if;
	end process;
end BHV;

