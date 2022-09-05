library ieee;
use ieee.std_logic_1164.all;

entity rightShifter is
	port (clk	: in std_logic;
			load  : in std_logic;
			sin	: in std_logic;
			din	: in std_logic_vector(3 downto 0);
			dout	: out std_logic_vector(3 downto 0);
			so		: out std_logic);
end rightShifter;

architecture v1 of rightShifter is
	signal s_data : std_logic_vector(3 downto 0);
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then 
			if(load = '1') then
				s_data <= din;
			else 
				s_data <= sin & s_data(3 downto 1);
			end if;
		end if;	
	end process;
	so <= s_data(0);
	dout <= s_data;
end v1;