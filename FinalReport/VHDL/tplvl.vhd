library ieee;
use ieee.std_logic_1164.all;

entity tplvl is 
	port ( 
		clk, regclk, memclk, rst : in std_logic
	);
end tplvl;

architecture STR of tplvl is
	--IF stage/ P0
	signal PC_SEL : std_logic_vector(1 downto 0);
	signal PCSEL_OUT, PCREG_OUT, instrMem_OUT, PCplus4_OUT, STALLSEL_OUT : std_logic_vector(31 downto 0);
	signal STALL_SEL : std_logic;

	--ID stage/ P1
	signal valid_SIG, valid_SIG_STALL, VALID_P1_OUT, comp_out, ZSextend, jal_sel, ALUSRC1, memwr_en, regWrite, memtoReg : std_logic;
	signal regDst, memCtrl 	: std_logic_vector(1 downto 0);
	signal ALUOP 	: std_logic_vector(2 downto 0);
	signal REGDSTSEL_OUT : std_logic_vector(4 downto 0);
	signal PC_P1_OUT, instr_P1_OUT, PCPlus_P1_OUT, jumpshift_OUT, reg0_OUT, reg1_OUT, ext_OUT, reg1jalSEL_OUT, SLL2_ext_OUT : std_logic_vector(31 downto 0);

	signal COMP0_FW, COMP1_FW : std_logic_vector(1 downto 0);
	signal COMP0SEL_OUT, COMP1SEL_OUT : std_logic_vector(31 downto 0);

	--EX stage/ P2
	signal regWrite_P2_OUT, memToReg_P2_OUT, memWren_P2_OUT, jalsel_P2_OUT, ALUSRC1_P2_OUT, C_FLAG, S_FLAG, Z_FLAG, V_FLAG : std_logic;
	signal memctrl_P2_OUT, ALUSRC0_FW, ALUSRC1_FW: std_logic_vector(1 downto 0);
	signal ALUOP_P2_OUT : std_logic_vector(2 downto 0);
	signal rs_P2_OUT, rt_P2_OUT, rd_P2_OUT, regDst_P2_OUT : std_logic_vector(4 downto 0);
	signal reg0_P2_OUT, reg1_P2_OUT, EXT_P2_OUT, ALUSRC0SEL_OUT, ALUSRC1SEL_OUT, ALU_OUT : std_logic_vector(31 downto 0);


	--MEM stage/P3
	signal regWrite_P3_OUT, memWren_P3_OUT, memToReg_P3_OUT, jalsel_P3_OUT : std_logic;
	signal memctrl_P3_OUT : std_logic_vector(1 downto 0);
	signal regDst_P3_OUT, rt_P3_OUT : std_logic_vector(4 downto 0);
	signal ALU_P3_OUT, reg1jal_P3_OUT, DATMEM_OUT, reg1alusel_OUT : std_logic_vector(31 downto 0);
	signal wrdat_FW : std_logic;
	signal wrdatSEL_OUT : std_logic_vector(31 downto 0);

	--WB stage/ P4
	signal regwrite_P4_OUT, memToReg_P4_OUT : std_logic;
	signal regDST_P4_OUT : std_logic_vector(4 downto 0);
	signal WBPIPE3_OUT: std_logic_vector(1 downto 0);
	signal writeBack, ALUPIPE3_OUT, DATMEM_P4_OUT, REG1ALU_P4_OUT: std_logic_vector(31 downto 0);


begin

------------
--IF_STAGE--
------------
U_PC_SEL : entity work.mux4_1
	generic map(32)
	port map(
		sel => PC_SEL,
		in0	=> PCplus4_OUT,   --PC_normal,
		in1 => PCPlus_P1_OUT, --PC branch
		in2 => jumpshift_OUT,
		in3 => reg0_OUT,
		output => PCSEL_OUT
	);

