library ieee;
use ieee.std_logic_1164.all;

entity pipe1 is
	port (
		clk	: in std_logic;
		rst : in std_logic;
		ld 	: in std_logic;
		valid_IN : in std_logic;
		valid_OUT : out std_logic;
		pcreg_IN : in std_logic_vector(31 downto 0);
		pcreg_OUT : out std_logic_vector(31 downto 0);
		instrreg_IN : in std_logic_vector(31 downto 0);
		instrreg_OUT : out std_logic_vector(31 downto 0)
		);
end pipe1;

architecture  STR of pipe1 is
begin

U_VALID_REG : entity work.reg1_RESET1 
	port map (
		clk	=> clk,
		rst => rst,
		ld 	=> ld,
		d  	=> valid_IN,
		q  	=> valid_OUT
	);

U_PC_REG : entity work.pcREG 
	generic map(32)
	port map(
		clk	=> clk, 
		rst => rst,
		ld 	=> ld,
		d  	=> pcreg_IN,
		q  	=> pcreg_OUT
	);



U_INSTR_REG : entity work.reg
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> ld,
		d  	=> instrreg_IN,
		q  	=> instrreg_OUT
	);

end STR;