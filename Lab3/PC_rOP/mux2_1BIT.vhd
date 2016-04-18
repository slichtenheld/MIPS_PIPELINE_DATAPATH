library ieee;
use ieee.std_logic_1164.all;

entity mux2_1BIT is
  port (
    sel		: in  std_logic;
    in0		: in  std_logic;
    in1		: in  std_logic;
    output	: out std_logic
);
end mux2_1BIT;

architecture BHV of mux2_1BIT is
begin
	process(sel,in0,in1)
	begin
		if (sel='0') then
			output <= in0;
		else 	
			output <= in1;
		end if;
	end process;
end BHV;

