library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity FlipFlopD_Demo is
	port (SW   : in std_logic_vector(2 downto 0);
			KEY  : in std_logic_vector(2 downto 0);
			LEDR : out std_logic_vector(2 downto 0));
end FlipFlopD_Demo;

architecture Shell of FlipFlopD_Demo is
begin
	ff_d : work.FlipFlopD(Behavioral)
					port map(clk   => KEY(2 downto 0),
								d 	   => SW(0),
								set   => SW(1),
								reset => SW(2),
								q     => LEDR(2 downto 0));
end Shell;