
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_gen_tb is 
end adder_gen_tb;

architecture TB of adder_gen_tb is
 	constant width : positive := 32;

	signal in0, in1, sum : std_logic_vector(width-1 downto 0);
	signal carry: std_logic;
begin
	UUT: entity work.adder_gen
		generic map (width => width)
		port map (
			in0 => in0,
			in1 => in1,
			carry => carry,
			sum => sum
		);

process

  	begin
    -- test all input combinations
    
    in0 <= std_logic_vector(to_signed(52,width));
    in1 <= std_logic_vector(to_signed(106,width));
    wait for 10 ns;

    in0 <= std_logic_vector(to_signed(5,width));
    in1 <= std_logic_vector(to_signed(6,width));
    wait for 10 ns;

    in0 <= std_logic_vector(to_signed(-5,width));
    in1 <= std_logic_vector(to_signed(-6,width));
    wait for 10 ns;

    in0 <= std_logic_vector(to_signed(-5,width));
    in1 <= std_logic_vector(to_signed(6,width));
    wait for 10 ns;

    in0 <= x"FFFFFFFF";
    in1 <= x"FFFFFFFF";
    wait for 10 ns;

    in0 <= x"00000000";
    in1 <= x"00000000";
    wait for 10 ns;

    in0 <= x"80000000";
    in1 <= x"80000000";
    wait for 10 ns;
    wait;



	report "Simulation Finished.";

	wait;
end process;
end TB;