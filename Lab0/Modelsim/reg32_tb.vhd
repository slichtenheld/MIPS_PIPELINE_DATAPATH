library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg32_tb is
end reg32_tb;

architecture TB of reg32_tb is 

	signal clk	: std_logic := '0';
	signal clken	: std_logic := '1';
	signal clr	: std_logic;
	signal wr	: std_logic;
	signal d	: std_logic_vector(31 downto 0);
	signal q	: std_logic_vector(31 downto 0);


begin

	UUT : entity work.reg32
		port map(
			clk => clk,
			clr => clr,
			wr => wr,
			d => d,
			q => q
		);

	clk <= not clk and clken after 10 ns;

	process 
	begin
		clr <= '1';
		wr  <= '1';
		d <= (others => '0');
		wait for 5 ns;
		clr <= '0';
		

		d <= x"1234ABCD";

		for i in 0 to 8 loop
			wait until (rising_edge(clk));
		end loop;
		wait for 5 ns;
		d<= x"ABCD1234";

		for i in 0 to 1 loop
			wait until (rising_edge(clk));
		end loop;
		wait for 5 ns;
		d<= (others=> '0');
		wait until (rising_edge(clk));
		

		report "SIMULATION FINISHED!!!";
		clken <= '0';	

	wait;

	end process;

end TB;

		



		

