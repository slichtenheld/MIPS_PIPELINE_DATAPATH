
library ieee;
use ieee.std_logic_1164.all;

use work.mipsLib.all;

entity TB_rOP is
end TB_rOP;

architecture TB of TB_rOP is

	signal clk : std_logic := '0';
	signal rst: std_logic;
	signal instr: std_logic_vector(31 downto 0);
	signal done: std_logic := '0';

begin

	clk <= not clk and not done after 10 ns;

	UUT: entity work.rOpTst_tplvl 
		port map(
			clk => clk,
			rst => rst,
			instr => instr
		);


	process
	begin

		rst <= '1';

		wait until (rising_edge(clk));

		rst <= '0';


		-- nor r1, r2, r4
		instr <= i_rOP & r_2 & r_4 & r_1 & "10101" & NOR_F;

		
		wait until (rising_edge(clk));
	--r_1 should be 0xFFFFFFFF

		-- add r2, r1, r0 
		instr <= i_rOP & r_1 & r_0 & r_2 & "00000" & ADD_F;
		wait until (rising_edge(clk));


	--check zero reg
		-- add r2, r1, r0 
		instr <= i_rOP & r_1 & r_0 & r_0 & "00000" & ADD_F;

		wait until (rising_edge(clk));

	-- try add addi

		instr <= i_addi & r_0 & r_5 & "0101010101010101";

		wait until (rising_edge(clk));

		instr <= i_addi & r_0 & r_6 & "1010101010101010";

		wait until (rising_edge(clk));

		instr <= i_rOP & r_5 & r_6 & r_7 & "00000" & OR_F;

		wait until rising_edge(clk);

		instr <= i_rOP & r_5 & r_6 & r_6 & "01000" & SLL_F;

		wait until rising_edge(clk);

		instr <= i_rOP & r_5 & r_6 & r_6 & "01000" & SLL_F;

		wait until rising_edge(clk);

		instr <= i_rOP & r_5 & r_6 & r_6 & "01000" & SRL_F;

		wait until rising_edge(clk);

		instr <= i_rOP & r_5 & r_6 & r_6 & "01000" & SRL_F;

		wait until rising_edge(clk);
		wait until rising_edge(clk);

		done <= '1';
		wait;
	end process;
end TB;