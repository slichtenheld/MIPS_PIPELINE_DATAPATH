library ieee;
use ieee.std_logic_1164.all;

use work.mipsLib.all;
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
		jumpRegSel: out std_logic;
		control	: out std_logic_vector(3 downto 0)
	);
end alu32control;


architecture BHV of alu32control is

begin


	process(func, ALUop)
	begin 
		jumpRegSel <= '0';

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
						jumpRegSel <= '1';
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
 			when sltuOp =>
 				control <= C_SLTU;
 			when others =>
 				control <= "----";
 		end case;
	end process;
end BHV;


