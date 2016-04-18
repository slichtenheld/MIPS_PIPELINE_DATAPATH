library ieee;
use ieee.std_logic_1164.all;

entity pipe2 is
	port (
		clk	: in std_logic;
		rst : in std_logic;
		--WB
		regWrite_IN	: in std_logic;
		memtoReg_IN	: in std_logic;
		regWrite_OUT: out std_logic;
		memtoReg_OUT: out std_logic;
		--MEM 
		memwren_IN	: in std_logic;
		memctrl_IN	: in std_logic_vector(1 downto 0);
		jalsel_IN 	: in std_logic;
		memwren_OUT : out std_logic;
		memctrl_OUT : out std_logic_vector(1 downto 0);
		jalsel_OUT  : out std_logic;
		--EX
		alusrc1_IN 	: in std_logic;
		aluop_IN	: in std_logic_vector(2 downto 0);
		alusrc1_OUT : out std_logic;
		aluop_OUT	: out std_logic_vector(2 downto 0);
		--DATA
		reg0_IN 	: in std_logic_vector(31 downto 0);
		reg1jal_IN	: in std_logic_vector(31 downto 0);
		extended_IN	: in std_logic_vector(31 downto 0);
		rs_IN, rt_IN, dst_IN : in std_logic_vector(4 downto 0);
		reg0_OUT, reg1jal_OUT, extended_OUT: out std_logic_vector (31 downto 0);
		rs_OUT, rt_OUT, dst_OUT 	: out std_logic_vector(4 downto 0)
		);
end pipe2; 

architecture STR of pipe2 is

	signal wbreg_OUTSIG		: std_logic_vector(1 downto 0);
	signal memreg_OUTSIG 	: std_logic_vector(3 downto 0);
	signal exreg_OUTSIG 	: std_logic_vector(3 downto 0);

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

U_MEM_REG: entity work.reg
	generic map(4)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> memwren_IN & memctrl_IN & jalsel_IN,
		q  	=> memreg_OUTSIG
	);
	memwren_OUT <= memreg_OUTSIG(3);
	memctrl_OUT <= memreg_OUTSIG(2 downto 1);
	jalsel_OUT	<= memreg_OUTSIG(0);

U_EX_REG: entity work.reg 
	generic map(4)
	port map(
		clk	=> clk,
		rst => rst, 
		ld 	=> '1',
		d  	=> alusrc1_IN & aluop_IN,
		q  	=> exreg_OUTSIG
	);
	alusrc1_OUT <= exreg_OUTSIG(3);
	aluop_OUT <= exreg_OUTSIG(2 downto 0);

U_REG0_REG: entity work.reg 
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1', 
		d  	=> reg0_IN,
		q  	=> reg0_OUT
	);

U_REG1JAL_REG: entity work.reg
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> reg1jal_IN,
		q  	=> reg1jal_OUT
	);

U_EXTENDED_REG: entity work.reg 
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> extended_IN,
		q  	=> extended_OUT
	);

U_RS_REG : entity work.reg 
	generic map(5)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> rs_IN,
		q  	=> rs_OUT
	);

U_RT_REG : entity work.reg 
	generic map(5)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> rt_IN,
		q  	=> rt_OUT
	);

U_DST_REG : entity work.reg 
	generic map(5)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> dst_IN,
		q  	=> dst_OUT
	);

end STR;