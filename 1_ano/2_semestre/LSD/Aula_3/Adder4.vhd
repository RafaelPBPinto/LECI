library ieee;
use ieee.std_logic_1164.all;

entity Adder4 is

	port (a   : in std_logic_vector(3 downto 0);
			b   : in std_logic_vector(3 downto 0);
			cin : in std_logic;
			s   : out std_logic_vector(3 downto 0);
			cout: out std_logic);
end Adder4;

architecture v1 of Adder4 is
	signal s_cout: std_logic_vector(3 downto 0);
begin

u0:	entity work.FullAdder(v1)
			port map(a    => a(0),
						b    => b(0),
						cin  => cin,
						s    => s(0),
						cout => s_cout(0));

u1:	entity work.FullAdder(v1)
			port map(a    => a(1),
						b    => b(1),
						cin  => s_cout(0),
						s    => s(1),
						cout => s_cout(1));

u2:	entity work.FullAdder(v1)
			port map(a    => a(2),
						b    => b(2),
						cin  => s_cout(1),
						s    => s(2),
						cout => s_cout(2));

u3:	entity work.FullAdder(v1)
			port map(a    => a(3),
						b    => b(3),
						cin  => s_cout(2),
						s    => s(3),
						cout => cout);
		

end v1;