library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM_1P_16_8 is
	port (clk			: in std_logic;
			writeEnable	: in std_logic;
			writeData	: in std_logic_vector(7 downto 0);
			adress		: in std_logic_vector(4 downto 0);
			readData		: out std_logic_vector(7 downto 0));

end RAM_1P_16_8;

architecture v1 of RAM_1P_16_8 is

	constant NUM_WORDS	: integer := 16;
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TMemory is array (0 to NUM_WORDS-1) of TDAtaWord;
	signal s_memory : TMemory;
	
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (writeEnable = '1') then 
				s_memory(to_integer(unsigned(adress))) <= writeData;
			end if;
		end if;
	end process;
	
	readData <= s_memory(to_integer(unsigned(adress)));
end v1;