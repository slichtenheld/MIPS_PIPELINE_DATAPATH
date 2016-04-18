library ieee;
use ieee.std_logic_1164.all;

entity extender is
	port(
		in0:	in std_logic_vector(15 downto 0);
		sel:	in std_logic;
		out0: 	out std_logic_vector(31 downto 0)
	);
end extender;

architecture STR of extender is
	signal sign_out:	std_logic_vector(31 downto 0);
	signal zero_out:	std_logic_vector(31 downto 0);
begin

	U_zeroext: entity work.zeroext
		port map(
			in0 => in0,
			out0 => zero_out
		);

	U_signext: entity work.signext
		port map(
			in0 => in0,
			out0 => sign_out
		);

	process(in0, sel, sign_out, zero_out)
	begin
		if (sel='0') then
			out0 <= zero_out;
		else
			out0 <= sign_out;
		end if;
	end process;
end STR;
