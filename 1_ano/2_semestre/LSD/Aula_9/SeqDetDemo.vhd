library ieee;
use ieee.std_logic_1164.all;

entity SeqDetDemo is 
	port (SW	  		: in std_logic_vector(17 downto 0);
			KEY  		: in std_logic_vector(3 downto 0);
			LEDR 		: out std_logic_vector(17 downto 0));
end SeqDetDemo;

architecture shell of SeqDetDemo is
begin

u1:	entity work.SeqDetFSM(MealyArch)
			port map(reset => KEY(1),
						clk	=> KEY(0),
						Xin	=> SW(17),
						Yout  => LEDR(17));
end shell;