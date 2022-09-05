library ieee;
use ieee.std_logic_1164.all;

entity SeqDetFSM is
	port (reset : in std_logic;
			clk	: in std_logic;
			Xin   : in std_logic;
			Yout  : out std_logic);

end SeqDetFSM;

architecture MealyArch of SeqDetFSM is
	type TState is (S0, S1, S2, S3);
	signal s_currentstate, s_nextstate : Tstate;
	
begin
	sync_proc: process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_currentstate <= S0;
			else
				s_currentstate <= s_nextstate;
			end if;
		end if;
	end process;
	
	comb_proc: process(s_currentstate, Xin)
	begin
		case(s_currentstate) is
		when S0 =>
			Yout <= '0';
			if(Xin = '1') then
				s_nextstate <= S1;
			else
				s_nextstate <= S0;
			end if;
		
		when S1 =>
			Yout <= '0';
			if(Xin = '0') then
				s_nextstate <= S2;
			else
				s_nextstate <= S1;
			end if;
		
		when S2 =>
			Yout <= '0';
			if(Xin = '0') then 
				s_nextstate <= S3;
			else
				s_nextstate <= s1;
			end if;
		
		when S3 =>
			if(Xin ='1') then
				Yout <= '1';
				s_nextstate <= S1;
			else
				Yout <= '0';
				s_nextstate <= S0;
			end if;
			
		end case;
	end process;

end MealyArch;
