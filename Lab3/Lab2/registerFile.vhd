
--test
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registerFile is
	port (
		clk, rst 	: in std_logic;
		rr0			: in std_logic_vector(4 downto 0); -- register file reads
		rr1			: in std_logic_vector(4 downto 0);
		reg_wr		: in std_logic_vector(4 downto 0); --which reg should be written to on rising edge of clk
		d 			: in std_logic_vector(31 downto 0); -- input word
		w_en		: in std_logic; 					-- write register enable  
		q0, q1		: out std_logic_vector(31 downto 0)
	);
end registerFile;

architecture STR of registerFile is

	signal ldi	: std_logic_vector(31 downto 0);

	type rr_array is array(31 downto 0) of std_logic_vector(31 downto 0);
	signal q_array: rr_array;

	--type registerarray is array(X downto 0) of std_logic_vector(X downto 0);
	--signal ra: registerarray;
	--The first line defines new a type that is an array of std_logic_vector's; the second line initializes a signal of type “registerarray” with name “ra”. The defined signal can be used in following manner “ra(0) <= 0xDEADBEE7”.
begin

	U_REG_ZERO: entity work.reg_gen
		generic map(32)
		port map(
			clk => clk,
			rst => rst,
			ld => '1',
			d => (others => '0'),
			q => q_array(0)
		);
	
	U_REG_ARRAY: for i in 1 to 31 generate
		U_REG 	: entity work.reg_gen
			generic map(32)
			port map(
				clk => clk, 
				rst => rst,
				ld => ldi(i) and w_en,
				d => d,
				q => q_array(i)
			);
	end generate U_REG_ARRAY;

	
		U_MUX32_1_0	: entity work.mux32_1
			port map(
				rr0,
				q_array(0), q_array(1), q_array(2), q_array(3), q_array(4),
				q_array(5), q_array(6), q_array(7), q_array(8), q_array(9),
				q_array(10), q_array(11), q_array(12), q_array(13), q_array(14),
				q_array(15), q_array(16), q_array(17), q_array(18), q_array(19),
				q_array(20), q_array(21), q_array(22), q_array(23), q_array(24),
				q_array(25), q_array(26), q_array(27), q_array(28), q_array(29),
				q_array(30), q_array(31), 
				q0
				);
	
		U_MUX32_1_1	: entity work.mux32_1
			port map(
				rr1,
				q_array(0), q_array(1), q_array(2), q_array(3), q_array(4),
				q_array(5), q_array(6), q_array(7), q_array(8), q_array(9),
				q_array(10), q_array(11), q_array(12), q_array(13), q_array(14),
				q_array(15), q_array(16), q_array(17), q_array(18), q_array(19),
				q_array(20), q_array(21), q_array(22), q_array(23), q_array(24),
				q_array(25), q_array(26), q_array(27), q_array(28), q_array(29),
				q_array(30), q_array(31), 
				q1
				);


		U_DECODER : entity work.decoder 
			generic map(5)
			port map (
				input => reg_wr,
				output => ldi
				);

	--process(clk,rst,rr0,rr1,reg_wr,d,w_en)
	--variable temp: unsigned (31 downto 0);
	--begin

	--q0 <= q_array(to_integer(unsigned(rr0)));
	--q1 <= q_array(to_integer(unsigned(rr1)));

	--temp := x"00000000";
	--if (w_en = '1') then
	--	temp(to_integer(unsigned(reg_wr))) := '1';
	--end if;
	--ldi <= std_logic_vector(temp);

	--end process;
end STR;



