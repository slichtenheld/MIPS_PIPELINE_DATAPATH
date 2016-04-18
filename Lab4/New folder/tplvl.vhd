library ieee;
use ieee.std_logic_1164.all;

entity tplvl is 
	port ( 
		clk, memclk, rst : in std_logic
	);
end tplvl;

architecture STR of tplvl is
	--Signals IF stage
	signal PC_SEL : std_logic_vector(1 downto 0);
	signal PC_normal, PC_branch, PC_jump, PC_jumpReg, PCSEL_OUT, PCREG_OUT, PCplus4_OUT, instrMem_OUT : std_logic_vector(31 downto 0);
	signal PCREG_LD : std_logic;

	--PIPE0
	signal wr_en, ZSextend, jalAdd_SEL, regEqual_SIG : std_logic;
	signal instrPipe_OUT, writeBack_SIG, reg0_OUT, reg1_OUT, extender_OUT, extenderSLL2_OUT, jalAdd_OUT, PCpipePlus_OUT, PCPIPE0_OUT : std_logic_vector(31 downto 0);

	signal comparator_out : std_logic;
	signal jal_sel : std_logic;
	signal regDst : std_logic_vector(1 downto 0);

	signal REGDSTSEL_OUT: std_logic_vector(4 downto 0);
	signal jumpshift_OUT: std_logic_vector(31 downto 0);
	signal NOPPIPE0_OUT: std_logic;
	signal jalSEL2_OUT : std_logic_vector(31 downto 0);

	--PIPE1
	signal WBPIPE1_LD, MPIPE1_LD, EXPIPE1_LD: std_logic;
	signal WBPIPE1_OUT : std_logic_vector(1 downto 0);
	signal MPIPE1_OUT : std_logic_vector(3 downto 0);
	signal valid_SIG, NOPPIPE1_OUT, NOPPIPE2_OUT, NOPPIPE3_OUT : std_logic;

	signal ALUSRC0, ALUSRC1, ALUSRC0PIPE1_OUT, ALUSRC1PIPE1_OUT : std_logic_vector(1 downto 0);
	signal ALUOP_IN : std_logic_vector(2 downto 0);

	signal ALUOPPIPE1_OUT : std_logic_vector(2 downto 0);

	signal REGDSTPIPE1_OUT: std_logic_vector(4 downto 0);

	signal reg0PIPE1_OUT, reg1PIPE1_OUT, EXTPIPE1_OUT, ALU_OUT : std_logic_vector(31 downto 0);

	signal C_FLAG, Z_FLAG, V_FLAG, S_FLAG : std_logic;

	--PIPE2
	signal memWr_en : std_logic;
	signal memCtrl : std_logic_vector(1 downto 0);
	signal WBPIPE2_OUT : std_logic_vector(1 downto 0);
	signal REGDSTPIPE2_OUT : std_logic_vector(4 downto 0);
	signal ALUSRC0SEL_OUT, ALUSRC1SEL_OUT : std_logic_vector(31 downto 0);
	signal MPIPE2_OUT : std_logic_vector(3 downto 0);
	signal ALUPIPE2_OUT, reg1PIPE2_OUT, DATMEM_OUT, DATPIPE3_OUT : std_logic_vector(31 downto 0);

	signal JALMSEL_OUT : std_logic_vector(31 downto 0);


	--PIPE3
	signal regWrite, memToReg : std_logic;
	signal REGDSTPIPE3_OUT : std_logic_vector(4 downto 0);
	signal WBPIPE3_OUT: std_logic_vector(1 downto 0);
	signal ALUPIPE3_OUT: std_logic_vector(31 downto 0);


begin


U_PC_SEL : entity work.mux4_1
	generic map(32)
	port map(
		sel => PC_SEL,
		in0	=> PCplus4_OUT,   --PC_normal,
		in1 => PCpipePlus_OUT, --PC branch
		in2 => jumpshift_OUT,
		in3 => reg0_OUT,
		output => PCSEL_OUT
	);

U_PC_REG : entity work.pcREG 
	generic map(32)
	port map(
		clk	=> clk, 
		rst => rst,
		ld 	=> '1',
		d  	=> PCSEL_OUT,
		q  	=> PCREG_OUT
	);

U_PC_ADDER : entity work.adder
	generic map(32)
	port map(
		in0 	=> PCREG_OUT,
		in1 	=> x"00000004",
		out0 	=> PCplus4_OUT
	);

U_INSTR_MEM : entity work.instr_mem
	port map (
		address	=> PCREG_OUT(9 downto 2), 
		clock	=> memclk, --FIXXXXXXXXXXXXXXXXXXXXXXXXXXXX
		q	 	=> instrMem_OUT
	);

