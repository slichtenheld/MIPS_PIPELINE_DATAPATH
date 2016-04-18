library ieee;
use ieee.std_logic_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;

entity mux2_1_tb is
end mux2_1_tb;

architecture TB of mux2_1_tb is

  signal in1       : std_logic;
  signal in2       : std_logic;
  signal sel       : std_logic;
  signal output    : std_logic;

begin  -- TB

  UUT : entity work.mux2_1
    port map (
	sel	=> 	sel,
	in1	=>	in1,
    	in2	=>	in2,
    	output	=>	output);

  process
	variable temp : std_logic_vector(2 downto 0);

	function mux_test (
		signal in1: std_logic;
		signal in2: std_logic;
		signal sel: std_logic)
		return std_logic is
	begin -- mux_test
		if (sel = '0') then
			return in1;
		else 
			return in2;
		end if;
	end mux_test;

	begin
		--test all input combinations
		for i in 0 to 7 loop
			temp := std_logic_vector(to_unsigned(i,3));
			in1 <= temp(2);
			in2 <= temp(1);
			sel <= temp(0);

			wait for 20 ns;

			assert(output = mux_test(in1,in2,sel))
    				report "Error : output_with_select incorrect for in1 = " & std_logic'image(in1) & " in2 = " & std_logic'image(in2) & " sel = " & std_logic'image(sel) severity warning;

		end loop;

		wait;

    	report "SIMULATION FINISHED!!!";
    	wait;

  end process;
end TB;
