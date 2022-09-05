library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Fase2 is
	port (CLOCK_50 : in std_logic;
			SW			: in std_logic_vector(17 downto 0);
			KEY		: in std_logic_vector(3 downto 0);
			LEDR		: out std_logic_vector(17 downto 0);
			LEDG		: out std_logic_vector(7 downto 0);
			HEX0		: out std_logic_vector(6 downto 0);
			HEX1		: out std_logic_vector(6 downto 0);
			HEX2		: out std_logic_vector(6 downto 0);
			HEX3		: out std_logic_vector(6 downto 0);
			HEX4		: out std_logic_vector(6 downto 0);
			HEX5		: out std_logic_vector(6 downto 0);
			HEX6		: out std_logic_vector(6 downto 0);
			HEX7		: out std_logic_vector(6 downto 0));

end Fase2;

architecture shell of Fase2 is
	signal s_clk10hz  : std_logic;
	signal s_enable	: std_logic;
	signal s_timeExp	: std_logic;
	signal s_timeVal	: std_logic_vector(7 downto 0);
	signal s_ola		: std_logic;
	signal s_epro		: std_logic;
	signal s_33cl		: std_logic;
	signal s_50cl		: std_logic;
	signal s_25cl		: std_logic;
	signal s_10dl		: std_logic;
	signal s_sel		: std_logic;
	signal s_sw			: std_logic_vector(17 downto 0);
	
begin

u0:	entity work.ClkDividerN(RTL)
			generic map(divFactor => 5000000)
			port map(clkIn			 => CLOCK_50,
						clkOut		 => s_clk10hz);	

u1:	entity work.Display(v1)
			port map(clk			=> CLOCK_50,
						clk10hz		=> s_clk10hz,
						en_ola		=> s_ola,
						en_epro		=> s_epro,
						en_coca		=> s_SW(17),
						en_agua		=> s_SW(16),
						en_slar		=> s_SW(15),
						visor_uni	=> HEX0,
						visor_dez	=> HEX1,
						visor_cen	=> HEX2,
						visor_mil	=> HEX3);
						
u2:	entity work.TimerFSM(Behavioral)
			port map(reset		=> not KEY(0),
						clk		=> CLOCK_50,
						enable	=> s_enable,
						timeVal	=> s_timeVal,
						timeExp	=> s_timeExp);
			
u3:	entity work.Fase2FSM(v1)
			port map(reset				=> not KEY(0),
						clk				=> CLOCK_50,
						enable_timer 	=>	s_enable,
						timeVal			=>	s_timeVal,
						timeExp			=>	s_timeExp,
						ola				=> s_ola,
						epro				=> s_epro,
						B1					=> s_SW(17),
						B2					=> s_SW(16),
						B3					=> s_SW(15),
						en_MEG			=>	s_SW(0),	
						ledr				=> LEDR(0),
						ledg				=>	LEDG(7));

u4:	entity work.Display_Tam_Garrafa(v1)
			port map(clk			=> CLOCK_50,
						en_33cl		=> s_33cl,
						en_25cl		=> s_25cl,
						en_50cl		=> s_50cl,
						en_10dl		=> s_10dl,
						visor_uni	=> HEX4,
						visor_dez	=> HEX5,
						visor_cen	=> HEX6,
						visor_mil	=> HEX7);
						
u5:	entity work.Sel_Tam_Garrafa_FSM(v1)
			port map(reset			=> not KEY(0),
						clk			=> CLOCK_50,
						enable		=> s_SW(0),
						sel			=> s_sel,
						b33cl_d		=> s_33cl,
						b25cl_d		=> s_25cl,
						b50cl_d		=> s_50cl,
						b10dl_d		=> s_10dl);

u6:	entity work.DebounceUnit(Behavioral)
			port map(refClk			=> CLOCK_50,
						dirtyIn			=> KEY(1),
						pulsedOut		=> s_sel);
		
		
		process(CLOCK_50)
		begin
			if(rising_edge(CLOCK_50)) then
				s_sw <= SW;
			end if;
		end process;
						
end shell;