U_PC_PIPE0 : entity work.reg
	generic map (32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> PCplus4_OUT,
		q  	=> PCPIPE0_OUT
	);	

U_INSTR_PIPE0 : entity work.reg
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> instrMem_OUT,
		q  	=> instrPipe_OUT
	);

U_NOP_PIPE0 : entity work.reg1_RESET1 
	port map (
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> valid_SIG,
		q  	=> NOPPIPE0_OUT
	);

U_PIPECTRL : entity work.pipeCtrl 
	port map(
		opcode 			=> instrPipe_OUT(31 downto 26),
		funct			=> instrPipe_OUT(5 downto 0),
		comparator_out	=> comparator_out,
		nop 			=> NOPPIPE0_OUT,
		valid			=> valid_SIG,
		PC_SEL 			=> PC_SEL,
		ZSextend 		=> ZSextend,
		jal_sel 		=> jal_sel,
		regDst 			=> regDst,
		ALUSRC0 		=> ALUSRC0,
		ALUSRC1 		=> ALUSRC1,
		ALU_OP 			=> ALUOP_IN,
		memWr_en 		=> memWr_en,
		memCtrl 		=> memCtrl,
		regWrite 		=> regWrite,
		memToReg 		=> memToReg
	); 

U_REGFILE : entity work.registerFile 
	port map(
		clk 	=> clk, 
		rst 	=> rst,
		rr0		=> instrPipe_OUT(25 downto 21),
		rr1		=> instrPipe_OUT(20 downto 16),
		reg_wr	=> REGDSTPIPE3_OUT,
		d 		=> writeBack_SIG,	
		w_en	=> WBPIPE3_OUT(1) and NOPPIPE3_OUT,				
		q0		=> reg0_OUT,
		q1		=> reg1_OUT
	);

U_EXTENDER : entity work.extender 
	port map(
		in0 => instrPipe_OUT(15 downto 0),
		sel => ZSextend,
		out0 => extender_OUT
	);


U_JAL_SEL : entity work.mux2_1
	port map(
		sel => jal_sel,
		in0	=> extenderSLL2_OUT,
		in1 => x"00000000",
		output => jalAdd_OUT
	);

U_JAL_SEL2 : entity work.mux2_1
	port map(
		sel => jal_sel,
		in0	=> reg1_OUT,
		in1 => PCpipePlus_OUT,
		output => jalSEL2_OUT
	);

U_PC_ADDER2 : entity work.adder 
	generic map(32)
	port map(
		in0 	=> PCPIPE0_OUT,
		in1 	=> jalAdd_OUT,
		out0 	=> PCpipePlus_OUT
	);

U_COMPARATOR : entity work.comparator
	port map(
		in0 	=> reg0_OUT, 
		in1	 	=> reg1_OUT,
		equal 	=> comparator_out
	);

U_SLL2 : entity work.SLL2 
	port map(
		in0 => extender_OUT,
		out0 => extenderSLL2_OUT
	);

U_SLL2_PC : entity work.SLL2 
	port map(
		in0 => "000000" & instrPipe_OUT(25 downto 0),
		out0 => jumpshift_OUT
	);

U_REGDST_SEL : entity work.mux4_1
	generic map(5)
	port map(
		sel => regDst,
		in0	=> instrPipe_OUT(15 downto 11),
		in1 => instrPipe_OUT(20 downto 16),
		in2 => "11111",
		in3 => (others=>'0'),
		output => REGDSTSEL_OUT
	);

U_NOP_PIPE1: entity work.reg1 
	port map (
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> NOPPIPE0_OUT,
		q  	=> NOPPIPE1_OUT
	);

U_WB_PIPE1: entity work.reg 
	generic map(2)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> regWrite & memToReg,
		q  	=> WBPIPE1_OUT
	);

U_M_PIPE1: entity work.reg
	generic map(4)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> memWr_en & memCtrl & jal_sel,
		q  	=> MPIPE1_OUT
	);

U_ALUSRC0_PIPE1: entity work.reg 
	generic map(2)
	port map(
		clk	=> clk,
		rst => rst, 
		ld 	=> '1',
		d  	=> ALUSRC0,
		q  	=> ALUSRC0PIPE1_OUT
	);

U_ALUSRC1_PIPE1: entity work.reg 
	generic map(2)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> ALUSRC1,
		q  	=> ALUSRC1PIPE1_OUT
	);

U_ALUOP_PIPE1: entity work.reg 
	generic map(3)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> ALUOP_IN,
		q  	=> ALUOPPIPE1_OUT
	);

