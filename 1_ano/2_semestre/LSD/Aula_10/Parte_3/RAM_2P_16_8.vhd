library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM_2P_16_8 is 
	port (clk			: in std_logic;
			writeEnable	: in std_logic;
			writeAddress: in std_logic_vector(4 downto 0);
			writeData	: in std_logic_vector(7 downto 0);
			readAdress	: in std_logic_vector(4 downto 0);
			readData		: out std_logic_vector(7 downto 0));
end RAM_2P_16_8;

architecture v1 of RAM_2P_16_8 is
	constant num_words : integer := 16;
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TMemory is array (0 to num_words-1) of TDataWord;
	signal s_memory : TMemory;
	
begin 
	process(clk)
	begin
		if(rising_edge(clk)) then
			if (writeEnable = '1') then 
				s_memory(to_integer(unsigned(writeAddress))) <= writeData;
			end if;
		end if;
	end process;
	
	readData <= s_memory(to_integer(unsigned(readAdress)));


end v1;