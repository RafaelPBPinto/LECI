library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CounterUpDown4 is
	port (clk   : in std_logic;
			reset : in std_logic;
			UpDown: in std_logic;
			count : out std_logic_vector(3 downto 0));
end CounterUpDown4;

architecture v1 of CounterUpDown4 is
	signal s_count :  unsigned(3 downto 0);
begin
	process(clk, reset)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_count <= (others => '0');
			elsif(upDown = '0') then
				s_count <= s_count - 1; --Down
			else
				s_count <= s_count + 1; --Up
			end if;
		end if;
	end process;
	count <= std_logic_vector(s_count);
end v1;