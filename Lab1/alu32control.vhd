library ieee;
use ieee.std_logic_1164.all;


--ALUop
--R type 	000
--add 		001
--sub 		010
--and 		011
--or 		100
--slt 		101

entity alu32control is 
	port (
		func 	: in std_logic_vector(5 downto 0);
		ALUop	: in std_logic_vector(2 downto 0);
		control	: out std_logic_vector(3 downto 0)
	);
end alu32control;


architecture BHV of alu32control is

constant C_ADD	: std_logic_vector(3 downto 0) := "0010";
constant C_SUB	: std_logic_vector(3 downto 0) := "0110";
constant C_AND	: std_logic_vector(3 downto 0) := "0000";
constant C_OR	: std_logic_vector(3 downto 0) := "0001";
constant C_NOR	: std_logic_vector(3 downto 0) := "1100";
constant C_SLT	: std_logic_vector(3 downto 0) := "0111";
constant C_SLTU	: std_logic_vector(3 downto 0) := "1111";
constant C_SHL	: std_logic_vector(3 downto 0) := "0011";

constant rOp	: std_logic_vector(2 downto 0) := "000";
constant addOp	: std_logic_vector(2 downto 0) := "001";
constant subOp	: std_logic_vector(2 downto 0) := "010";
constant andOp	: std_logic_vector(2 downto 0) := "011";
constant orOp	: std_logic_vector(2 downto 0) := "100";
constant sltOp 	: std_logic_vector(2 downto 0) := "101";

constant ADD_F 	: std_logic_vector(5 downto 0) := "100000";
constant ADDU_F	: std_logic_vector(5 downto 0) := "100001";
constant AND_F	: std_logic_vector(5 downto 0) := "100100";
constant JR_F	: std_logic_vector(5 downto 0) := "001000";
constant NOR_F	: std_logic_vector(5 downto 0) := "010111";
constant OR_F	: std_logic_vector(5 downto 0) := "010101";
constant SLT_F	: std_logic_vector(5 downto 0) := "011010";
constant SLTU_F	: std_logic_vector(5 downto 0) := "011011";
constant SLL_F	: std_logic_vector(5 downto 0) := "000000";
constant SRL_F	: std_logic_vector(5 downto 0) := "000010";
constant SUB_F	: std_logic_vector(5 downto 0) := "010010";
constant SUBU_F	: std_logic_vector(5 downto 0) := "010011";

begin


	process(func, ALUop)
	begin 
		case ALUop is 
			when rOp =>
				case func is 
					when ADD_F =>
						control <= C_ADD;
					when ADDU_F =>
						control <= C_ADD;
					when AND_F =>
						control <= C_AND;
					when JR_F =>
						control <= "----";
					when NOR_F =>
						control <= C_NOR;
					when OR_F =>
						control <= C_OR;
					when SLT_F =>
						control <= C_SLT;
					when SLTU_F =>
						control <= C_SLTU;
					when SLL_F =>
						control <= C_SHL;
					when SRL_F =>
						control <= C_SHL;
					when SUB_F =>
						control <= C_SUB;
					when SUBU_F =>
						control <= C_SUB;
					when others => 
						control <= "----";
				end case;
 			when addOp 	=>
 				control <= C_ADD;
 			when subOp 	=>
 				control <= C_SUB;
 			when andOp 	=>
 				control <= C_AND;
 			when orOp 	=>
 				control <= C_OR;
 			when sltOp 	=>
 				control <= C_SLT;
 			when others =>
 				control <= "----";
 		end case;
	end process;
end BHV;


