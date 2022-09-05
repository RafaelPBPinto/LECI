library ieee;
use ieee.std_logic_1164.all;

entity Display is
	port (clk			: in std_logic;
			clk10hz		: in std_logic;
			en_ola		: in std_logic;
			en_epro		: in std_logic;
			en_coca		: in std_logic;
			en_agua		: in std_logic;
			en_slar		: in std_logic;
			visor_uni	: out std_logic_vector(6 downto 0);
			visor_dez	: out std_logic_vector(6 downto 0);
			visor_cen	: out std_logic_vector(6 downto 0);
			visor_mil	: out std_logic_vector(6 downto 0));
end Display;

architecture v1 of Display is
-- letras da palavra "OLA"
constant letraO	: std_logic_vector(6 downto 0) := "1000000";
constant	letraL	: std_logic_vector(6 downto 0) := "1000111";
constant letraA	: std_logic_vector(6 downto 0) := "0001000";

-- letras da palavra "EPRO"
constant letraE	: std_logic_vector(6 downto 0) := "0000110";
constant letraP	: std_logic_vector(6 downto 0) := "0001100";
constant letraR	: std_logic_vector(6 downto 0) := "0001000";

-- letras da palvra "COCA"
constant letraC	: std_logic_vector(6 downto 0) := "1000110";

-- letras da palavra "AGUA"
constant letraG	: std_logic_vector(6 downto 0) := "0000010";
constant letraU	: std_logic_vector(6 downto 0) := "1000001";

-- letras da palavra "SLAR"
constant letraS	: std_logic_vector(6 downto 0) := "0010010";

begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if((en_ola = '1')) then
				if(clk10hz = '1') then
					visor_uni <= letraA;
					visor_dez <= letraL;
					visor_cen <= letraO;
					visor_mil <= (others => '1');
				else
					visor_uni <= (others => '1');
					visor_dez <= (others => '1');
					visor_cen <= (others => '1');
					visor_mil <= (others => '1');
				end if;
			elsif(en_epro = '1') then
				visor_uni <= letraO; 
				visor_dez <= letraR; 
				visor_cen <= letraP; 
				visor_mil <= letraE; 
			elsif(en_coca = '1') then
				visor_uni <= letraA; 
				visor_dez <= letraC; 
				visor_cen <= letraO;
				visor_mil <= letraC; 
			elsif(en_agua = '1') then
				visor_uni <= letraA;
				visor_dez <= letraU;
				visor_cen <= letraG;
				visor_mil <= letraA;
			elsif(en_slar = '1') then
				visor_uni <= letraR;
				visor_dez <= letraA;
				visor_cen <= letraL;
				visor_mil <= letraS;
			else
				visor_uni <= "1111111";
				visor_dez <= "1111111";
				visor_cen <= "1111111";
				visor_mil <= "1111111";
			end if;
		end if;
	end process;

end v1;