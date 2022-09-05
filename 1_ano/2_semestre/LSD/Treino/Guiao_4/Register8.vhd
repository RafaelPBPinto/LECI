library ieee;
use ieee.std_logic_1164.all;

entity Register8 is 
	port (clk    : in std_logic;
			en     : in std_logic;
			dataIN : in std_logic_vector(7 downto 0);
			dataOUT: out std_logic_vector(7 downto 0));

end Register8;

architecture v1 of Register8 is
begin 
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(en = '1') then 
				dataOUT <= dataIN;
			end if;
		end if;
	end process;
end v1;