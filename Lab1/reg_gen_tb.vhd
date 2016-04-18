
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity reg_gen_tb is
	generic(width : positive := 8);
end reg_gen_tb;

architecture TB of reg_gen_tb is

	signal clk 		: std_logic := '0'; 
	signal rst, ld	: std_logic;
	signal d, q 	: std_logic_vector (width-1 downto 0);
	signal done 	: std_logic := '0';
	
begin 

	clk <= not clk and not done after 10 ns;

	UUT: entity work.reg_gen 
		generic map (
			width => width
		)
		port map (
			rst => rst,
			clk => clk,
			ld => ld,
			d => d,
			q => q
		);

	process
	begin

		rst <= '1';
		ld <= '0';
		d <= (others => '0');
		wait for 20 ns;
		rst <= '0';
		wait until rising_edge(clk);

		for i in 0 to 2**width - 1 loop
			ld <= '1';
			d <= std_logic_vector(to_unsigned(i, width));
			wait until rising_edge(clk);
			ld <= '0';
			wait until rising_edge(clk);
			assert (q = d) report "output != input";
			

		end loop;

		wait until rising_edge(clk);
		rst <= '1';
		wait for 1 ns;
		assert (q = std_logic_vector(to_unsigned(0, width))) report "Reset not functioning";

		done <= '1';

		report "Simulation Finished";

		wait;
	end process;
	end TB;


	
