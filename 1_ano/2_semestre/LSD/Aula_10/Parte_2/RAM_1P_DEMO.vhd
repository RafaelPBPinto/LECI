library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM_1P_DEMO is
	port (SW		: in std_logic_vector(17 downto 0);
			KEY	: in std_logic_vector(2 downto 0);
			LEDR	: out std_logic_vector(7 downto 0));

end RAM_1P_DEMO;

architecture shell of RAM_1P_DEMO is
begin

u1:	entity work.RAM_1P_16_8(v1)
		port map(clk			=> KEY(0),
					writeEnable	=> SW(17),	
					writeData	=>	SW(16 downto 9),
					adress		=>	SW(8 downto 4),
					readData		=> LEDR(7 downto 0));

end shell;