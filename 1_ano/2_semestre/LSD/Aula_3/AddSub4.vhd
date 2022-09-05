library ieee;
use ieee.std_logic_1164.all;

entity AddSub4 is

	port (a   : in std_logic_vector(3 downto 0);
			b   : in std_logic_vector(3 downto 0);
			sub : in std_logic;
			s   : out std_logic_vector(3 downto 0);
			cout: out std_logic);
end AddSub4;

architecture v1 of AddSub4 is
	signal s_b : std_logic_vector(3 downto 0);
begin
	u1:	entity work.Adder4(v1)
			port map(a    => a,
						b    => s_b,
						cin  => sub,
						s    => s,
						cout => cout);
		
		s_b <= b when sub = '0' else not b;
		
end v1;