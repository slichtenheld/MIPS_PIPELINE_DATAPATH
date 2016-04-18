library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu32_tb is
end alu32_tb;

architecture TB of alu32_tb is
	signal ia, ib, o: std_logic_vector(31 downto 0);
	signal ctrl		: std_logic_vector(3 downto 0);
	signal shamt	: std_logic_vector(4 downto 0);
	signal shdir	: std_logic;
	signal C,Z,S,V 	: std_logic;

	constant C_ADD	: std_logic_vector(3 downto 0) := "0010";
	constant C_SUB	: std_logic_vector(3 downto 0) := "0110";
	constant C_AND	: std_logic_vector(3 downto 0) := "0000";
	constant C_OR	: std_logic_vector(3 downto 0) := "0001";
	constant C_NOR	: std_logic_vector(3 downto 0) := "1100";
	constant C_SLT	: std_logic_vector(3 downto 0) := "0111";
	constant C_SLTU	: std_logic_vector(3 downto 0) := "1111";
	constant C_SHL	: std_logic_vector(3 downto 0) := "0011";

begin

	UUT: entity work.alu32
			port map (
				ia		=> ia,
				ib		=> ib,
				ctrl  	=> ctrl,
				shamt 	=> shamt,
				shdir	=> shdir,
				o		=> o,
				C 		=> C,
				Z 		=> Z,
				S  		=> S,
				V  		=> V
		);

	process

	begin
		shamt <= "00000";
		shdir <= '0';

		ctrl <= C_ADD;
		ia <= std_logic_vector(to_signed(52,32));
	    ib <= std_logic_vector(to_signed(106,32));
	    wait for 5 ns;
	    assert (signed(o) = 52+106) report "ERROR ADD";
	    wait for 5 ns;


	    ctrl <= C_SHL;
	 	shamt <= "00101";
	    shdir <= '1';
		ia <= x"FFFFFFFF";
	    wait for 5 ns;
	    wait for 5 ns;

	    wait;

	end process;

end TB;