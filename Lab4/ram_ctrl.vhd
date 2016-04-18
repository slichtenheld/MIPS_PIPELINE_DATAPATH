library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.mipsLib.all;

--00 for whole word
--01 for half word
--10 for byte

entity ram_ctrl is

	port(
		clk 	: in std_logic;
		dataIn	: in std_logic_vector(31 downto 0);
		addr	: in std_logic_vector(7 downto 0);
		wr_en	: in std_logic;
		ctrl 	: in std_logic_vector(1 downto 0);
		dataOut	: out std_logic_vector(31 downto 0)
	);

end ram_ctrl;

architecture STR of ram_ctrl is
--	signal blockEn : std_logic_vector(3 downto 0);
	
	signal ramIn32  : std_logic_vector (31 downto 0);

	
	signal ramOut32 : std_logic_vector(31 downto 0);
	signal preMask: std_logic_vector(31 downto 0);
--	signal ramWr : std_logic_vector(3 downto 0);


-------------
	signal ramChipEn	: std_logic_vector(3 downto 0);	-- for each Ram block
	signal ramWriteEn	: std_logic_vector(3 downto 0); --for each Ram block
	signal ramReadEn 	: std_logic_vector(3 downto 0); -- for each Ram block
--	signal ramAddr0		: std_logic_vector(7 downto 0); --in case spillover
---	signal ramAddr1		: std_logic_vector(7 downto 0);
--	signal ramAddr2		: std_logic_vector(7 downto 0);
--	signal ramAddr3		: std_logic_vector(7 downto 0);
--	signal ramMuxSel0	: std_logic_vector(1 downto 0); --applied to both input Muxes and output Muxes
--	signal ramMuxSel1	: std_logic_vector(1 downto 0);
--	signal ramMuxSel2	: std_logic_vector(1 downto 0);
--	signal ramMuxSel3	: std_logic_vector(1 downto 0);
--	signal ramMaskSel	: std_logic_vector(3 downto 0);	--if reading halfword/byte

	signal ramMuxIn 	: std_logic_vector(7 downto 0);
	signal ramMuxOut 	: std_logic_vector(7 downto 0);	
	signal ramAddr 		: std_logic_vector(31 downto 0);


begin

		U_MUX_IN: for i in 0 to 3 generate
			U_mux4_1_in: entity work.mux4_1
			generic map (width => 8)
			port map (
				sel	=> ramMuxIn(2*i+1 downto 2*i),
				in0	=> dataIn(7 downto 0),
				in1	=> dataIn(15 downto 8),
				in2	=> dataIn(23 downto 16),
				in3	=> dataIn(31 downto 24),
				output	=> ramIn32(8*i+7 downto 8*i)
			);
		end generate U_MUX_IN;

		U_RAM: for i in 0 to 3 generate
			U_Ram_data: entity work.data_mem
			port map(
				byteena_a 	=> ramChipEn(i downto i),	
				clock		=> clk,
				data		=> ramIn32(8*i+7 downto 8*i),
				rden 		=> ramReadEn(i),
				rdaddress	=> ramAddr(8*i+7 downto 8*i),
				wraddress	=> ramAddr(8*i+7 downto 8*i), 
				wren		=> ramWriteEn(i),
				q			=> ramOut32(8*i+7 downto 8*i)
			);
		end generate U_RAM;

		U_MUX_OUT: for i in 0 to 3 generate
			U_mux4_1_out: entity work.mux4_1
			generic map (width => 8)
			port map (
				sel	=> ramMuxOut(2*i+1 downto 2*i),
				in0	=> ramOut32(7 downto 0),
				in1	=> ramOut32(15 downto 8),
				in2	=> ramOut32(23 downto 16),
				in3	=> ramOut32(31 downto 24),
				output	=> preMask(8*i+7 downto 8*i)
			);
		end generate U_MUX_OUT;

		--U_MASK: for i in 0 to 3 generate
		--	U_mux2_1_mask: entity work.mux2_1
		--	generic map (width => 8)
		--	port map (
		--		sel	=> ramMaskSel(i),
		--		in0	=> preMask(8*i+7 downto 8*i),
		--		in1	=> (others=>'0'),
		--		output	=> dataOut(8*i+7 downto 8*i)
		--	);
		--end generate U_MASK;
		U_mux4_1_in: entity work.mux4_1
			generic map (width => 32)
			port map (
				sel	=> ctrl,
				in0	=> preMask, --RamWord
				in1	=> x"0000" & preMask(15 downto 0), --RamHalf
				in2	=> x"000000" & preMask(7 downto 0), --RamByte
				in3	=> (others=>'0'), --Zeros
				output	=> dataOut
			);


		U_ramControl: entity work.ramControl 
		port map(
			address		=> addr,
			control 	=> ctrl,
			writeCtrl	=> wr_en,
			ramChipEn	=> ramChipEn,
			ramReadEn   => ramReadEn,
			ramWriteEn	=> ramWriteEn,
			ramAddr0	=> ramAddr(7 downto 0),
			ramAddr1	=> ramAddr(15 downto 8),
			ramAddr2	=> ramAddr(23 downto 16),
			ramAddr3	=> ramAddr(31 downto 24),
			ramMuxIn0	=> ramMuxIn(1 downto 0),
			ramMuxIn1	=> ramMuxIn(3 downto 2),
			ramMuxIn2	=> ramMuxIn(5 downto 4),
			ramMuxIn3	=> ramMuxIn(7 downto 6),
			ramMuxOut0	=> ramMuxOut(1 downto 0),
			ramMuxOut1	=> ramMuxOut(3 downto 2),
			ramMuxOut2	=> ramMuxOut(5 downto 4),
			ramMuxOut3	=> ramMuxOut(7 downto 6)
			--ramMaskSel	=> ramMaskSel
		);

end STR;
