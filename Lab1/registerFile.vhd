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

	U_REG_ARRAY: for i in 0 to 31 generate
		U_REG 	: entity work.reg_gen
			generic map(32)
			port map(
				clk => clk, 
				rst => rst,
				ld => ldi(i),
				d => d,
				q => q_array(i)
			);
	end generate U_REG_ARRAY;

	process(clk,rst,rr0,rr1,reg_wr,d,w_en)
	variable temp: unsigned (31 downto 0);
	begin

	q0 <= q_array(to_integer(unsigned(rr0)));
	q1 <= q_array(to_integer(unsigned(rr1)));

	temp := x"00000000";
	if (w_en = '1') then
		temp(to_integer(unsigned(reg_wr))) := '1';
	end if;
	ldi <= std_logic_vector(temp);

	end process;
end STR;



