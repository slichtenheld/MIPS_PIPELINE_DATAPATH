library ieee;
use ieee.std_logic_1164.all;

use work.mipsLib.all;

entity hazardUnit is
	port(
		instr_op_31_26	: in std_logic_vector(5 downto 0); --comp hazard det
		instr_RS_25_21	: in std_logic_vector(4 downto 0);
		instr_RT_20_16	: in std_logic_vector(4 downto 0);
		memtoreg_P2_OUT	: in std_logic;
		RT_P2_OUT		: in std_logic_vector(4 downto 0);
		--COMPARATOR
		regDst_P2_OUT	: in std_logic_vector(4 downto 0);
		regDst_P3_OUT	: in std_logic_vector(4 downto 0);
		memtoreg_P3_OUT : in std_logic;
		regWrite_P2_OUT : in std_logic;


		stall_SEL 		: out std_logic;
		validSIG_STALL 	: out std_logic
	);
end hazardUnit;

architecture BHV of hazardUnit is

begin

	process(instr_RS_25_21, instr_RT_20_16, memtoreg_P2_OUT, RT_P2_OUT, instr_op_31_26, regDst_P2_OUT, regDst_P3_OUT, regWrite_P2_OUT, memtoreg_P3_OUT)
	begin
	stall_sel <= '0';
	validSIG_STALL <= '1';

	if (memtoreg_P2_OUT = '1') then
		if (RT_P2_OUT = instr_RT_20_16) then
			stall_sel <= '1';
			validSIG_STALL <= '0';
		elsif (RT_P2_OUT = instr_RS_25_21) then
			stall_sel <= '1';
			validSIG_STALL <= '0';
		end if;
	end if;


	if ((instr_op_31_26 = i_beq) or (instr_op_31_26 = i_bne)) then
		if ((regWrite_P2_OUT = '1') and ((regDst_P2_OUT = instr_RS_25_21) or (regDst_P2_OUT = instr_RT_20_16))) then
			stall_sel <= '1';
			validSIG_STALL <= '0';
		elsif ((memtoreg_P2_OUT = '1') and ((regDst_P2_OUT = instr_RS_25_21) or (regDst_P2_OUT = instr_RT_20_16))) then
			stall_sel <= '1';
			validSIG_STALL <= '0';
		elsif ((memtoreg_P3_OUT = '1') and ((regDst_P3_OUT = instr_RS_25_21) or (regDst_P3_OUT = instr_RT_20_16))) then
			stall_sel <= '1';
			validSIG_STALL <= '0';
		end if;
	end if;

	end process;
end BHV;
