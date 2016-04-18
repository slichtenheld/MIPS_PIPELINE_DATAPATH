library ieee;
use ieee.std_logic_1164.all;

entity mux2_1 is
  port (
    sel		: in  std_logic;
    in1		: in  std_logic;
    in2		: in  std_logic;
    output	: out std_logic);
end mux2_1;

architecture BHV of mux2_1 is
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