U_PC_REG : entity work.pcREG 
	generic map(32)
	port map(
		clk	=> clk, 
		rst => rst,
		ld 	=> valid_SIG_STALL,
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

U_INSTR_MEM : entity work.romBlock
	port map (
		address	=> PCREG_OUT(9 downto 2), 
		clock	=> memclk, --FIXXXXXXXXXXXXXXXXXXXXXXXXXXXX
		q	 	=> instrMem_OUT
	);

------------
--ID_STAGE--
------------

U_PIPE_1 : entity work.pipe1
	port map(
		clk	=> clk,
		rst => rst, 
		ld => valid_SIG_STALL,
		valid_IN => valid_SIG and valid_SIG_STALL,
		valid_OUT => VALID_P1_OUT,
		pcreg_IN => PCplus4_OUT,
		pcreg_OUT =>PC_P1_OUT,
		instrreg_IN => instrMem_OUT,
		instrreg_OUT => instr_P1_OUT
		);

U_PIPECTRL : entity work.pipeCtrl 
	port map(
		opcode 			=> instr_P1_OUT(31 downto 26),
		funct			=> instr_P1_OUT(5 downto 0),
		comparator_out	=> comp_out,
		nop 			=> VALID_P1_OUT,
		STALL_SEL 		=> STALL_SEL,
		valid			=> valid_SIG,
		PC_SEL 			=> PC_SEL,
		ZSextend 		=> ZSextend,
		jal_sel 		=> jal_sel,
		regDst 			=> regDst,
		ALUSRC1 		=> ALUSRC1,
		ALU_OP 			=> ALUOP,
		memWr_en 		=> memWr_en,
		memCtrl 		=> memCtrl,
		regWrite 		=> regWrite,
		memToReg 		=> memToReg
	); 

U_REGFILE : entity work.registerFile 
	port map(
		clk 	=> regclk, 
		rst 	=> rst,
		rr0		=> instr_P1_OUT(25 downto 21),
		rr1		=> instr_P1_OUT(20 downto 16),
		reg_wr	=> regDST_P4_OUT, --destination register
		d 		=> writeBack,	
		w_en	=> regwrite_P4_OUT,				
		q0		=> reg0_OUT,
		q1		=> reg1_OUT
	);

U_EXTENDER : entity work.extender 
	port map(
		in0 => instr_P1_OUT(15 downto 0),
		sel => ZSextend,
		out0 => ext_OUT
	);

U_JAL_SEL : entity work.mux2_1
	port map(
		sel => jal_sel,
		in0	=> reg1_OUT,
		in1 => PC_P1_OUT,
		output => reg1jalSEL_OUT
	);

U_PC_ADDER2 : entity work.adder 
	generic map(32)
	port map(
		in0 	=> PC_P1_OUT,
		in1 	=> SLL2_ext_OUT,
		out0 	=> PCPlus_P1_OUT
	);

U_COMP0_SEL : entity work.mux4_1
	generic map(32)
	port map(
		sel => COMP0_FW,
		in0	=> reg0_OUT,   
		in1 => (others=>'0'), 
		in2 => ALU_P3_OUT,
		in3 => writeBack,
		output => COMP0SEL_OUT
	);

U_COMP1_SEL : entity work.mux4_1
	generic map(32)
	port map(
		sel => COMP1_FW,
		in0	=> reg1_OUT,   
		in1 => (others=>'0'), 
		in2 => ALU_P3_OUT,
		in3 => writeBack,
		output => COMP1SEL_OUT
	);

U_COMPARATOR : entity work.comparator
	port map(
		in0 	=> COMP0SEL_OUT, 
		in1	 	=> COMP1SEL_OUT,
		equal 	=> comp_out
	);

U_SLL2 : entity work.SLL2 
	port map(
		in0 => ext_OUT,
		out0 => SLL2_ext_OUT
	);

U_SLL2_PC : entity work.SLL2 
	port map(
		in0 => "000000" & instr_P1_OUT(25 downto 0),
		out0 => jumpshift_OUT
	);

U_HAZARD_DETECTION_UNIT : entity work.hazardUnit 
	port map(
		instr_op_31_26 	=> instr_P1_OUT(31 downto 26),
		instr_RS_25_21	=> instr_P1_OUT(25 downto 21),
		instr_RT_20_16	=> instr_P1_OUT(20 downto 16),
		memtoreg_P2_OUT	=> memtoreg_P2_OUT,
		RT_P2_OUT		=> rt_P2_OUT,
		--COMPARATOR
		regDst_P2_OUT 	=> regDst_P2_OUT,
		regDst_P3_OUT 	=> regDst_P3_OUT,
		memtoreg_P3_OUT => memToReg_P3_OUT,
		regWrite_P2_OUT => regWrite_P2_OUT,
		--OUT 
		stall_SEL 		=> stall_SEL,
		validSIG_STALL 	=> valid_SIG_STALL
	);

U_PIPE_2: entity work.pipe2
	port map(
		clk	=> clk,
		rst => rst,
		--WB
		regWrite_IN	=> regWrite,
		memtoReg_IN	=> memToReg,
		regWrite_OUT => regWrite_P2_OUT,
		memtoReg_OUT => memToReg_P2_OUT,
		--MEM 
		memwren_IN	=> memWr_en,
		memctrl_IN	=> memCtrl,
		jalsel_IN 	=> jal_sel,
		memwren_OUT => memWren_P2_OUT,
		memctrl_OUT => memctrl_P2_OUT,
		jalsel_OUT  => jalsel_P2_OUT,
		--EX
		alusrc1_IN 	=> ALUSRC1, 
		aluop_IN	=> ALUOP,
		alusrc1_OUT => ALUSRC1_P2_OUT, 
		aluop_OUT	=> ALUOP_P2_OUT,
		--DATA
		reg0_IN 	=> reg0_OUT,
		reg1jal_IN	=> reg1jalSEL_OUT,
		extended_IN	=> ext_OUT,
		rs_IN => instr_P1_OUT(25 downto 21),
		rt_IN => instr_P1_OUT(20 downto 16),
		dst_IN => REGDSTSEL_OUT,
		reg0_OUT => reg0_P2_OUT,
		reg1jal_OUT => reg1_P2_OUT,
		extended_OUT => EXT_P2_OUT,
		rs_OUT => rs_P2_OUT,
		rt_OUT => rt_P2_OUT,
		dst_OUT => regDst_P2_OUT
		);

U_FORWARDING_UNIT : entity work.forwardUnit 
	port map(
		regWrite_P3_out 	=> regWrite_P3_out,
		regdst_P3_out		=> regDst_P3_OUT,
		regWrite_P4_out 	=> regWrite_P4_out,
		regdst_P4_out 		=> regdst_P4_out,
		AlUSRC1_P2_OUT 		=> AlUSRC1_P2_OUT,
		rs_P2_OUT 			=> rs_P2_OUT,
		rt_P2_OUT 			=> rt_P2_OUT,
		ALUSRC0_FW 			=> ALUSRC0_FW,
		ALUSRC1_FW	 		=> ALUSRC1_FW,
		--COMPARATOR FORWARDING
		--IN
		rs_P1_OUT			=> instr_P1_OUT(25 downto 21),
		rt_P1_OUT			=> instr_P1_OUT(20 downto 16),
		--OUT
		COMP0_FW			=> COMP0_FW,
		COMP1_FW			=> COMP1_FW,
		--MEMDAT forwarding
		rt_P3_out 			=> rt_P3_out,
		wrdat_FW 			=> wrdat_FW
	);

U_REGDST_SEL : entity work.mux4_1
	generic map(5)
	port map(
		sel => regDst,
		in0	=> instr_P1_OUT(15 downto 11),
		in1 => instr_P1_OUT(20 downto 16),
		in2 => "11111",
		in3 => (others=>'0'),
		output => REGDSTSEL_OUT
	);

U_ALUSRC0_SEL: entity work.mux4_1
	generic map(32)
	port map(
		sel => ALUSRC0_FW,
		in0	=> reg0_P2_OUT,
		in1 => (others=>'0'),
		in2 => ALU_P3_OUT,
		in3 => writeBack,
		output => ALUSRC0SEL_OUT
	);

U_ALUSRC1_SEL: entity work.mux4_1
	generic map(32)
	port map(
		sel => ALUSRC1_FW,
		in0	=> reg1_P2_OUT,
		in1 => EXT_P2_OUT,
		in2 => ALU_P3_OUT,
		in3 => writeBack,
		output => ALUSRC1SEL_OUT
	);

U_ALUandCTRL : entity work.alu_ctrl 
	port map(
		func		=> EXT_P2_OUT(5 downto 0),
		ALUop		=> ALUOP_P2_OUT,
		ia			=> ALUSRC0SEL_OUT,
		ib 			=> ALUSRC1SEL_OUT,
		shamt 		=> EXT_P2_OUT(10 downto 6),
		shdir 		=> EXT_P2_OUT(1),
		o 			=> ALU_OUT,
		C 			=> C_FLAG,
		Z 			=> Z_FLAG,
		S 			=> S_FLAG,
		V 			=> V_FLAG
	);

U_PIPE_3 : entity work.pipe3
	port map(
		clk	=> clk,
		rst => rst,
		--WB
		regWrite_IN	=> regWrite_P2_OUT,
		memtoReg_IN	=> memToReg_P2_OUT,
		regWrite_OUT => regWrite_P3_OUT,
		memtoReg_OUT => memToReg_P3_OUT,
		--MEM 
		memwren_IN	=> memWren_P2_OUT,
		memctrl_IN	=> memctrl_P2_OUT,
		jalsel_IN 	=> jalsel_P2_OUT,
		memwren_OUT => memWren_P3_OUT,
		memctrl_OUT => memctrl_P3_OUT,
		jalsel_OUT  => jalsel_P3_OUT,
		--DATA
		alureg_IN 	=> ALU_OUT,
		reg1jal_IN	=> reg1_P2_OUT,
		dstreg_IN	=> regDst_P2_OUT,
		alureg_OUT => ALU_P3_OUT,
		reg1jal_OUT => reg1jal_P3_OUT,
		dstreg_OUT 	=> regDst_P3_OUT,
		rt_IN 		=> rt_P2_OUT,
		rt_OUT 		=> rt_P3_OUT
		);

--U_DATMEM: entity work.ram_ctrl 
--		port map (
--			clk 	=> memclk,
--			dataIn	=> reg1jal_P3_OUT, 
--			addr 	=> ALU_P3_OUT(7 downto 0),
--			wr_en 	=> memWren_P3_OUT and VALID_P3_OUT,
--			ctrl  	=> memctrl_P3_OUT,
--			dataOut => DATMEM_OUT
--		);

U_WRDAT_SEL: entity work.mux2_1
	port map(
		sel => wrdat_FW,
		in0	=> reg1jal_P3_OUT,
		in1 => writeBack,
		output => wrdatSEL_OUT
	);

U_DATMEM: entity work.ramControl2 
	port map (
		clk 		=> memclk,
		address 	=> ALU_P3_OUT(9 downto 0),
		control  	=> memctrl_P3_OUT,
		wr_en 		=> memWren_P3_OUT,
		data_IN		=> wrdatSEL_OUT, 
		data_Out 	=> DATMEM_OUT
	);

U_JALM_SEL : entity work.mux2_1
	generic map(32)
	port map(
		sel 	=> jalsel_P3_OUT,
		in0		=> ALU_P3_OUT,
		in1		=> reg1jal_P3_OUT,
		output 	=> reg1alusel_OUT
	);

U_PIPE_4 : entity work.pipe4 
	port map(
		clk	=> clk,
		rst => rst,
		--WB
		regWrite_IN	=> regWrite_P3_OUT,
		memtoReg_IN	=> memToReg_P3_OUT,
		regWrite_OUT=> regwrite_P4_OUT,
		memtoReg_OUT=> memToReg_P4_OUT,
		--DATA
		memdata_IN => DATMEM_OUT,
		reg1alu_IN	=> reg1alusel_OUT,
		dstreg_IN	=> REGDST_P3_OUT,
		memdata_OUT => DATMEM_P4_OUT,
		reg1alu_OUT => REG1ALU_P4_OUT,
		dstreg_OUT 	=> REGDST_P4_OUT
		);

U_WRREG_SEL: entity work.mux2_1
	port map(
		sel => memToReg_P4_OUT,
		in0	=> REG1ALU_P4_OUT,
		in1 => DATMEM_P4_OUT,
		output => writeBack
	);

end STR;
