library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registerFile_tb is
end registerFile_tb;


architecture TB of registerFile_tb is
	signal clk		: std_logic := '0';
	signal rst 		: std_logic;
	signal rr0		: std_logic_vector(4 downto 0);
	signal rr1		: std_logic_vector(4 downto 0);
	signal reg_wr 	: std_logic_vector(4 downto 0);
	signal d 		: std_logic_vector(31 downto 0);
	signal w_en 	: std_logic;
	signal q0 		: std_logic_vector(31 downto 0);
	signal q1		: std_logic_vector(31 downto 0);

	signal done 	: std_logic := '0';

begin

	clk <= not clk and not done after 10 ns;

	UUT: entity work.registerFile
		port map(
			clk => clk,
			rst => rst,
			rr0 => rr0,
			rr1 => rr1,
			reg_wr => reg_wr,
			d => d,
			w_en => w_en,
			q0 => q0,
			q1 => q1
		);

	process
	begin

		rst <= '0';
		rr0 <= std_logic_vector(to_unsigned(0,5));
		rr1 <= std_logic_vector(to_unsigned(0,5));
		reg_wr <= std_logic_vector(to_unsigned(0,5));
		d <= std_logic_vector(to_unsigned(0,32));
		w_en <= '0';
		wait for 1 ns;
		rst <= '1';
		wait for 19 ns;
		rst <= '0';
		wait for 10 ns;

		for i in 0 to 31 loop
			w_en <= '1';
			d <= std_logic_vector(to_unsigned(i,32));
			reg_wr <= std_logic_vector(to_unsigned(i,5));
			wait until rising_edge(clk);
		end loop;

		w_en <= '0';
		wait until rising_edge(clk);

		for i in 0 to 31 loop
			rr0 <= std_logic_vector(to_unsigned(i,5));
			rr1 <= std_logic_vector(to_unsigned(31-i,5));
			wait until rising_edge(clk);
		end loop;

		done <='1';
		wait;
	end process;
end TB;


