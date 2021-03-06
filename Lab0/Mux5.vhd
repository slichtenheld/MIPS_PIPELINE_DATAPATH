library ieee;
use ieee.std_logic_1164.all;

entity mux5 is
  port (
    sel		: in  std_logic;
    in1		: in  std_logic_vector(4 downto 0);
    in2		: in  std_logic_vector(4 downto 0);
    output	: out std_logic_vector(4 downto 0));
end mux5;

architecture BHV of mux5 is
begin
	process(sel,in1,in2)
	begin
		if (sel='0') then
			output <= in1;
		else 	
			output <= in2;
		end if;
	end process;
end BHV;
