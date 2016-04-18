library ieee;
use ieee.std_logic_1164.all;

use work.mipsLib.all;

entity TB_ram_ctrl is
end TB_ram_ctrl;

architecture TB of TB_ram_ctrl is
	--signals
		signal 	clk 	: std_logic := '0';
		signal done 	: std_logic := '0';

		signal 	dataIn	: std_logic_vector(31 downto 0);
		signal 	addr	: std_logic_vector(7 downto 0);
		signal 	wr_en	: std_logic;
		signal 	ctrl 	: std_logic_vector(1 downto 0);
		signal 	dataOut	: std_logic_vector(31 downto 0);
begin

	clk <= not clk and not done after 10 ns;

	UUT: entity work.ram_ctrl 
		port map(
			clk, 
			dataIn,
			addr,
			wr_en,
			ctrl,
			dataOut
			);

	process
	begin

	wait until falling_edge(clk);

	dataIn <= x"FFFFFFFF";
	addr <= x"2F";
	wr_en <= '0';
	ctrl <= ramWord;

	wait until falling_edge(clk);

	dataIn <= x"FFFFFFFF";
	addr <= x"2F";
	wr_en <= '0';
	ctrl <= ramWord;

	wait until falling_edge(clk);

	dataIn <= x"FFFFFFFF";
	addr <= x"2F";
	wr_en <= '1';
	ctrl <= ramWord;

	wait until falling_edge(clk);

	dataIn <= x"FFFFFFFF";
	addr <= x"2F";
	wr_en <= '0';
	ctrl <= ramWord;

	wait until falling_edge(clk);

	dataIn <= x"FFFFFFFF";
	addr <= x"1D";
	wr_en <= '1';
	ctrl <= ramWord;

	wait until falling_edge(clk);

	dataIn <= x"55555555";
	addr <= x"1D";
	wr_en <= '0';
	ctrl <= ramWord;

	wait until falling_edge(clk);

	dataIn <= x"55555555";
	addr <= x"1D";
	wr_en <= '0';
	ctrl <= ramHalf;

	wait until falling_edge(clk);

	dataIn <= x"55555555";
	addr <= x"1D";
	wr_en <= '0';
	ctrl <= ramByte;

	wait until falling_edge(clk);

	dataIn <= x"FFFFFFFF";
	addr <= x"0F";
	wr_en <= '1';
	ctrl <= ramByte;

	wait until falling_edge(clk);

	dataIn <= x"77777777";
	addr <= x"0F";
	wr_en <= '0';
	ctrl <= ramWord;

	

	done <= '1';
	wait;
	end process;
end TB;