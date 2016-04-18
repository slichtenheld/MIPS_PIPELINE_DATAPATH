library ieee;
use ieee.std_logic_1164.all;

entity pipe4 is
	port (
		clk	: in std_logic;
		rst : in std_logic;
		--WB
		regWrite_IN	: in std_logic;
		memtoReg_IN	: in std_logic;
		regWrite_OUT: out std_logic;
		memtoReg_OUT: out std_logic;
		--DATA
		memdata_IN 	: in std_logic_vector(31 downto 0);
		reg1alu_IN	: in std_logic_vector(31 downto 0);
		dstreg_IN	: in std_logic_vector(4 downto 0);
		memdata_OUT, reg1alu_OUT : out std_logic_vector (31 downto 0);
		dstreg_OUT 	: out std_logic_vector(4 downto 0)
		);
end pipe4; 

architecture STR of pipe4 is

	signal wbreg_OUTSIG		: std_logic_vector(1 downto 0);

begin

U_WB_REG: entity work.reg 
	generic map(2)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> regWrite_IN & memtoReg_IN,
		q  	=> wbreg_OUTSIG
	);
	regWrite_OUT <= wbreg_OUTSIG(1);
	memtoReg_OUT <= wbreg_OUTSIG(0);

U_MEMDATA_REG: entity work.reg 
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1', 
		d  	=> memdata_IN,
		q  	=> memdata_OUT
	);

U_REG1ALU_REG: entity work.reg
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> reg1alu_IN,
		q  	=> reg1alu_OUT
	);

U_DST_REG : entity work.reg 
	generic map(5)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> dstreg_IN,
		q  	=> dstreg_OUT
	);

end STR;

