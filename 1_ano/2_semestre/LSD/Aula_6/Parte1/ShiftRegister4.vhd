library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ShiftRegister4 is
	port (clk 	  : in std_logic;
			sin 	  : in std_logic;
			dataOut : out std_logic_vector(3 downto 0));
			
end ShiftRegister4;

architecture v1 of ShiftRegister4 is
signal s_dataOut : std_logic_vector(3 downto 0);

begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			
		end if;
	end process;
end v1;
