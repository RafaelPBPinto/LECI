library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM_16_8 is
	port (address	: in std_logic_vector(3 downto 0);
			dataOut	: out std_logic_vector(7 downto 0));
end ROM_16_8;

architecture v1 of ROM_16_8 is
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TROM is array (0 to 15) of TDataWord;
	constant c_memory: TROM := (x"18", x"24", x"42", x"81", x"18", x"24", x"42", x"81", x"18", x"24", x"42", x"81", x"00", x"81", x"00", x"01");
	
begin 
	dataOut <= c_memory(to_integer(unsigned(address)));
end v1;
