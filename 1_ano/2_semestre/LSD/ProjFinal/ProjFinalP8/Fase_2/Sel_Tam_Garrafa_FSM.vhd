library ieee;
use ieee.std_logic_1164.all;

entity Sel_Tam_Garrafa_FSM is
	port (reset		: in std_logic;
			enable	: in std_logic;
			clk		: in std_logic;
			sel		: in std_logic;
			b33cl_d	: out std_logic;
			b25cl_d	: out std_logic;
			b50cl_d	: out std_logic;
			b10dl_d	: out std_logic);
end Sel_Tam_Garrafa_FSM;

architecture v1 of Sel_Tam_Garrafa_FSM is
	type TState is (B33CL, B25CL, B50CL, B10DL);
	signal s_state : TState;
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(enable = '1') then
				if (reset = '1') then
					s_state <= B33CL;
				else
					case (s_state) is	
					when B33CL =>
						b33cl_d	<= '1';
						b25cl_d	<= '0';
						b50cl_d	<= '0';
						b10dl_d	<= '0';
						if(sel = '1') then
							s_state <= B25CL;
						end if;
				
					when B25CL =>
						b33cl_d	<= '0';
						b25cl_d	<= '1';
						b50cl_d	<= '0';
						b10dl_d	<= '0';
						if(sel = '1') then
							s_state <= B50CL;
						end if;
				
					when B50CL =>
						b33cl_d	<= '0';
						b25cl_d	<= '0';
						b50cl_d	<= '1';
						b10dl_d	<= '0';
						if(sel = '1') then
							s_state <= B10DL;
						end if;
				
					when B10DL =>
						b33cl_d	<= '0';
						b25cl_d	<= '0';
						b50cl_d	<= '0';
						b10dl_d	<= '1';
						if(sel = '1') then
							s_state <= B33CL;
						end if;
					end case;
				end if;
			end if;
		end if;
	end process;

end v1;