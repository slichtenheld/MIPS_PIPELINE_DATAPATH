library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signext_tb is
end signext_tb;

architecture TB of signext_TB is
	signal in0:	std_logic_vector(15 downto 0);
	signal out0:	std_logic_vector(31 downto 0);
begin

	U_SIGNEXT: entity work.signext
		port map(
			in0 => in0,
			out0 => out0
		);

	process

	function sign_test (
		signal in0: std_logic_vector(15 downto 0);
		signal out0: std_logic_vector(31 downto 0))
		return std_logic is
	begin -- zeroext test 
		if (out0= in0(15) & "0000000000000000" & in0(14 downto 0)) then
			return '1';
		else 
			return '0';
		end if;
	end sign_test;

	begin -- begin process
		
		in0 <= "0111111111111111";
		wait for 10 ns;
		assert(sign_test(in0,out0) = '1')
    			report "Error : output incorrect for in0 = 0x7FFF" severity warning;

		in0 <= "1111111111111111";
		wait for 10 ns;
		assert(sign_test(in0,out0) = '1')
    			report "Error : output incorrect for in0 = 0xFFFF" severity warning;

	report "Simulation Finished";

	wait;

	end process;
end TB;

	
