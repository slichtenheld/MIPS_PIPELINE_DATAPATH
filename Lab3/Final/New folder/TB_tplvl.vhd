library ieee;
use ieee.std_logic_1164.all;

use work.mipsLib.all;

entity TB_tplvl is
end TB_tplvl;

architecture TB of TB_tplvl is

	signal clk : std_logic := '0';
	signal clk_mem: std_logic := '0';
	signal rst: std_logic;
	signal done: std_logic := '0';

begin

	clk <= not clk and not done after 20 ns;
	clk_mem <= not clk_mem and not done after 5 ns;

	UUT: entity work.tplvl 
		port map(
			clk => clk,
			rst => rst,
			clk_mem => clk_mem
		);


	process
	begin

	rst <= '1';
	wait until rising_edge(clk);
	rst <= '0';

	for i in 0 to 1000 loop
		wait until rising_edge(clk);
	end loop;
	
	done <= '1';
	wait;

	end process;
end TB;


