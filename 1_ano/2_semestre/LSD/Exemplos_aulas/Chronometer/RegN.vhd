library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Registo is
	port(reset		: in std_logic;
		  clk			: in std_logic;
		  enable		: in std_logic;
		  coca		: in std_logic;
		  agua		: in std_logic;
		  dataOut	: out std_logic
_vector((size - 1) downto 0));
end Registo;

architecture Behavioral of Registo is
begin
	reg_proc : process(clk)
	begin
		if (reset = '1') then
			dataOut <= (others => '0');
		elsif (rising_edge(clk)) then
			if (enable = '1') then
				if (syncReset = '1') then
					dataOut <= (others => '0');
				else
					dataOut <= dataIn;
				end if;
			end if;
		end if;
	end process;
end Behavioral;
