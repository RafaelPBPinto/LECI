library ieee;
use ieee.std_logic_1164.all;

entity Display_Tam_Garrafa is
	port (clk			: in std_logic;
			en_33cl		: in std_logic;
			en_25cl		: in std_logic;
			en_50cl		: in std_logic;
			en_10dl		: in std_logic;
			visor_uni	: out std_logic_vector(6 downto 0);
			visor_dez	: out std_logic_vector(6 downto 0);
			visor_cen	: out std_logic_vector(6 downto 0);
			visor_mil	: out std_logic_vector(6 downto 0));
end Display_Tam_Garrafa;

architecture v1 of Display_Tam_Garrafa is
-- display "33cl"
constant N3			: std_logic_vector(6 downto 0) := "0110000";
constant LetraC	: std_logic_vector(6 downto 0) := "1000110";
constant LetraL	: std_logic_vector(6 downto 0) := "1000111";

-- display "25cl"
constant N2			: std_logic_vector(6 downto 0) := "0100100";constant N5			: std_logic_vector(6 downto 0) := "0010010";

-- display "50cl"
constant N0			: std_logic_vector(6 downto 0) := "1000000";

-- display "10dl"
constant N1			: std_logic_vector(6 downto 0) := "1111001";
constant LetraD	: std_logic_vector(6 downto 0) := "0100001";

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(en_33cl = '1') then
				visor_uni <= LetraL;
				visor_dez <= LetraC;
				visor_cen <= N3;
				visor_mil <= N3;
			elsif(en_25cl = '1') then
				visor_uni <= letraL; 
				visor_dez <= letraC; 
				visor_cen <= N5; 
				visor_mil <= N2; 
			elsif(en_50cl = '1') then
				visor_uni <= letraL; 
				visor_dez <= letraC; 
				visor_cen <= N0;
				visor_mil <= N5; 
			elsif(en_10dl = '1') then
				visor_uni <= letraL;
				visor_dez <= letraD;
				visor_cen <= N0;
				visor_mil <= N1;
			else
				visor_uni <= (others => '1');
				visor_dez <= (others => '1');
				visor_cen <= (others => '1');
				visor_mil <= (others => '1');
			end if;
		end if;
	end process;

end v1;
