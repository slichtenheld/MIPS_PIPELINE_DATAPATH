library ieee;
use ieee.std_logic_1164.all;

entity mux32 is
  port (
    sel		: in  std_logic;
    in1		: in  std_logic_vector(31 downto 0);
    in2		: in  std_logic_vector(31 downto 0);
    output	: out std_logic_vector(31 downto 0));
end mux32;

architecture BHV of mux32 is
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
