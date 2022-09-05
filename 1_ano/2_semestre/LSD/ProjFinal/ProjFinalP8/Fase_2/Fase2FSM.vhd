library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Fase2FSM is
	port (reset				: in std_logic;
			clk				: in std_logic;
			enable_timer	: out std_logic;
			timeVal			: out std_logic_vector(7 downto 0);
			timeExp			: in std_logic;
			ola				: out std_logic;
			epro				: out std_logic;
			B1		 			: in std_logic;
			B2	 				: in std_logic;
			B3	 				: in std_logic;
			en_MEG			: in std_logic;
			ledr				: out std_logic;
			ledg 				: out std_logic);

end Fase2FSM;

architecture v1 of Fase2FSM is
	constant OLA_TIME		: std_logic_vector(7 downto 0) := "00000100"; -- 4 segundos
	constant LEDR_TIME	: std_logic_vector(7 downto 0) := "00000110"; -- 6 segundos
	
	type TState is (E0, E0A, E1, E2, E2A, E2B, E3, MEG);
	signal s_state : TState;

begin

	proc_sinc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_state <= E0;
			else
				case (s_state) is
				when E0 =>
					ola				<= '1';
					epro				<= '0';
					ledr				<= '0';
					ledg				<= '0';
					enable_timer	<= '1';
					timeVal			<= OLA_TIME;
					s_state 			<= E0A;
					
				when E0A =>
					enable_timer	<= '0';
					if(timeExp = '1') then
						s_state  		<= E1;
					end if;
				
				when E1 =>
					ola				<= '0';
					epro				<= '1';
					ledr				<= '0';
					ledg				<= '0';
					enable_timer	<= '0';
					timeVal			<= (others => '-');
					if((B1 = '1') or (B2 = '1') or (B3 = '1')) then 
						s_state <= E2;
					else
						s_state <= E1;
					end if;
				
				when E2 =>
					ola				<= '0';
					epro				<= '0';
					ledr				<= '1';
					ledg				<= '0';
					enable_timer	<= '1';
					timeVal			<= LEDR_TIME;
					s_state			<= E2A;
					
				when E2A =>
					s_state <= E2B;
					enable_timer <= '0';
						
				when E2B	=>
					if((timeExp = '1') and (en_MEG = '0')) then
						s_state <= E3;
					elsif((timeExp = '1') and (en_MEG = '1')) then
						s_state <= MEG;
					end if;
					
				when E3 =>
					ola				<= '0';
					epro				<= '0';
					ledr				<= '0';
					ledg				<= '1';
					enable_timer	<= '0';
					timeVal			<= (others => '-');
					if((B1 = '0') and (B2 = '0') and (B3 ='0') and (en_MEG = '0')) then
						s_state <= E1;
					end if;
				
				when MEG =>
					ola				<= '0';
					epro				<= '0';
					ledr				<= '1';
					ledg				<= '0';
					enable_timer	<= '0';
					timeVal			<= (others => '-');
					if(en_MEG = '0') then
						s_state <= E3;
					end if;
					
				end case;
			
			end if;
		end if;
	end process;
	
end v1;