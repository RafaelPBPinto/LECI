library ieee;
use ieee.std_logic_1164.all;

entity DrinksFSM is
	port( reset : in std_logic;
			clk	: in std_logic;
			V		: in std_logic;
			C		: in std_logic;
			d		: out std_logic);
			
end DrinksFSM;

architecture v1 of DrinksFSM is

	type TState is (E0, E1, E2, E3, E4, E5);
	signal s_currentstate, s_nextState : TState;
	
begin
	sync_proc: process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_currentstate <= E0;
			else
				s_currentstate <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, V, C)
	begin
		case(s_currentState) is
		when E0 =>
			d <= '0';
			if(V = '1') then
				s_nextState <= E1;
			elsif(C = '1') then
				s_nextState <= E3;
			else 
				s_nextState <= E0;
			end if;
		
		when E1 =>
			d <= '0';
			if(V = '1') then 
				s_nextState <= E2;
			elsif(C = '1') then
				s_nextState <= E4;
			else				s_nextState <= E1;
			end if;
			
		when E2 =>
			d <= '0';
			if(V = '1') then
				s_nextState <= E3;
			elsif(C = '1') then
				s_nextState <= E5;
			else 
				s_nextState <= E2;
			end if;
			
		when E3 =>
			d <= '0';
			if(V = '1') then
				s_nextState <= E4;
			elsif(C = '1') then
				s_nextState <= E5;
			else
				s_nextState <= E3;
			end if;
			
		when E4 =>
			d <= '0';
			if(V = '1') then
				s_nextState <= E5;
			elsif(C = '1') then
				s_nextState <= E5;
			else
				s_nextState <= E4;
			end if;
			
		when E5 =>
			d <= '1';
	
		end case;
		
	end process;		
end v1;