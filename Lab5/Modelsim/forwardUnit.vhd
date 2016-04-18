library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity forwardUnit is
	port (
		regWrite_P3_out	: in std_logic;
		regdst_P3_out	: in std_logic_vector(4 downto 0);
		regWrite_P4_out	: in std_logic;
		regdst_P4_out	: in std_logic_vector(4 downto 0); 

		AlUSRC1_P2_OUT	: in std_logic;

		rs_P2_OUT		: in std_logic_vector(4 downto 0);
		rt_P2_OUT		: in std_logic_vector(4 downto 0);

		ALUSRC0_FW		: out std_logic_vector(1 downto 0);
		ALUSRC1_FW		: out std_logic_vector(1 downto 0);


		--FOR COMPARATOR FORWARDING
		--IN
		rs_P1_OUT		: in std_logic_vector(4 downto 0);
		rt_P1_OUT		: in std_logic_vector(4 downto 0);
		--OUT
		COMP0_FW 		: out std_logic_vector(1 downto 0);
		COMP1_FW		: out std_logic_vector(1 downto 0);
		--MEMDAT FORWARDING
		rt_P3_out  		: in std_logic_vector(4 downto 0);
		wrdat_FW		: out std_logic

	);
end forwardUnit;

architecture BHV of forwardUnit is

begin

	process(regWrite_P3_out, regWrite_P4_out, regdst_P3_out, regdst_P4_out, AlUSRC1_P2_OUT, rs_P1_OUT, rs_P2_OUT, rt_P1_OUT, rt_P2_OUT, rt_P3_out)
	begin
		ALUSRC0_FW <= "00";
		ALUSRC1_FW <= '0' & AlUSRC1_P2_OUT;
		COMP0_FW <= "00";
		COMP1_FW <= "00";
		wrdat_FW <= '0';

		--ALU FORWARDING
		if ((regdst_P3_out = rs_P2_OUT) and (regWrite_P3_out = '1')) then
				ALUSRC0_FW <= "10";
		elsif ((regdst_P4_out = rs_P2_OUT) and (regWrite_P4_out = '1')) then
				ALUSRC0_FW <= "11";
		end if;

		if ((regdst_P3_out = rt_P2_OUT) and (regWrite_P3_out = '1') and (AlUSRC1_P2_OUT = '0')) then
					ALUSRC1_FW <= "10";
		elsif ((regdst_P4_out = rt_P2_OUT) and (regWrite_P4_out = '1') and (AlUSRC1_P2_OUT = '0')) then
					ALUSRC1_FW <= "11";	
		end if;

		--COMPARATOR FORWARDING
		if ((regWrite_P3_out='1') and (regdst_P3_out = rs_P1_OUT)) then
			COMP0_FW <= "10";
		elsif ((regWrite_P4_out='1') and (regdst_P4_out = rs_P1_OUT)) then
			COMP0_FW <= "11";
		end if;

		if ((regWrite_P3_out='1') and (regdst_P3_out = rt_P1_OUT)) then
			COMP1_FW <= "10";
		elsif ((regWrite_P4_out='1') and (regdst_P4_out = rt_P1_OUT)) then
			COMP1_FW <= "11";
		end if;	

		if ((regWrite_P4_out = '1') and (rt_P3_out= regdst_P4_out)) then
			wrdat_FW <= '1';
		end if;

	end process;

end BHV;