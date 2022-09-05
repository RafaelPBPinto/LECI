library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM_DEMO is
	port (CLOCK50 : in std_logic;
			SW		  : in std_logic_vector(3 downto 0);
			LEDR	  : out std_logic_vector(7 downto 0));

end ROM_DEMO;

architecture shell of ROM_DEMO is

begin

u1:	entity work.ROM_16_8(v1)
		port map(address => SW(3 downto 0),
					dataOut => LEDR(7 downto 0));

end shell;