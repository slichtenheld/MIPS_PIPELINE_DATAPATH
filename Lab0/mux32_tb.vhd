library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity mux32_tb is
end mux32_tb;

architecture TB of mux32_tb is

  signal in1       : std_logic_vector(31 downto 0);
  signal in2       : std_logic_vector(31 downto 0);
  signal sel       : std_logic;
  signal output    : std_logic_vector(31 downto 0);

begin  -- TB

  UUT : entity work.mux32
    port map (
	sel	=> 	sel,
	in1	=>	in1,
    	in2	=>	in2,
    	output	=>	output);

  process
	variable temp : std_logic_vector(64 downto 0);

	function mux_test (
		signal in1: std_logic_vector(31 downto 0);
		signal in2: std_logic_vector(31 downto 0);
		signal sel: std_logic)
		return std_logic_vector is
	begin -- mux_test
		if (sel = '0') then
			return in1;
		else 
			return in2;
		end if;
	end mux_test;

	begin
		--test all input combinations
		for i in 0 to 2**30 loop
			temp := std_logic_vector(to_unsigned(i,65));
			in1 <= temp(64 downto 33);
			in2 <= temp(32 downto 1);
			sel <= temp(0);

			wait for 20 ns;

			assert(output = mux_test(in1,in2,sel))
    				report "Error : output_with_select incorrect"  severity warning;

		end loop;

		wait;

    	report "SIMULATION FINISHED!!!";
    	wait;

  end process;
end TB;