U_REGDST_PIPE1: entity work.reg
	generic map(5)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> REGDSTSEL_OUT,
		q  	=> REGDSTPIPE1_OUT
	); 

U_REG0_PIPE1: entity work.reg 
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1', 
		d  	=> reg0_OUT,
		q  	=> reg0PIPE1_OUT
	);

U_REG1_PIPE1: entity work.reg
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> jalSEL2_OUT,
		q  	=> reg1PIPE1_OUT
	);

U_EXT_PIPE1: entity work.reg 
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> extender_OUT,
		q  	=> EXTPIPE1_OUT
	);

U_ALUSRC0_SEL: entity work.mux4_1
	generic map(32)
	port map(
		sel => ALUSRC0PIPE1_OUT,
		in0	=> reg0PIPE1_OUT,
		in1 => (others=>'0'),
		in2 => (others=>'0'),
		in3 => (others=>'0'),
		output => ALUSRC0SEL_OUT
	);

U_ALUSRC1_SEL: entity work.mux4_1
	generic map(32)
	port map(
		sel => ALUSRC1PIPE1_OUT,
		in0	=> reg1PIPE1_OUT,
		in1 => EXTPIPE1_OUT,
		in2 => (others=>'0'),
		in3 => (others=>'0'),
		output => ALUSRC1SEL_OUT
	);

U_ALUandCTRL : entity work.alu_ctrl 
	port map(
		func		=> EXTPIPE1_OUT(5 downto 0),
		ALUop		=> ALUOPPIPE1_OUT,
		ia			=> ALUSRC0SEL_OUT,
		ib 			=> ALUSRC1SEL_OUT,
		shamt 		=> EXTPIPE1_OUT(10 downto 6),
		shdir 		=> EXTPIPE1_OUT(1),
		o 			=> ALU_OUT,
		C 			=> C_FLAG,
		Z 			=> Z_FLAG,
		S 			=> S_FLAG,
		V 			=> V_FLAG
	);

U_NOP_PIPE2: entity work.reg1 
	port map (
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> NOPPIPE1_OUT,
		q  	=> NOPPIPE2_OUT

	);

U_WB_PIPE2 : entity work.reg 
	generic map(2)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> WBPIPE1_OUT,
		q  	=> WBPIPE2_OUT
	);

U_M_PIPE2 : entity work.reg
	generic map(4)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> MPIPE1_OUT,
		q  	=> MPIPE2_OUT
	);

U_ALU_PIPE2: entity work.reg
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> ALU_OUT,
		q  	=> ALUPIPE2_OUT
	);

U_REG1_PIPE2: entity work.reg 
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> reg1PIPE1_OUT,
		q  	=> reg1PIPE2_OUT
	);

U_REGDST_PIPE2: entity work.reg 
	generic map(5)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> REGDSTPIPE1_OUT,
		q  	=> REGDSTPIPE2_OUT
	);

U_DATMEM: entity work.ram_ctrl 
		port map (
			clk 	=> memclk,
			dataIn	=> reg1PIPE2_OUT, 
			addr 	=> ALUPIPE2_OUT(7 downto 0),
			wr_en 	=> MPIPE2_OUT(3) and NOPPIPE2_OUT,
			ctrl  	=> MPIPE2_OUT(2 downto 1),
			dataOut => DATMEM_OUT
		);

U_JALM_SEL : entity work.mux2_1
	generic map(32)
	port map(
		sel 	=> MPIPE2_OUT(0),
		in0		=> ALUPIPE2_OUT,
		in1		=> reg1PIPE2_OUT,
		output 	=> JALMSEL_OUT
	);

U_NOP_PIPE3: entity work.reg1 
	port map (
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> NOPPIPE2_OUT,
		q  	=> NOPPIPE3_OUT

	);	

U_WB_PIPE3: entity work.reg
	generic map(2)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> WBPIPE2_OUT,
		q  	=> WBPIPE3_OUT
	);

U_DAT_PIPE3: entity work.reg
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> DATMEM_OUT,
		q  	=> DATPIPE3_OUT
	);

U_ALU_PIPE3: entity work.reg 
	generic map(32)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> JALMSEL_OUT,
		q  	=> ALUPIPE3_OUT
	);

U_REGDST_PIPE3: entity work.reg 
	generic map(5)
	port map(
		clk	=> clk,
		rst => rst,
		ld 	=> '1',
		d  	=> REGDSTPIPE2_OUT,
		q  	=> REGDSTPIPE3_OUT
	);

U_WRREG_SEL: entity work.mux2_1
	port map(
		sel => WBPIPE3_OUT(0),
		in0	=> ALUPIPE3_OUT,
		in1 => DATPIPE3_OUT,
		output => writeBack_SIG
	);

end STR;
