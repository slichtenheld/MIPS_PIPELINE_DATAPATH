library ieee;
use ieee.std_logic_1164.all;

entity pcReg is	
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
end pcReg;

architecture BHV of pcReg is
begin
	process(clk,rst)
	begin
		if (rst = '1') then
			q <= x"00400000";
		elsif (rising_edge(clk)) then
			if (ld = '1') then
				q <= d;
			end if;
		end if;
	end process;
end BHV;
