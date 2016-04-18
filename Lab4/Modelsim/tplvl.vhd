library ieee;
use ieee.std_logic_1164.all;


entity tplvl is 
	port (
		clk, clk_mem, rst : in std_logic
	);
end tplvl;


architecture STR of tplvl is

begin

U_PC_REG: entity work.pcReg 	
		port map(
			clk => clk,
			rst => rst,
			ld => pcWr or (pcWrCond and Z_Flag),
			d => to_PC,
			q => PC_OUT
		);

U_RD_ADDR_SEL: entity work.mux2_1
		generic map(width => 32)
		port map(
		   sel		=>	IorD,
		   in0		=>	PC_OUT,
		   in1		=>	RD_ADDR,
		   output	=>	regDstOut
		);

U_MEM: entity work.
	port map (
			clk 	=> clk_mem,
			dataIn	=> BUS_B, --FIXXXX???? changed from ALUSrcOut
			addr 	=> RD_ADDR,
			wr_en 	=> memWr,
			ctrl  	=> memCtrl,
			dataOut => memOut
		);

U_INSTR_REG: entity work.
		port map(
			clk => clk,
			rst => rst,
			ld => irWr,
			d => memOut,
			q => instrReg_OUT
		);

U_WR_REG_SEL: entity work.mux2_1
		generic map(width => 5)
		port map(
		   sel		=>	RegDst,
		   in0		=>	instrReg_OUT(20 downto 16),
		   in1		=>	instrReg_OUT(15 downto 11),
		   output	=>	regDstOut
		);

U_WR_REGDATA_SEL: entity work.mux2_1
		generic map(width => 5)
		port map(
		   sel		=>	memToReg,
		   in0		=>	ALU_OUT,
		   in1		=>	memOut,
		   output	=>	writeRegData
		);

U_REGFILE: entity work.registerFile
		port map(
			clk		=>	clk,
			rst 	=>	rst,
			rr0		=>	instrReg_OUT(25 downto 21),
			rr1		=>	instrReg_OUT(20 downto 16),
			reg_wr	=>	regDstOut,
			d 		=>	writeRegData,
			w_en	=>	regWr,
			q0		=>	BUS_A,
			q1		=>	BUS_B
		);

U_EXTENDER:	entity work.extender
		port map(
			in0		=>	instrReg_OUT(15 downto 0),
			sel		=>	ZSextend,
			out0 	=>	extenderOut
		);

U_SLL2: entity work.SLL2 
		generic map (width => 32)
		port map(
			in0		=>	extenderOut,
			out0	=>	SLL2Out
		);

U_ALU_A_SEL: entity work.mux2_1
		generic map(width => 5)
		port map(
		   sel		=>	ALUselA,
		   in0		=>	PC_OUT,
		   in1		=>	BUS_A,
		   output	=>	ALU_A
		);

U_ALU_B_SEL: entity work.mux4_1
		generic map(width => 5)
		port map(
		   sel		=>	ALUselB,
		   in0		=>	ALU_B,
		   in1		=>	x"00000004",
		   in2 		=>  BUS_B,
		   in3		=> 	
		   output	=>	writeRegData
		);

U_ALUplusCTRL: entity work.alu_ctrl
		port map(
			func	=>	instr(5 downto 0),
			ALUop	=>	ALU_OP,	
			ia		=>	ALU_A,
			ib 		=>	ALU_B,
			shamt 	=>	instrReg_OUT(10 downto 6),
			shdir 	=>	instrReg_OUT(1),
			jumpRegSel => '0', -------------UPDATE!!!!!
			o 		=>	ALU_OUT,
			C		=>	C_Flag,
			Z		=>	Z_Flag,
			S		=>	S_Flag,
			V		=>	V_Flag
		);

--U_ALU32: entity work.alu32 	
--		port map (
--			ia => ALU_A,
--			ib => ALU_B,
--			ctrl => alu_ctrl,
--			shamt => instrReg_OUT(10 downto 6), 
--			shdir => instrReg_OUT(1),
--			o	=> ALU_OUT,
--			C 	=> C_Flag,
--			Z	=> Z_Flag,
--			S 	=> S_Flag,
--			V 	=> V_Flag
--		);

U_TARGET_REG: 
		port map(
			clk => clk,
			rst => rst,
			ld => BrWr,
			d => ALU_OUT,
			q => pcRegOut
		);

U_PC_SRC_SEL: entity work.mux2_1
		generic map(width => 32)
		port map(
		   sel		=>	pcSrc,
		   in0		=>	PC_OUT,
		   in1		=>	RD_ADDR,
		   output	=>	to_PC
		);

U_CONTROL: 





end STR;

