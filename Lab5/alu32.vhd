library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mipsLib.all;

entity alu32 is
	port(
		ia, ib	: in std_logic_vector(31 downto 0);
		ctrl 	: in std_logic_vector(3 downto 0);
		shamt 	: in std_logic_vector(4 downto 0);
		shdir	: in std_logic;
		o		: out std_logic_vector(31 downto 0);
		C,Z,S,V : out std_logic
	);
end alu32;

architecture BHV of alu32 is

begin
	process (ia,ib,ctrl,shamt,shdir)
		variable temp: unsigned(32 downto 0);
	begin
		--
		C <= '-'; --only affected during add and subtract ALU operations
		S <= '-'; --asserted when the output word is equal to zero
		Z <= '0'; --asserted when the 31st bit of output word is equal to one
		V <= '-'; --only affected during add and subtract ALU operations

		case ctrl is
			when C_ADD =>
				temp := unsigned('0'&ia) + unsigned('0'&ib);
				--o <= std_logic_vector(temp(31 downto 0));
				C <= std_logic(temp(32));
				V <= std_logic(temp(32));
				
			when C_SUB =>
				temp := unsigned('0'&ia) - unsigned('0'&ib);
				--o <= std_logic_vector(temp(31 downto 0));
				C <= std_logic(temp(32));
				V <= std_logic(temp(32));
				
			when C_AND =>
				temp :=  unsigned(('0'&ia) and ('0'&ib));
				--o <= ia and ib;
			when C_OR =>
				temp := unsigned(('0'&ia) or ('0'&ib)); 
				--o <= (ia or ib);
			when C_NOR =>
				temp := unsigned(('0'&ia) nor ('0'&ib)); 
				--o <= (ia nor ib);
			when C_SLT =>
				if (signed(ia)<signed(ib)) then
					--o <= x"00000001";
					temp := to_unsigned(1,33);
				else --o <= x"00000000";
					temp := to_unsigned(0,33);
				end if;
			when C_SLTU =>
				if (unsigned(ia)<unsigned(ib)) then
					--o <= x"00000001";
					temp := to_unsigned(1,33);
				else --o <= x"00000000";
					temp := to_unsigned(0,33);
				end if;
			when C_SHL =>
				if (shdir = '0') then --left
					--o <= std_logic_vector(unsigned(ia) sll to_integer(unsigned(shamt)));
					temp := unsigned('0' & (std_logic_vector(unsigned(ib) sll to_integer(unsigned(shamt)))));
				else --right
					--temp := unsigned('0' & ia);
					--o <= std_logic_vector(unsigned(ia) srl to_integer(unsigned(shamt)));
					temp := unsigned('0' & (std_logic_vector(unsigned(ib) srl to_integer(unsigned(shamt)))));
				end if;
			when C_LUI =>
				temp := '0' & unsigned(ib(15 downto 0)) & x"0000";
			when C_NOP =>
				temp := '0' & unsigned(ia);
			when others => 
				temp:=(others=>'0');
		end case;

		S <= std_logic(temp(31));
		if (temp = to_unsigned(0,33)) then 
			Z <= '1';
		end if;

		o <= std_logic_vector(temp(31 downto 0));

	end process;

end BHV;




--1-bit carry flag “C” (only affected during add and subtract ALU operations), one 1-bit zero flag “Z”
--(asserted when the output word is equal to zero), one 1-bit signed flag “S” (asserted when the 31st bit of
--output word is equal to one), and one 1-bit overflow flag “V” (only affected during add and subtract ALU
--operations). 
--the sum of “ia” and “ib” when “control” = “0010”
-- the difference of “ia” and “ib” when “control” = “0110”
-- the logical AND of “ia” and “ib” when “control” = “0000”
-- the logical OR of “ia” and “ib” when “control” = “0001”
-- the logical NOR of “ia” and “ib” when “control” = “1100”
-- the slt operation of signed “ia” and “ib” when “control” = “0111”
-- the slt of unsigned “ia” and “ib” when “control” = “1111”
-- the logical shift of “ib”, in the direction indicated by “shdir” (‘0’ left and ‘1’ right), and by the
--amount “shamt” when “control” = “0011”
