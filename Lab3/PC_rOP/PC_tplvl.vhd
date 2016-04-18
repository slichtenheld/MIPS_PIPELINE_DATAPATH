library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mipsLib.all;

entity PC_tplvl is
	port (
		clk, rst, clk_mem	: in std_logic
	);
end PC_tplvl;

architecture STR of PC_tplvl is

	signal ALU_OP 		: std_logic_vector (2 downto 0);
	signal MemToReg 	: std_logic;
	signal ALUSrc 		: std_logic;
	signal ZSextend		: std_logic;
	signal regWrite		: std_logic;
	signal memWrite 	: std_logic;
	signal regDst 		: std_logic;
	signal regDst_r31	: std_logic; --NEW rOP
	signal data_jal		: std_logic; --new rOP
	signal branch 		: std_logic_vector(1 downto 0); --new PC
	signal jump 		: std_logic; -- new PC
	signal jumpReg 		: std_logic; -- new PC

	signal rr0_data	: std_logic_vector(31 downto 0);
	signal rr1_data : std_logic_vector(31 downto 0);
	signal alu_res 	: std_logic_vector(31 downto 0);

	signal extenderOut 	: std_logic_vector(31 downto 0);
	signal regDstOut	: std_logic_vector(4 downto 0);
	signal MemToRegOut	: std_logic_vector(31 downto 0);
	signal ALUSrcOut	: std_logic_vector(31 downto 0);
	signal regDst_r31Out: std_logic_vector(4 downto 0);
	signal data_jalOut	: std_logic_vector(31 downto 0);
	signal branchSig 	: std_logic;
	signal branchSigOut : std_logic_vector(31 downto 0);
	signal jumpOut		: std_logic_vector(31 downto 0);
	signal jumpRegOut	: std_logic_vector(31 downto 0); --goes to pcReg

	signal instr 	: std_logic_vector(31 downto 0); --romOut
	signal Z_FlagOut: std_logic;
	signal SLL2Out  : std_logic_vector(31 downto 0);
	signal PCplus4	: std_logic_vector(31 downto 0);
	signal PCplus8	: std_logic_vector(31 downto 0);
	signal branchAddOut : std_logic_vector(31 downto 0);

	signal pcRegOut	: std_logic_vector(31 downto 0);


	signal ramOut : std_logic_vector(31 downto 0);
	signal memCtrl: std_logic_vector(1 downto 0);

	signal C_Flag	: std_logic;
	signal Z_Flag 	: std_logic;
	signal S_Flag 	: std_logic;
	signal V_Flag 	: std_logic;

