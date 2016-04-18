library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extender_tb is
end extender_tb;

architecture TB of extender_TB is
	signal in0:	std_logic_vector(15 downto 0);
	signal sel: 	std_logic;
	signal out0:	std_logic_vector(31 downto 0);
begin

	UUT: entity work.extender
		port map(
			in0 => in0,
			sel => sel,
			out0 => out0
		);

	process

	function extend_test (
		signal in0: std_logic_vector(15 downto 0);
		signal sel: std_logic;
		signal out0: std_logic_vector(31 downto 0))
		return std_logic is
	begin -- zeroext test 
		if (sel='0') then
			if (out0= in0(15) & "0000000000000000" & in0(14 downto 0)) then
				return '1';
			else 
				return '0';
			end if;
		else
			if (out0= in0(15) & "0000000000000000" & in0(14 downto 0)) then
				return '1';
			else 
				return '0';
			end if;
		end if;
	end extend_test;

	begin -- begin process
		sel <= '0';
		in0 <= "0111111111111111";
		wait for 10 ns;
		assert(extend_test(in0,sel,out0) = '1')
    			report "Error : output incorrect for in0 = 0x7FFF and sel=" & std_logic'image(sel) severity warning;

		in0 <= "1111111111111111";
		wait for 10 ns;
		assert(extend_test(in0,sel,out0) = '1')
    			report "Error : output incorrect for in0 = 0xFFFF and sel=" & std_logic'image(sel) severity warning;

		sel <= '1';
		in0 <= "0111111111111111";
		wait for 10 ns;
		assert(extend_test(in0,sel,out0) = '1')
    			report "Error : output incorrect for in0 = 0x7FFF and sel=" & std_logic'image(sel) severity warning;

		in0 <= "1111111111111111";
		wait for 10 ns;
		assert(extend_test(in0,sel,out0) = '1')
    			report "Error : output incorrect for in0 = 0xFFFF and sel=" & std_logic'image(sel) severity warning;

	report "Simulation Finished";

	wait;

	end process;
end TB;

	
