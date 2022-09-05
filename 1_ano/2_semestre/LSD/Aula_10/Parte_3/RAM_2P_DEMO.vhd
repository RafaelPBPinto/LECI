library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM_2P_DEMO is
	port (SW		: in std_logic_vector(18 downto 0);
			KEY	: in std_logic_vector(2 downto 0);
			LEDR	: out std_logic_vector(7 downto 0));

end RAM_2P_DEMO;

architecture shell of RAM_2P_DEMO is 
begin

u1:	entity work.RAM_2P_16_8(v1)
		port map(clk			=> KEY(0),
					writeEnable	=> SW(18),
					writeAddress=> SW(4 downto 0),
					writeData	=>	SW(17 downto 10),
					readAdress	=>	SW(9 downto 5),
					readData		=> LEDR(7 downto 0));

end shell;