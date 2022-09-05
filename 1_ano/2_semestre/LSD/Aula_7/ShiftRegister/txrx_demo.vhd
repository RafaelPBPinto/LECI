library ieee;
use ieee.std_logic_1164.all;

entity txrx_demo is	port (KEY  : in std_logic_vector(3 downto 0);
			SW	  : in std_logic_vector(17 downto 0);
			LEDR : out std_logic_vector(17 downto 0));
			
end txrx_demo;

architecture v1 of txrx_demo is
signal s_clk, s_data : std_logic;
begin

tx:	entity work.rightShifter(v1)
			port map(clk  => not KEY(0),
						sin   => '0',
						load => SW(17),
						din  => SW(3 downto 0),
						dout => open,
						so	  => s_data);

rx:	entity work.rightShifter(v1)
			port map(clk  => not KEY(0),
						sin   => s_data,
						load => '0',
						din  => "----",
						dout => LEDR(3 downto 0),
						so	  => open);

end v1;