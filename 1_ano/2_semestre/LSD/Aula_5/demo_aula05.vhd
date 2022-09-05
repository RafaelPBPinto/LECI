library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity demo_aula05 is
	port (SW      : in std_logic_vector(17 downto 0);
			X       : in std_logic;
			CLOCK_50: in std_logic;
			HEX1    : out std_logic_vector(6 downto 0);
			HEX0    : out std_logic_vector(6 downto 0));
end demo_aula05;

architecture shell of demo_aula05 is
	signal s_clk2hz : std_logic;
	signal s_count  : std_logic_vector(7 downto 0);
	
begin

u1:	entity work.FreqDivider(v1)
			port map(clkIn => CLOCK_50,
						k     => X"017D7840",
						clkOut=> s_clk2hz);

u2:	entity work.Counter(v1)
			port map(clk    => s_clk2hz,
						enable => SW(17),
						upDown => SW(16), 
						reset  => SW(15),
						load   => SW(14), 
						dataIn => SW(7 downto 0),
						count  => s_count);

u3:	entity work.Bin7SegDecoder (Behavioral)
			port map(binInput => s_count(7 downto 4),
						decOut_n => HEX1);
						
u4:	entity work.Bin7SegDecoder (Behavioral)
			port map(binInput => s_count(3 downto 0),
						decOut_n => HEX0);
						
end shell;