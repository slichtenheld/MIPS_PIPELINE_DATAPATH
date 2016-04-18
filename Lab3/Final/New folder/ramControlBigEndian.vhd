library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mipsLib.all;

entity ramControlBigEndian is
	port (
		address		: in std_logic_vector(7 downto 0);

		control 	: in std_logic_vector(1 downto 0); --word, half, or byte
		writeCtrl	: in std_logic;
		ramChipEn	: out std_logic_vector(3 downto 0);	-- for each Ram block
		ramWriteEn	: out std_logic_vector(3 downto 0); --for each Ram block
		ramReadEn 	: out std_logic_vector(3 downto 0);
		ramAddr0	: out std_logic_vector(7 downto 0); --in case spillover
		ramAddr1	: out std_logic_vector(7 downto 0);
		ramAddr2	: out std_logic_vector(7 downto 0);
		ramAddr3	: out std_logic_vector(7 downto 0);
		ramMuxIn0	: out std_logic_vector(1 downto 0); 
		ramMuxIn1	: out std_logic_vector(1 downto 0);
		ramMuxIn2	: out std_logic_vector(1 downto 0);
		ramMuxIn3	: out std_logic_vector(1 downto 0);
		ramMuxOut0	: out std_logic_vector(1 downto 0); 
		ramMuxOut1	: out std_logic_vector(1 downto 0);
		ramMuxOut2	: out std_logic_vector(1 downto 0);
		ramMuxOut3	: out std_logic_vector(1 downto 0)
--		ramMaskSel	: out std_logic_vector(3 downto 0)	--if reading halfword/byte
	);
end ramControlBigEndian;

architecture BHV of ramControlBigEndian is
	signal byteAddr : std_logic_vector(1 downto 0);
	signal 	addrPlusOne : std_logic_vector(7 downto 0);
