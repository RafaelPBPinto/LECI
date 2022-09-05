library ieee;
use ieee.std_logic_1164.all;
use ieee. numeric_std.all;

entity FreqDivider is
	port (clkIn : in std_logic;
			k     : in std_logic_vector(31 downto 0);
			debug : out std_logic_vector(31 downto 0);
			clkOut: out std_logic);

end FreqDivider;

architecture v1 of FreqDivider is
	signal s_count : unsigned(31 downto 0);
	signal s_k     : unsigned(31 downto 0);
	signal s_halfway: unsigned(31 downto 0);
	
begin

	s_k <= unsigned(k);
	s_halfway <= s_k / 2 - 1;
	
	process(clkIn)
	begin
		if(rising_edge(clkIn)) then
			if(s_count < s_halfway) then
				clkOut <= '1';
			else 
				clkOut <= '0';
			end if;
			if(s_count < s_k - 1) then 
				s_count <= s_count + 1;
			else 
				s_count <= (others => '0');
				clkOut <= '1';
			end if;
		end if;
	end process;
	debug <= std_logic_vector( s_count );
end v1;