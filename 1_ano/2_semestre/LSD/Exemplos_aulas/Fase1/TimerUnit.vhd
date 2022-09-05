--Temporizador versátil
library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;

entity TimerUnit is 
	generic(	kHzClkFreq : positive := 50000; -- deve ser 50000 para o CLOCK_50 (50 MHz)
				mSecLength : positive := 1000; -- 1s por omissão 
				outPolarity : std_logic := '1'); 
	port(	clk			: in std_logic;
			reset			: in  std_logic;	
			start			: in std_logic; 
			enable		: in std_logic;
			decorre		: out std_logic; -- atraso à desoperação
			expirou		: out std_logic);  -- atraso à operação
end TimerUnit;


architecture Behavioral of TimerUnit is 

constant TICK_COUNT : positive := mSecLength * kHzClkFreq; -- tempo convertido em ciclos de relógio 
subtype TCounter is natural range 0 to TICK_COUNT;

signal s_count : TCounter := 0; 
signal s_decorre, s_expirou : std_logic; -- activos altos

begin
	process(clk) 
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then 
				s_decorre <= '0'; s_expirou <= '0'; -- (re)inicializa
				s_count <= 0; -- (re)inicializa
			elsif(enable = '1') then 
				if(s_count /= 0) then -- está a decorrer temporização
					if(s_count = TICK_COUNT) then	-- se foi atingido limiar,
						s_decorre <= '0'; s_expirou <= '1';	-- expirou o tempo:
						s_count <= 0;								-- 'zera' o contador
					else							-- se ainda não foi atingido limiar,
						s_decorre <= '1'; s_expirou <= '0';	-- decorre o tempo:
						s_count <= s_count + 1; 				-- incrementa contador
					end if; 
				else						-- não está a decorrer temporização 
					if(start = '1') then			-- se há ordem de iniciar,
						s_count <= s_count + 1; -- incrementa contador
					end if; 
				end if; 
			end if; 
		end if; 
	end process; 
	
	decorre <=	s_decorre		when (outPolarity = '1') else 
					not s_decorre;
	expirou <=	s_expirou		when (outPolarity = '1') else 
					not s_expirou;
end Behavioral;