begin


	U_MAIN_CTRL: entity work.control
		port map(
			instr31_26	=>	instr(31 downto 26),
			ALU_OP		=>	ALU_OP,
			MemToReg	=>	MemToReg,
			memWrite 	=> memWrite,
			ALUSrc		=>	ALUSrc,
			ZSextend	=>	ZSextend,
			regWrite	=>	regWrite,
			regDst		=>	regDst,
			--
			regDst_r31 	=> regDst_r31,
			data_jal   	=> data_jal,
			jump 		=> jump,
			branch 		=> branch
		);

	U_ALU_CTRL: entity work.alu_ctrl
		port map(
			func	=>	instr(5 downto 0),
			ALUop	=>	ALU_OP,	
			ia		=>	rr0_data,
			ib 		=>	ALUSrcOut,
			shamt 	=>	instr(10 downto 6),
			shdir 	=>	instr(1),
			jumpRegSel => jumpReg,
			o 		=>	alu_res,
			C		=>	C_Flag,
			Z		=>	Z_Flag,
			S		=>	S_Flag,
			V		=>	V_Flag
		);

	U_REGFILE:	entity work.registerFile
		port map(
			clk		=>	clk,
			rst 	=>	rst,
			rr0		=>	instr(25 downto 21),
			rr1		=>	instr(20 downto 16),
			reg_wr	=>	regDstOut,
			d 		=>	data_jalOut,
			w_en	=>	regWrite,
			q0		=>	rr0_data,
			q1		=>	rr1_data
		);

	U_PCREG: entity work.pcReg 	
		port map(
			clk => clk,
			rst => rst,
			ld => '1',
			d => jumpRegOut,
			q => pcRegOut
		);

	U_EXTENDER:	entity work.extender
		port map(
			in0		=>	instr(15 downto 0),
			sel		=>	ZSextend,
			out0 	=>	extenderOut
		);

	U_MUX_regDst: entity work.mux2_1
		generic map(width => 5)
		port map(
		   sel		=>	regDst,
		   in0		=>	instr(20 downto 16),
		   in1		=>	regDst_r31Out,
		   output	=>	regDstOut
		);

	U_MUX_ALUSrc:	entity work.mux2_1
		generic map(width => 32)
		port map(
		   sel		=>	ALUSrc,
		   in0		=>	rr1_data,
		   in1		=>	extenderOut,
		   output	=>	ALUSrcOut
		);

	U_MUX_MemToReg: entity work.mux2_1
		generic map(width => 32)
		port map(
		   sel		=>	MemToReg,
		   in0		=>	alu_res,
		   in1		=>	ramOut, 
		   output	=>	MemToRegOut
		);

	--NEW	
	U_MUX_regDst_r31 : entity work.mux2_1
		generic map(width => 5)
		port map(
			sel		=>	regDst_r31,
			in0		=>	instr(15 downto 11),
			in1		=>	r_31, --equal to 31 in binary in library
			output	=>	regDst_r31Out
		);

	U_MUX_data_jal : entity work.mux2_1
		generic map(width => 32)
		port map(
			sel		=>	data_jal,
			in0		=>	MemToRegOut,
			in1		=>	PCplus8,
			output	=>	data_jalOut
		);


branchSig <= branch(1) and Z_FlagOut;

	U_MUX_branchSig: entity work.mux2_1
		generic map(width => 32)
		port map(
			sel		=>	branchSig,
			in0		=>	PCplus4,
			in1		=>	branchAddOut,
			output	=>	branchSigOut
		);

	U_MUX_jump: entity work.mux2_1
		generic map(width => 32)
		port map(
			sel		=>	jump,
			in0		=>	branchSigOut,
			in1		=>	PCplus4(31 downto 28) & instr(25 downto 0) & "00",
			output	=>	jumpOut
		);

	U_MUX_jumpReg: entity work.mux2_1
		generic map (width => 32)
		port map(
			sel		=>	jumpReg,
			in0		=>	jumpOut,
			in1		=>	rr0_data,
			output	=>	jumpRegOut
		);

	U_MUXBIT_Zflag : entity work.mux2_1BIT
		port map(
			sel		=>	branch(0),
			in0		=>	not Z_Flag,
			in1		=>	Z_Flag,
			output	=>	Z_FlagOut
		);

	U_SLL2_branch: entity work.SLL2 
		generic map (width => 32)
		port map(
			in0		=>	extenderOut,
			out0	=>	SLL2Out
		);

	U_adder_PCplus4: entity work.adder 
		generic map (width => 32)
		port map(
			in0		=>	std_logic_vector(to_unsigned(4,32)),
			in1 	=>	pcRegOut,
			out0	=>	PCplus4
		);

	--LATER CHANGE TO PCplus8
	U_adder_PCplus4: entity work.adder 
		generic map (width => 32)
		port map(
			in0		=>	std_logic_vector(to_unsigned(4,32)),
			in1 	=> 	pcRegOut,
			out0	=>	PCplus8
		);

	U_adder_branch: entity work.adder
		generic map (width => 32)
		port map(
			in0		=>	PCplus4,
			in1 	=>	SLL2Out,
			out0	=>	branchAddOut
		);


	U_MEM_instr: entity work.rom_instr 
		port map (
			address	 => pcRegOut(9 downto 2),
			clock	 => clk_mem, ---UPDATE LATER
			q	 => instr
		);


	U_MEM_data: entity work.ram_ctrl 
		port map (
			clk 	=> clk_mem,
			dataIn	=> ALUSrcOut, --FIXXXX
			addr 	=> alu_res(7 downto 0),
			wr_en 	=> memWrite,
			ctrl  	=> memCtrl,
			dataOut => ramOut
		);


	

end STR;