begin
	byteAddr <= address(1 downto 0);
	addrPlusOne <= std_logic_vector(unsigned(address)+to_unsigned(1,8));
	process(address, addrPlusOne, byteAddr, control, writeCtrl)
	begin
		ramChipEn <= "0000";

		ramWriteEn	<= "0000";
		ramAddr0	<=	address;
		ramAddr1	<=	address;
		ramAddr2	<= 	address;
		ramAddr3	<=	address;
		ramMuxIn0	<= "--";
		ramMuxIn1	<= "--";
		ramMuxIn2	<= "--";
		ramMuxIn3	<= "--";
		ramMuxOut0	<= "--";
		ramMuxOut1	<= "--";
		ramMuxOut2	<= "--";
		ramMuxOut3	<= "--";

		ramReadEn <= "----";


		case control is
			when ramWord =>
				ramChipEn <= "1111";
				if (writeCtrl='1') then --WRITE
					ramWriteEn <= "1111";
					if (byteAddr="00") then
						ramMuxIn0	<= "11";
						ramMuxIn1	<= "10";
						ramMuxIn2	<= "01";
						ramMuxIn3	<= "00";
					
					elsif (byteAddr="01") then
						ramMuxIn0	<= "00";
						ramMuxIn1	<= "11";
						ramMuxIn2	<= "10";
						ramMuxIn3	<= "01";
						ramAddr0	<=	addrPlusOne;
					elsif (byteAddr="10") then
						ramMuxIn0	<= "01";
						ramMuxIn1	<= "00";
						ramMuxIn2	<= "11";
						ramMuxIn3	<= "10";
						ramAddr0	<=	addrPlusOne;
						ramAddr1	<=	addrPlusOne;
					elsif (byteAddr="11") then
						ramMuxIn0	<= "10";
						ramMuxIn1	<= "01";
						ramMuxIn2	<= "00";
						ramMuxIn3	<= "11";
						ramAddr0	<=	addrPlusOne;
						ramAddr1	<=	addrPlusOne;
						ramAddr2	<= 	addrPlusOne;
					end if;
				else --READ
					ramReadEn <= "1111";
					if (byteAddr="00") then
						ramMuxOut0	<= "11";
						ramMuxOut1	<= "10";
						ramMuxOut2	<= "01";
						ramMuxOut3	<= "00";
					
					elsif (byteAddr="01") then
						ramMuxOut0	<= "00";
						ramMuxOut1	<= "11";
						ramMuxOut2	<= "10";
						ramMuxOut3	<= "01";
						ramAddr0	<=	addrPlusOne;
					elsif (byteAddr="10") then
						ramMuxOut0	<= "01";
						ramMuxOut1	<= "00";
						ramMuxOut2	<= "11";
						ramMuxOut3	<= "10";
						ramAddr0	<=	addrPlusOne;
						ramAddr1	<=	addrPlusOne;
					elsif (byteAddr="11") then
						ramMuxOut0	<= "10";
						ramMuxOut1	<= "01";
						ramMuxOut2	<= "00";
						ramMuxOut3	<= "11";
						ramAddr0	<=	addrPlusOne;
						ramAddr1	<=	addrPlusOne;
						ramAddr2	<= 	addrPlusOne;
					end if;
				end if;

			when ramHalf => --WRITE HALF
				if (writeCtrl='1') then --WRITE	
					if (byteAddr="00") then
						ramChipEn <= "0011";
						ramWriteEn <= "0011";
						ramMuxIn0	<= "01";
						ramMuxIn1	<= "00";
					
					elsif (byteAddr="01") then
						ramChipEn <= "0110";
						ramWriteEn <= "0110";
						ramMuxIn1	<= "01";
						ramMuxIn2	<= "00";

					elsif (byteAddr="10") then
						ramChipEn <= "1100";
						ramWriteEn <= "1100";
						ramMuxIn2	<= "01";
						ramMuxIn3	<= "00";
					elsif (byteAddr="11") then
						ramChipEn <= "1001";
						ramWriteEn <= "1001";
						ramMuxIn3	<= "01";
						ramMuxIn0	<= "00";
						ramAddr0	<=	addrPlusOne;
					end if;
				else --READ HALF
					if (byteAddr="00") then
						ramChipEn <= "0011";
						ramReadEn <= "0011";
						ramMuxOut0	<= "01";
						ramMuxOut1	<= "00";
					elsif (byteAddr="01") then
						ramChipEn <= "0110";
						ramReadEn <= "0110";
						ramMuxOut0	<= "10";
						ramMuxOut1	<= "01";
					elsif (byteAddr="10") then
						ramChipEn <= "1100";
						ramReadEn <= "1100";
						ramMuxOut0	<= "11";
						ramMuxOut1	<= "10";
					elsif (byteAddr="11") then
						ramChipEn <= "1001";
						ramReadEn <= "1001";
						ramMuxOut0	<= "00";
						ramMuxOut1	<= "11";
						ramAddr0	<=	addrPlusOne;
					end if;
				end if;

			when ramByte => --WRITE
				if (writeCtrl='1') then --WRITE
					if (byteAddr="00") then
						ramChipEn <= "0001";
						ramWriteEn <= "0001";
						ramMuxIn0	<= "00";
						
					elsif (byteAddr="01") then
						ramChipEn <= "0010";
						ramWriteEn <= "0010";
						ramMuxIn1	<= "00";

					elsif (byteAddr="10") then
						ramChipEn <= "0100";
						ramWriteEn <= "0100";
						ramMuxIn2	<= "00";
					elsif (byteAddr="11") then
						ramChipEn <= "1000";
						ramWriteEn <= "1000";
						ramMuxIn3	<= "00";
					end if;
				else --READ
					ramWriteEn <= "0000";
					if (byteAddr="00") then
						ramChipEn <= "0001";
						ramReadEn <= "0001";
						ramMuxOut0	<= "00";

					elsif (byteAddr="01") then
						ramChipEn <= "0010";
						ramReadEn <= "0010";
						ramMuxOut0	<= "01";
					elsif (byteAddr="10") then
						ramChipEn <= "0100";
						ramReadEn <= "0100";
						ramMuxOut0	<= "10";
					elsif (byteAddr="11") then
						ramChipEn <= "1000";
						ramReadEn <= "1000";
						ramMuxOut0	<= "11";

					end if;
				end if;

			when others => null;



		end case;
	end process;

end BHV;




