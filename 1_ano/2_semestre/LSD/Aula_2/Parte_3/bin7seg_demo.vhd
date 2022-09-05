library ieee;
use ieee.std_logic_1164.all;

entity bin7seg_demo is
	port (SW   : in std_logic_vector(3 downto 0);
			HEX0 : out std_logic_vector(6 downto 0);
			LEDG : out std_logic_vector(6 downto 0));
end bin7seg_demo;

architecture shell of bin7seg_demo is
	signal s_decOut : std_logic_vector(6 downto 0);
begin

ul: entity work.Bin7SegDecoder (Behavioral)
	 port map(binInput => SW(3 downto 0),
				 decOut_n => s_decOut);
	 
	 Hex0 <= s_decOut;
	 LEDG <= s_decOut;
end shell;