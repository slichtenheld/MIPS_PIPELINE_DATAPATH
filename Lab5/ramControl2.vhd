library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mipsLib.all;


entity ramControl2 is
	port (
		clk 		: in std_logic;
		address		: in std_logic_vector(9 downto 0);
		control 	: in std_logic_vector(1 downto 0); --word, half, or byte
		wr_en		: in std_logic;	
		data_IN		: in std_logic_vector(31 downto 0);
		data_OUT	: out std_logic_vector(31 downto 0)
	);
end ramControl2;
	

architecture COMBINED of ramControl2 is

	signal byte0_IN, byte1_IN, byte2_IN, byte3_IN, byte0_OUT, byte1_OUT, byte2_OUT, byte3_OUT : std_logic_vector(7 downto 0);

	signal ram_IN, ram_OUT, preMask : std_logic_vector(31 downto 0);

	signal data_3, data_2, data_1, data_0, data_3_OUT, data_2_OUT, data_1_OUT, data_0_OUT : std_logic_vector(7 downto 0);

	signal addr0, addr1, addr2, addr3 : std_logic_vector(7 downto 0);

	signal wr_en0, wr_en1, wr_en2, wr_en3 : std_logic;

begin
	
	byte0_IN <= data_IN(7 downto 0);
	byte1_IN <= data_IN(15 downto 8);
	byte2_IN <= data_IN(23 downto 16);
	byte3_IN <= data_IN(31 downto 24);

	U_mux4_1_IN: entity work.mux4_1
			generic map (width => 32)
			port map (
				sel	=> address(1 downto 0),
				in0	=> byte3_IN & byte2_IN & byte1_IN & byte0_IN,
				in1	=> byte2_IN & byte1_IN & byte0_IN & byte3_IN,
				in2	=> byte1_IN & byte0_IN & byte3_IN & byte2_IN,
				in3	=> byte0_IN & byte3_IN & byte2_IN & byte1_IN,
				output	=> ram_IN
			);

	data_3 <= ram_IN(31 downto 24);
	data_2 <= ram_IN(23 downto 16);
	data_1 <= ram_IN(15 downto 8);
	data_0 <= ram_IN(7 downto 0);		

	U_Ram3_data: entity work.ramBlock
		port map(
			byteena_a 	=> "1",	
			clock		=> clk,
			data		=> data_3,
			rden 		=> '1',
			rdaddress	=> addr3,
			wraddress	=> addr3, 
			wren		=> wr_en3,
			q			=> data_3_OUT
		);	

	U_Ram2_data: entity work.ramBlock
		port map(
			byteena_a 	=> "1",	
			clock		=> clk,
			data		=> data_2,
			rden 		=> '1',
			rdaddress	=> addr2,
			wraddress	=> addr2, 
			wren		=> wr_en2,
			q			=> data_2_OUT
		);	

	U_Ram1_data: entity work.ramBlock
		port map(
			byteena_a 	=> "1",	
			clock		=> clk,
			data		=> data_1,
			rden 		=> '1',
			rdaddress	=> addr1,
			wraddress	=> addr1, 
			wren		=> wr_en1,
			q			=> data_1_OUT
		);	

	U_Ram0_data: entity work.ramBlock
		port map(
			byteena_a 	=> "1",	
			clock		=> clk,
			data		=> data_0,
			rden 		=> '1',
			rdaddress	=> addr0,
			wraddress	=> addr0, 
			wren		=> wr_en0,
			q			=> data_0_OUT
		);	


	U_mux4_1_OUT: entity work.mux4_1
			generic map (width => 32)
			port map (
				sel	=> address(1 downto 0),
				in0	=> data_3_OUT & data_2_OUT & data_1_OUT & data_0_OUT,
				in1	=> data_0_OUT & data_3_OUT & data_2_OUT & data_1_OUT,
				in2	=> data_1_OUT & data_0_OUT & data_3_OUT & data_2_OUT,
				in3	=> data_2_OUT & data_1_OUT & data_0_OUT & data_3_OUT,
				output	=> preMask
			);


	process(clk, address, control, wr_en, data_IN, preMask, byte0_IN, byte1_IN, byte2_IN, byte3_IN, data_3, data_2, data_1, data_0, data_3_OUT, data_2_OUT, data_1_OUT, data_0_OUT, ram_IN, ram_OUT, addr0, addr1, addr2, addr3, wr_en0, wr_en1, wr_en2, wr_en3)
	begin
		addr3 <= address(9 downto 2);
		addr2 <= address(9 downto 2);
		addr1 <= address(9 downto 2);
		addr0 <= address(9 downto 2);
		data_OUT <= (others=>'-');
		wr_en3 <= '0';
		wr_en2 <= '0';
		wr_en1 <= '0';
		wr_en0 <= '0';


		if (address(1 downto 0) = "00") then

		elsif (address(1 downto 0) = "01") then
			addr0 <= std_logic_vector(unsigned(address(9 downto 2))+to_unsigned(1,8));
		elsif (address(1 downto 0) = "10") then
			addr0 <= std_logic_vector(unsigned(address(9 downto 2))+to_unsigned(1,8));
			addr1 <= std_logic_vector(unsigned(address(9 downto 2))+to_unsigned(1,8));
		elsif (address(1 downto 0) = "11") then
			addr0 <= std_logic_vector(unsigned(address(9 downto 2))+to_unsigned(1,8));
			addr1 <= std_logic_vector(unsigned(address(9 downto 2))+to_unsigned(1,8));
			addr2 <= std_logic_vector(unsigned(address(9 downto 2))+to_unsigned(1,8));
		end if;

		--WRITE
		if(wr_en = '1') then
			if (control = ramWord) then 
				wr_en3 <= '1';
				wr_en2 <= '1';
				wr_en1 <= '1';
				wr_en0 <= '1';
			elsif (control = ramHalf) then
				if (address(1 downto 0) = "00") then
					wr_en0 <= '1';
					wr_en1 <= '1';
				elsif (address(1 downto 0) = "01") then
					wr_en1 <= '1';
					wr_en2 <= '1';
				elsif (address(1 downto 0) = "10") then
					wr_en2 <= '1';
					wr_en3 <= '1';
				elsif (address(1 downto 0) = "11") then
					wr_en3 <= '1';
					wr_en0 <= '1';
				end if;
			elsif (control = ramByte) then
				if (address(1 downto 0) = "00") then
					wr_en0 <= '1';
				elsif (address(1 downto 0) = "01") then
					wr_en1 <= '1';
				elsif (address(1 downto 0) = "10") then
					wr_en2 <= '1';
				elsif (address(1 downto 0) = "11") then
					wr_en3 <= '1';
				end if;
			else 
				wr_en0 <= '0';
				wr_en1 <= '0';
				wr_en2 <= '0';
				wr_en3 <= '0';
			end if;
		--READ	
		else
			if (control = ramWord) then 
				data_OUT <= preMask;
			elsif (control = ramHalf) then
				data_OUT <= x"0000" & preMask(15 downto 0);
			elsif (control = ramByte) then
				data_OUT <= x"000000" & preMask(7 downto 0);
			else 
				data_OUT <= (others=>'0');
			end if;
		end if;
	end process;

end COMBINED;