-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/26/2021 16:30:19"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[1]~ibuf_o\ : std_logic;
SIGNAL \SW[2]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL SW : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MicroProjectoDemo IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(0 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0)
	);
END MicroProjectoDemo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MicroProjectoDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|s_count[0]~29_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|s_count[24]~79\ : std_logic;
SIGNAL \inst2|s_count[25]~80_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \inst|s_dirtyIn~q\ : std_logic;
SIGNAL \inst|s_previousIn~q\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[17]~18_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[20]~11_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[0]~2_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[0]~3_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[19]~10_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[0]~0_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[21]~25_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[21]~26_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt[0]~4_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst|s_pulsedOut~q\ : std_logic;
SIGNAL \inst2|s_count~31_combout\ : std_logic;
SIGNAL \inst2|s_count[25]~81\ : std_logic;
SIGNAL \inst2|s_count[26]~82_combout\ : std_logic;
SIGNAL \inst2|s_count[26]~83\ : std_logic;
SIGNAL \inst2|s_count[27]~84_combout\ : std_logic;
SIGNAL \inst2|s_count[27]~85\ : std_logic;
SIGNAL \inst2|s_count[28]~86_combout\ : std_logic;
SIGNAL \inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst2|Equal1~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal1~4_combout\ : std_logic;
SIGNAL \inst2|s_expirou~2_combout\ : std_logic;
SIGNAL \inst2|s_expirou~q\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst2|s_count[0]~30\ : std_logic;
SIGNAL \inst2|s_count[1]~32_combout\ : std_logic;
SIGNAL \inst2|s_count[1]~33\ : std_logic;
SIGNAL \inst2|s_count[2]~34_combout\ : std_logic;
SIGNAL \inst2|s_count[2]~35\ : std_logic;
SIGNAL \inst2|s_count[3]~36_combout\ : std_logic;
SIGNAL \inst2|s_count[3]~37\ : std_logic;
SIGNAL \inst2|s_count[4]~38_combout\ : std_logic;
SIGNAL \inst2|s_count[4]~39\ : std_logic;
SIGNAL \inst2|s_count[5]~40_combout\ : std_logic;
SIGNAL \inst2|s_count[5]~41\ : std_logic;
SIGNAL \inst2|s_count[6]~42_combout\ : std_logic;
SIGNAL \inst2|s_count[6]~43\ : std_logic;
SIGNAL \inst2|s_count[7]~44_combout\ : std_logic;
SIGNAL \inst2|s_count[7]~45\ : std_logic;
SIGNAL \inst2|s_count[8]~46_combout\ : std_logic;
SIGNAL \inst2|s_count[8]~47\ : std_logic;
SIGNAL \inst2|s_count[9]~48_combout\ : std_logic;
SIGNAL \inst2|s_count[9]~49\ : std_logic;
SIGNAL \inst2|s_count[10]~50_combout\ : std_logic;
SIGNAL \inst2|s_count[10]~51\ : std_logic;
SIGNAL \inst2|s_count[11]~52_combout\ : std_logic;
SIGNAL \inst2|s_count[11]~53\ : std_logic;
SIGNAL \inst2|s_count[12]~54_combout\ : std_logic;
SIGNAL \inst2|s_count[12]~55\ : std_logic;
SIGNAL \inst2|s_count[13]~56_combout\ : std_logic;
SIGNAL \inst2|s_count[13]~57\ : std_logic;
SIGNAL \inst2|s_count[14]~58_combout\ : std_logic;
SIGNAL \inst2|s_count[14]~59\ : std_logic;
SIGNAL \inst2|s_count[15]~60_combout\ : std_logic;
SIGNAL \inst2|s_count[15]~61\ : std_logic;
SIGNAL \inst2|s_count[16]~62_combout\ : std_logic;
SIGNAL \inst2|s_count[16]~63\ : std_logic;
SIGNAL \inst2|s_count[17]~64_combout\ : std_logic;
SIGNAL \inst2|s_count[17]~65\ : std_logic;
SIGNAL \inst2|s_count[18]~66_combout\ : std_logic;
SIGNAL \inst2|s_count[18]~67\ : std_logic;
SIGNAL \inst2|s_count[19]~68_combout\ : std_logic;
SIGNAL \inst2|s_count[19]~69\ : std_logic;
SIGNAL \inst2|s_count[20]~70_combout\ : std_logic;
SIGNAL \inst2|s_count[20]~71\ : std_logic;
SIGNAL \inst2|s_count[21]~72_combout\ : std_logic;
SIGNAL \inst2|s_count[21]~73\ : std_logic;
SIGNAL \inst2|s_count[22]~74_combout\ : std_logic;
SIGNAL \inst2|s_count[22]~75\ : std_logic;
SIGNAL \inst2|s_count[23]~76_combout\ : std_logic;
SIGNAL \inst2|s_count[23]~77\ : std_logic;
SIGNAL \inst2|s_count[24]~78_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|Equal0~9_combout\ : std_logic;
SIGNAL \inst2|s_decorre~0_combout\ : std_logic;
SIGNAL \inst2|s_decorre~q\ : std_logic;
SIGNAL \inst2|s_count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \inst|s_debounceCnt\ : std_logic_vector(21 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|s_decorre~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X109_Y32_N4
\inst2|s_count[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[0]~29_combout\ = \inst2|s_count\(0) $ (VCC)
-- \inst2|s_count[0]~30\ = CARRY(\inst2|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(0),
	datad => VCC,
	combout => \inst2|s_count[0]~29_combout\,
	cout => \inst2|s_count[0]~30\);

-- Location: LCCOMB_X110_Y31_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X108_Y31_N10
\inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (\inst2|s_count\(16) & (\inst2|s_count\(18) & (\inst2|s_count\(19) & \inst2|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(16),
	datab => \inst2|s_count\(18),
	datac => \inst2|s_count\(19),
	datad => \inst2|s_count\(22),
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X108_Y31_N0
\inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|s_count\(8) & (\inst2|s_count\(13) & (\inst2|s_count\(14) & \inst2|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(8),
	datab => \inst2|s_count\(13),
	datac => \inst2|s_count\(14),
	datad => \inst2|s_count\(10),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X109_Y31_N20
\inst2|s_count[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[24]~78_combout\ = (\inst2|s_count\(24) & (\inst2|s_count[23]~77\ $ (GND))) # (!\inst2|s_count\(24) & (!\inst2|s_count[23]~77\ & VCC))
-- \inst2|s_count[24]~79\ = CARRY((\inst2|s_count\(24) & !\inst2|s_count[23]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(24),
	datad => VCC,
	cin => \inst2|s_count[23]~77\,
	combout => \inst2|s_count[24]~78_combout\,
	cout => \inst2|s_count[24]~79\);

-- Location: LCCOMB_X109_Y31_N22
\inst2|s_count[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[25]~80_combout\ = (\inst2|s_count\(25) & (!\inst2|s_count[24]~79\)) # (!\inst2|s_count\(25) & ((\inst2|s_count[24]~79\) # (GND)))
-- \inst2|s_count[25]~81\ = CARRY((!\inst2|s_count[24]~79\) # (!\inst2|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(25),
	datad => VCC,
	cin => \inst2|s_count[24]~79\,
	combout => \inst2|s_count[25]~80_combout\,
	cout => \inst2|s_count[25]~81\);

-- Location: LCCOMB_X107_Y34_N10
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|s_debounceCnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X111_Y34_N8
\inst|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \inst|s_dirtyIn~0_combout\);

-- Location: FF_X111_Y34_N9
\inst|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_dirtyIn~q\);

-- Location: FF_X109_Y34_N31
\inst|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_previousIn~q\);

-- Location: LCCOMB_X107_Y34_N14
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|s_debounceCnt\(2) & ((GND) # (!\inst|Add0~3\))) # (!\inst|s_debounceCnt\(2) & (\inst|Add0~3\ $ (GND)))
-- \inst|Add0~5\ = CARRY((\inst|s_debounceCnt\(2)) # (!\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X107_Y34_N16
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|s_debounceCnt\(3) & (\inst|Add0~5\ & VCC)) # (!\inst|s_debounceCnt\(3) & (!\inst|Add0~5\))
-- \inst|Add0~7\ = CARRY((!\inst|s_debounceCnt\(3) & !\inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X107_Y34_N8
\inst|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~22_combout\ = (\inst|Add0~6_combout\ & \inst|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~6_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt~22_combout\);

-- Location: FF_X107_Y34_N9
\inst|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~22_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(3));

-- Location: LCCOMB_X107_Y34_N18
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|s_debounceCnt\(4) & ((GND) # (!\inst|Add0~7\))) # (!\inst|s_debounceCnt\(4) & (\inst|Add0~7\ $ (GND)))
-- \inst|Add0~9\ = CARRY((\inst|s_debounceCnt\(4)) # (!\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X108_Y34_N28
\inst|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~23_combout\ = (\inst|Add0~8_combout\ & \inst|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~8_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt~23_combout\);

-- Location: FF_X108_Y34_N29
\inst|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~23_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(4));

-- Location: LCCOMB_X107_Y34_N20
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|s_debounceCnt\(5) & (\inst|Add0~9\ & VCC)) # (!\inst|s_debounceCnt\(5) & (!\inst|Add0~9\))
-- \inst|Add0~11\ = CARRY((!\inst|s_debounceCnt\(5) & !\inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X109_Y34_N22
\inst|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~1_combout\ = (\inst|s_debounceCnt[0]~0_combout\ & ((\inst|Add0~10_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|s_debounceCnt[0]~0_combout\,
	combout => \inst|s_debounceCnt~1_combout\);

-- Location: FF_X109_Y34_N23
\inst|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~1_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(5));

-- Location: LCCOMB_X107_Y34_N22
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|s_debounceCnt\(6) & ((GND) # (!\inst|Add0~11\))) # (!\inst|s_debounceCnt\(6) & (\inst|Add0~11\ $ (GND)))
-- \inst|Add0~13\ = CARRY((\inst|s_debounceCnt\(6)) # (!\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X108_Y34_N20
\inst|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~12_combout\ = (\inst|Add0~12_combout\ & \inst|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~12_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt~12_combout\);

-- Location: FF_X108_Y34_N21
\inst|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~12_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(6));

-- Location: LCCOMB_X107_Y34_N24
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|s_debounceCnt\(7) & (\inst|Add0~13\ & VCC)) # (!\inst|s_debounceCnt\(7) & (!\inst|Add0~13\))
-- \inst|Add0~15\ = CARRY((!\inst|s_debounceCnt\(7) & !\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X109_Y34_N8
\inst|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~13_combout\ = (\inst|s_debounceCnt[0]~0_combout\ & ((\inst|Add0~14_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datac => \inst|Add0~14_combout\,
	datad => \inst|s_debounceCnt[0]~0_combout\,
	combout => \inst|s_debounceCnt~13_combout\);

-- Location: FF_X109_Y34_N9
\inst|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~13_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(7));

-- Location: LCCOMB_X107_Y34_N26
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|s_debounceCnt\(8) & ((GND) # (!\inst|Add0~15\))) # (!\inst|s_debounceCnt\(8) & (\inst|Add0~15\ $ (GND)))
-- \inst|Add0~17\ = CARRY((\inst|s_debounceCnt\(8)) # (!\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X109_Y34_N10
\inst|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~14_combout\ = (\inst|s_debounceCnt[0]~0_combout\ & ((\inst|Add0~16_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datac => \inst|Add0~16_combout\,
	datad => \inst|s_debounceCnt[0]~0_combout\,
	combout => \inst|s_debounceCnt~14_combout\);

-- Location: FF_X109_Y34_N11
\inst|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~14_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(8));

-- Location: LCCOMB_X107_Y34_N28
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|s_debounceCnt\(9) & (\inst|Add0~17\ & VCC)) # (!\inst|s_debounceCnt\(9) & (!\inst|Add0~17\))
-- \inst|Add0~19\ = CARRY((!\inst|s_debounceCnt\(9) & !\inst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X109_Y34_N28
\inst|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~15_combout\ = (\inst|s_debounceCnt[0]~4_combout\ & \inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_debounceCnt[0]~4_combout\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|s_debounceCnt~15_combout\);

-- Location: FF_X109_Y34_N29
\inst|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~15_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(9));

-- Location: LCCOMB_X109_Y34_N26
\inst|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~2_combout\ = (!\inst|s_debounceCnt\(8) & (!\inst|s_debounceCnt\(9) & (!\inst|s_debounceCnt\(7) & !\inst|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(8),
	datab => \inst|s_debounceCnt\(9),
	datac => \inst|s_debounceCnt\(7),
	datad => \inst|s_debounceCnt\(6),
	combout => \inst|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X107_Y34_N30
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|s_debounceCnt\(10) & ((GND) # (!\inst|Add0~19\))) # (!\inst|s_debounceCnt\(10) & (\inst|Add0~19\ $ (GND)))
-- \inst|Add0~21\ = CARRY((\inst|s_debounceCnt\(10)) # (!\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X108_Y34_N26
\inst|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~16_combout\ = (\inst|s_debounceCnt[0]~0_combout\ & ((\inst|Add0~20_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datac => \inst|Add0~20_combout\,
	datad => \inst|s_debounceCnt[0]~0_combout\,
	combout => \inst|s_debounceCnt~16_combout\);

-- Location: FF_X108_Y34_N27
\inst|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~16_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(10));

-- Location: LCCOMB_X107_Y33_N0
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|s_debounceCnt\(11) & (\inst|Add0~21\ & VCC)) # (!\inst|s_debounceCnt\(11) & (!\inst|Add0~21\))
-- \inst|Add0~23\ = CARRY((!\inst|s_debounceCnt\(11) & !\inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X108_Y34_N12
\inst|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~8_combout\ = (\inst|Add0~22_combout\ & \inst|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~22_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt~8_combout\);

-- Location: FF_X108_Y34_N13
\inst|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~8_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(11));

-- Location: LCCOMB_X107_Y33_N2
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|s_debounceCnt\(12) & ((GND) # (!\inst|Add0~23\))) # (!\inst|s_debounceCnt\(12) & (\inst|Add0~23\ $ (GND)))
-- \inst|Add0~25\ = CARRY((\inst|s_debounceCnt\(12)) # (!\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X107_Y33_N26
\inst|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~9_combout\ = (\inst|Add0~24_combout\ & \inst|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~24_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt~9_combout\);

-- Location: FF_X107_Y33_N27
\inst|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~9_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(12));

-- Location: LCCOMB_X107_Y33_N4
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|s_debounceCnt\(13) & (\inst|Add0~25\ & VCC)) # (!\inst|s_debounceCnt\(13) & (!\inst|Add0~25\))
-- \inst|Add0~27\ = CARRY((!\inst|s_debounceCnt\(13) & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X108_Y34_N4
\inst|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~17_combout\ = (\inst|s_debounceCnt[0]~0_combout\ & ((\inst|Add0~26_combout\) # (!\inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt[0]~0_combout\,
	datac => \inst|s_previousIn~q\,
	datad => \inst|Add0~26_combout\,
	combout => \inst|s_debounceCnt~17_combout\);

-- Location: FF_X108_Y34_N5
\inst|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~17_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(13));

-- Location: LCCOMB_X107_Y33_N6
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|s_debounceCnt\(14) & ((GND) # (!\inst|Add0~27\))) # (!\inst|s_debounceCnt\(14) & (\inst|Add0~27\ $ (GND)))
-- \inst|Add0~29\ = CARRY((\inst|s_debounceCnt\(14)) # (!\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X108_Y33_N0
\inst|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~5_combout\ = (\inst|s_debounceCnt[0]~4_combout\ & \inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_debounceCnt[0]~4_combout\,
	datad => \inst|Add0~28_combout\,
	combout => \inst|s_debounceCnt~5_combout\);

-- Location: FF_X108_Y33_N1
\inst|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~5_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(14));

-- Location: LCCOMB_X107_Y33_N8
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|s_debounceCnt\(15) & (\inst|Add0~29\ & VCC)) # (!\inst|s_debounceCnt\(15) & (!\inst|Add0~29\))
-- \inst|Add0~31\ = CARRY((!\inst|s_debounceCnt\(15) & !\inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X108_Y33_N10
\inst|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~6_combout\ = (\inst|s_debounceCnt[0]~4_combout\ & \inst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_debounceCnt[0]~4_combout\,
	datad => \inst|Add0~30_combout\,
	combout => \inst|s_debounceCnt~6_combout\);

-- Location: FF_X108_Y33_N11
\inst|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~6_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(15));

-- Location: LCCOMB_X107_Y33_N10
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|s_debounceCnt\(16) & ((GND) # (!\inst|Add0~31\))) # (!\inst|s_debounceCnt\(16) & (\inst|Add0~31\ $ (GND)))
-- \inst|Add0~33\ = CARRY((\inst|s_debounceCnt\(16)) # (!\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X109_Y34_N0
\inst|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~7_combout\ = (\inst|s_debounceCnt[0]~4_combout\ & \inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_debounceCnt[0]~4_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst|s_debounceCnt~7_combout\);

-- Location: FF_X109_Y34_N1
\inst|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~7_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(16));

-- Location: LCCOMB_X109_Y34_N18
\inst|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~0_combout\ = (!\inst|s_debounceCnt\(5) & (!\inst|s_debounceCnt\(16) & (!\inst|s_debounceCnt\(15) & !\inst|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(5),
	datab => \inst|s_debounceCnt\(16),
	datac => \inst|s_debounceCnt\(15),
	datad => \inst|s_debounceCnt\(14),
	combout => \inst|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X107_Y33_N12
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|s_debounceCnt\(17) & (\inst|Add0~33\ & VCC)) # (!\inst|s_debounceCnt\(17) & (!\inst|Add0~33\))
-- \inst|Add0~35\ = CARRY((!\inst|s_debounceCnt\(17) & !\inst|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X108_Y34_N30
\inst|s_debounceCnt[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[17]~18_combout\ = (\inst|s_debounceCnt[0]~0_combout\ & (\inst|s_debounceCnt[0]~3_combout\ & ((\inst|Add0~34_combout\) # (!\inst|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_debounceCnt[0]~0_combout\,
	datac => \inst|s_debounceCnt[0]~3_combout\,
	datad => \inst|Add0~34_combout\,
	combout => \inst|s_debounceCnt[17]~18_combout\);

-- Location: FF_X108_Y34_N31
\inst|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(17));

-- Location: LCCOMB_X108_Y34_N22
\inst|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~3_combout\ = (!\inst|s_debounceCnt\(17) & (!\inst|s_debounceCnt\(13) & (!\inst|s_debounceCnt\(10) & !\inst|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(17),
	datab => \inst|s_debounceCnt\(13),
	datac => \inst|s_debounceCnt\(10),
	datad => \inst|s_debounceCnt\(18),
	combout => \inst|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X107_Y33_N16
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|s_debounceCnt\(19) & (\inst|Add0~37\ & VCC)) # (!\inst|s_debounceCnt\(19) & (!\inst|Add0~37\))
-- \inst|Add0~39\ = CARRY((!\inst|s_debounceCnt\(19) & !\inst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X107_Y33_N18
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|s_debounceCnt\(20) & ((GND) # (!\inst|Add0~39\))) # (!\inst|s_debounceCnt\(20) & (\inst|Add0~39\ $ (GND)))
-- \inst|Add0~41\ = CARRY((\inst|s_debounceCnt\(20)) # (!\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X107_Y33_N30
\inst|s_debounceCnt[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[20]~11_combout\ = (\inst|Add0~40_combout\ & (\inst|s_debounceCnt[0]~3_combout\ & \inst|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~40_combout\,
	datac => \inst|s_debounceCnt[0]~3_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt[20]~11_combout\);

-- Location: FF_X107_Y33_N31
\inst|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(20));

-- Location: LCCOMB_X108_Y34_N10
\inst|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~1_combout\ = (!\inst|s_debounceCnt\(11) & (!\inst|s_debounceCnt\(20) & (!\inst|s_debounceCnt\(19) & !\inst|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(11),
	datab => \inst|s_debounceCnt\(20),
	datac => \inst|s_debounceCnt\(19),
	datad => \inst|s_debounceCnt\(12),
	combout => \inst|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X109_Y34_N20
\inst|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~4_combout\ = (\inst|s_pulsedOut~2_combout\ & (\inst|s_pulsedOut~0_combout\ & (\inst|s_pulsedOut~3_combout\ & \inst|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~2_combout\,
	datab => \inst|s_pulsedOut~0_combout\,
	datac => \inst|s_pulsedOut~3_combout\,
	datad => \inst|s_pulsedOut~1_combout\,
	combout => \inst|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X109_Y34_N2
\inst|s_debounceCnt[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[0]~2_combout\ = ((\inst|s_debounceCnt\(0)) # (!\inst|s_pulsedOut~4_combout\)) # (!\inst|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~5_combout\,
	datac => \inst|s_debounceCnt\(0),
	datad => \inst|s_pulsedOut~4_combout\,
	combout => \inst|s_debounceCnt[0]~2_combout\);

-- Location: LCCOMB_X109_Y34_N30
\inst|s_debounceCnt[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[0]~3_combout\ = (\inst|s_debounceCnt\(21)) # (((\inst|s_debounceCnt[0]~2_combout\) # (!\inst|s_previousIn~q\)) # (!\inst|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(21),
	datab => \inst|s_dirtyIn~q\,
	datac => \inst|s_previousIn~q\,
	datad => \inst|s_debounceCnt[0]~2_combout\,
	combout => \inst|s_debounceCnt[0]~3_combout\);

-- Location: LCCOMB_X107_Y33_N14
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|s_debounceCnt\(18) & ((GND) # (!\inst|Add0~35\))) # (!\inst|s_debounceCnt\(18) & (\inst|Add0~35\ $ (GND)))
-- \inst|Add0~37\ = CARRY((\inst|s_debounceCnt\(18)) # (!\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X108_Y34_N24
\inst|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[18]~19_combout\ = (\inst|s_debounceCnt[0]~0_combout\ & (\inst|s_debounceCnt[0]~3_combout\ & ((\inst|Add0~36_combout\) # (!\inst|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_debounceCnt[0]~0_combout\,
	datac => \inst|s_debounceCnt[0]~3_combout\,
	datad => \inst|Add0~36_combout\,
	combout => \inst|s_debounceCnt[18]~19_combout\);

-- Location: FF_X108_Y34_N25
\inst|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(18));

-- Location: LCCOMB_X107_Y33_N24
\inst|s_debounceCnt[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[19]~10_combout\ = (\inst|Add0~38_combout\ & (\inst|s_debounceCnt[0]~3_combout\ & \inst|s_debounceCnt[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~38_combout\,
	datac => \inst|s_debounceCnt[0]~3_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt[19]~10_combout\);

-- Location: FF_X107_Y33_N25
\inst|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(19));

-- Location: LCCOMB_X108_Y34_N16
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|s_debounceCnt\(17) & (\inst|s_debounceCnt\(13) & (\inst|s_debounceCnt\(10) & \inst|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(17),
	datab => \inst|s_debounceCnt\(13),
	datac => \inst|s_debounceCnt\(10),
	datad => \inst|s_debounceCnt\(18),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X109_Y34_N24
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|s_debounceCnt\(6)) # ((\inst|s_debounceCnt\(5) & ((\inst|s_debounceCnt\(0)) # (!\inst|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(5),
	datab => \inst|s_debounceCnt\(6),
	datac => \inst|s_debounceCnt\(0),
	datad => \inst|s_pulsedOut~5_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X109_Y34_N14
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (\inst|s_debounceCnt\(8) & (\inst|s_debounceCnt\(7) & (\inst|LessThan0~4_combout\ & \inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(8),
	datab => \inst|s_debounceCnt\(7),
	datac => \inst|LessThan0~4_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X108_Y34_N18
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|s_debounceCnt\(11)) # ((\inst|s_debounceCnt\(12)) # ((\inst|s_debounceCnt\(9) & \inst|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(11),
	datab => \inst|s_debounceCnt\(9),
	datac => \inst|s_debounceCnt\(10),
	datad => \inst|s_debounceCnt\(12),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X108_Y34_N0
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|s_debounceCnt\(15)) # ((\inst|s_debounceCnt\(14)) # ((\inst|s_debounceCnt\(13) & \inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(15),
	datab => \inst|s_debounceCnt\(14),
	datac => \inst|s_debounceCnt\(13),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X108_Y34_N14
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|s_debounceCnt\(17) & (\inst|s_debounceCnt\(18) & ((\inst|s_debounceCnt\(16)) # (\inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(17),
	datab => \inst|s_debounceCnt\(18),
	datac => \inst|s_debounceCnt\(16),
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y34_N16
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (\inst|s_debounceCnt\(19)) # ((\inst|s_debounceCnt\(20)) # ((\inst|LessThan0~5_combout\) # (\inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(19),
	datab => \inst|s_debounceCnt\(20),
	datac => \inst|LessThan0~5_combout\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X108_Y34_N2
\inst|s_debounceCnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[0]~0_combout\ = (\inst|s_dirtyIn~q\ & ((!\inst|LessThan0~6_combout\) # (!\inst|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(21),
	datab => \inst|s_dirtyIn~q\,
	datad => \inst|LessThan0~6_combout\,
	combout => \inst|s_debounceCnt[0]~0_combout\);

-- Location: LCCOMB_X107_Y33_N20
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = \inst|Add0~41\ $ (!\inst|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_debounceCnt\(21),
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\);

-- Location: LCCOMB_X109_Y34_N6
\inst|s_debounceCnt[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[21]~25_combout\ = (\inst|s_dirtyIn~q\ & ((\inst|s_debounceCnt\(21) & ((!\inst|LessThan0~6_combout\))) # (!\inst|s_debounceCnt\(21) & (\inst|s_debounceCnt[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(21),
	datab => \inst|s_debounceCnt[0]~2_combout\,
	datac => \inst|s_dirtyIn~q\,
	datad => \inst|LessThan0~6_combout\,
	combout => \inst|s_debounceCnt[21]~25_combout\);

-- Location: LCCOMB_X108_Y34_N6
\inst|s_debounceCnt[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[21]~26_combout\ = (\inst|s_previousIn~q\ & (((\inst|Add0~42_combout\ & \inst|s_debounceCnt[21]~25_combout\)))) # (!\inst|s_previousIn~q\ & (\inst|s_debounceCnt[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_debounceCnt[0]~0_combout\,
	datac => \inst|Add0~42_combout\,
	datad => \inst|s_debounceCnt[21]~25_combout\,
	combout => \inst|s_debounceCnt[21]~26_combout\);

-- Location: FF_X108_Y34_N7
\inst|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(21));

-- Location: LCCOMB_X109_Y34_N4
\inst|s_debounceCnt[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt[0]~4_combout\ = (\inst|s_previousIn~q\ & (\inst|s_dirtyIn~q\ & ((!\inst|LessThan0~6_combout\) # (!\inst|s_debounceCnt\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_previousIn~q\,
	datab => \inst|s_debounceCnt\(21),
	datac => \inst|s_dirtyIn~q\,
	datad => \inst|LessThan0~6_combout\,
	combout => \inst|s_debounceCnt[0]~4_combout\);

-- Location: LCCOMB_X107_Y34_N0
\inst|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~24_combout\ = (\inst|Add0~0_combout\ & \inst|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~0_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt~24_combout\);

-- Location: FF_X107_Y34_N1
\inst|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~24_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(0));

-- Location: LCCOMB_X107_Y34_N12
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|s_debounceCnt\(1) & (\inst|Add0~1\ & VCC)) # (!\inst|s_debounceCnt\(1) & (!\inst|Add0~1\))
-- \inst|Add0~3\ = CARRY((!\inst|s_debounceCnt\(1) & !\inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X107_Y34_N4
\inst|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~20_combout\ = (\inst|Add0~2_combout\ & \inst|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~2_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt~20_combout\);

-- Location: FF_X107_Y34_N5
\inst|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~20_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(1));

-- Location: LCCOMB_X107_Y34_N2
\inst|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_debounceCnt~21_combout\ = (\inst|Add0~4_combout\ & \inst|s_debounceCnt[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~4_combout\,
	datad => \inst|s_debounceCnt[0]~4_combout\,
	combout => \inst|s_debounceCnt~21_combout\);

-- Location: FF_X107_Y34_N3
\inst|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_debounceCnt~21_combout\,
	ena => \inst|s_debounceCnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_debounceCnt\(2));

-- Location: LCCOMB_X107_Y34_N6
\inst|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~5_combout\ = (!\inst|s_debounceCnt\(2) & (!\inst|s_debounceCnt\(1) & (!\inst|s_debounceCnt\(3) & !\inst|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(2),
	datab => \inst|s_debounceCnt\(1),
	datac => \inst|s_debounceCnt\(3),
	datad => \inst|s_debounceCnt\(4),
	combout => \inst|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X108_Y34_N8
\inst|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~6_combout\ = (!\inst|s_debounceCnt\(21) & (\inst|s_dirtyIn~q\ & (\inst|s_debounceCnt\(0) & \inst|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_debounceCnt\(21),
	datab => \inst|s_dirtyIn~q\,
	datac => \inst|s_debounceCnt\(0),
	datad => \inst|s_previousIn~q\,
	combout => \inst|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X109_Y34_N12
\inst|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_pulsedOut~7_combout\ = (\inst|s_pulsedOut~5_combout\ & (\inst|s_pulsedOut~4_combout\ & \inst|s_pulsedOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_pulsedOut~5_combout\,
	datab => \inst|s_pulsedOut~4_combout\,
	datad => \inst|s_pulsedOut~6_combout\,
	combout => \inst|s_pulsedOut~7_combout\);

-- Location: FF_X109_Y34_N13
\inst|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_pulsedOut~q\);

-- Location: LCCOMB_X108_Y31_N2
\inst2|s_count~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count~31_combout\ = (\inst2|Equal0~9_combout\ & (!\inst|s_pulsedOut~q\)) # (!\inst2|Equal0~9_combout\ & ((\inst2|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_pulsedOut~q\,
	datac => \inst2|Equal0~9_combout\,
	datad => \inst2|Equal1~4_combout\,
	combout => \inst2|s_count~31_combout\);

-- Location: FF_X109_Y31_N23
\inst2|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[25]~80_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(25));

-- Location: LCCOMB_X109_Y31_N24
\inst2|s_count[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[26]~82_combout\ = (\inst2|s_count\(26) & (\inst2|s_count[25]~81\ $ (GND))) # (!\inst2|s_count\(26) & (!\inst2|s_count[25]~81\ & VCC))
-- \inst2|s_count[26]~83\ = CARRY((\inst2|s_count\(26) & !\inst2|s_count[25]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(26),
	datad => VCC,
	cin => \inst2|s_count[25]~81\,
	combout => \inst2|s_count[26]~82_combout\,
	cout => \inst2|s_count[26]~83\);

-- Location: FF_X109_Y31_N25
\inst2|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[26]~82_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(26));

-- Location: LCCOMB_X109_Y31_N26
\inst2|s_count[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[27]~84_combout\ = (\inst2|s_count\(27) & (!\inst2|s_count[26]~83\)) # (!\inst2|s_count\(27) & ((\inst2|s_count[26]~83\) # (GND)))
-- \inst2|s_count[27]~85\ = CARRY((!\inst2|s_count[26]~83\) # (!\inst2|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(27),
	datad => VCC,
	cin => \inst2|s_count[26]~83\,
	combout => \inst2|s_count[27]~84_combout\,
	cout => \inst2|s_count[27]~85\);

-- Location: FF_X109_Y31_N27
\inst2|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[27]~84_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(27));

-- Location: LCCOMB_X109_Y31_N28
\inst2|s_count[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[28]~86_combout\ = \inst2|s_count[27]~85\ $ (!\inst2|s_count\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_count\(28),
	cin => \inst2|s_count[27]~85\,
	combout => \inst2|s_count[28]~86_combout\);

-- Location: FF_X109_Y31_N29
\inst2|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[28]~86_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(28));

-- Location: LCCOMB_X108_Y31_N20
\inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~2_combout\ = (\inst2|s_count\(24) & (\inst2|s_count\(23) & (\inst2|s_count\(26) & \inst2|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(24),
	datab => \inst2|s_count\(23),
	datac => \inst2|s_count\(26),
	datad => \inst2|s_count\(27),
	combout => \inst2|Equal1~2_combout\);

-- Location: LCCOMB_X108_Y31_N26
\inst2|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~3_combout\ = (\inst2|s_count\(28) & \inst2|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(28),
	datad => \inst2|Equal1~2_combout\,
	combout => \inst2|Equal1~3_combout\);

-- Location: LCCOMB_X109_Y31_N30
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|s_count\(17) & (!\inst2|s_count\(21) & (!\inst2|s_count\(25) & !\inst2|s_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(17),
	datab => \inst2|s_count\(21),
	datac => \inst2|s_count\(25),
	datad => \inst2|s_count\(20),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X109_Y32_N0
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|s_count\(3) & (!\inst2|s_count\(2) & (!\inst2|s_count\(0) & !\inst2|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(3),
	datab => \inst2|s_count\(2),
	datac => \inst2|s_count\(0),
	datad => \inst2|s_count\(1),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X108_Y31_N30
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|s_count\(15) & (!\inst2|s_count\(9) & (!\inst2|s_count\(11) & !\inst2|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(15),
	datab => \inst2|s_count\(9),
	datac => \inst2|s_count\(11),
	datad => \inst2|s_count\(12),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X109_Y32_N2
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|s_count\(4) & (!\inst2|s_count\(7) & (!\inst2|s_count\(5) & !\inst2|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(4),
	datab => \inst2|s_count\(7),
	datac => \inst2|s_count\(5),
	datad => \inst2|s_count\(6),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X108_Y31_N16
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~3_combout\ & (\inst2|Equal0~0_combout\ & (\inst2|Equal0~2_combout\ & \inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~3_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCCOMB_X108_Y31_N28
\inst2|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~4_combout\ = (\inst2|Equal1~1_combout\ & (\inst2|Equal1~0_combout\ & (\inst2|Equal1~3_combout\ & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Equal1~0_combout\,
	datac => \inst2|Equal1~3_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal1~4_combout\);

-- Location: LCCOMB_X108_Y31_N18
\inst2|s_expirou~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_expirou~2_combout\ = (!\SW[0]~input_o\ & (\inst2|Equal1~4_combout\ & (!\inst2|s_expirou~q\ & !\inst2|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst2|Equal1~4_combout\,
	datac => \inst2|s_expirou~q\,
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|s_expirou~2_combout\);

-- Location: FF_X108_Y31_N19
\inst2|s_expirou\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_expirou~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_expirou~q\);

-- Location: LCCOMB_X108_Y31_N24
inst1 : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\inst2|s_expirou~q\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_expirou~q\,
	datad => \SW[0]~input_o\,
	combout => \inst1~combout\);

-- Location: FF_X109_Y32_N5
\inst2|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[0]~29_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(0));

-- Location: LCCOMB_X109_Y32_N6
\inst2|s_count[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[1]~32_combout\ = (\inst2|s_count\(1) & (!\inst2|s_count[0]~30\)) # (!\inst2|s_count\(1) & ((\inst2|s_count[0]~30\) # (GND)))
-- \inst2|s_count[1]~33\ = CARRY((!\inst2|s_count[0]~30\) # (!\inst2|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(1),
	datad => VCC,
	cin => \inst2|s_count[0]~30\,
	combout => \inst2|s_count[1]~32_combout\,
	cout => \inst2|s_count[1]~33\);

-- Location: FF_X109_Y32_N7
\inst2|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[1]~32_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(1));

-- Location: LCCOMB_X109_Y32_N8
\inst2|s_count[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[2]~34_combout\ = (\inst2|s_count\(2) & (\inst2|s_count[1]~33\ $ (GND))) # (!\inst2|s_count\(2) & (!\inst2|s_count[1]~33\ & VCC))
-- \inst2|s_count[2]~35\ = CARRY((\inst2|s_count\(2) & !\inst2|s_count[1]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(2),
	datad => VCC,
	cin => \inst2|s_count[1]~33\,
	combout => \inst2|s_count[2]~34_combout\,
	cout => \inst2|s_count[2]~35\);

-- Location: FF_X109_Y32_N9
\inst2|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[2]~34_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(2));

-- Location: LCCOMB_X109_Y32_N10
\inst2|s_count[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[3]~36_combout\ = (\inst2|s_count\(3) & (!\inst2|s_count[2]~35\)) # (!\inst2|s_count\(3) & ((\inst2|s_count[2]~35\) # (GND)))
-- \inst2|s_count[3]~37\ = CARRY((!\inst2|s_count[2]~35\) # (!\inst2|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(3),
	datad => VCC,
	cin => \inst2|s_count[2]~35\,
	combout => \inst2|s_count[3]~36_combout\,
	cout => \inst2|s_count[3]~37\);

-- Location: FF_X109_Y32_N11
\inst2|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[3]~36_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(3));

-- Location: LCCOMB_X109_Y32_N12
\inst2|s_count[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[4]~38_combout\ = (\inst2|s_count\(4) & (\inst2|s_count[3]~37\ $ (GND))) # (!\inst2|s_count\(4) & (!\inst2|s_count[3]~37\ & VCC))
-- \inst2|s_count[4]~39\ = CARRY((\inst2|s_count\(4) & !\inst2|s_count[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(4),
	datad => VCC,
	cin => \inst2|s_count[3]~37\,
	combout => \inst2|s_count[4]~38_combout\,
	cout => \inst2|s_count[4]~39\);

-- Location: FF_X109_Y32_N13
\inst2|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[4]~38_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(4));

-- Location: LCCOMB_X109_Y32_N14
\inst2|s_count[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[5]~40_combout\ = (\inst2|s_count\(5) & (!\inst2|s_count[4]~39\)) # (!\inst2|s_count\(5) & ((\inst2|s_count[4]~39\) # (GND)))
-- \inst2|s_count[5]~41\ = CARRY((!\inst2|s_count[4]~39\) # (!\inst2|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(5),
	datad => VCC,
	cin => \inst2|s_count[4]~39\,
	combout => \inst2|s_count[5]~40_combout\,
	cout => \inst2|s_count[5]~41\);

-- Location: FF_X109_Y32_N15
\inst2|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[5]~40_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(5));

-- Location: LCCOMB_X109_Y32_N16
\inst2|s_count[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[6]~42_combout\ = (\inst2|s_count\(6) & (\inst2|s_count[5]~41\ $ (GND))) # (!\inst2|s_count\(6) & (!\inst2|s_count[5]~41\ & VCC))
-- \inst2|s_count[6]~43\ = CARRY((\inst2|s_count\(6) & !\inst2|s_count[5]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(6),
	datad => VCC,
	cin => \inst2|s_count[5]~41\,
	combout => \inst2|s_count[6]~42_combout\,
	cout => \inst2|s_count[6]~43\);

-- Location: FF_X109_Y32_N17
\inst2|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[6]~42_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(6));

-- Location: LCCOMB_X109_Y32_N18
\inst2|s_count[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[7]~44_combout\ = (\inst2|s_count\(7) & (!\inst2|s_count[6]~43\)) # (!\inst2|s_count\(7) & ((\inst2|s_count[6]~43\) # (GND)))
-- \inst2|s_count[7]~45\ = CARRY((!\inst2|s_count[6]~43\) # (!\inst2|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(7),
	datad => VCC,
	cin => \inst2|s_count[6]~43\,
	combout => \inst2|s_count[7]~44_combout\,
	cout => \inst2|s_count[7]~45\);

-- Location: FF_X109_Y32_N19
\inst2|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[7]~44_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(7));

-- Location: LCCOMB_X109_Y32_N20
\inst2|s_count[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[8]~46_combout\ = (\inst2|s_count\(8) & (\inst2|s_count[7]~45\ $ (GND))) # (!\inst2|s_count\(8) & (!\inst2|s_count[7]~45\ & VCC))
-- \inst2|s_count[8]~47\ = CARRY((\inst2|s_count\(8) & !\inst2|s_count[7]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(8),
	datad => VCC,
	cin => \inst2|s_count[7]~45\,
	combout => \inst2|s_count[8]~46_combout\,
	cout => \inst2|s_count[8]~47\);

-- Location: FF_X109_Y32_N21
\inst2|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[8]~46_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(8));

-- Location: LCCOMB_X109_Y32_N22
\inst2|s_count[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[9]~48_combout\ = (\inst2|s_count\(9) & (!\inst2|s_count[8]~47\)) # (!\inst2|s_count\(9) & ((\inst2|s_count[8]~47\) # (GND)))
-- \inst2|s_count[9]~49\ = CARRY((!\inst2|s_count[8]~47\) # (!\inst2|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(9),
	datad => VCC,
	cin => \inst2|s_count[8]~47\,
	combout => \inst2|s_count[9]~48_combout\,
	cout => \inst2|s_count[9]~49\);

-- Location: FF_X109_Y32_N23
\inst2|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[9]~48_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(9));

-- Location: LCCOMB_X109_Y32_N24
\inst2|s_count[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[10]~50_combout\ = (\inst2|s_count\(10) & (\inst2|s_count[9]~49\ $ (GND))) # (!\inst2|s_count\(10) & (!\inst2|s_count[9]~49\ & VCC))
-- \inst2|s_count[10]~51\ = CARRY((\inst2|s_count\(10) & !\inst2|s_count[9]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(10),
	datad => VCC,
	cin => \inst2|s_count[9]~49\,
	combout => \inst2|s_count[10]~50_combout\,
	cout => \inst2|s_count[10]~51\);

-- Location: FF_X109_Y32_N25
\inst2|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[10]~50_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(10));

-- Location: LCCOMB_X109_Y32_N26
\inst2|s_count[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[11]~52_combout\ = (\inst2|s_count\(11) & (!\inst2|s_count[10]~51\)) # (!\inst2|s_count\(11) & ((\inst2|s_count[10]~51\) # (GND)))
-- \inst2|s_count[11]~53\ = CARRY((!\inst2|s_count[10]~51\) # (!\inst2|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(11),
	datad => VCC,
	cin => \inst2|s_count[10]~51\,
	combout => \inst2|s_count[11]~52_combout\,
	cout => \inst2|s_count[11]~53\);

-- Location: FF_X109_Y32_N27
\inst2|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[11]~52_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(11));

-- Location: LCCOMB_X109_Y32_N28
\inst2|s_count[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[12]~54_combout\ = (\inst2|s_count\(12) & (\inst2|s_count[11]~53\ $ (GND))) # (!\inst2|s_count\(12) & (!\inst2|s_count[11]~53\ & VCC))
-- \inst2|s_count[12]~55\ = CARRY((\inst2|s_count\(12) & !\inst2|s_count[11]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(12),
	datad => VCC,
	cin => \inst2|s_count[11]~53\,
	combout => \inst2|s_count[12]~54_combout\,
	cout => \inst2|s_count[12]~55\);

-- Location: FF_X109_Y32_N29
\inst2|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[12]~54_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(12));

-- Location: LCCOMB_X109_Y32_N30
\inst2|s_count[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[13]~56_combout\ = (\inst2|s_count\(13) & (!\inst2|s_count[12]~55\)) # (!\inst2|s_count\(13) & ((\inst2|s_count[12]~55\) # (GND)))
-- \inst2|s_count[13]~57\ = CARRY((!\inst2|s_count[12]~55\) # (!\inst2|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(13),
	datad => VCC,
	cin => \inst2|s_count[12]~55\,
	combout => \inst2|s_count[13]~56_combout\,
	cout => \inst2|s_count[13]~57\);

-- Location: FF_X109_Y32_N31
\inst2|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[13]~56_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(13));

-- Location: LCCOMB_X109_Y31_N0
\inst2|s_count[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[14]~58_combout\ = (\inst2|s_count\(14) & (\inst2|s_count[13]~57\ $ (GND))) # (!\inst2|s_count\(14) & (!\inst2|s_count[13]~57\ & VCC))
-- \inst2|s_count[14]~59\ = CARRY((\inst2|s_count\(14) & !\inst2|s_count[13]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(14),
	datad => VCC,
	cin => \inst2|s_count[13]~57\,
	combout => \inst2|s_count[14]~58_combout\,
	cout => \inst2|s_count[14]~59\);

-- Location: FF_X109_Y31_N1
\inst2|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[14]~58_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(14));

-- Location: LCCOMB_X109_Y31_N2
\inst2|s_count[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[15]~60_combout\ = (\inst2|s_count\(15) & (!\inst2|s_count[14]~59\)) # (!\inst2|s_count\(15) & ((\inst2|s_count[14]~59\) # (GND)))
-- \inst2|s_count[15]~61\ = CARRY((!\inst2|s_count[14]~59\) # (!\inst2|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(15),
	datad => VCC,
	cin => \inst2|s_count[14]~59\,
	combout => \inst2|s_count[15]~60_combout\,
	cout => \inst2|s_count[15]~61\);

-- Location: FF_X109_Y31_N3
\inst2|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[15]~60_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(15));

-- Location: LCCOMB_X109_Y31_N4
\inst2|s_count[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[16]~62_combout\ = (\inst2|s_count\(16) & (\inst2|s_count[15]~61\ $ (GND))) # (!\inst2|s_count\(16) & (!\inst2|s_count[15]~61\ & VCC))
-- \inst2|s_count[16]~63\ = CARRY((\inst2|s_count\(16) & !\inst2|s_count[15]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(16),
	datad => VCC,
	cin => \inst2|s_count[15]~61\,
	combout => \inst2|s_count[16]~62_combout\,
	cout => \inst2|s_count[16]~63\);

-- Location: FF_X109_Y31_N5
\inst2|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[16]~62_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(16));

-- Location: LCCOMB_X109_Y31_N6
\inst2|s_count[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[17]~64_combout\ = (\inst2|s_count\(17) & (!\inst2|s_count[16]~63\)) # (!\inst2|s_count\(17) & ((\inst2|s_count[16]~63\) # (GND)))
-- \inst2|s_count[17]~65\ = CARRY((!\inst2|s_count[16]~63\) # (!\inst2|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(17),
	datad => VCC,
	cin => \inst2|s_count[16]~63\,
	combout => \inst2|s_count[17]~64_combout\,
	cout => \inst2|s_count[17]~65\);

-- Location: FF_X109_Y31_N7
\inst2|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[17]~64_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(17));

-- Location: LCCOMB_X109_Y31_N8
\inst2|s_count[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[18]~66_combout\ = (\inst2|s_count\(18) & (\inst2|s_count[17]~65\ $ (GND))) # (!\inst2|s_count\(18) & (!\inst2|s_count[17]~65\ & VCC))
-- \inst2|s_count[18]~67\ = CARRY((\inst2|s_count\(18) & !\inst2|s_count[17]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(18),
	datad => VCC,
	cin => \inst2|s_count[17]~65\,
	combout => \inst2|s_count[18]~66_combout\,
	cout => \inst2|s_count[18]~67\);

-- Location: FF_X109_Y31_N9
\inst2|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[18]~66_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(18));

-- Location: LCCOMB_X109_Y31_N10
\inst2|s_count[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[19]~68_combout\ = (\inst2|s_count\(19) & (!\inst2|s_count[18]~67\)) # (!\inst2|s_count\(19) & ((\inst2|s_count[18]~67\) # (GND)))
-- \inst2|s_count[19]~69\ = CARRY((!\inst2|s_count[18]~67\) # (!\inst2|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(19),
	datad => VCC,
	cin => \inst2|s_count[18]~67\,
	combout => \inst2|s_count[19]~68_combout\,
	cout => \inst2|s_count[19]~69\);

-- Location: FF_X109_Y31_N11
\inst2|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[19]~68_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(19));

-- Location: LCCOMB_X109_Y31_N12
\inst2|s_count[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[20]~70_combout\ = (\inst2|s_count\(20) & (\inst2|s_count[19]~69\ $ (GND))) # (!\inst2|s_count\(20) & (!\inst2|s_count[19]~69\ & VCC))
-- \inst2|s_count[20]~71\ = CARRY((\inst2|s_count\(20) & !\inst2|s_count[19]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(20),
	datad => VCC,
	cin => \inst2|s_count[19]~69\,
	combout => \inst2|s_count[20]~70_combout\,
	cout => \inst2|s_count[20]~71\);

-- Location: FF_X109_Y31_N13
\inst2|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[20]~70_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(20));

-- Location: LCCOMB_X109_Y31_N14
\inst2|s_count[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[21]~72_combout\ = (\inst2|s_count\(21) & (!\inst2|s_count[20]~71\)) # (!\inst2|s_count\(21) & ((\inst2|s_count[20]~71\) # (GND)))
-- \inst2|s_count[21]~73\ = CARRY((!\inst2|s_count[20]~71\) # (!\inst2|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(21),
	datad => VCC,
	cin => \inst2|s_count[20]~71\,
	combout => \inst2|s_count[21]~72_combout\,
	cout => \inst2|s_count[21]~73\);

-- Location: FF_X109_Y31_N15
\inst2|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[21]~72_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(21));

-- Location: LCCOMB_X109_Y31_N16
\inst2|s_count[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[22]~74_combout\ = (\inst2|s_count\(22) & (\inst2|s_count[21]~73\ $ (GND))) # (!\inst2|s_count\(22) & (!\inst2|s_count[21]~73\ & VCC))
-- \inst2|s_count[22]~75\ = CARRY((\inst2|s_count\(22) & !\inst2|s_count[21]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(22),
	datad => VCC,
	cin => \inst2|s_count[21]~73\,
	combout => \inst2|s_count[22]~74_combout\,
	cout => \inst2|s_count[22]~75\);

-- Location: FF_X109_Y31_N17
\inst2|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[22]~74_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(22));

-- Location: LCCOMB_X109_Y31_N18
\inst2|s_count[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_count[23]~76_combout\ = (\inst2|s_count\(23) & (!\inst2|s_count[22]~75\)) # (!\inst2|s_count\(23) & ((\inst2|s_count[22]~75\) # (GND)))
-- \inst2|s_count[23]~77\ = CARRY((!\inst2|s_count[22]~75\) # (!\inst2|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_count\(23),
	datad => VCC,
	cin => \inst2|s_count[22]~75\,
	combout => \inst2|s_count[23]~76_combout\,
	cout => \inst2|s_count[23]~77\);

-- Location: FF_X109_Y31_N19
\inst2|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[23]~76_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(23));

-- Location: FF_X109_Y31_N21
\inst2|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_count[24]~78_combout\,
	asdata => \~GND~combout\,
	sclr => \inst1~combout\,
	sload => \inst2|s_count~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_count\(24));

-- Location: LCCOMB_X108_Y31_N12
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (!\inst2|s_count\(24) & (!\inst2|s_count\(23) & (!\inst2|s_count\(26) & !\inst2|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(24),
	datab => \inst2|s_count\(23),
	datac => \inst2|s_count\(26),
	datad => \inst2|s_count\(27),
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X108_Y31_N4
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst2|s_count\(18) & !\inst2|s_count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_count\(18),
	datad => \inst2|s_count\(16),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X108_Y31_N6
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst2|s_count\(8) & (!\inst2|s_count\(13) & (!\inst2|s_count\(14) & !\inst2|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(8),
	datab => \inst2|s_count\(13),
	datac => \inst2|s_count\(14),
	datad => \inst2|s_count\(10),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X108_Y31_N22
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (!\inst2|s_count\(22) & (!\inst2|s_count\(19) & (\inst2|Equal0~6_combout\ & \inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_count\(22),
	datab => \inst2|s_count\(19),
	datac => \inst2|Equal0~6_combout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X108_Y31_N14
\inst2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~9_combout\ = (\inst2|Equal0~8_combout\ & (!\inst2|s_count\(28) & (\inst2|Equal0~7_combout\ & \inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~8_combout\,
	datab => \inst2|s_count\(28),
	datac => \inst2|Equal0~7_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|Equal0~9_combout\);

-- Location: LCCOMB_X108_Y31_N8
\inst2|s_decorre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_decorre~0_combout\ = (!\inst1~combout\ & ((\inst2|Equal0~9_combout\ & ((\inst2|s_decorre~q\))) # (!\inst2|Equal0~9_combout\ & (!\inst2|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~9_combout\,
	datab => \inst2|Equal1~4_combout\,
	datac => \inst2|s_decorre~q\,
	datad => \inst1~combout\,
	combout => \inst2|s_decorre~0_combout\);

-- Location: FF_X108_Y31_N9
\inst2|s_decorre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst2|s_decorre~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_decorre~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


