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

-- DATE "04/26/2021 16:21:01"

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
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \SW[0]~padout\ : std_logic;
SIGNAL \SW[10]~padout\ : std_logic;
SIGNAL \SW[11]~padout\ : std_logic;
SIGNAL \SW[12]~padout\ : std_logic;
SIGNAL \SW[13]~padout\ : std_logic;
SIGNAL \SW[14]~padout\ : std_logic;
SIGNAL \SW[15]~padout\ : std_logic;
SIGNAL \SW[16]~padout\ : std_logic;
SIGNAL \SW[17]~padout\ : std_logic;
SIGNAL \SW[1]~padout\ : std_logic;
SIGNAL \SW[2]~padout\ : std_logic;
SIGNAL \SW[3]~padout\ : std_logic;
SIGNAL \SW[4]~padout\ : std_logic;
SIGNAL \SW[5]~padout\ : std_logic;
SIGNAL \SW[6]~padout\ : std_logic;
SIGNAL \SW[7]~padout\ : std_logic;
SIGNAL \SW[8]~padout\ : std_logic;
SIGNAL \SW[9]~padout\ : std_logic;
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
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[0]~ibuf_o\ : std_logic;
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

ENTITY 	Parque IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 7);
	LEDR : OUT std_logic_vector(1 DOWNTO 0)
	);
END Parque;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Parque IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 7);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \RST_DBN|Add0~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \RST_DBN|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \RST_DBN|s_dirtyIn~q\ : std_logic;
SIGNAL \RST_DBN|s_previousIn~q\ : std_logic;
SIGNAL \RST_DBN|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[10]~2_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[10]~3_combout\ : std_logic;
SIGNAL \RST_DBN|LessThan0~0_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~15\ : std_logic;
SIGNAL \RST_DBN|Add0~16_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~17\ : std_logic;
SIGNAL \RST_DBN|Add0~18_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~19\ : std_logic;
SIGNAL \RST_DBN|Add0~20_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~21\ : std_logic;
SIGNAL \RST_DBN|Add0~22_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~23\ : std_logic;
SIGNAL \RST_DBN|Add0~24_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~25\ : std_logic;
SIGNAL \RST_DBN|Add0~26_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~27\ : std_logic;
SIGNAL \RST_DBN|Add0~28_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~29\ : std_logic;
SIGNAL \RST_DBN|Add0~30_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~31\ : std_logic;
SIGNAL \RST_DBN|Add0~32_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~33\ : std_logic;
SIGNAL \RST_DBN|Add0~34_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[17]~18_combout\ : std_logic;
SIGNAL \RST_DBN|LessThan0~1_combout\ : std_logic;
SIGNAL \RST_DBN|LessThan0~2_combout\ : std_logic;
SIGNAL \RST_DBN|LessThan0~3_combout\ : std_logic;
SIGNAL \RST_DBN|LessThan0~4_combout\ : std_logic;
SIGNAL \RST_DBN|LessThan0~5_combout\ : std_logic;
SIGNAL \RST_DBN|LessThan0~6_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[10]~0_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~35\ : std_logic;
SIGNAL \RST_DBN|Add0~36_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~37\ : std_logic;
SIGNAL \RST_DBN|Add0~38_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[19]~10_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~39\ : std_logic;
SIGNAL \RST_DBN|Add0~40_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[20]~11_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~41\ : std_logic;
SIGNAL \RST_DBN|Add0~42_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[21]~25_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[21]~26_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt[10]~4_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~1\ : std_logic;
SIGNAL \RST_DBN|Add0~2_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~3\ : std_logic;
SIGNAL \RST_DBN|Add0~4_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~5\ : std_logic;
SIGNAL \RST_DBN|Add0~6_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~7\ : std_logic;
SIGNAL \RST_DBN|Add0~8_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~9\ : std_logic;
SIGNAL \RST_DBN|Add0~10_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~11\ : std_logic;
SIGNAL \RST_DBN|Add0~12_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \RST_DBN|Add0~13\ : std_logic;
SIGNAL \RST_DBN|Add0~14_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \RST_DBN|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \RST_DBN|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \RST_DBN|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \RST_DBN|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \RST_DBN|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \RST_DBN|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \RST_DBN|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \RST_DBN|s_pulsedOut~q\ : std_logic;
SIGNAL \SOUT_DBN|Add0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SOUT_DBN|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_dirtyIn~q\ : std_logic;
SIGNAL \SOUT_DBN|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_previousIn~q\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[10]~0_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_levelOut~0_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[10]~2_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[10]~5_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~1\ : std_logic;
SIGNAL \SOUT_DBN|Add0~2_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~3\ : std_logic;
SIGNAL \SOUT_DBN|Add0~4_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~5\ : std_logic;
SIGNAL \SOUT_DBN|Add0~6_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~7\ : std_logic;
SIGNAL \SOUT_DBN|Add0~8_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~9\ : std_logic;
SIGNAL \SOUT_DBN|Add0~10_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~11\ : std_logic;
SIGNAL \SOUT_DBN|Add0~12_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~13\ : std_logic;
SIGNAL \SOUT_DBN|Add0~14_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~15\ : std_logic;
SIGNAL \SOUT_DBN|Add0~16_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~17\ : std_logic;
SIGNAL \SOUT_DBN|Add0~18_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~19\ : std_logic;
SIGNAL \SOUT_DBN|Add0~20_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~21\ : std_logic;
SIGNAL \SOUT_DBN|Add0~22_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~23\ : std_logic;
SIGNAL \SOUT_DBN|Add0~24_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~25\ : std_logic;
SIGNAL \SOUT_DBN|Add0~27\ : std_logic;
SIGNAL \SOUT_DBN|Add0~28_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~29\ : std_logic;
SIGNAL \SOUT_DBN|Add0~30_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~31\ : std_logic;
SIGNAL \SOUT_DBN|Add0~32_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~33\ : std_logic;
SIGNAL \SOUT_DBN|Add0~34_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[17]~8_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~35\ : std_logic;
SIGNAL \SOUT_DBN|Add0~36_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[18]~9_combout\ : std_logic;
SIGNAL \SOUT_DBN|LessThan0~4_combout\ : std_logic;
SIGNAL \SOUT_DBN|LessThan0~3_combout\ : std_logic;
SIGNAL \SOUT_DBN|LessThan0~5_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~37\ : std_logic;
SIGNAL \SOUT_DBN|Add0~38_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[19]~6_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~39\ : std_logic;
SIGNAL \SOUT_DBN|Add0~40_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[20]~7_combout\ : std_logic;
SIGNAL \SOUT_DBN|LessThan0~0_combout\ : std_logic;
SIGNAL \SOUT_DBN|LessThan0~1_combout\ : std_logic;
SIGNAL \SOUT_DBN|LessThan0~2_combout\ : std_logic;
SIGNAL \SOUT_DBN|LessThan0~6_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[21]~3_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~41\ : std_logic;
SIGNAL \SOUT_DBN|Add0~42_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[21]~4_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt[10]~1_combout\ : std_logic;
SIGNAL \SOUT_DBN|Add0~26_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_levelOut~4_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_levelOut~3_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_levelOut~1_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_levelOut~2_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_levelOut~5_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_levelOut~6_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_levelOut~7_combout\ : std_logic;
SIGNAL \SOUT_DBN|s_levelOut~q\ : std_logic;
SIGNAL \OCUP1|inst1|FFSout|Q~0_combout\ : std_logic;
SIGNAL \OCUP1|inst1|FFSout|Q~q\ : std_logic;
SIGNAL \OCUP1|inst1|Sout_FALL~combout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|Add0~3\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|Add0~4_combout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|s_count~5_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SIN_DBN|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \SIN_DBN|s_dirtyIn~q\ : std_logic;
SIGNAL \SIN_DBN|s_previousIn~q\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[21]~3_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~0_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~1\ : std_logic;
SIGNAL \SIN_DBN|Add0~2_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~3\ : std_logic;
SIGNAL \SIN_DBN|Add0~4_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~5\ : std_logic;
SIGNAL \SIN_DBN|Add0~6_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~7\ : std_logic;
SIGNAL \SIN_DBN|Add0~9\ : std_logic;
SIGNAL \SIN_DBN|Add0~11\ : std_logic;
SIGNAL \SIN_DBN|Add0~12_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~13\ : std_logic;
SIGNAL \SIN_DBN|Add0~14_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~15\ : std_logic;
SIGNAL \SIN_DBN|Add0~16_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~17\ : std_logic;
SIGNAL \SIN_DBN|Add0~18_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~26_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~19\ : std_logic;
SIGNAL \SIN_DBN|Add0~20_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~21\ : std_logic;
SIGNAL \SIN_DBN|Add0~22_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~23\ : std_logic;
SIGNAL \SIN_DBN|Add0~24_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~25_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~25\ : std_logic;
SIGNAL \SIN_DBN|Add0~26_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~18_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~27\ : std_logic;
SIGNAL \SIN_DBN|Add0~28_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~29\ : std_logic;
SIGNAL \SIN_DBN|Add0~30_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~31\ : std_logic;
SIGNAL \SIN_DBN|Add0~32_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~33\ : std_logic;
SIGNAL \SIN_DBN|Add0~34_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[17]~19_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~35\ : std_logic;
SIGNAL \SIN_DBN|Add0~36_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[18]~20_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~37\ : std_logic;
SIGNAL \SIN_DBN|Add0~38_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[19]~6_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~39\ : std_logic;
SIGNAL \SIN_DBN|Add0~41\ : std_logic;
SIGNAL \SIN_DBN|Add0~42_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[21]~4_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[10]~1_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~10_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \SIN_DBN|s_levelOut~1_combout\ : std_logic;
SIGNAL \SIN_DBN|s_levelOut~4_combout\ : std_logic;
SIGNAL \SIN_DBN|s_levelOut~2_combout\ : std_logic;
SIGNAL \SIN_DBN|s_levelOut~3_combout\ : std_logic;
SIGNAL \SIN_DBN|s_levelOut~5_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[10]~2_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[10]~5_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~40_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[20]~7_combout\ : std_logic;
SIGNAL \SIN_DBN|LessThan0~3_combout\ : std_logic;
SIGNAL \SIN_DBN|LessThan0~4_combout\ : std_logic;
SIGNAL \SIN_DBN|LessThan0~5_combout\ : std_logic;
SIGNAL \SIN_DBN|LessThan0~1_combout\ : std_logic;
SIGNAL \SIN_DBN|LessThan0~0_combout\ : std_logic;
SIGNAL \SIN_DBN|LessThan0~2_combout\ : std_logic;
SIGNAL \SIN_DBN|LessThan0~6_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt[10]~0_combout\ : std_logic;
SIGNAL \SIN_DBN|Add0~8_combout\ : std_logic;
SIGNAL \SIN_DBN|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \SIN_DBN|s_levelOut~0_combout\ : std_logic;
SIGNAL \SIN_DBN|s_levelOut~6_combout\ : std_logic;
SIGNAL \SIN_DBN|s_levelOut~7_combout\ : std_logic;
SIGNAL \SIN_DBN|s_levelOut~q\ : std_logic;
SIGNAL \OCUP1|inst1|FFSin|Q~0_combout\ : std_logic;
SIGNAL \OCUP1|inst1|FFSin|Q~q\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|s_count[0]~3_combout\ : std_logic;
SIGNAL \OCUP1|inst|s_cheio~0_combout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|Add0~5\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|Add0~6_combout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|s_count~2_combout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|s_count~7_combout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|s_count~4_combout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|Add0~1_cout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|Add0~2_combout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|s_count~6_combout\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|Add0~3\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|Add0~4_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|s_count~7_combout\ : std_logic;
SIGNAL \OCUP1|inst1|EVENT~combout\ : std_logic;
SIGNAL \OCUP1|inst2|unidades|Equal1~0_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|s_count[0]~3_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|s_count[0]~4_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|Add0~5\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|Add0~6_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|s_count~2_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|s_count~8_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|s_count~5_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|Add0~1_cout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|Add0~2_combout\ : std_logic;
SIGNAL \OCUP1|inst2|dezenas|s_count~6_combout\ : std_logic;
SIGNAL \OCUP1|inst|s_cheio~1_combout\ : std_logic;
SIGNAL \OCUP1|inst|s_cheio~2_combout\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[6]~1_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~0_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~1\ : std_logic;
SIGNAL \DIV_FREQ|Add0~2_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~3\ : std_logic;
SIGNAL \DIV_FREQ|Add0~4_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~5\ : std_logic;
SIGNAL \DIV_FREQ|Add0~6_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~7\ : std_logic;
SIGNAL \DIV_FREQ|Add0~8_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~9\ : std_logic;
SIGNAL \DIV_FREQ|Add0~10_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~31\ : std_logic;
SIGNAL \DIV_FREQ|Add0~32_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~10_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~33\ : std_logic;
SIGNAL \DIV_FREQ|Add0~34_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~35\ : std_logic;
SIGNAL \DIV_FREQ|Add0~36_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~3_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~37\ : std_logic;
SIGNAL \DIV_FREQ|Add0~38_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~2_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~39\ : std_logic;
SIGNAL \DIV_FREQ|Add0~40_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~1_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~41\ : std_logic;
SIGNAL \DIV_FREQ|Add0~42_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~0_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~43\ : std_logic;
SIGNAL \DIV_FREQ|Add0~44_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~9_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~45\ : std_logic;
SIGNAL \DIV_FREQ|Add0~46_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~47\ : std_logic;
SIGNAL \DIV_FREQ|Add0~48_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~8_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~7_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~11\ : std_logic;
SIGNAL \DIV_FREQ|Add0~12_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~7_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~5_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~49\ : std_logic;
SIGNAL \DIV_FREQ|Add0~50_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~51\ : std_logic;
SIGNAL \DIV_FREQ|Add0~52_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~1_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~13\ : std_logic;
SIGNAL \DIV_FREQ|Add0~14_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~15\ : std_logic;
SIGNAL \DIV_FREQ|Add0~16_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~17\ : std_logic;
SIGNAL \DIV_FREQ|Add0~18_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~19\ : std_logic;
SIGNAL \DIV_FREQ|Add0~20_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~21\ : std_logic;
SIGNAL \DIV_FREQ|Add0~22_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~6_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~23\ : std_logic;
SIGNAL \DIV_FREQ|Add0~24_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~5_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~2_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~3_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~53\ : std_logic;
SIGNAL \DIV_FREQ|Add0~54_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~55\ : std_logic;
SIGNAL \DIV_FREQ|Add0~56_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~57\ : std_logic;
SIGNAL \DIV_FREQ|Add0~58_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~59\ : std_logic;
SIGNAL \DIV_FREQ|Add0~60_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~0_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~4_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~6_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~8_combout\ : std_logic;
SIGNAL \DIV_FREQ|Equal0~9_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~25\ : std_logic;
SIGNAL \DIV_FREQ|Add0~26_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~4_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~27\ : std_logic;
SIGNAL \DIV_FREQ|Add0~28_combout\ : std_logic;
SIGNAL \DIV_FREQ|s_counter~11_combout\ : std_logic;
SIGNAL \DIV_FREQ|Add0~29\ : std_logic;
SIGNAL \DIV_FREQ|Add0~30_combout\ : std_logic;
SIGNAL \DIV_FREQ|clkOut~1_combout\ : std_logic;
SIGNAL \DIV_FREQ|clkOut~0_combout\ : std_logic;
SIGNAL \DIV_FREQ|clkOut~2_combout\ : std_logic;
SIGNAL \DIV_FREQ|clkOut~3_combout\ : std_logic;
SIGNAL \DIV_FREQ|clkOut~q\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[5]~2_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_uni[5]~0_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_uni[4]~2_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_uni[4]~1_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_uni[4]~3_combout\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_uni[3]~4_combout\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[2]~5_combout\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[1]~6_combout\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[1]~7_combout\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[0]~8_combout\ : std_logic;
SIGNAL \OCUP1|inst|unidades|decOut_n[0]~9_combout\ : std_logic;
SIGNAL \OCUP1|inst|dezenas|decOut_n[6]~0_combout\ : std_logic;
SIGNAL \OCUP1|inst|dezenas|decOut_n[6]~1_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_dez[5]~0_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_dez[5]~1_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_dez[5]~2_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_dez[4]~3_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_dez[4]~4_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_dez[4]~5_combout\ : std_logic;
SIGNAL \OCUP1|inst|dezenas|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_dez[3]~6_combout\ : std_logic;
SIGNAL \OCUP1|inst|dezenas|decOut_n[2]~3_combout\ : std_logic;
SIGNAL \OCUP1|inst|dezenas|decOut_n[2]~4_combout\ : std_logic;
SIGNAL \OCUP1|inst|dezenas|decOut_n[1]~5_combout\ : std_logic;
SIGNAL \OCUP1|inst|dezenas|decOut_n[1]~6_combout\ : std_logic;
SIGNAL \OCUP1|inst|dezenas|decOut_n[0]~7_combout\ : std_logic;
SIGNAL \OCUP1|inst|dezenas|decOut_n[0]~8_combout\ : std_logic;
SIGNAL \OCUP1|inst|visor_cen[5]~0_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[0]~27_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[0]~28\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[1]~29_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[1]~30\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[2]~31_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[2]~32\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[3]~33_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[3]~34\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[4]~35_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[4]~36\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[5]~37_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[5]~38\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[6]~39_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[6]~40\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[7]~41_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[7]~42\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[8]~43_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[8]~44\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[9]~45_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[9]~46\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[10]~47_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[10]~48\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[11]~49_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[11]~50\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[12]~51_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[12]~52\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[13]~53_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[13]~54\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[14]~55_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[14]~56\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[15]~57_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[15]~58\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[16]~59_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[16]~60\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[17]~61_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[17]~62\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[18]~63_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[18]~64\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[19]~65_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[19]~66\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[20]~67_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[20]~68\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[21]~69_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~11_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[21]~70\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[22]~71_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[22]~72\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[23]~73_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[23]~74\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[24]~75_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[24]~76\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[25]~77_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[25]~78\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_count[26]~79_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~12_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~10_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~13_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~2_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~3_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~1_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~0_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~4_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~5_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~6_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~7_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~8_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[0]~29_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[0]~28_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[16]~61\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[17]~62_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[17]~63\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[18]~64_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[18]~65\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[19]~66_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[19]~67\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[20]~68_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[20]~69\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[21]~70_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[21]~71\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[22]~72_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[22]~73\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[23]~74_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[23]~75\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[24]~76_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[24]~77\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[25]~78_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal0~7_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal0~5_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal0~6_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal0~8_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_decorre~2_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_decorre~q\ : std_logic;
SIGNAL \CART_DBN|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CART_DBN|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \CART_DBN|s_dirtyIn~q\ : std_logic;
SIGNAL \CART_DBN|s_previousIn~q\ : std_logic;
SIGNAL \CART_DBN|Add0~9\ : std_logic;
SIGNAL \CART_DBN|Add0~10_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[10]~3_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~11\ : std_logic;
SIGNAL \CART_DBN|Add0~12_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~13\ : std_logic;
SIGNAL \CART_DBN|Add0~14_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~15\ : std_logic;
SIGNAL \CART_DBN|Add0~16_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~17\ : std_logic;
SIGNAL \CART_DBN|Add0~18_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \CART_DBN|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~19\ : std_logic;
SIGNAL \CART_DBN|Add0~20_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~21\ : std_logic;
SIGNAL \CART_DBN|Add0~22_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~23\ : std_logic;
SIGNAL \CART_DBN|Add0~24_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~25\ : std_logic;
SIGNAL \CART_DBN|Add0~26_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~27\ : std_logic;
SIGNAL \CART_DBN|Add0~28_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~29\ : std_logic;
SIGNAL \CART_DBN|Add0~30_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~31\ : std_logic;
SIGNAL \CART_DBN|Add0~32_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~33\ : std_logic;
SIGNAL \CART_DBN|Add0~34_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[17]~18_combout\ : std_logic;
SIGNAL \CART_DBN|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \CART_DBN|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \CART_DBN|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \CART_DBN|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[10]~2_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[21]~25_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~41\ : std_logic;
SIGNAL \CART_DBN|Add0~42_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[21]~26_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[10]~0_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~35\ : std_logic;
SIGNAL \CART_DBN|Add0~36_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[18]~19_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~37\ : std_logic;
SIGNAL \CART_DBN|Add0~38_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[19]~10_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~39\ : std_logic;
SIGNAL \CART_DBN|Add0~40_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[20]~11_combout\ : std_logic;
SIGNAL \CART_DBN|LessThan0~3_combout\ : std_logic;
SIGNAL \CART_DBN|LessThan0~4_combout\ : std_logic;
SIGNAL \CART_DBN|LessThan0~5_combout\ : std_logic;
SIGNAL \CART_DBN|LessThan0~1_combout\ : std_logic;
SIGNAL \CART_DBN|LessThan0~0_combout\ : std_logic;
SIGNAL \CART_DBN|LessThan0~2_combout\ : std_logic;
SIGNAL \CART_DBN|LessThan0~6_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt[10]~4_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~1\ : std_logic;
SIGNAL \CART_DBN|Add0~2_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~3\ : std_logic;
SIGNAL \CART_DBN|Add0~4_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~5\ : std_logic;
SIGNAL \CART_DBN|Add0~6_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \CART_DBN|Add0~7\ : std_logic;
SIGNAL \CART_DBN|Add0~8_combout\ : std_logic;
SIGNAL \CART_DBN|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \CART_DBN|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \CART_DBN|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \CART_DBN|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \CART_DBN|s_pulsedOut~q\ : std_logic;
SIGNAL \ACESSO1|VAL1|AND1~combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[0]~30_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[1]~33\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[2]~34_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[2]~35\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[3]~36_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[3]~37\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[4]~38_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[4]~39\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[5]~40_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[5]~41\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[6]~42_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[6]~43\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[7]~44_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[7]~45\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[8]~46_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[8]~47\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[9]~48_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[9]~49\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[10]~50_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[10]~51\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[11]~52_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[11]~53\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[12]~54_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[12]~55\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[13]~56_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[13]~57\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[14]~58_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[14]~59\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[15]~60_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[15]~61\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[16]~62_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[16]~63\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[17]~64_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[17]~65\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[18]~66_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[18]~67\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[19]~68_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[19]~69\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[20]~70_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[20]~71\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[21]~72_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[21]~73\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[22]~74_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[22]~75\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[23]~76_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[23]~77\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[24]~78_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal0~2_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal0~3_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[24]~79\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[25]~80_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[25]~81\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[26]~82_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[26]~83\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[27]~84_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal0~5_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal0~4_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal0~6_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal0~7_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal0~1_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal0~8_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[0]~31\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count[1]~32_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal0~0_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal1~2_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal1~0_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal1~1_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal1~3_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|Equal1~4_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|AMOSTRA_SIN|Q~0_combout\ : std_logic;
SIGNAL \ACESSO1|PROL1|AMOSTRA_SIN|Q~q\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_decorre~1_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_decorre~q\ : std_logic;
SIGNAL \ACESSO1|VAL1|AND1~0_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[0]~29\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[1]~30_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[1]~31\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[2]~32_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[2]~33\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[3]~34_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[3]~35\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[4]~36_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[4]~37\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[5]~38_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[5]~39\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[6]~40_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[6]~41\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[7]~42_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[7]~43\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[8]~44_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[8]~45\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[9]~46_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[9]~47\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[10]~48_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[10]~49\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[11]~50_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[11]~51\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[12]~52_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[12]~53\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[13]~54_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[13]~55\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[14]~56_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[14]~57\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[15]~58_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[15]~59\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count[16]~60_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal0~2_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal0~0_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal0~3_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal0~1_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal0~4_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal1~0_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal1~2_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal1~1_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[9]~49\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[10]~50_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[10]~51\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[11]~52_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[11]~53\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[12]~54_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[12]~55\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[13]~56_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[13]~57\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[14]~58_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[14]~59\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[15]~60_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[15]~61\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[16]~62_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[16]~63\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[17]~64_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[17]~65\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[18]~66_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[18]~67\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[19]~68_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[19]~69\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[20]~70_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~7_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~1_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~0_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~2_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[20]~71\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[21]~72_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[21]~73\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[22]~74_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[22]~75\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[23]~76_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[23]~77\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[24]~78_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[24]~79\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[25]~80_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~3_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~4_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[25]~81\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[26]~82_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[26]~83\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[27]~84_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~5_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[27]~85\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[28]~86_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~8_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~6_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal0~9_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[0]~30\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[1]~32_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[1]~33\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[2]~34_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[2]~35\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[3]~36_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[3]~37\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[4]~38_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[4]~39\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[5]~40_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[5]~41\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[6]~42_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[6]~43\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[7]~44_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[7]~45\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[8]~46_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[8]~47\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count[9]~48_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal1~0_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal1~2_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal1~1_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|ESPERA|Equal1~3_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~9_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~15_combout\ : std_logic;
SIGNAL \ACESSO1|TEMP1|FECHO|s_decorre~q\ : std_logic;
SIGNAL \ACESSO1|SIN1|PISCA_EN~0_combout\ : std_logic;
SIGNAL \RST_DBN|s_debounceCnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \OCUP1|inst2|dezenas|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OCUP1|inst2|unidades|s_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ACESSO1|TEMP1|ABERTURA|s_count\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ACESSO1|TEMP1|FECHO|s_count\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \DIV_FREQ|s_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ACESSO1|PROL1|HALF_CYCLE|s_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ACESSO1|TEMP1|ESPERA|s_count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \SOUT_DBN|s_debounceCnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \SIN_DBN|s_debounceCnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \CART_DBN|s_debounceCnt\ : std_logic_vector(21 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|unidades|decOut_n[6]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_uni[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_uni[4]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_uni[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|unidades|decOut_n[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|unidades|decOut_n[1]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|unidades|decOut_n[0]~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|dezenas|decOut_n[6]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_dez[5]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_dez[4]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_dez[3]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|dezenas|decOut_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|dezenas|decOut_n[1]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|dezenas|decOut_n[0]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_cen[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_cen[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_cen[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_cen[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_cen[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_cen[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_cen[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_cen[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OCUP1|inst|visor_cen[5]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACESSO1|SIN1|PISCA_EN~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACESSO1|TEMP1|FECHO|s_decorre~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ACESSO1|TEMP1|ABERTURA|s_decorre~q\,
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

-- Location: LCCOMB_X76_Y38_N10
\RST_DBN|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~0_combout\ = \RST_DBN|s_debounceCnt\(0) $ (VCC)
-- \RST_DBN|Add0~1\ = CARRY(\RST_DBN|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(0),
	datad => VCC,
	combout => \RST_DBN|Add0~0_combout\,
	cout => \RST_DBN|Add0~1\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X99_Y37_N24
\RST_DBN|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_dirtyIn~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \RST_DBN|s_dirtyIn~0_combout\);

-- Location: FF_X99_Y37_N25
\RST_DBN|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_dirtyIn~q\);

-- Location: FF_X76_Y39_N9
\RST_DBN|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \RST_DBN|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_previousIn~q\);

-- Location: LCCOMB_X76_Y38_N0
\RST_DBN|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_pulsedOut~5_combout\ = (!\RST_DBN|s_debounceCnt\(4) & (!\RST_DBN|s_debounceCnt\(2) & (!\RST_DBN|s_debounceCnt\(3) & !\RST_DBN|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(4),
	datab => \RST_DBN|s_debounceCnt\(2),
	datac => \RST_DBN|s_debounceCnt\(3),
	datad => \RST_DBN|s_debounceCnt\(1),
	combout => \RST_DBN|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X76_Y39_N18
\RST_DBN|s_debounceCnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[10]~2_combout\ = ((\RST_DBN|s_debounceCnt\(0)) # (!\RST_DBN|s_pulsedOut~5_combout\)) # (!\RST_DBN|s_pulsedOut~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_pulsedOut~4_combout\,
	datac => \RST_DBN|s_debounceCnt\(0),
	datad => \RST_DBN|s_pulsedOut~5_combout\,
	combout => \RST_DBN|s_debounceCnt[10]~2_combout\);

-- Location: LCCOMB_X76_Y39_N8
\RST_DBN|s_debounceCnt[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[10]~3_combout\ = (\RST_DBN|s_debounceCnt\(21)) # (((\RST_DBN|s_debounceCnt[10]~2_combout\) # (!\RST_DBN|s_previousIn~q\)) # (!\RST_DBN|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(21),
	datab => \RST_DBN|s_dirtyIn~q\,
	datac => \RST_DBN|s_previousIn~q\,
	datad => \RST_DBN|s_debounceCnt[10]~2_combout\,
	combout => \RST_DBN|s_debounceCnt[10]~3_combout\);

-- Location: LCCOMB_X76_Y39_N6
\RST_DBN|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|LessThan0~0_combout\ = (\RST_DBN|s_debounceCnt\(6)) # ((\RST_DBN|s_debounceCnt\(5) & ((\RST_DBN|s_debounceCnt\(0)) # (!\RST_DBN|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(0),
	datab => \RST_DBN|s_pulsedOut~5_combout\,
	datac => \RST_DBN|s_debounceCnt\(5),
	datad => \RST_DBN|s_debounceCnt\(6),
	combout => \RST_DBN|LessThan0~0_combout\);

-- Location: LCCOMB_X76_Y38_N24
\RST_DBN|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~14_combout\ = (\RST_DBN|s_debounceCnt\(7) & (\RST_DBN|Add0~13\ & VCC)) # (!\RST_DBN|s_debounceCnt\(7) & (!\RST_DBN|Add0~13\))
-- \RST_DBN|Add0~15\ = CARRY((!\RST_DBN|s_debounceCnt\(7) & !\RST_DBN|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(7),
	datad => VCC,
	cin => \RST_DBN|Add0~13\,
	combout => \RST_DBN|Add0~14_combout\,
	cout => \RST_DBN|Add0~15\);

-- Location: LCCOMB_X76_Y38_N26
\RST_DBN|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~16_combout\ = (\RST_DBN|s_debounceCnt\(8) & ((GND) # (!\RST_DBN|Add0~15\))) # (!\RST_DBN|s_debounceCnt\(8) & (\RST_DBN|Add0~15\ $ (GND)))
-- \RST_DBN|Add0~17\ = CARRY((\RST_DBN|s_debounceCnt\(8)) # (!\RST_DBN|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(8),
	datad => VCC,
	cin => \RST_DBN|Add0~15\,
	combout => \RST_DBN|Add0~16_combout\,
	cout => \RST_DBN|Add0~17\);

-- Location: LCCOMB_X73_Y40_N28
\RST_DBN|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~14_combout\ = (\RST_DBN|s_debounceCnt[10]~0_combout\ & ((\RST_DBN|Add0~16_combout\) # (!\RST_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt[10]~0_combout\,
	datac => \RST_DBN|Add0~16_combout\,
	datad => \RST_DBN|s_previousIn~q\,
	combout => \RST_DBN|s_debounceCnt~14_combout\);

-- Location: FF_X73_Y40_N29
\RST_DBN|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~14_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(8));

-- Location: LCCOMB_X76_Y38_N28
\RST_DBN|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~18_combout\ = (\RST_DBN|s_debounceCnt\(9) & (\RST_DBN|Add0~17\ & VCC)) # (!\RST_DBN|s_debounceCnt\(9) & (!\RST_DBN|Add0~17\))
-- \RST_DBN|Add0~19\ = CARRY((!\RST_DBN|s_debounceCnt\(9) & !\RST_DBN|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(9),
	datad => VCC,
	cin => \RST_DBN|Add0~17\,
	combout => \RST_DBN|Add0~18_combout\,
	cout => \RST_DBN|Add0~19\);

-- Location: LCCOMB_X76_Y38_N8
\RST_DBN|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~15_combout\ = (\RST_DBN|Add0~18_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|Add0~18_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~15_combout\);

-- Location: FF_X76_Y38_N9
\RST_DBN|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~15_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(9));

-- Location: LCCOMB_X76_Y38_N30
\RST_DBN|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~20_combout\ = (\RST_DBN|s_debounceCnt\(10) & ((GND) # (!\RST_DBN|Add0~19\))) # (!\RST_DBN|s_debounceCnt\(10) & (\RST_DBN|Add0~19\ $ (GND)))
-- \RST_DBN|Add0~21\ = CARRY((\RST_DBN|s_debounceCnt\(10)) # (!\RST_DBN|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(10),
	datad => VCC,
	cin => \RST_DBN|Add0~19\,
	combout => \RST_DBN|Add0~20_combout\,
	cout => \RST_DBN|Add0~21\);

-- Location: LCCOMB_X73_Y40_N16
\RST_DBN|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~16_combout\ = (\RST_DBN|s_debounceCnt[10]~0_combout\ & ((\RST_DBN|Add0~20_combout\) # (!\RST_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt[10]~0_combout\,
	datac => \RST_DBN|Add0~20_combout\,
	datad => \RST_DBN|s_previousIn~q\,
	combout => \RST_DBN|s_debounceCnt~16_combout\);

-- Location: FF_X73_Y40_N17
\RST_DBN|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~16_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(10));

-- Location: LCCOMB_X76_Y37_N0
\RST_DBN|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~22_combout\ = (\RST_DBN|s_debounceCnt\(11) & (\RST_DBN|Add0~21\ & VCC)) # (!\RST_DBN|s_debounceCnt\(11) & (!\RST_DBN|Add0~21\))
-- \RST_DBN|Add0~23\ = CARRY((!\RST_DBN|s_debounceCnt\(11) & !\RST_DBN|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(11),
	datad => VCC,
	cin => \RST_DBN|Add0~21\,
	combout => \RST_DBN|Add0~22_combout\,
	cout => \RST_DBN|Add0~23\);

-- Location: LCCOMB_X76_Y37_N22
\RST_DBN|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~8_combout\ = (\RST_DBN|Add0~22_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|Add0~22_combout\,
	datac => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~8_combout\);

-- Location: FF_X76_Y37_N23
\RST_DBN|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~8_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(11));

-- Location: LCCOMB_X76_Y37_N2
\RST_DBN|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~24_combout\ = (\RST_DBN|s_debounceCnt\(12) & ((GND) # (!\RST_DBN|Add0~23\))) # (!\RST_DBN|s_debounceCnt\(12) & (\RST_DBN|Add0~23\ $ (GND)))
-- \RST_DBN|Add0~25\ = CARRY((\RST_DBN|s_debounceCnt\(12)) # (!\RST_DBN|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(12),
	datad => VCC,
	cin => \RST_DBN|Add0~23\,
	combout => \RST_DBN|Add0~24_combout\,
	cout => \RST_DBN|Add0~25\);

-- Location: LCCOMB_X76_Y37_N24
\RST_DBN|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~9_combout\ = (\RST_DBN|Add0~24_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|Add0~24_combout\,
	datac => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~9_combout\);

-- Location: FF_X76_Y37_N25
\RST_DBN|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~9_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(12));

-- Location: LCCOMB_X76_Y37_N4
\RST_DBN|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~26_combout\ = (\RST_DBN|s_debounceCnt\(13) & (\RST_DBN|Add0~25\ & VCC)) # (!\RST_DBN|s_debounceCnt\(13) & (!\RST_DBN|Add0~25\))
-- \RST_DBN|Add0~27\ = CARRY((!\RST_DBN|s_debounceCnt\(13) & !\RST_DBN|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(13),
	datad => VCC,
	cin => \RST_DBN|Add0~25\,
	combout => \RST_DBN|Add0~26_combout\,
	cout => \RST_DBN|Add0~27\);

-- Location: LCCOMB_X73_Y40_N18
\RST_DBN|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~17_combout\ = (\RST_DBN|s_debounceCnt[10]~0_combout\ & ((\RST_DBN|Add0~26_combout\) # (!\RST_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt[10]~0_combout\,
	datac => \RST_DBN|Add0~26_combout\,
	datad => \RST_DBN|s_previousIn~q\,
	combout => \RST_DBN|s_debounceCnt~17_combout\);

-- Location: FF_X73_Y40_N19
\RST_DBN|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~17_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(13));

-- Location: LCCOMB_X76_Y37_N6
\RST_DBN|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~28_combout\ = (\RST_DBN|s_debounceCnt\(14) & ((GND) # (!\RST_DBN|Add0~27\))) # (!\RST_DBN|s_debounceCnt\(14) & (\RST_DBN|Add0~27\ $ (GND)))
-- \RST_DBN|Add0~29\ = CARRY((\RST_DBN|s_debounceCnt\(14)) # (!\RST_DBN|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(14),
	datad => VCC,
	cin => \RST_DBN|Add0~27\,
	combout => \RST_DBN|Add0~28_combout\,
	cout => \RST_DBN|Add0~29\);

-- Location: LCCOMB_X76_Y39_N2
\RST_DBN|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~5_combout\ = (\RST_DBN|Add0~28_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_DBN|Add0~28_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~5_combout\);

-- Location: FF_X76_Y39_N3
\RST_DBN|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~5_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(14));

-- Location: LCCOMB_X76_Y37_N8
\RST_DBN|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~30_combout\ = (\RST_DBN|s_debounceCnt\(15) & (\RST_DBN|Add0~29\ & VCC)) # (!\RST_DBN|s_debounceCnt\(15) & (!\RST_DBN|Add0~29\))
-- \RST_DBN|Add0~31\ = CARRY((!\RST_DBN|s_debounceCnt\(15) & !\RST_DBN|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(15),
	datad => VCC,
	cin => \RST_DBN|Add0~29\,
	combout => \RST_DBN|Add0~30_combout\,
	cout => \RST_DBN|Add0~31\);

-- Location: LCCOMB_X76_Y39_N4
\RST_DBN|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~6_combout\ = (\RST_DBN|Add0~30_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_DBN|Add0~30_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~6_combout\);

-- Location: FF_X76_Y39_N5
\RST_DBN|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~6_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(15));

-- Location: LCCOMB_X76_Y37_N10
\RST_DBN|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~32_combout\ = (\RST_DBN|s_debounceCnt\(16) & ((GND) # (!\RST_DBN|Add0~31\))) # (!\RST_DBN|s_debounceCnt\(16) & (\RST_DBN|Add0~31\ $ (GND)))
-- \RST_DBN|Add0~33\ = CARRY((\RST_DBN|s_debounceCnt\(16)) # (!\RST_DBN|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(16),
	datad => VCC,
	cin => \RST_DBN|Add0~31\,
	combout => \RST_DBN|Add0~32_combout\,
	cout => \RST_DBN|Add0~33\);

-- Location: LCCOMB_X76_Y39_N22
\RST_DBN|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~7_combout\ = (\RST_DBN|Add0~32_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_DBN|Add0~32_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~7_combout\);

-- Location: FF_X76_Y39_N23
\RST_DBN|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~7_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(16));

-- Location: LCCOMB_X76_Y37_N12
\RST_DBN|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~34_combout\ = (\RST_DBN|s_debounceCnt\(17) & (\RST_DBN|Add0~33\ & VCC)) # (!\RST_DBN|s_debounceCnt\(17) & (!\RST_DBN|Add0~33\))
-- \RST_DBN|Add0~35\ = CARRY((!\RST_DBN|s_debounceCnt\(17) & !\RST_DBN|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(17),
	datad => VCC,
	cin => \RST_DBN|Add0~33\,
	combout => \RST_DBN|Add0~34_combout\,
	cout => \RST_DBN|Add0~35\);

-- Location: LCCOMB_X73_Y40_N4
\RST_DBN|s_debounceCnt[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[17]~18_combout\ = (\RST_DBN|s_debounceCnt[10]~0_combout\ & (\RST_DBN|s_debounceCnt[10]~3_combout\ & ((\RST_DBN|Add0~34_combout\) # (!\RST_DBN|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt[10]~0_combout\,
	datab => \RST_DBN|Add0~34_combout\,
	datac => \RST_DBN|s_debounceCnt[10]~3_combout\,
	datad => \RST_DBN|s_previousIn~q\,
	combout => \RST_DBN|s_debounceCnt[17]~18_combout\);

-- Location: FF_X73_Y40_N5
\RST_DBN|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(17));

-- Location: LCCOMB_X73_Y40_N20
\RST_DBN|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|LessThan0~1_combout\ = (\RST_DBN|s_debounceCnt\(18) & (\RST_DBN|s_debounceCnt\(13) & (\RST_DBN|s_debounceCnt\(17) & \RST_DBN|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(18),
	datab => \RST_DBN|s_debounceCnt\(13),
	datac => \RST_DBN|s_debounceCnt\(17),
	datad => \RST_DBN|s_debounceCnt\(7),
	combout => \RST_DBN|LessThan0~1_combout\);

-- Location: LCCOMB_X73_Y40_N22
\RST_DBN|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|LessThan0~2_combout\ = (\RST_DBN|LessThan0~0_combout\ & (\RST_DBN|s_debounceCnt\(8) & (\RST_DBN|LessThan0~1_combout\ & \RST_DBN|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|LessThan0~0_combout\,
	datab => \RST_DBN|s_debounceCnt\(8),
	datac => \RST_DBN|LessThan0~1_combout\,
	datad => \RST_DBN|s_debounceCnt\(10),
	combout => \RST_DBN|LessThan0~2_combout\);

-- Location: LCCOMB_X73_Y40_N24
\RST_DBN|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|LessThan0~3_combout\ = (\RST_DBN|s_debounceCnt\(11)) # ((\RST_DBN|s_debounceCnt\(12)) # ((\RST_DBN|s_debounceCnt\(10) & \RST_DBN|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(11),
	datab => \RST_DBN|s_debounceCnt\(10),
	datac => \RST_DBN|s_debounceCnt\(12),
	datad => \RST_DBN|s_debounceCnt\(9),
	combout => \RST_DBN|LessThan0~3_combout\);

-- Location: LCCOMB_X73_Y40_N26
\RST_DBN|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|LessThan0~4_combout\ = (\RST_DBN|s_debounceCnt\(14)) # ((\RST_DBN|s_debounceCnt\(15)) # ((\RST_DBN|LessThan0~3_combout\ & \RST_DBN|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(14),
	datab => \RST_DBN|LessThan0~3_combout\,
	datac => \RST_DBN|s_debounceCnt\(15),
	datad => \RST_DBN|s_debounceCnt\(13),
	combout => \RST_DBN|LessThan0~4_combout\);

-- Location: LCCOMB_X73_Y40_N12
\RST_DBN|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|LessThan0~5_combout\ = (\RST_DBN|s_debounceCnt\(18) & (\RST_DBN|s_debounceCnt\(17) & ((\RST_DBN|LessThan0~4_combout\) # (\RST_DBN|s_debounceCnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(18),
	datab => \RST_DBN|s_debounceCnt\(17),
	datac => \RST_DBN|LessThan0~4_combout\,
	datad => \RST_DBN|s_debounceCnt\(16),
	combout => \RST_DBN|LessThan0~5_combout\);

-- Location: LCCOMB_X75_Y37_N24
\RST_DBN|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|LessThan0~6_combout\ = (\RST_DBN|s_debounceCnt\(20)) # ((\RST_DBN|LessThan0~2_combout\) # ((\RST_DBN|LessThan0~5_combout\) # (\RST_DBN|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(20),
	datab => \RST_DBN|LessThan0~2_combout\,
	datac => \RST_DBN|LessThan0~5_combout\,
	datad => \RST_DBN|s_debounceCnt\(19),
	combout => \RST_DBN|LessThan0~6_combout\);

-- Location: LCCOMB_X76_Y39_N24
\RST_DBN|s_debounceCnt[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[10]~0_combout\ = (\RST_DBN|s_dirtyIn~q\ & ((!\RST_DBN|s_debounceCnt\(21)) # (!\RST_DBN|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|LessThan0~6_combout\,
	datac => \RST_DBN|s_dirtyIn~q\,
	datad => \RST_DBN|s_debounceCnt\(21),
	combout => \RST_DBN|s_debounceCnt[10]~0_combout\);

-- Location: LCCOMB_X76_Y37_N14
\RST_DBN|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~36_combout\ = (\RST_DBN|s_debounceCnt\(18) & ((GND) # (!\RST_DBN|Add0~35\))) # (!\RST_DBN|s_debounceCnt\(18) & (\RST_DBN|Add0~35\ $ (GND)))
-- \RST_DBN|Add0~37\ = CARRY((\RST_DBN|s_debounceCnt\(18)) # (!\RST_DBN|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(18),
	datad => VCC,
	cin => \RST_DBN|Add0~35\,
	combout => \RST_DBN|Add0~36_combout\,
	cout => \RST_DBN|Add0~37\);

-- Location: LCCOMB_X73_Y40_N6
\RST_DBN|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[18]~19_combout\ = (\RST_DBN|s_debounceCnt[10]~0_combout\ & (\RST_DBN|s_debounceCnt[10]~3_combout\ & ((\RST_DBN|Add0~36_combout\) # (!\RST_DBN|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt[10]~0_combout\,
	datab => \RST_DBN|Add0~36_combout\,
	datac => \RST_DBN|s_debounceCnt[10]~3_combout\,
	datad => \RST_DBN|s_previousIn~q\,
	combout => \RST_DBN|s_debounceCnt[18]~19_combout\);

-- Location: FF_X73_Y40_N7
\RST_DBN|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(18));

-- Location: LCCOMB_X76_Y37_N16
\RST_DBN|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~38_combout\ = (\RST_DBN|s_debounceCnt\(19) & (\RST_DBN|Add0~37\ & VCC)) # (!\RST_DBN|s_debounceCnt\(19) & (!\RST_DBN|Add0~37\))
-- \RST_DBN|Add0~39\ = CARRY((!\RST_DBN|s_debounceCnt\(19) & !\RST_DBN|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(19),
	datad => VCC,
	cin => \RST_DBN|Add0~37\,
	combout => \RST_DBN|Add0~38_combout\,
	cout => \RST_DBN|Add0~39\);

-- Location: LCCOMB_X76_Y37_N26
\RST_DBN|s_debounceCnt[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[19]~10_combout\ = (\RST_DBN|s_debounceCnt[10]~3_combout\ & (\RST_DBN|Add0~38_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt[10]~3_combout\,
	datab => \RST_DBN|Add0~38_combout\,
	datac => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt[19]~10_combout\);

-- Location: FF_X76_Y37_N27
\RST_DBN|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(19));

-- Location: LCCOMB_X76_Y37_N18
\RST_DBN|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~40_combout\ = (\RST_DBN|s_debounceCnt\(20) & ((GND) # (!\RST_DBN|Add0~39\))) # (!\RST_DBN|s_debounceCnt\(20) & (\RST_DBN|Add0~39\ $ (GND)))
-- \RST_DBN|Add0~41\ = CARRY((\RST_DBN|s_debounceCnt\(20)) # (!\RST_DBN|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(20),
	datad => VCC,
	cin => \RST_DBN|Add0~39\,
	combout => \RST_DBN|Add0~40_combout\,
	cout => \RST_DBN|Add0~41\);

-- Location: LCCOMB_X76_Y37_N28
\RST_DBN|s_debounceCnt[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[20]~11_combout\ = (\RST_DBN|s_debounceCnt[10]~3_combout\ & (\RST_DBN|Add0~40_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt[10]~3_combout\,
	datab => \RST_DBN|Add0~40_combout\,
	datac => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt[20]~11_combout\);

-- Location: FF_X76_Y37_N29
\RST_DBN|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(20));

-- Location: LCCOMB_X76_Y37_N20
\RST_DBN|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~42_combout\ = \RST_DBN|Add0~41\ $ (!\RST_DBN|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RST_DBN|s_debounceCnt\(21),
	cin => \RST_DBN|Add0~41\,
	combout => \RST_DBN|Add0~42_combout\);

-- Location: LCCOMB_X76_Y39_N14
\RST_DBN|s_debounceCnt[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[21]~25_combout\ = (\RST_DBN|s_dirtyIn~q\ & ((\RST_DBN|s_debounceCnt\(21) & (!\RST_DBN|LessThan0~6_combout\)) # (!\RST_DBN|s_debounceCnt\(21) & ((\RST_DBN|s_debounceCnt[10]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(21),
	datab => \RST_DBN|LessThan0~6_combout\,
	datac => \RST_DBN|s_dirtyIn~q\,
	datad => \RST_DBN|s_debounceCnt[10]~2_combout\,
	combout => \RST_DBN|s_debounceCnt[21]~25_combout\);

-- Location: LCCOMB_X76_Y39_N10
\RST_DBN|s_debounceCnt[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[21]~26_combout\ = (\RST_DBN|s_previousIn~q\ & (\RST_DBN|Add0~42_combout\ & (\RST_DBN|s_debounceCnt[21]~25_combout\))) # (!\RST_DBN|s_previousIn~q\ & (((\RST_DBN|s_debounceCnt[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|Add0~42_combout\,
	datab => \RST_DBN|s_debounceCnt[21]~25_combout\,
	datac => \RST_DBN|s_previousIn~q\,
	datad => \RST_DBN|s_debounceCnt[10]~0_combout\,
	combout => \RST_DBN|s_debounceCnt[21]~26_combout\);

-- Location: FF_X76_Y39_N11
\RST_DBN|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(21));

-- Location: LCCOMB_X76_Y39_N20
\RST_DBN|s_debounceCnt[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt[10]~4_combout\ = (\RST_DBN|s_dirtyIn~q\ & (\RST_DBN|s_previousIn~q\ & ((!\RST_DBN|LessThan0~6_combout\) # (!\RST_DBN|s_debounceCnt\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(21),
	datab => \RST_DBN|LessThan0~6_combout\,
	datac => \RST_DBN|s_dirtyIn~q\,
	datad => \RST_DBN|s_previousIn~q\,
	combout => \RST_DBN|s_debounceCnt[10]~4_combout\);

-- Location: LCCOMB_X76_Y39_N30
\RST_DBN|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~24_combout\ = (\RST_DBN|Add0~0_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_DBN|Add0~0_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~24_combout\);

-- Location: FF_X76_Y39_N31
\RST_DBN|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~24_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(0));

-- Location: LCCOMB_X76_Y38_N12
\RST_DBN|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~2_combout\ = (\RST_DBN|s_debounceCnt\(1) & (\RST_DBN|Add0~1\ & VCC)) # (!\RST_DBN|s_debounceCnt\(1) & (!\RST_DBN|Add0~1\))
-- \RST_DBN|Add0~3\ = CARRY((!\RST_DBN|s_debounceCnt\(1) & !\RST_DBN|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(1),
	datad => VCC,
	cin => \RST_DBN|Add0~1\,
	combout => \RST_DBN|Add0~2_combout\,
	cout => \RST_DBN|Add0~3\);

-- Location: LCCOMB_X76_Y39_N12
\RST_DBN|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~20_combout\ = (\RST_DBN|Add0~2_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|Add0~2_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~20_combout\);

-- Location: FF_X76_Y39_N13
\RST_DBN|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~20_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(1));

-- Location: LCCOMB_X76_Y38_N14
\RST_DBN|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~4_combout\ = (\RST_DBN|s_debounceCnt\(2) & ((GND) # (!\RST_DBN|Add0~3\))) # (!\RST_DBN|s_debounceCnt\(2) & (\RST_DBN|Add0~3\ $ (GND)))
-- \RST_DBN|Add0~5\ = CARRY((\RST_DBN|s_debounceCnt\(2)) # (!\RST_DBN|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(2),
	datad => VCC,
	cin => \RST_DBN|Add0~3\,
	combout => \RST_DBN|Add0~4_combout\,
	cout => \RST_DBN|Add0~5\);

-- Location: LCCOMB_X76_Y38_N2
\RST_DBN|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~21_combout\ = (\RST_DBN|Add0~4_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST_DBN|Add0~4_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~21_combout\);

-- Location: FF_X76_Y38_N3
\RST_DBN|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~21_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(2));

-- Location: LCCOMB_X76_Y38_N16
\RST_DBN|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~6_combout\ = (\RST_DBN|s_debounceCnt\(3) & (\RST_DBN|Add0~5\ & VCC)) # (!\RST_DBN|s_debounceCnt\(3) & (!\RST_DBN|Add0~5\))
-- \RST_DBN|Add0~7\ = CARRY((!\RST_DBN|s_debounceCnt\(3) & !\RST_DBN|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_debounceCnt\(3),
	datad => VCC,
	cin => \RST_DBN|Add0~5\,
	combout => \RST_DBN|Add0~6_combout\,
	cout => \RST_DBN|Add0~7\);

-- Location: LCCOMB_X76_Y38_N4
\RST_DBN|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~22_combout\ = (\RST_DBN|Add0~6_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|Add0~6_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~22_combout\);

-- Location: FF_X76_Y38_N5
\RST_DBN|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~22_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(3));

-- Location: LCCOMB_X76_Y38_N18
\RST_DBN|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~8_combout\ = (\RST_DBN|s_debounceCnt\(4) & ((GND) # (!\RST_DBN|Add0~7\))) # (!\RST_DBN|s_debounceCnt\(4) & (\RST_DBN|Add0~7\ $ (GND)))
-- \RST_DBN|Add0~9\ = CARRY((\RST_DBN|s_debounceCnt\(4)) # (!\RST_DBN|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(4),
	datad => VCC,
	cin => \RST_DBN|Add0~7\,
	combout => \RST_DBN|Add0~8_combout\,
	cout => \RST_DBN|Add0~9\);

-- Location: LCCOMB_X76_Y38_N6
\RST_DBN|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~23_combout\ = (\RST_DBN|Add0~8_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|Add0~8_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~23_combout\);

-- Location: FF_X76_Y38_N7
\RST_DBN|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~23_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(4));

-- Location: LCCOMB_X76_Y38_N20
\RST_DBN|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~10_combout\ = (\RST_DBN|s_debounceCnt\(5) & (\RST_DBN|Add0~9\ & VCC)) # (!\RST_DBN|s_debounceCnt\(5) & (!\RST_DBN|Add0~9\))
-- \RST_DBN|Add0~11\ = CARRY((!\RST_DBN|s_debounceCnt\(5) & !\RST_DBN|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(5),
	datad => VCC,
	cin => \RST_DBN|Add0~9\,
	combout => \RST_DBN|Add0~10_combout\,
	cout => \RST_DBN|Add0~11\);

-- Location: LCCOMB_X73_Y40_N0
\RST_DBN|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~1_combout\ = (\RST_DBN|s_debounceCnt[10]~0_combout\ & ((\RST_DBN|Add0~10_combout\) # (!\RST_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|Add0~10_combout\,
	datac => \RST_DBN|s_debounceCnt[10]~0_combout\,
	datad => \RST_DBN|s_previousIn~q\,
	combout => \RST_DBN|s_debounceCnt~1_combout\);

-- Location: FF_X73_Y40_N1
\RST_DBN|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~1_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(5));

-- Location: LCCOMB_X76_Y38_N22
\RST_DBN|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|Add0~12_combout\ = (\RST_DBN|s_debounceCnt\(6) & ((GND) # (!\RST_DBN|Add0~11\))) # (!\RST_DBN|s_debounceCnt\(6) & (\RST_DBN|Add0~11\ $ (GND)))
-- \RST_DBN|Add0~13\ = CARRY((\RST_DBN|s_debounceCnt\(6)) # (!\RST_DBN|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(6),
	datad => VCC,
	cin => \RST_DBN|Add0~11\,
	combout => \RST_DBN|Add0~12_combout\,
	cout => \RST_DBN|Add0~13\);

-- Location: LCCOMB_X76_Y39_N0
\RST_DBN|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~12_combout\ = (\RST_DBN|Add0~12_combout\ & \RST_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|Add0~12_combout\,
	datad => \RST_DBN|s_debounceCnt[10]~4_combout\,
	combout => \RST_DBN|s_debounceCnt~12_combout\);

-- Location: FF_X76_Y39_N1
\RST_DBN|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~12_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(6));

-- Location: LCCOMB_X76_Y39_N26
\RST_DBN|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_debounceCnt~13_combout\ = (\RST_DBN|s_debounceCnt[10]~0_combout\ & ((\RST_DBN|Add0~14_combout\) # (!\RST_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|Add0~14_combout\,
	datab => \RST_DBN|s_debounceCnt[10]~0_combout\,
	datac => \RST_DBN|s_previousIn~q\,
	combout => \RST_DBN|s_debounceCnt~13_combout\);

-- Location: FF_X76_Y39_N27
\RST_DBN|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_debounceCnt~13_combout\,
	ena => \RST_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_debounceCnt\(7));

-- Location: LCCOMB_X73_Y40_N30
\RST_DBN|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_pulsedOut~2_combout\ = (!\RST_DBN|s_debounceCnt\(7) & (!\RST_DBN|s_debounceCnt\(6) & (!\RST_DBN|s_debounceCnt\(8) & !\RST_DBN|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(7),
	datab => \RST_DBN|s_debounceCnt\(6),
	datac => \RST_DBN|s_debounceCnt\(8),
	datad => \RST_DBN|s_debounceCnt\(9),
	combout => \RST_DBN|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X73_Y40_N2
\RST_DBN|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_pulsedOut~0_combout\ = (!\RST_DBN|s_debounceCnt\(14) & (!\RST_DBN|s_debounceCnt\(5) & (!\RST_DBN|s_debounceCnt\(15) & !\RST_DBN|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(14),
	datab => \RST_DBN|s_debounceCnt\(5),
	datac => \RST_DBN|s_debounceCnt\(15),
	datad => \RST_DBN|s_debounceCnt\(16),
	combout => \RST_DBN|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X73_Y40_N8
\RST_DBN|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_pulsedOut~3_combout\ = (!\RST_DBN|s_debounceCnt\(18) & (!\RST_DBN|s_debounceCnt\(13) & (!\RST_DBN|s_debounceCnt\(17) & !\RST_DBN|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(18),
	datab => \RST_DBN|s_debounceCnt\(13),
	datac => \RST_DBN|s_debounceCnt\(17),
	datad => \RST_DBN|s_debounceCnt\(10),
	combout => \RST_DBN|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X76_Y37_N30
\RST_DBN|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_pulsedOut~1_combout\ = (!\RST_DBN|s_debounceCnt\(11) & (!\RST_DBN|s_debounceCnt\(12) & (!\RST_DBN|s_debounceCnt\(19) & !\RST_DBN|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(11),
	datab => \RST_DBN|s_debounceCnt\(12),
	datac => \RST_DBN|s_debounceCnt\(19),
	datad => \RST_DBN|s_debounceCnt\(20),
	combout => \RST_DBN|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X73_Y40_N10
\RST_DBN|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_pulsedOut~4_combout\ = (\RST_DBN|s_pulsedOut~2_combout\ & (\RST_DBN|s_pulsedOut~0_combout\ & (\RST_DBN|s_pulsedOut~3_combout\ & \RST_DBN|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_pulsedOut~2_combout\,
	datab => \RST_DBN|s_pulsedOut~0_combout\,
	datac => \RST_DBN|s_pulsedOut~3_combout\,
	datad => \RST_DBN|s_pulsedOut~1_combout\,
	combout => \RST_DBN|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X76_Y39_N28
\RST_DBN|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_pulsedOut~6_combout\ = (\RST_DBN|s_debounceCnt\(0) & (\RST_DBN|s_previousIn~q\ & (\RST_DBN|s_dirtyIn~q\ & !\RST_DBN|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_debounceCnt\(0),
	datab => \RST_DBN|s_previousIn~q\,
	datac => \RST_DBN|s_dirtyIn~q\,
	datad => \RST_DBN|s_debounceCnt\(21),
	combout => \RST_DBN|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X76_Y39_N16
\RST_DBN|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_DBN|s_pulsedOut~7_combout\ = (\RST_DBN|s_pulsedOut~4_combout\ & (\RST_DBN|s_pulsedOut~5_combout\ & \RST_DBN|s_pulsedOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_pulsedOut~4_combout\,
	datab => \RST_DBN|s_pulsedOut~5_combout\,
	datad => \RST_DBN|s_pulsedOut~6_combout\,
	combout => \RST_DBN|s_pulsedOut~7_combout\);

-- Location: FF_X76_Y39_N17
\RST_DBN|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RST_DBN|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RST_DBN|s_pulsedOut~q\);

-- Location: LCCOMB_X98_Y41_N10
\SOUT_DBN|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~0_combout\ = \SOUT_DBN|s_debounceCnt\(0) $ (VCC)
-- \SOUT_DBN|Add0~1\ = CARRY(\SOUT_DBN|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(0),
	datad => VCC,
	combout => \SOUT_DBN|Add0~0_combout\,
	cout => \SOUT_DBN|Add0~1\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X99_Y42_N18
\SOUT_DBN|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	combout => \SOUT_DBN|s_dirtyIn~0_combout\);

-- Location: FF_X99_Y42_N19
\SOUT_DBN|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_dirtyIn~q\);

-- Location: LCCOMB_X99_Y42_N24
\SOUT_DBN|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_previousIn~feeder_combout\ = \SOUT_DBN|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SOUT_DBN|s_dirtyIn~q\,
	combout => \SOUT_DBN|s_previousIn~feeder_combout\);

-- Location: FF_X99_Y42_N25
\SOUT_DBN|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_previousIn~q\);

-- Location: LCCOMB_X99_Y42_N2
\SOUT_DBN|s_debounceCnt[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[10]~0_combout\ = (\SOUT_DBN|s_previousIn~q\ & (\SOUT_DBN|s_dirtyIn~q\ & ((!\SOUT_DBN|LessThan0~6_combout\) # (!\SOUT_DBN|s_debounceCnt\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(21),
	datab => \SOUT_DBN|s_previousIn~q\,
	datac => \SOUT_DBN|LessThan0~6_combout\,
	datad => \SOUT_DBN|s_dirtyIn~q\,
	combout => \SOUT_DBN|s_debounceCnt[10]~0_combout\);

-- Location: LCCOMB_X98_Y41_N0
\SOUT_DBN|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~21_combout\ = (\SOUT_DBN|Add0~0_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|Add0~0_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~21_combout\);

-- Location: LCCOMB_X97_Y41_N0
\SOUT_DBN|s_levelOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_levelOut~0_combout\ = (!\SOUT_DBN|s_debounceCnt\(3) & (!\SOUT_DBN|s_debounceCnt\(1) & (!\SOUT_DBN|s_debounceCnt\(4) & !\SOUT_DBN|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(3),
	datab => \SOUT_DBN|s_debounceCnt\(1),
	datac => \SOUT_DBN|s_debounceCnt\(4),
	datad => \SOUT_DBN|s_debounceCnt\(2),
	combout => \SOUT_DBN|s_levelOut~0_combout\);

-- Location: LCCOMB_X98_Y42_N0
\SOUT_DBN|s_debounceCnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[10]~2_combout\ = ((\SOUT_DBN|s_debounceCnt\(0)) # (!\SOUT_DBN|s_levelOut~5_combout\)) # (!\SOUT_DBN|s_levelOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_levelOut~0_combout\,
	datac => \SOUT_DBN|s_debounceCnt\(0),
	datad => \SOUT_DBN|s_levelOut~5_combout\,
	combout => \SOUT_DBN|s_debounceCnt[10]~2_combout\);

-- Location: LCCOMB_X98_Y42_N28
\SOUT_DBN|s_debounceCnt[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[10]~5_combout\ = (\SOUT_DBN|s_debounceCnt\(21)) # (((\SOUT_DBN|s_debounceCnt[10]~2_combout\) # (!\SOUT_DBN|s_previousIn~q\)) # (!\SOUT_DBN|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(21),
	datab => \SOUT_DBN|s_dirtyIn~q\,
	datac => \SOUT_DBN|s_debounceCnt[10]~2_combout\,
	datad => \SOUT_DBN|s_previousIn~q\,
	combout => \SOUT_DBN|s_debounceCnt[10]~5_combout\);

-- Location: FF_X98_Y41_N1
\SOUT_DBN|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~21_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y41_N12
\SOUT_DBN|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~2_combout\ = (\SOUT_DBN|s_debounceCnt\(1) & (\SOUT_DBN|Add0~1\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(1) & (!\SOUT_DBN|Add0~1\))
-- \SOUT_DBN|Add0~3\ = CARRY((!\SOUT_DBN|s_debounceCnt\(1) & !\SOUT_DBN|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(1),
	datad => VCC,
	cin => \SOUT_DBN|Add0~1\,
	combout => \SOUT_DBN|Add0~2_combout\,
	cout => \SOUT_DBN|Add0~3\);

-- Location: LCCOMB_X98_Y41_N2
\SOUT_DBN|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~22_combout\ = (\SOUT_DBN|Add0~2_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|Add0~2_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~22_combout\);

-- Location: FF_X98_Y41_N3
\SOUT_DBN|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~22_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y41_N14
\SOUT_DBN|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~4_combout\ = (\SOUT_DBN|s_debounceCnt\(2) & ((GND) # (!\SOUT_DBN|Add0~3\))) # (!\SOUT_DBN|s_debounceCnt\(2) & (\SOUT_DBN|Add0~3\ $ (GND)))
-- \SOUT_DBN|Add0~5\ = CARRY((\SOUT_DBN|s_debounceCnt\(2)) # (!\SOUT_DBN|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(2),
	datad => VCC,
	cin => \SOUT_DBN|Add0~3\,
	combout => \SOUT_DBN|Add0~4_combout\,
	cout => \SOUT_DBN|Add0~5\);

-- Location: LCCOMB_X98_Y41_N4
\SOUT_DBN|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~23_combout\ = (\SOUT_DBN|Add0~4_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SOUT_DBN|Add0~4_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~23_combout\);

-- Location: FF_X98_Y41_N5
\SOUT_DBN|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~23_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(2));

-- Location: LCCOMB_X98_Y41_N16
\SOUT_DBN|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~6_combout\ = (\SOUT_DBN|s_debounceCnt\(3) & (\SOUT_DBN|Add0~5\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(3) & (!\SOUT_DBN|Add0~5\))
-- \SOUT_DBN|Add0~7\ = CARRY((!\SOUT_DBN|s_debounceCnt\(3) & !\SOUT_DBN|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(3),
	datad => VCC,
	cin => \SOUT_DBN|Add0~5\,
	combout => \SOUT_DBN|Add0~6_combout\,
	cout => \SOUT_DBN|Add0~7\);

-- Location: LCCOMB_X98_Y41_N6
\SOUT_DBN|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~24_combout\ = (\SOUT_DBN|Add0~6_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|Add0~6_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~24_combout\);

-- Location: FF_X98_Y41_N7
\SOUT_DBN|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~24_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(3));

-- Location: LCCOMB_X98_Y41_N18
\SOUT_DBN|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~8_combout\ = (\SOUT_DBN|s_debounceCnt\(4) & ((GND) # (!\SOUT_DBN|Add0~7\))) # (!\SOUT_DBN|s_debounceCnt\(4) & (\SOUT_DBN|Add0~7\ $ (GND)))
-- \SOUT_DBN|Add0~9\ = CARRY((\SOUT_DBN|s_debounceCnt\(4)) # (!\SOUT_DBN|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(4),
	datad => VCC,
	cin => \SOUT_DBN|Add0~7\,
	combout => \SOUT_DBN|Add0~8_combout\,
	cout => \SOUT_DBN|Add0~9\);

-- Location: LCCOMB_X98_Y41_N8
\SOUT_DBN|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~25_combout\ = (\SOUT_DBN|Add0~8_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|Add0~8_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~25_combout\);

-- Location: FF_X98_Y41_N9
\SOUT_DBN|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~25_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y41_N20
\SOUT_DBN|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~10_combout\ = (\SOUT_DBN|s_debounceCnt\(5) & (\SOUT_DBN|Add0~9\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(5) & (!\SOUT_DBN|Add0~9\))
-- \SOUT_DBN|Add0~11\ = CARRY((!\SOUT_DBN|s_debounceCnt\(5) & !\SOUT_DBN|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(5),
	datad => VCC,
	cin => \SOUT_DBN|Add0~9\,
	combout => \SOUT_DBN|Add0~10_combout\,
	cout => \SOUT_DBN|Add0~11\);

-- Location: LCCOMB_X98_Y42_N20
\SOUT_DBN|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~20_combout\ = (\SOUT_DBN|s_debounceCnt[10]~1_combout\ & ((\SOUT_DBN|Add0~10_combout\) # (!\SOUT_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt[10]~1_combout\,
	datac => \SOUT_DBN|Add0~10_combout\,
	datad => \SOUT_DBN|s_previousIn~q\,
	combout => \SOUT_DBN|s_debounceCnt~20_combout\);

-- Location: FF_X98_Y42_N21
\SOUT_DBN|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~20_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y41_N22
\SOUT_DBN|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~12_combout\ = (\SOUT_DBN|s_debounceCnt\(6) & ((GND) # (!\SOUT_DBN|Add0~11\))) # (!\SOUT_DBN|s_debounceCnt\(6) & (\SOUT_DBN|Add0~11\ $ (GND)))
-- \SOUT_DBN|Add0~13\ = CARRY((\SOUT_DBN|s_debounceCnt\(6)) # (!\SOUT_DBN|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(6),
	datad => VCC,
	cin => \SOUT_DBN|Add0~11\,
	combout => \SOUT_DBN|Add0~12_combout\,
	cout => \SOUT_DBN|Add0~13\);

-- Location: LCCOMB_X99_Y42_N20
\SOUT_DBN|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~19_combout\ = (\SOUT_DBN|Add0~12_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SOUT_DBN|Add0~12_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~19_combout\);

-- Location: FF_X99_Y42_N21
\SOUT_DBN|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~19_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y41_N24
\SOUT_DBN|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~14_combout\ = (\SOUT_DBN|s_debounceCnt\(7) & (\SOUT_DBN|Add0~13\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(7) & (!\SOUT_DBN|Add0~13\))
-- \SOUT_DBN|Add0~15\ = CARRY((!\SOUT_DBN|s_debounceCnt\(7) & !\SOUT_DBN|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(7),
	datad => VCC,
	cin => \SOUT_DBN|Add0~13\,
	combout => \SOUT_DBN|Add0~14_combout\,
	cout => \SOUT_DBN|Add0~15\);

-- Location: LCCOMB_X99_Y42_N10
\SOUT_DBN|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~26_combout\ = (\SOUT_DBN|s_debounceCnt[10]~1_combout\ & ((\SOUT_DBN|Add0~14_combout\) # (!\SOUT_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt[10]~1_combout\,
	datac => \SOUT_DBN|Add0~14_combout\,
	datad => \SOUT_DBN|s_previousIn~q\,
	combout => \SOUT_DBN|s_debounceCnt~26_combout\);

-- Location: FF_X98_Y42_N31
\SOUT_DBN|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SOUT_DBN|s_debounceCnt~26_combout\,
	sload => VCC,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y41_N26
\SOUT_DBN|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~16_combout\ = (\SOUT_DBN|s_debounceCnt\(8) & ((GND) # (!\SOUT_DBN|Add0~15\))) # (!\SOUT_DBN|s_debounceCnt\(8) & (\SOUT_DBN|Add0~15\ $ (GND)))
-- \SOUT_DBN|Add0~17\ = CARRY((\SOUT_DBN|s_debounceCnt\(8)) # (!\SOUT_DBN|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(8),
	datad => VCC,
	cin => \SOUT_DBN|Add0~15\,
	combout => \SOUT_DBN|Add0~16_combout\,
	cout => \SOUT_DBN|Add0~17\);

-- Location: LCCOMB_X99_Y42_N0
\SOUT_DBN|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~18_combout\ = (\SOUT_DBN|s_debounceCnt[10]~1_combout\ & ((\SOUT_DBN|Add0~16_combout\) # (!\SOUT_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|Add0~16_combout\,
	datac => \SOUT_DBN|s_debounceCnt[10]~1_combout\,
	datad => \SOUT_DBN|s_previousIn~q\,
	combout => \SOUT_DBN|s_debounceCnt~18_combout\);

-- Location: FF_X98_Y42_N3
\SOUT_DBN|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SOUT_DBN|s_debounceCnt~18_combout\,
	sload => VCC,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(8));

-- Location: LCCOMB_X98_Y41_N28
\SOUT_DBN|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~18_combout\ = (\SOUT_DBN|s_debounceCnt\(9) & (\SOUT_DBN|Add0~17\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(9) & (!\SOUT_DBN|Add0~17\))
-- \SOUT_DBN|Add0~19\ = CARRY((!\SOUT_DBN|s_debounceCnt\(9) & !\SOUT_DBN|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(9),
	datad => VCC,
	cin => \SOUT_DBN|Add0~17\,
	combout => \SOUT_DBN|Add0~18_combout\,
	cout => \SOUT_DBN|Add0~19\);

-- Location: LCCOMB_X99_Y42_N16
\SOUT_DBN|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~16_combout\ = (\SOUT_DBN|Add0~18_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SOUT_DBN|Add0~18_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~16_combout\);

-- Location: FF_X99_Y42_N17
\SOUT_DBN|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~16_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y41_N30
\SOUT_DBN|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~20_combout\ = (\SOUT_DBN|s_debounceCnt\(10) & ((GND) # (!\SOUT_DBN|Add0~19\))) # (!\SOUT_DBN|s_debounceCnt\(10) & (\SOUT_DBN|Add0~19\ $ (GND)))
-- \SOUT_DBN|Add0~21\ = CARRY((\SOUT_DBN|s_debounceCnt\(10)) # (!\SOUT_DBN|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(10),
	datad => VCC,
	cin => \SOUT_DBN|Add0~19\,
	combout => \SOUT_DBN|Add0~20_combout\,
	cout => \SOUT_DBN|Add0~21\);

-- Location: LCCOMB_X98_Y42_N16
\SOUT_DBN|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~17_combout\ = (\SOUT_DBN|s_debounceCnt[10]~1_combout\ & ((\SOUT_DBN|Add0~20_combout\) # (!\SOUT_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|Add0~20_combout\,
	datab => \SOUT_DBN|s_debounceCnt[10]~1_combout\,
	datad => \SOUT_DBN|s_previousIn~q\,
	combout => \SOUT_DBN|s_debounceCnt~17_combout\);

-- Location: FF_X98_Y42_N17
\SOUT_DBN|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~17_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y40_N0
\SOUT_DBN|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~22_combout\ = (\SOUT_DBN|s_debounceCnt\(11) & (\SOUT_DBN|Add0~21\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(11) & (!\SOUT_DBN|Add0~21\))
-- \SOUT_DBN|Add0~23\ = CARRY((!\SOUT_DBN|s_debounceCnt\(11) & !\SOUT_DBN|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(11),
	datad => VCC,
	cin => \SOUT_DBN|Add0~21\,
	combout => \SOUT_DBN|Add0~22_combout\,
	cout => \SOUT_DBN|Add0~23\);

-- Location: LCCOMB_X99_Y42_N14
\SOUT_DBN|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~14_combout\ = (\SOUT_DBN|Add0~22_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SOUT_DBN|Add0~22_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~14_combout\);

-- Location: FF_X99_Y42_N15
\SOUT_DBN|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~14_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(11));

-- Location: LCCOMB_X98_Y40_N2
\SOUT_DBN|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~24_combout\ = (\SOUT_DBN|s_debounceCnt\(12) & ((GND) # (!\SOUT_DBN|Add0~23\))) # (!\SOUT_DBN|s_debounceCnt\(12) & (\SOUT_DBN|Add0~23\ $ (GND)))
-- \SOUT_DBN|Add0~25\ = CARRY((\SOUT_DBN|s_debounceCnt\(12)) # (!\SOUT_DBN|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(12),
	datad => VCC,
	cin => \SOUT_DBN|Add0~23\,
	combout => \SOUT_DBN|Add0~24_combout\,
	cout => \SOUT_DBN|Add0~25\);

-- Location: LCCOMB_X99_Y40_N12
\SOUT_DBN|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~15_combout\ = (\SOUT_DBN|Add0~24_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|Add0~24_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~15_combout\);

-- Location: FF_X99_Y40_N13
\SOUT_DBN|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~15_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(12));

-- Location: LCCOMB_X98_Y40_N4
\SOUT_DBN|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~26_combout\ = (\SOUT_DBN|s_debounceCnt\(13) & (\SOUT_DBN|Add0~25\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(13) & (!\SOUT_DBN|Add0~25\))
-- \SOUT_DBN|Add0~27\ = CARRY((!\SOUT_DBN|s_debounceCnt\(13) & !\SOUT_DBN|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(13),
	datad => VCC,
	cin => \SOUT_DBN|Add0~25\,
	combout => \SOUT_DBN|Add0~26_combout\,
	cout => \SOUT_DBN|Add0~27\);

-- Location: LCCOMB_X98_Y40_N6
\SOUT_DBN|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~28_combout\ = (\SOUT_DBN|s_debounceCnt\(14) & ((GND) # (!\SOUT_DBN|Add0~27\))) # (!\SOUT_DBN|s_debounceCnt\(14) & (\SOUT_DBN|Add0~27\ $ (GND)))
-- \SOUT_DBN|Add0~29\ = CARRY((\SOUT_DBN|s_debounceCnt\(14)) # (!\SOUT_DBN|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(14),
	datad => VCC,
	cin => \SOUT_DBN|Add0~27\,
	combout => \SOUT_DBN|Add0~28_combout\,
	cout => \SOUT_DBN|Add0~29\);

-- Location: LCCOMB_X98_Y40_N30
\SOUT_DBN|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~11_combout\ = (\SOUT_DBN|Add0~28_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|Add0~28_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~11_combout\);

-- Location: FF_X98_Y40_N31
\SOUT_DBN|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~11_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y40_N8
\SOUT_DBN|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~30_combout\ = (\SOUT_DBN|s_debounceCnt\(15) & (\SOUT_DBN|Add0~29\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(15) & (!\SOUT_DBN|Add0~29\))
-- \SOUT_DBN|Add0~31\ = CARRY((!\SOUT_DBN|s_debounceCnt\(15) & !\SOUT_DBN|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(15),
	datad => VCC,
	cin => \SOUT_DBN|Add0~29\,
	combout => \SOUT_DBN|Add0~30_combout\,
	cout => \SOUT_DBN|Add0~31\);

-- Location: LCCOMB_X98_Y40_N24
\SOUT_DBN|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~12_combout\ = (\SOUT_DBN|Add0~30_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SOUT_DBN|Add0~30_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~12_combout\);

-- Location: FF_X98_Y40_N25
\SOUT_DBN|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~12_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(15));

-- Location: LCCOMB_X98_Y40_N10
\SOUT_DBN|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~32_combout\ = (\SOUT_DBN|s_debounceCnt\(16) & ((GND) # (!\SOUT_DBN|Add0~31\))) # (!\SOUT_DBN|s_debounceCnt\(16) & (\SOUT_DBN|Add0~31\ $ (GND)))
-- \SOUT_DBN|Add0~33\ = CARRY((\SOUT_DBN|s_debounceCnt\(16)) # (!\SOUT_DBN|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(16),
	datad => VCC,
	cin => \SOUT_DBN|Add0~31\,
	combout => \SOUT_DBN|Add0~32_combout\,
	cout => \SOUT_DBN|Add0~33\);

-- Location: LCCOMB_X99_Y40_N18
\SOUT_DBN|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~10_combout\ = (\SOUT_DBN|Add0~32_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|Add0~32_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt~10_combout\);

-- Location: FF_X99_Y40_N19
\SOUT_DBN|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~10_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y40_N12
\SOUT_DBN|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~34_combout\ = (\SOUT_DBN|s_debounceCnt\(17) & (\SOUT_DBN|Add0~33\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(17) & (!\SOUT_DBN|Add0~33\))
-- \SOUT_DBN|Add0~35\ = CARRY((!\SOUT_DBN|s_debounceCnt\(17) & !\SOUT_DBN|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(17),
	datad => VCC,
	cin => \SOUT_DBN|Add0~33\,
	combout => \SOUT_DBN|Add0~34_combout\,
	cout => \SOUT_DBN|Add0~35\);

-- Location: LCCOMB_X98_Y42_N18
\SOUT_DBN|s_debounceCnt[17]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[17]~8_combout\ = (\SOUT_DBN|s_debounceCnt[10]~1_combout\ & (\SOUT_DBN|s_debounceCnt[10]~5_combout\ & ((\SOUT_DBN|Add0~34_combout\) # (!\SOUT_DBN|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|Add0~34_combout\,
	datab => \SOUT_DBN|s_debounceCnt[10]~1_combout\,
	datac => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	datad => \SOUT_DBN|s_previousIn~q\,
	combout => \SOUT_DBN|s_debounceCnt[17]~8_combout\);

-- Location: FF_X98_Y42_N19
\SOUT_DBN|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt[17]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(17));

-- Location: LCCOMB_X98_Y40_N14
\SOUT_DBN|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~36_combout\ = (\SOUT_DBN|s_debounceCnt\(18) & ((GND) # (!\SOUT_DBN|Add0~35\))) # (!\SOUT_DBN|s_debounceCnt\(18) & (\SOUT_DBN|Add0~35\ $ (GND)))
-- \SOUT_DBN|Add0~37\ = CARRY((\SOUT_DBN|s_debounceCnt\(18)) # (!\SOUT_DBN|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(18),
	datad => VCC,
	cin => \SOUT_DBN|Add0~35\,
	combout => \SOUT_DBN|Add0~36_combout\,
	cout => \SOUT_DBN|Add0~37\);

-- Location: LCCOMB_X98_Y42_N4
\SOUT_DBN|s_debounceCnt[18]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[18]~9_combout\ = (\SOUT_DBN|s_debounceCnt[10]~5_combout\ & (\SOUT_DBN|s_debounceCnt[10]~1_combout\ & ((\SOUT_DBN|Add0~36_combout\) # (!\SOUT_DBN|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	datab => \SOUT_DBN|s_debounceCnt[10]~1_combout\,
	datac => \SOUT_DBN|Add0~36_combout\,
	datad => \SOUT_DBN|s_previousIn~q\,
	combout => \SOUT_DBN|s_debounceCnt[18]~9_combout\);

-- Location: FF_X98_Y42_N5
\SOUT_DBN|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt[18]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(18));

-- Location: LCCOMB_X98_Y42_N24
\SOUT_DBN|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|LessThan0~4_combout\ = (\SOUT_DBN|s_debounceCnt\(7) & (\SOUT_DBN|s_debounceCnt\(17) & (\SOUT_DBN|s_debounceCnt\(18) & \SOUT_DBN|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(7),
	datab => \SOUT_DBN|s_debounceCnt\(17),
	datac => \SOUT_DBN|s_debounceCnt\(18),
	datad => \SOUT_DBN|s_debounceCnt\(10),
	combout => \SOUT_DBN|LessThan0~4_combout\);

-- Location: LCCOMB_X99_Y42_N30
\SOUT_DBN|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|LessThan0~3_combout\ = (\SOUT_DBN|s_debounceCnt\(6)) # ((\SOUT_DBN|s_debounceCnt\(5) & ((\SOUT_DBN|s_debounceCnt\(0)) # (!\SOUT_DBN|s_levelOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(0),
	datab => \SOUT_DBN|s_debounceCnt\(5),
	datac => \SOUT_DBN|s_levelOut~0_combout\,
	datad => \SOUT_DBN|s_debounceCnt\(6),
	combout => \SOUT_DBN|LessThan0~3_combout\);

-- Location: LCCOMB_X98_Y42_N2
\SOUT_DBN|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|LessThan0~5_combout\ = (\SOUT_DBN|s_debounceCnt\(13) & (\SOUT_DBN|LessThan0~4_combout\ & (\SOUT_DBN|s_debounceCnt\(8) & \SOUT_DBN|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(13),
	datab => \SOUT_DBN|LessThan0~4_combout\,
	datac => \SOUT_DBN|s_debounceCnt\(8),
	datad => \SOUT_DBN|LessThan0~3_combout\,
	combout => \SOUT_DBN|LessThan0~5_combout\);

-- Location: LCCOMB_X98_Y40_N16
\SOUT_DBN|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~38_combout\ = (\SOUT_DBN|s_debounceCnt\(19) & (\SOUT_DBN|Add0~37\ & VCC)) # (!\SOUT_DBN|s_debounceCnt\(19) & (!\SOUT_DBN|Add0~37\))
-- \SOUT_DBN|Add0~39\ = CARRY((!\SOUT_DBN|s_debounceCnt\(19) & !\SOUT_DBN|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt\(19),
	datad => VCC,
	cin => \SOUT_DBN|Add0~37\,
	combout => \SOUT_DBN|Add0~38_combout\,
	cout => \SOUT_DBN|Add0~39\);

-- Location: LCCOMB_X99_Y42_N12
\SOUT_DBN|s_debounceCnt[19]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[19]~6_combout\ = (\SOUT_DBN|Add0~38_combout\ & (\SOUT_DBN|s_debounceCnt[10]~5_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|Add0~38_combout\,
	datab => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt[19]~6_combout\);

-- Location: FF_X99_Y42_N13
\SOUT_DBN|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt[19]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(19));

-- Location: LCCOMB_X98_Y40_N18
\SOUT_DBN|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~40_combout\ = (\SOUT_DBN|s_debounceCnt\(20) & ((GND) # (!\SOUT_DBN|Add0~39\))) # (!\SOUT_DBN|s_debounceCnt\(20) & (\SOUT_DBN|Add0~39\ $ (GND)))
-- \SOUT_DBN|Add0~41\ = CARRY((\SOUT_DBN|s_debounceCnt\(20)) # (!\SOUT_DBN|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(20),
	datad => VCC,
	cin => \SOUT_DBN|Add0~39\,
	combout => \SOUT_DBN|Add0~40_combout\,
	cout => \SOUT_DBN|Add0~41\);

-- Location: LCCOMB_X99_Y40_N24
\SOUT_DBN|s_debounceCnt[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[20]~7_combout\ = (\SOUT_DBN|s_debounceCnt[10]~5_combout\ & (\SOUT_DBN|Add0~40_combout\ & \SOUT_DBN|s_debounceCnt[10]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	datac => \SOUT_DBN|Add0~40_combout\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_debounceCnt[20]~7_combout\);

-- Location: FF_X99_Y40_N25
\SOUT_DBN|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt[20]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(20));

-- Location: LCCOMB_X99_Y42_N26
\SOUT_DBN|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|LessThan0~0_combout\ = (\SOUT_DBN|s_debounceCnt\(12)) # ((\SOUT_DBN|s_debounceCnt\(11)) # ((\SOUT_DBN|s_debounceCnt\(10) & \SOUT_DBN|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(12),
	datab => \SOUT_DBN|s_debounceCnt\(11),
	datac => \SOUT_DBN|s_debounceCnt\(10),
	datad => \SOUT_DBN|s_debounceCnt\(9),
	combout => \SOUT_DBN|LessThan0~0_combout\);

-- Location: LCCOMB_X98_Y40_N26
\SOUT_DBN|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|LessThan0~1_combout\ = (\SOUT_DBN|s_debounceCnt\(15)) # ((\SOUT_DBN|s_debounceCnt\(14)) # ((\SOUT_DBN|s_debounceCnt\(13) & \SOUT_DBN|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(13),
	datab => \SOUT_DBN|s_debounceCnt\(15),
	datac => \SOUT_DBN|LessThan0~0_combout\,
	datad => \SOUT_DBN|s_debounceCnt\(14),
	combout => \SOUT_DBN|LessThan0~1_combout\);

-- Location: LCCOMB_X98_Y40_N28
\SOUT_DBN|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|LessThan0~2_combout\ = (\SOUT_DBN|s_debounceCnt\(18) & (\SOUT_DBN|s_debounceCnt\(17) & ((\SOUT_DBN|LessThan0~1_combout\) # (\SOUT_DBN|s_debounceCnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|LessThan0~1_combout\,
	datab => \SOUT_DBN|s_debounceCnt\(18),
	datac => \SOUT_DBN|s_debounceCnt\(17),
	datad => \SOUT_DBN|s_debounceCnt\(16),
	combout => \SOUT_DBN|LessThan0~2_combout\);

-- Location: LCCOMB_X99_Y42_N8
\SOUT_DBN|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|LessThan0~6_combout\ = (\SOUT_DBN|LessThan0~5_combout\) # ((\SOUT_DBN|s_debounceCnt\(20)) # ((\SOUT_DBN|LessThan0~2_combout\) # (\SOUT_DBN|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|LessThan0~5_combout\,
	datab => \SOUT_DBN|s_debounceCnt\(20),
	datac => \SOUT_DBN|LessThan0~2_combout\,
	datad => \SOUT_DBN|s_debounceCnt\(19),
	combout => \SOUT_DBN|LessThan0~6_combout\);

-- Location: LCCOMB_X98_Y42_N10
\SOUT_DBN|s_debounceCnt[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[21]~3_combout\ = (\SOUT_DBN|s_dirtyIn~q\ & ((\SOUT_DBN|s_debounceCnt\(21) & (!\SOUT_DBN|LessThan0~6_combout\)) # (!\SOUT_DBN|s_debounceCnt\(21) & ((\SOUT_DBN|s_debounceCnt[10]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(21),
	datab => \SOUT_DBN|LessThan0~6_combout\,
	datac => \SOUT_DBN|s_debounceCnt[10]~2_combout\,
	datad => \SOUT_DBN|s_dirtyIn~q\,
	combout => \SOUT_DBN|s_debounceCnt[21]~3_combout\);

-- Location: LCCOMB_X98_Y40_N20
\SOUT_DBN|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|Add0~42_combout\ = \SOUT_DBN|Add0~41\ $ (!\SOUT_DBN|s_debounceCnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SOUT_DBN|s_debounceCnt\(21),
	cin => \SOUT_DBN|Add0~41\,
	combout => \SOUT_DBN|Add0~42_combout\);

-- Location: LCCOMB_X98_Y42_N8
\SOUT_DBN|s_debounceCnt[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[21]~4_combout\ = (\SOUT_DBN|s_previousIn~q\ & (\SOUT_DBN|s_debounceCnt[21]~3_combout\ & ((\SOUT_DBN|Add0~42_combout\)))) # (!\SOUT_DBN|s_previousIn~q\ & (((\SOUT_DBN|s_debounceCnt[10]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt[21]~3_combout\,
	datab => \SOUT_DBN|s_debounceCnt[10]~1_combout\,
	datac => \SOUT_DBN|Add0~42_combout\,
	datad => \SOUT_DBN|s_previousIn~q\,
	combout => \SOUT_DBN|s_debounceCnt[21]~4_combout\);

-- Location: FF_X98_Y42_N9
\SOUT_DBN|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(21));

-- Location: LCCOMB_X99_Y42_N22
\SOUT_DBN|s_debounceCnt[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt[10]~1_combout\ = (\SOUT_DBN|s_dirtyIn~q\ & ((!\SOUT_DBN|LessThan0~6_combout\) # (!\SOUT_DBN|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(21),
	datac => \SOUT_DBN|LessThan0~6_combout\,
	datad => \SOUT_DBN|s_dirtyIn~q\,
	combout => \SOUT_DBN|s_debounceCnt[10]~1_combout\);

-- Location: LCCOMB_X98_Y42_N22
\SOUT_DBN|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_debounceCnt~13_combout\ = (\SOUT_DBN|s_debounceCnt[10]~1_combout\ & ((\SOUT_DBN|Add0~26_combout\) # (!\SOUT_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_debounceCnt[10]~1_combout\,
	datac => \SOUT_DBN|Add0~26_combout\,
	datad => \SOUT_DBN|s_previousIn~q\,
	combout => \SOUT_DBN|s_debounceCnt~13_combout\);

-- Location: FF_X98_Y42_N23
\SOUT_DBN|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_debounceCnt~13_combout\,
	ena => \SOUT_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y42_N26
\SOUT_DBN|s_levelOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_levelOut~4_combout\ = (!\SOUT_DBN|s_debounceCnt\(13) & (!\SOUT_DBN|s_debounceCnt\(17) & (!\SOUT_DBN|s_debounceCnt\(18) & !\SOUT_DBN|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(13),
	datab => \SOUT_DBN|s_debounceCnt\(17),
	datac => \SOUT_DBN|s_debounceCnt\(18),
	datad => \SOUT_DBN|s_debounceCnt\(10),
	combout => \SOUT_DBN|s_levelOut~4_combout\);

-- Location: LCCOMB_X98_Y42_N30
\SOUT_DBN|s_levelOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_levelOut~3_combout\ = (!\SOUT_DBN|s_debounceCnt\(6) & (!\SOUT_DBN|s_debounceCnt\(9) & (!\SOUT_DBN|s_debounceCnt\(7) & !\SOUT_DBN|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(6),
	datab => \SOUT_DBN|s_debounceCnt\(9),
	datac => \SOUT_DBN|s_debounceCnt\(7),
	datad => \SOUT_DBN|s_debounceCnt\(8),
	combout => \SOUT_DBN|s_levelOut~3_combout\);

-- Location: LCCOMB_X98_Y40_N22
\SOUT_DBN|s_levelOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_levelOut~1_combout\ = (!\SOUT_DBN|s_debounceCnt\(5) & (!\SOUT_DBN|s_debounceCnt\(15) & (!\SOUT_DBN|s_debounceCnt\(14) & !\SOUT_DBN|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(5),
	datab => \SOUT_DBN|s_debounceCnt\(15),
	datac => \SOUT_DBN|s_debounceCnt\(14),
	datad => \SOUT_DBN|s_debounceCnt\(16),
	combout => \SOUT_DBN|s_levelOut~1_combout\);

-- Location: LCCOMB_X99_Y42_N28
\SOUT_DBN|s_levelOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_levelOut~2_combout\ = (!\SOUT_DBN|s_debounceCnt\(12) & (!\SOUT_DBN|s_debounceCnt\(20) & (!\SOUT_DBN|s_debounceCnt\(11) & !\SOUT_DBN|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_debounceCnt\(12),
	datab => \SOUT_DBN|s_debounceCnt\(20),
	datac => \SOUT_DBN|s_debounceCnt\(11),
	datad => \SOUT_DBN|s_debounceCnt\(19),
	combout => \SOUT_DBN|s_levelOut~2_combout\);

-- Location: LCCOMB_X98_Y42_N12
\SOUT_DBN|s_levelOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_levelOut~5_combout\ = (\SOUT_DBN|s_levelOut~4_combout\ & (\SOUT_DBN|s_levelOut~3_combout\ & (\SOUT_DBN|s_levelOut~1_combout\ & \SOUT_DBN|s_levelOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_levelOut~4_combout\,
	datab => \SOUT_DBN|s_levelOut~3_combout\,
	datac => \SOUT_DBN|s_levelOut~1_combout\,
	datad => \SOUT_DBN|s_levelOut~2_combout\,
	combout => \SOUT_DBN|s_levelOut~5_combout\);

-- Location: LCCOMB_X98_Y42_N14
\SOUT_DBN|s_levelOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_levelOut~6_combout\ = (\SOUT_DBN|s_levelOut~5_combout\ & (\SOUT_DBN|s_levelOut~0_combout\ & (\SOUT_DBN|s_debounceCnt\(0) & !\SOUT_DBN|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_levelOut~5_combout\,
	datab => \SOUT_DBN|s_levelOut~0_combout\,
	datac => \SOUT_DBN|s_debounceCnt\(0),
	datad => \SOUT_DBN|s_debounceCnt\(21),
	combout => \SOUT_DBN|s_levelOut~6_combout\);

-- Location: LCCOMB_X97_Y42_N8
\SOUT_DBN|s_levelOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SOUT_DBN|s_levelOut~7_combout\ = (\SOUT_DBN|s_debounceCnt[10]~0_combout\ & ((\SOUT_DBN|s_levelOut~6_combout\) # (\SOUT_DBN|s_levelOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SOUT_DBN|s_levelOut~6_combout\,
	datac => \SOUT_DBN|s_levelOut~q\,
	datad => \SOUT_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SOUT_DBN|s_levelOut~7_combout\);

-- Location: FF_X97_Y42_N9
\SOUT_DBN|s_levelOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SOUT_DBN|s_levelOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOUT_DBN|s_levelOut~q\);

-- Location: LCCOMB_X108_Y38_N16
\OCUP1|inst1|FFSout|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst1|FFSout|Q~0_combout\ = (!\RST_DBN|s_pulsedOut~q\ & \SOUT_DBN|s_levelOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_pulsedOut~q\,
	datad => \SOUT_DBN|s_levelOut~q\,
	combout => \OCUP1|inst1|FFSout|Q~0_combout\);

-- Location: FF_X108_Y38_N17
\OCUP1|inst1|FFSout|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst1|FFSout|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst1|FFSout|Q~q\);

-- Location: LCCOMB_X107_Y38_N8
\OCUP1|inst1|Sout_FALL\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst1|Sout_FALL~combout\ = (\SOUT_DBN|s_levelOut~q\) # (!\OCUP1|inst1|FFSout|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SOUT_DBN|s_levelOut~q\,
	datad => \OCUP1|inst1|FFSout|Q~q\,
	combout => \OCUP1|inst1|Sout_FALL~combout\);

-- Location: LCCOMB_X108_Y38_N8
\OCUP1|inst2|unidades|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|Add0~2_combout\ = (\OCUP1|inst1|Sout_FALL~combout\ & ((\OCUP1|inst2|unidades|s_count\(1) & (\OCUP1|inst2|unidades|Add0~1_cout\ & VCC)) # (!\OCUP1|inst2|unidades|s_count\(1) & (!\OCUP1|inst2|unidades|Add0~1_cout\)))) # 
-- (!\OCUP1|inst1|Sout_FALL~combout\ & ((\OCUP1|inst2|unidades|s_count\(1) & (!\OCUP1|inst2|unidades|Add0~1_cout\)) # (!\OCUP1|inst2|unidades|s_count\(1) & ((\OCUP1|inst2|unidades|Add0~1_cout\) # (GND)))))
-- \OCUP1|inst2|unidades|Add0~3\ = CARRY((\OCUP1|inst1|Sout_FALL~combout\ & (!\OCUP1|inst2|unidades|s_count\(1) & !\OCUP1|inst2|unidades|Add0~1_cout\)) # (!\OCUP1|inst1|Sout_FALL~combout\ & ((!\OCUP1|inst2|unidades|Add0~1_cout\) # 
-- (!\OCUP1|inst2|unidades|s_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst1|Sout_FALL~combout\,
	datab => \OCUP1|inst2|unidades|s_count\(1),
	datad => VCC,
	cin => \OCUP1|inst2|unidades|Add0~1_cout\,
	combout => \OCUP1|inst2|unidades|Add0~2_combout\,
	cout => \OCUP1|inst2|unidades|Add0~3\);

-- Location: LCCOMB_X108_Y38_N10
\OCUP1|inst2|unidades|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|Add0~4_combout\ = ((\OCUP1|inst1|Sout_FALL~combout\ $ (\OCUP1|inst2|unidades|s_count\(2) $ (!\OCUP1|inst2|unidades|Add0~3\)))) # (GND)
-- \OCUP1|inst2|unidades|Add0~5\ = CARRY((\OCUP1|inst1|Sout_FALL~combout\ & ((\OCUP1|inst2|unidades|s_count\(2)) # (!\OCUP1|inst2|unidades|Add0~3\))) # (!\OCUP1|inst1|Sout_FALL~combout\ & (\OCUP1|inst2|unidades|s_count\(2) & !\OCUP1|inst2|unidades|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst1|Sout_FALL~combout\,
	datab => \OCUP1|inst2|unidades|s_count\(2),
	datad => VCC,
	cin => \OCUP1|inst2|unidades|Add0~3\,
	combout => \OCUP1|inst2|unidades|Add0~4_combout\,
	cout => \OCUP1|inst2|unidades|Add0~5\);

-- Location: LCCOMB_X107_Y38_N4
\OCUP1|inst2|unidades|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|s_count~5_combout\ = (!\RST_DBN|s_pulsedOut~q\ & (\OCUP1|inst2|unidades|Add0~4_combout\ & \OCUP1|inst2|unidades|s_count~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_pulsedOut~q\,
	datac => \OCUP1|inst2|unidades|Add0~4_combout\,
	datad => \OCUP1|inst2|unidades|s_count~7_combout\,
	combout => \OCUP1|inst2|unidades|s_count~5_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X114_Y53_N24
\SIN_DBN|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \SIN_DBN|s_dirtyIn~0_combout\);

-- Location: FF_X114_Y53_N25
\SIN_DBN|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_dirtyIn~q\);

-- Location: FF_X95_Y43_N11
\SIN_DBN|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SIN_DBN|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_previousIn~q\);

-- Location: LCCOMB_X95_Y43_N30
\SIN_DBN|s_debounceCnt[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[21]~3_combout\ = (\SIN_DBN|s_dirtyIn~q\ & ((\SIN_DBN|s_debounceCnt\(21) & (!\SIN_DBN|LessThan0~6_combout\)) # (!\SIN_DBN|s_debounceCnt\(21) & ((\SIN_DBN|s_debounceCnt[10]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|LessThan0~6_combout\,
	datab => \SIN_DBN|s_debounceCnt[10]~2_combout\,
	datac => \SIN_DBN|s_dirtyIn~q\,
	datad => \SIN_DBN|s_debounceCnt\(21),
	combout => \SIN_DBN|s_debounceCnt[21]~3_combout\);

-- Location: LCCOMB_X95_Y46_N10
\SIN_DBN|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~0_combout\ = \SIN_DBN|s_debounceCnt\(0) $ (VCC)
-- \SIN_DBN|Add0~1\ = CARRY(\SIN_DBN|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(0),
	datad => VCC,
	combout => \SIN_DBN|Add0~0_combout\,
	cout => \SIN_DBN|Add0~1\);

-- Location: LCCOMB_X95_Y43_N0
\SIN_DBN|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~12_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & \SIN_DBN|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datac => \SIN_DBN|Add0~0_combout\,
	combout => \SIN_DBN|s_debounceCnt~12_combout\);

-- Location: FF_X95_Y43_N1
\SIN_DBN|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~12_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(0));

-- Location: LCCOMB_X95_Y46_N12
\SIN_DBN|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~2_combout\ = (\SIN_DBN|s_debounceCnt\(1) & (\SIN_DBN|Add0~1\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(1) & (!\SIN_DBN|Add0~1\))
-- \SIN_DBN|Add0~3\ = CARRY((!\SIN_DBN|s_debounceCnt\(1) & !\SIN_DBN|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(1),
	datad => VCC,
	cin => \SIN_DBN|Add0~1\,
	combout => \SIN_DBN|Add0~2_combout\,
	cout => \SIN_DBN|Add0~3\);

-- Location: LCCOMB_X95_Y43_N18
\SIN_DBN|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~13_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & \SIN_DBN|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datac => \SIN_DBN|Add0~2_combout\,
	combout => \SIN_DBN|s_debounceCnt~13_combout\);

-- Location: FF_X95_Y43_N19
\SIN_DBN|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~13_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(1));

-- Location: LCCOMB_X95_Y46_N14
\SIN_DBN|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~4_combout\ = (\SIN_DBN|s_debounceCnt\(2) & ((GND) # (!\SIN_DBN|Add0~3\))) # (!\SIN_DBN|s_debounceCnt\(2) & (\SIN_DBN|Add0~3\ $ (GND)))
-- \SIN_DBN|Add0~5\ = CARRY((\SIN_DBN|s_debounceCnt\(2)) # (!\SIN_DBN|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(2),
	datad => VCC,
	cin => \SIN_DBN|Add0~3\,
	combout => \SIN_DBN|Add0~4_combout\,
	cout => \SIN_DBN|Add0~5\);

-- Location: LCCOMB_X95_Y46_N2
\SIN_DBN|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~14_combout\ = (\SIN_DBN|Add0~4_combout\ & \SIN_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SIN_DBN|Add0~4_combout\,
	datad => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SIN_DBN|s_debounceCnt~14_combout\);

-- Location: FF_X95_Y46_N3
\SIN_DBN|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~14_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(2));

-- Location: LCCOMB_X95_Y46_N16
\SIN_DBN|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~6_combout\ = (\SIN_DBN|s_debounceCnt\(3) & (\SIN_DBN|Add0~5\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(3) & (!\SIN_DBN|Add0~5\))
-- \SIN_DBN|Add0~7\ = CARRY((!\SIN_DBN|s_debounceCnt\(3) & !\SIN_DBN|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(3),
	datad => VCC,
	cin => \SIN_DBN|Add0~5\,
	combout => \SIN_DBN|Add0~6_combout\,
	cout => \SIN_DBN|Add0~7\);

-- Location: LCCOMB_X95_Y46_N4
\SIN_DBN|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~15_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & \SIN_DBN|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datad => \SIN_DBN|Add0~6_combout\,
	combout => \SIN_DBN|s_debounceCnt~15_combout\);

-- Location: FF_X95_Y46_N5
\SIN_DBN|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~15_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(3));

-- Location: LCCOMB_X95_Y46_N18
\SIN_DBN|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~8_combout\ = (\SIN_DBN|s_debounceCnt\(4) & ((GND) # (!\SIN_DBN|Add0~7\))) # (!\SIN_DBN|s_debounceCnt\(4) & (\SIN_DBN|Add0~7\ $ (GND)))
-- \SIN_DBN|Add0~9\ = CARRY((\SIN_DBN|s_debounceCnt\(4)) # (!\SIN_DBN|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(4),
	datad => VCC,
	cin => \SIN_DBN|Add0~7\,
	combout => \SIN_DBN|Add0~8_combout\,
	cout => \SIN_DBN|Add0~9\);

-- Location: LCCOMB_X95_Y46_N20
\SIN_DBN|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~10_combout\ = (\SIN_DBN|s_debounceCnt\(5) & (\SIN_DBN|Add0~9\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(5) & (!\SIN_DBN|Add0~9\))
-- \SIN_DBN|Add0~11\ = CARRY((!\SIN_DBN|s_debounceCnt\(5) & !\SIN_DBN|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(5),
	datad => VCC,
	cin => \SIN_DBN|Add0~9\,
	combout => \SIN_DBN|Add0~10_combout\,
	cout => \SIN_DBN|Add0~11\);

-- Location: LCCOMB_X95_Y46_N22
\SIN_DBN|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~12_combout\ = (\SIN_DBN|s_debounceCnt\(6) & ((GND) # (!\SIN_DBN|Add0~11\))) # (!\SIN_DBN|s_debounceCnt\(6) & (\SIN_DBN|Add0~11\ $ (GND)))
-- \SIN_DBN|Add0~13\ = CARRY((\SIN_DBN|s_debounceCnt\(6)) # (!\SIN_DBN|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(6),
	datad => VCC,
	cin => \SIN_DBN|Add0~11\,
	combout => \SIN_DBN|Add0~12_combout\,
	cout => \SIN_DBN|Add0~13\);

-- Location: LCCOMB_X95_Y46_N8
\SIN_DBN|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~10_combout\ = (\SIN_DBN|Add0~12_combout\ & \SIN_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SIN_DBN|Add0~12_combout\,
	datad => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SIN_DBN|s_debounceCnt~10_combout\);

-- Location: FF_X95_Y46_N9
\SIN_DBN|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~10_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(6));

-- Location: LCCOMB_X95_Y46_N24
\SIN_DBN|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~14_combout\ = (\SIN_DBN|s_debounceCnt\(7) & (\SIN_DBN|Add0~13\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(7) & (!\SIN_DBN|Add0~13\))
-- \SIN_DBN|Add0~15\ = CARRY((!\SIN_DBN|s_debounceCnt\(7) & !\SIN_DBN|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(7),
	datad => VCC,
	cin => \SIN_DBN|Add0~13\,
	combout => \SIN_DBN|Add0~14_combout\,
	cout => \SIN_DBN|Add0~15\);

-- Location: LCCOMB_X95_Y43_N26
\SIN_DBN|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~17_combout\ = (\SIN_DBN|s_debounceCnt[10]~1_combout\ & ((\SIN_DBN|Add0~14_combout\) # (!\SIN_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|Add0~14_combout\,
	datab => \SIN_DBN|s_previousIn~q\,
	datac => \SIN_DBN|s_debounceCnt[10]~1_combout\,
	combout => \SIN_DBN|s_debounceCnt~17_combout\);

-- Location: FF_X95_Y43_N27
\SIN_DBN|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~17_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(7));

-- Location: LCCOMB_X95_Y46_N26
\SIN_DBN|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~16_combout\ = (\SIN_DBN|s_debounceCnt\(8) & ((GND) # (!\SIN_DBN|Add0~15\))) # (!\SIN_DBN|s_debounceCnt\(8) & (\SIN_DBN|Add0~15\ $ (GND)))
-- \SIN_DBN|Add0~17\ = CARRY((\SIN_DBN|s_debounceCnt\(8)) # (!\SIN_DBN|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(8),
	datad => VCC,
	cin => \SIN_DBN|Add0~15\,
	combout => \SIN_DBN|Add0~16_combout\,
	cout => \SIN_DBN|Add0~17\);

-- Location: LCCOMB_X94_Y45_N0
\SIN_DBN|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~8_combout\ = (\SIN_DBN|s_debounceCnt[10]~1_combout\ & ((\SIN_DBN|Add0~16_combout\) # (!\SIN_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_previousIn~q\,
	datac => \SIN_DBN|s_debounceCnt[10]~1_combout\,
	datad => \SIN_DBN|Add0~16_combout\,
	combout => \SIN_DBN|s_debounceCnt~8_combout\);

-- Location: FF_X94_Y45_N1
\SIN_DBN|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~8_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(8));

-- Location: LCCOMB_X95_Y46_N28
\SIN_DBN|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~18_combout\ = (\SIN_DBN|s_debounceCnt\(9) & (\SIN_DBN|Add0~17\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(9) & (!\SIN_DBN|Add0~17\))
-- \SIN_DBN|Add0~19\ = CARRY((!\SIN_DBN|s_debounceCnt\(9) & !\SIN_DBN|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(9),
	datad => VCC,
	cin => \SIN_DBN|Add0~17\,
	combout => \SIN_DBN|Add0~18_combout\,
	cout => \SIN_DBN|Add0~19\);

-- Location: LCCOMB_X95_Y46_N6
\SIN_DBN|s_debounceCnt~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~26_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & \SIN_DBN|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datad => \SIN_DBN|Add0~18_combout\,
	combout => \SIN_DBN|s_debounceCnt~26_combout\);

-- Location: FF_X95_Y46_N7
\SIN_DBN|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~26_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(9));

-- Location: LCCOMB_X95_Y46_N30
\SIN_DBN|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~20_combout\ = (\SIN_DBN|s_debounceCnt\(10) & ((GND) # (!\SIN_DBN|Add0~19\))) # (!\SIN_DBN|s_debounceCnt\(10) & (\SIN_DBN|Add0~19\ $ (GND)))
-- \SIN_DBN|Add0~21\ = CARRY((\SIN_DBN|s_debounceCnt\(10)) # (!\SIN_DBN|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(10),
	datad => VCC,
	cin => \SIN_DBN|Add0~19\,
	combout => \SIN_DBN|Add0~20_combout\,
	cout => \SIN_DBN|Add0~21\);

-- Location: LCCOMB_X94_Y45_N2
\SIN_DBN|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~9_combout\ = (\SIN_DBN|s_debounceCnt[10]~1_combout\ & ((\SIN_DBN|Add0~20_combout\) # (!\SIN_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_previousIn~q\,
	datab => \SIN_DBN|s_debounceCnt[10]~1_combout\,
	datad => \SIN_DBN|Add0~20_combout\,
	combout => \SIN_DBN|s_debounceCnt~9_combout\);

-- Location: FF_X94_Y45_N3
\SIN_DBN|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~9_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(10));

-- Location: LCCOMB_X95_Y45_N0
\SIN_DBN|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~22_combout\ = (\SIN_DBN|s_debounceCnt\(11) & (\SIN_DBN|Add0~21\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(11) & (!\SIN_DBN|Add0~21\))
-- \SIN_DBN|Add0~23\ = CARRY((!\SIN_DBN|s_debounceCnt\(11) & !\SIN_DBN|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(11),
	datad => VCC,
	cin => \SIN_DBN|Add0~21\,
	combout => \SIN_DBN|Add0~22_combout\,
	cout => \SIN_DBN|Add0~23\);

-- Location: LCCOMB_X95_Y45_N28
\SIN_DBN|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~24_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & \SIN_DBN|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datad => \SIN_DBN|Add0~22_combout\,
	combout => \SIN_DBN|s_debounceCnt~24_combout\);

-- Location: FF_X95_Y45_N29
\SIN_DBN|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~24_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(11));

-- Location: LCCOMB_X95_Y45_N2
\SIN_DBN|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~24_combout\ = (\SIN_DBN|s_debounceCnt\(12) & ((GND) # (!\SIN_DBN|Add0~23\))) # (!\SIN_DBN|s_debounceCnt\(12) & (\SIN_DBN|Add0~23\ $ (GND)))
-- \SIN_DBN|Add0~25\ = CARRY((\SIN_DBN|s_debounceCnt\(12)) # (!\SIN_DBN|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(12),
	datad => VCC,
	cin => \SIN_DBN|Add0~23\,
	combout => \SIN_DBN|Add0~24_combout\,
	cout => \SIN_DBN|Add0~25\);

-- Location: LCCOMB_X95_Y45_N22
\SIN_DBN|s_debounceCnt~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~25_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & \SIN_DBN|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datad => \SIN_DBN|Add0~24_combout\,
	combout => \SIN_DBN|s_debounceCnt~25_combout\);

-- Location: FF_X95_Y45_N23
\SIN_DBN|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~25_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(12));

-- Location: LCCOMB_X95_Y45_N4
\SIN_DBN|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~26_combout\ = (\SIN_DBN|s_debounceCnt\(13) & (\SIN_DBN|Add0~25\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(13) & (!\SIN_DBN|Add0~25\))
-- \SIN_DBN|Add0~27\ = CARRY((!\SIN_DBN|s_debounceCnt\(13) & !\SIN_DBN|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(13),
	datad => VCC,
	cin => \SIN_DBN|Add0~25\,
	combout => \SIN_DBN|Add0~26_combout\,
	cout => \SIN_DBN|Add0~27\);

-- Location: LCCOMB_X94_Y45_N12
\SIN_DBN|s_debounceCnt~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~18_combout\ = (\SIN_DBN|s_debounceCnt[10]~1_combout\ & ((\SIN_DBN|Add0~26_combout\) # (!\SIN_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|Add0~26_combout\,
	datac => \SIN_DBN|s_debounceCnt[10]~1_combout\,
	datad => \SIN_DBN|s_previousIn~q\,
	combout => \SIN_DBN|s_debounceCnt~18_combout\);

-- Location: FF_X94_Y45_N13
\SIN_DBN|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~18_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(13));

-- Location: LCCOMB_X95_Y45_N6
\SIN_DBN|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~28_combout\ = (\SIN_DBN|s_debounceCnt\(14) & ((GND) # (!\SIN_DBN|Add0~27\))) # (!\SIN_DBN|s_debounceCnt\(14) & (\SIN_DBN|Add0~27\ $ (GND)))
-- \SIN_DBN|Add0~29\ = CARRY((\SIN_DBN|s_debounceCnt\(14)) # (!\SIN_DBN|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(14),
	datad => VCC,
	cin => \SIN_DBN|Add0~27\,
	combout => \SIN_DBN|Add0~28_combout\,
	cout => \SIN_DBN|Add0~29\);

-- Location: LCCOMB_X94_Y45_N28
\SIN_DBN|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~22_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & \SIN_DBN|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datad => \SIN_DBN|Add0~28_combout\,
	combout => \SIN_DBN|s_debounceCnt~22_combout\);

-- Location: FF_X94_Y45_N29
\SIN_DBN|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~22_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(14));

-- Location: LCCOMB_X95_Y45_N8
\SIN_DBN|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~30_combout\ = (\SIN_DBN|s_debounceCnt\(15) & (\SIN_DBN|Add0~29\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(15) & (!\SIN_DBN|Add0~29\))
-- \SIN_DBN|Add0~31\ = CARRY((!\SIN_DBN|s_debounceCnt\(15) & !\SIN_DBN|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(15),
	datad => VCC,
	cin => \SIN_DBN|Add0~29\,
	combout => \SIN_DBN|Add0~30_combout\,
	cout => \SIN_DBN|Add0~31\);

-- Location: LCCOMB_X95_Y45_N26
\SIN_DBN|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~23_combout\ = (\SIN_DBN|Add0~30_combout\ & \SIN_DBN|s_debounceCnt[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SIN_DBN|Add0~30_combout\,
	datad => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SIN_DBN|s_debounceCnt~23_combout\);

-- Location: FF_X95_Y45_N27
\SIN_DBN|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~23_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(15));

-- Location: LCCOMB_X95_Y45_N10
\SIN_DBN|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~32_combout\ = (\SIN_DBN|s_debounceCnt\(16) & ((GND) # (!\SIN_DBN|Add0~31\))) # (!\SIN_DBN|s_debounceCnt\(16) & (\SIN_DBN|Add0~31\ $ (GND)))
-- \SIN_DBN|Add0~33\ = CARRY((\SIN_DBN|s_debounceCnt\(16)) # (!\SIN_DBN|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(16),
	datad => VCC,
	cin => \SIN_DBN|Add0~31\,
	combout => \SIN_DBN|Add0~32_combout\,
	cout => \SIN_DBN|Add0~33\);

-- Location: LCCOMB_X95_Y43_N22
\SIN_DBN|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~21_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & \SIN_DBN|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datad => \SIN_DBN|Add0~32_combout\,
	combout => \SIN_DBN|s_debounceCnt~21_combout\);

-- Location: FF_X95_Y43_N23
\SIN_DBN|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~21_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(16));

-- Location: LCCOMB_X95_Y45_N12
\SIN_DBN|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~34_combout\ = (\SIN_DBN|s_debounceCnt\(17) & (\SIN_DBN|Add0~33\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(17) & (!\SIN_DBN|Add0~33\))
-- \SIN_DBN|Add0~35\ = CARRY((!\SIN_DBN|s_debounceCnt\(17) & !\SIN_DBN|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(17),
	datad => VCC,
	cin => \SIN_DBN|Add0~33\,
	combout => \SIN_DBN|Add0~34_combout\,
	cout => \SIN_DBN|Add0~35\);

-- Location: LCCOMB_X94_Y45_N6
\SIN_DBN|s_debounceCnt[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[17]~19_combout\ = (\SIN_DBN|s_debounceCnt[10]~1_combout\ & (\SIN_DBN|s_debounceCnt[10]~5_combout\ & ((\SIN_DBN|Add0~34_combout\) # (!\SIN_DBN|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt[10]~1_combout\,
	datab => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	datac => \SIN_DBN|Add0~34_combout\,
	datad => \SIN_DBN|s_previousIn~q\,
	combout => \SIN_DBN|s_debounceCnt[17]~19_combout\);

-- Location: FF_X94_Y45_N7
\SIN_DBN|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt[17]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(17));

-- Location: LCCOMB_X95_Y45_N14
\SIN_DBN|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~36_combout\ = (\SIN_DBN|s_debounceCnt\(18) & ((GND) # (!\SIN_DBN|Add0~35\))) # (!\SIN_DBN|s_debounceCnt\(18) & (\SIN_DBN|Add0~35\ $ (GND)))
-- \SIN_DBN|Add0~37\ = CARRY((\SIN_DBN|s_debounceCnt\(18)) # (!\SIN_DBN|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(18),
	datad => VCC,
	cin => \SIN_DBN|Add0~35\,
	combout => \SIN_DBN|Add0~36_combout\,
	cout => \SIN_DBN|Add0~37\);

-- Location: LCCOMB_X95_Y43_N20
\SIN_DBN|s_debounceCnt[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[18]~20_combout\ = (\SIN_DBN|s_debounceCnt[10]~5_combout\ & (\SIN_DBN|s_debounceCnt[10]~1_combout\ & ((\SIN_DBN|Add0~36_combout\) # (!\SIN_DBN|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	datab => \SIN_DBN|s_previousIn~q\,
	datac => \SIN_DBN|s_debounceCnt[10]~1_combout\,
	datad => \SIN_DBN|Add0~36_combout\,
	combout => \SIN_DBN|s_debounceCnt[18]~20_combout\);

-- Location: FF_X95_Y43_N21
\SIN_DBN|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt[18]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(18));

-- Location: LCCOMB_X95_Y45_N16
\SIN_DBN|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~38_combout\ = (\SIN_DBN|s_debounceCnt\(19) & (\SIN_DBN|Add0~37\ & VCC)) # (!\SIN_DBN|s_debounceCnt\(19) & (!\SIN_DBN|Add0~37\))
-- \SIN_DBN|Add0~39\ = CARRY((!\SIN_DBN|s_debounceCnt\(19) & !\SIN_DBN|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(19),
	datad => VCC,
	cin => \SIN_DBN|Add0~37\,
	combout => \SIN_DBN|Add0~38_combout\,
	cout => \SIN_DBN|Add0~39\);

-- Location: LCCOMB_X95_Y45_N30
\SIN_DBN|s_debounceCnt[19]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[19]~6_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & (\SIN_DBN|s_debounceCnt[10]~5_combout\ & \SIN_DBN|Add0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datac => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	datad => \SIN_DBN|Add0~38_combout\,
	combout => \SIN_DBN|s_debounceCnt[19]~6_combout\);

-- Location: FF_X95_Y45_N31
\SIN_DBN|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt[19]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(19));

-- Location: LCCOMB_X95_Y45_N18
\SIN_DBN|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~40_combout\ = (\SIN_DBN|s_debounceCnt\(20) & ((GND) # (!\SIN_DBN|Add0~39\))) # (!\SIN_DBN|s_debounceCnt\(20) & (\SIN_DBN|Add0~39\ $ (GND)))
-- \SIN_DBN|Add0~41\ = CARRY((\SIN_DBN|s_debounceCnt\(20)) # (!\SIN_DBN|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(20),
	datad => VCC,
	cin => \SIN_DBN|Add0~39\,
	combout => \SIN_DBN|Add0~40_combout\,
	cout => \SIN_DBN|Add0~41\);

-- Location: LCCOMB_X95_Y45_N20
\SIN_DBN|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|Add0~42_combout\ = \SIN_DBN|s_debounceCnt\(21) $ (!\SIN_DBN|Add0~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt\(21),
	cin => \SIN_DBN|Add0~41\,
	combout => \SIN_DBN|Add0~42_combout\);

-- Location: LCCOMB_X95_Y43_N4
\SIN_DBN|s_debounceCnt[21]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[21]~4_combout\ = (\SIN_DBN|s_previousIn~q\ & (\SIN_DBN|s_debounceCnt[21]~3_combout\ & ((\SIN_DBN|Add0~42_combout\)))) # (!\SIN_DBN|s_previousIn~q\ & (((\SIN_DBN|s_debounceCnt[10]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt[21]~3_combout\,
	datab => \SIN_DBN|s_previousIn~q\,
	datac => \SIN_DBN|s_debounceCnt[10]~1_combout\,
	datad => \SIN_DBN|Add0~42_combout\,
	combout => \SIN_DBN|s_debounceCnt[21]~4_combout\);

-- Location: FF_X95_Y43_N5
\SIN_DBN|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt[21]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(21));

-- Location: LCCOMB_X94_Y45_N14
\SIN_DBN|s_debounceCnt[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[10]~1_combout\ = (\SIN_DBN|s_dirtyIn~q\ & ((!\SIN_DBN|LessThan0~6_combout\) # (!\SIN_DBN|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(21),
	datac => \SIN_DBN|LessThan0~6_combout\,
	datad => \SIN_DBN|s_dirtyIn~q\,
	combout => \SIN_DBN|s_debounceCnt[10]~1_combout\);

-- Location: LCCOMB_X95_Y43_N14
\SIN_DBN|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~11_combout\ = (\SIN_DBN|s_debounceCnt[10]~1_combout\ & ((\SIN_DBN|Add0~10_combout\) # (!\SIN_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_previousIn~q\,
	datac => \SIN_DBN|s_debounceCnt[10]~1_combout\,
	datad => \SIN_DBN|Add0~10_combout\,
	combout => \SIN_DBN|s_debounceCnt~11_combout\);

-- Location: FF_X95_Y43_N15
\SIN_DBN|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~11_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(5));

-- Location: LCCOMB_X94_Y45_N22
\SIN_DBN|s_levelOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_levelOut~1_combout\ = (!\SIN_DBN|s_debounceCnt\(5) & (!\SIN_DBN|s_debounceCnt\(14) & (!\SIN_DBN|s_debounceCnt\(16) & !\SIN_DBN|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(5),
	datab => \SIN_DBN|s_debounceCnt\(14),
	datac => \SIN_DBN|s_debounceCnt\(16),
	datad => \SIN_DBN|s_debounceCnt\(15),
	combout => \SIN_DBN|s_levelOut~1_combout\);

-- Location: LCCOMB_X94_Y45_N18
\SIN_DBN|s_levelOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_levelOut~4_combout\ = (!\SIN_DBN|s_debounceCnt\(13) & (!\SIN_DBN|s_debounceCnt\(10) & (!\SIN_DBN|s_debounceCnt\(17) & !\SIN_DBN|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(13),
	datab => \SIN_DBN|s_debounceCnt\(10),
	datac => \SIN_DBN|s_debounceCnt\(17),
	datad => \SIN_DBN|s_debounceCnt\(18),
	combout => \SIN_DBN|s_levelOut~4_combout\);

-- Location: LCCOMB_X94_Y45_N8
\SIN_DBN|s_levelOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_levelOut~2_combout\ = (!\SIN_DBN|s_debounceCnt\(20) & (!\SIN_DBN|s_debounceCnt\(12) & (!\SIN_DBN|s_debounceCnt\(11) & !\SIN_DBN|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(20),
	datab => \SIN_DBN|s_debounceCnt\(12),
	datac => \SIN_DBN|s_debounceCnt\(11),
	datad => \SIN_DBN|s_debounceCnt\(19),
	combout => \SIN_DBN|s_levelOut~2_combout\);

-- Location: LCCOMB_X95_Y46_N0
\SIN_DBN|s_levelOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_levelOut~3_combout\ = (!\SIN_DBN|s_debounceCnt\(7) & (!\SIN_DBN|s_debounceCnt\(6) & (!\SIN_DBN|s_debounceCnt\(8) & !\SIN_DBN|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(7),
	datab => \SIN_DBN|s_debounceCnt\(6),
	datac => \SIN_DBN|s_debounceCnt\(8),
	datad => \SIN_DBN|s_debounceCnt\(9),
	combout => \SIN_DBN|s_levelOut~3_combout\);

-- Location: LCCOMB_X94_Y45_N20
\SIN_DBN|s_levelOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_levelOut~5_combout\ = (\SIN_DBN|s_levelOut~1_combout\ & (\SIN_DBN|s_levelOut~4_combout\ & (\SIN_DBN|s_levelOut~2_combout\ & \SIN_DBN|s_levelOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_levelOut~1_combout\,
	datab => \SIN_DBN|s_levelOut~4_combout\,
	datac => \SIN_DBN|s_levelOut~2_combout\,
	datad => \SIN_DBN|s_levelOut~3_combout\,
	combout => \SIN_DBN|s_levelOut~5_combout\);

-- Location: LCCOMB_X95_Y43_N28
\SIN_DBN|s_debounceCnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[10]~2_combout\ = ((\SIN_DBN|s_debounceCnt\(0)) # (!\SIN_DBN|s_levelOut~5_combout\)) # (!\SIN_DBN|s_levelOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_levelOut~0_combout\,
	datac => \SIN_DBN|s_levelOut~5_combout\,
	datad => \SIN_DBN|s_debounceCnt\(0),
	combout => \SIN_DBN|s_debounceCnt[10]~2_combout\);

-- Location: LCCOMB_X95_Y43_N10
\SIN_DBN|s_debounceCnt[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[10]~5_combout\ = ((\SIN_DBN|s_debounceCnt[10]~2_combout\) # ((\SIN_DBN|s_debounceCnt\(21)) # (!\SIN_DBN|s_previousIn~q\))) # (!\SIN_DBN|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_dirtyIn~q\,
	datab => \SIN_DBN|s_debounceCnt[10]~2_combout\,
	datac => \SIN_DBN|s_previousIn~q\,
	datad => \SIN_DBN|s_debounceCnt\(21),
	combout => \SIN_DBN|s_debounceCnt[10]~5_combout\);

-- Location: LCCOMB_X95_Y45_N24
\SIN_DBN|s_debounceCnt[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[20]~7_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & (\SIN_DBN|s_debounceCnt[10]~5_combout\ & \SIN_DBN|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datac => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	datad => \SIN_DBN|Add0~40_combout\,
	combout => \SIN_DBN|s_debounceCnt[20]~7_combout\);

-- Location: FF_X95_Y45_N25
\SIN_DBN|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt[20]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(20));

-- Location: LCCOMB_X94_Y45_N30
\SIN_DBN|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|LessThan0~3_combout\ = (\SIN_DBN|s_debounceCnt\(11)) # ((\SIN_DBN|s_debounceCnt\(12)) # ((\SIN_DBN|s_debounceCnt\(9) & \SIN_DBN|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(11),
	datab => \SIN_DBN|s_debounceCnt\(12),
	datac => \SIN_DBN|s_debounceCnt\(9),
	datad => \SIN_DBN|s_debounceCnt\(10),
	combout => \SIN_DBN|LessThan0~3_combout\);

-- Location: LCCOMB_X94_Y45_N16
\SIN_DBN|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|LessThan0~4_combout\ = (\SIN_DBN|s_debounceCnt\(14)) # ((\SIN_DBN|s_debounceCnt\(15)) # ((\SIN_DBN|s_debounceCnt\(13) & \SIN_DBN|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(13),
	datab => \SIN_DBN|s_debounceCnt\(14),
	datac => \SIN_DBN|LessThan0~3_combout\,
	datad => \SIN_DBN|s_debounceCnt\(15),
	combout => \SIN_DBN|LessThan0~4_combout\);

-- Location: LCCOMB_X94_Y45_N26
\SIN_DBN|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|LessThan0~5_combout\ = (\SIN_DBN|s_debounceCnt\(17) & (\SIN_DBN|s_debounceCnt\(18) & ((\SIN_DBN|LessThan0~4_combout\) # (\SIN_DBN|s_debounceCnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(17),
	datab => \SIN_DBN|LessThan0~4_combout\,
	datac => \SIN_DBN|s_debounceCnt\(16),
	datad => \SIN_DBN|s_debounceCnt\(18),
	combout => \SIN_DBN|LessThan0~5_combout\);

-- Location: LCCOMB_X94_Y45_N24
\SIN_DBN|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|LessThan0~1_combout\ = (\SIN_DBN|s_debounceCnt\(13) & (\SIN_DBN|s_debounceCnt\(18) & (\SIN_DBN|s_debounceCnt\(17) & \SIN_DBN|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(13),
	datab => \SIN_DBN|s_debounceCnt\(18),
	datac => \SIN_DBN|s_debounceCnt\(17),
	datad => \SIN_DBN|s_debounceCnt\(7),
	combout => \SIN_DBN|LessThan0~1_combout\);

-- Location: LCCOMB_X95_Y43_N8
\SIN_DBN|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|LessThan0~0_combout\ = (\SIN_DBN|s_debounceCnt\(6)) # ((\SIN_DBN|s_debounceCnt\(5) & ((\SIN_DBN|s_debounceCnt\(0)) # (!\SIN_DBN|s_levelOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(6),
	datab => \SIN_DBN|s_debounceCnt\(5),
	datac => \SIN_DBN|s_levelOut~0_combout\,
	datad => \SIN_DBN|s_debounceCnt\(0),
	combout => \SIN_DBN|LessThan0~0_combout\);

-- Location: LCCOMB_X94_Y45_N10
\SIN_DBN|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|LessThan0~2_combout\ = (\SIN_DBN|s_debounceCnt\(8) & (\SIN_DBN|LessThan0~1_combout\ & (\SIN_DBN|LessThan0~0_combout\ & \SIN_DBN|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(8),
	datab => \SIN_DBN|LessThan0~1_combout\,
	datac => \SIN_DBN|LessThan0~0_combout\,
	datad => \SIN_DBN|s_debounceCnt\(10),
	combout => \SIN_DBN|LessThan0~2_combout\);

-- Location: LCCOMB_X94_Y45_N4
\SIN_DBN|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|LessThan0~6_combout\ = (\SIN_DBN|s_debounceCnt\(20)) # ((\SIN_DBN|LessThan0~5_combout\) # ((\SIN_DBN|s_debounceCnt\(19)) # (\SIN_DBN|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(20),
	datab => \SIN_DBN|LessThan0~5_combout\,
	datac => \SIN_DBN|s_debounceCnt\(19),
	datad => \SIN_DBN|LessThan0~2_combout\,
	combout => \SIN_DBN|LessThan0~6_combout\);

-- Location: LCCOMB_X95_Y43_N24
\SIN_DBN|s_debounceCnt[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt[10]~0_combout\ = (\SIN_DBN|s_previousIn~q\ & (\SIN_DBN|s_dirtyIn~q\ & ((!\SIN_DBN|s_debounceCnt\(21)) # (!\SIN_DBN|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|LessThan0~6_combout\,
	datab => \SIN_DBN|s_previousIn~q\,
	datac => \SIN_DBN|s_dirtyIn~q\,
	datad => \SIN_DBN|s_debounceCnt\(21),
	combout => \SIN_DBN|s_debounceCnt[10]~0_combout\);

-- Location: LCCOMB_X95_Y43_N12
\SIN_DBN|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_debounceCnt~16_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & \SIN_DBN|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	datac => \SIN_DBN|Add0~8_combout\,
	combout => \SIN_DBN|s_debounceCnt~16_combout\);

-- Location: FF_X95_Y43_N13
\SIN_DBN|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_debounceCnt~16_combout\,
	ena => \SIN_DBN|s_debounceCnt[10]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_debounceCnt\(4));

-- Location: LCCOMB_X95_Y43_N6
\SIN_DBN|s_levelOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_levelOut~0_combout\ = (!\SIN_DBN|s_debounceCnt\(4) & (!\SIN_DBN|s_debounceCnt\(3) & (!\SIN_DBN|s_debounceCnt\(2) & !\SIN_DBN|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_debounceCnt\(4),
	datab => \SIN_DBN|s_debounceCnt\(3),
	datac => \SIN_DBN|s_debounceCnt\(2),
	datad => \SIN_DBN|s_debounceCnt\(1),
	combout => \SIN_DBN|s_levelOut~0_combout\);

-- Location: LCCOMB_X95_Y43_N2
\SIN_DBN|s_levelOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_levelOut~6_combout\ = (\SIN_DBN|s_levelOut~0_combout\ & (\SIN_DBN|s_debounceCnt\(0) & (\SIN_DBN|s_levelOut~5_combout\ & !\SIN_DBN|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_levelOut~0_combout\,
	datab => \SIN_DBN|s_debounceCnt\(0),
	datac => \SIN_DBN|s_levelOut~5_combout\,
	datad => \SIN_DBN|s_debounceCnt\(21),
	combout => \SIN_DBN|s_levelOut~6_combout\);

-- Location: LCCOMB_X95_Y43_N16
\SIN_DBN|s_levelOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SIN_DBN|s_levelOut~7_combout\ = (\SIN_DBN|s_debounceCnt[10]~0_combout\ & ((\SIN_DBN|s_levelOut~6_combout\) # (\SIN_DBN|s_levelOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SIN_DBN|s_levelOut~6_combout\,
	datac => \SIN_DBN|s_levelOut~q\,
	datad => \SIN_DBN|s_debounceCnt[10]~0_combout\,
	combout => \SIN_DBN|s_levelOut~7_combout\);

-- Location: FF_X95_Y43_N17
\SIN_DBN|s_levelOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SIN_DBN|s_levelOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIN_DBN|s_levelOut~q\);

-- Location: LCCOMB_X98_Y38_N16
\OCUP1|inst1|FFSin|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst1|FFSin|Q~0_combout\ = (\SIN_DBN|s_levelOut~q\ & !\RST_DBN|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SIN_DBN|s_levelOut~q\,
	datad => \RST_DBN|s_pulsedOut~q\,
	combout => \OCUP1|inst1|FFSin|Q~0_combout\);

-- Location: FF_X98_Y38_N17
\OCUP1|inst1|FFSin|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst1|FFSin|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst1|FFSin|Q~q\);

-- Location: LCCOMB_X107_Y38_N26
\OCUP1|inst2|unidades|s_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|s_count[0]~3_combout\ = (\RST_DBN|s_pulsedOut~q\) # (\OCUP1|inst1|Sout_FALL~combout\ $ (((\SIN_DBN|s_levelOut~q\) # (!\OCUP1|inst1|FFSin|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_levelOut~q\,
	datab => \OCUP1|inst1|Sout_FALL~combout\,
	datac => \RST_DBN|s_pulsedOut~q\,
	datad => \OCUP1|inst1|FFSin|Q~q\,
	combout => \OCUP1|inst2|unidades|s_count[0]~3_combout\);

-- Location: FF_X107_Y38_N5
\OCUP1|inst2|unidades|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst2|unidades|s_count~5_combout\,
	ena => \OCUP1|inst2|unidades|s_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst2|unidades|s_count\(2));

-- Location: LCCOMB_X108_Y37_N16
\OCUP1|inst|s_cheio~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|s_cheio~0_combout\ = (\OCUP1|inst2|unidades|s_count\(0) & (!\OCUP1|inst2|unidades|s_count\(1) & !\OCUP1|inst2|unidades|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst2|unidades|s_count\(0),
	datac => \OCUP1|inst2|unidades|s_count\(1),
	datad => \OCUP1|inst2|unidades|s_count\(2),
	combout => \OCUP1|inst|s_cheio~0_combout\);

-- Location: LCCOMB_X108_Y38_N12
\OCUP1|inst2|unidades|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|Add0~6_combout\ = \OCUP1|inst2|unidades|s_count\(3) $ (\OCUP1|inst2|unidades|Add0~5\ $ (!\OCUP1|inst1|Sout_FALL~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst2|unidades|s_count\(3),
	datad => \OCUP1|inst1|Sout_FALL~combout\,
	cin => \OCUP1|inst2|unidades|Add0~5\,
	combout => \OCUP1|inst2|unidades|Add0~6_combout\);

-- Location: LCCOMB_X107_Y38_N16
\OCUP1|inst2|unidades|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|s_count~2_combout\ = (!\RST_DBN|s_pulsedOut~q\ & ((\OCUP1|inst2|unidades|s_count~7_combout\ & ((!\OCUP1|inst2|unidades|Add0~6_combout\))) # (!\OCUP1|inst2|unidades|s_count~7_combout\ & (!\OCUP1|inst1|Sout_FALL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst1|Sout_FALL~combout\,
	datab => \RST_DBN|s_pulsedOut~q\,
	datac => \OCUP1|inst2|unidades|Add0~6_combout\,
	datad => \OCUP1|inst2|unidades|s_count~7_combout\,
	combout => \OCUP1|inst2|unidades|s_count~2_combout\);

-- Location: FF_X107_Y38_N17
\OCUP1|inst2|unidades|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst2|unidades|s_count~2_combout\,
	ena => \OCUP1|inst2|unidades|s_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst2|unidades|s_count\(3));

-- Location: LCCOMB_X108_Y38_N24
\OCUP1|inst2|unidades|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|s_count~7_combout\ = (\OCUP1|inst|s_cheio~0_combout\ & (((!\SOUT_DBN|s_levelOut~q\ & \OCUP1|inst1|FFSout|Q~q\)) # (!\OCUP1|inst2|unidades|s_count\(3)))) # (!\OCUP1|inst|s_cheio~0_combout\ & ((\SOUT_DBN|s_levelOut~q\) # 
-- ((\OCUP1|inst2|unidades|s_count\(3)) # (!\OCUP1|inst1|FFSout|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_levelOut~q\,
	datab => \OCUP1|inst|s_cheio~0_combout\,
	datac => \OCUP1|inst2|unidades|s_count\(3),
	datad => \OCUP1|inst1|FFSout|Q~q\,
	combout => \OCUP1|inst2|unidades|s_count~7_combout\);

-- Location: LCCOMB_X107_Y38_N10
\OCUP1|inst2|unidades|s_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|s_count~4_combout\ = (!\RST_DBN|s_pulsedOut~q\ & ((\OCUP1|inst2|unidades|s_count~7_combout\ & ((!\OCUP1|inst2|unidades|s_count\(0)))) # (!\OCUP1|inst2|unidades|s_count~7_combout\ & (!\OCUP1|inst1|Sout_FALL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_pulsedOut~q\,
	datab => \OCUP1|inst1|Sout_FALL~combout\,
	datac => \OCUP1|inst2|unidades|s_count\(0),
	datad => \OCUP1|inst2|unidades|s_count~7_combout\,
	combout => \OCUP1|inst2|unidades|s_count~4_combout\);

-- Location: FF_X107_Y38_N11
\OCUP1|inst2|unidades|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst2|unidades|s_count~4_combout\,
	ena => \OCUP1|inst2|unidades|s_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst2|unidades|s_count\(0));

-- Location: LCCOMB_X108_Y38_N6
\OCUP1|inst2|unidades|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|Add0~1_cout\ = CARRY(!\OCUP1|inst2|unidades|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|unidades|s_count\(0),
	datad => VCC,
	cout => \OCUP1|inst2|unidades|Add0~1_cout\);

-- Location: LCCOMB_X107_Y38_N30
\OCUP1|inst2|unidades|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|s_count~6_combout\ = (!\RST_DBN|s_pulsedOut~q\ & (\OCUP1|inst2|unidades|Add0~2_combout\ & \OCUP1|inst2|unidades|s_count~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_pulsedOut~q\,
	datac => \OCUP1|inst2|unidades|Add0~2_combout\,
	datad => \OCUP1|inst2|unidades|s_count~7_combout\,
	combout => \OCUP1|inst2|unidades|s_count~6_combout\);

-- Location: FF_X107_Y38_N31
\OCUP1|inst2|unidades|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst2|unidades|s_count~6_combout\,
	ena => \OCUP1|inst2|unidades|s_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst2|unidades|s_count\(1));

-- Location: LCCOMB_X108_Y37_N26
\OCUP1|inst|unidades|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[6]~0_combout\ = (\OCUP1|inst2|unidades|s_count\(0) & ((\OCUP1|inst2|unidades|s_count\(1)) # (\OCUP1|inst2|unidades|s_count\(3) $ (!\OCUP1|inst2|unidades|s_count\(2))))) # (!\OCUP1|inst2|unidades|s_count\(0) & 
-- ((\OCUP1|inst2|unidades|s_count\(1) $ (\OCUP1|inst2|unidades|s_count\(2))) # (!\OCUP1|inst2|unidades|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|unidades|s_count\(1),
	datab => \OCUP1|inst2|unidades|s_count\(0),
	datac => \OCUP1|inst2|unidades|s_count\(3),
	datad => \OCUP1|inst2|unidades|s_count\(2),
	combout => \OCUP1|inst|unidades|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X107_Y38_N20
\OCUP1|inst2|dezenas|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|Add0~2_combout\ = (\OCUP1|inst2|dezenas|s_count\(1) & ((\OCUP1|inst1|Sout_FALL~combout\ & (\OCUP1|inst2|dezenas|Add0~1_cout\ & VCC)) # (!\OCUP1|inst1|Sout_FALL~combout\ & (!\OCUP1|inst2|dezenas|Add0~1_cout\)))) # 
-- (!\OCUP1|inst2|dezenas|s_count\(1) & ((\OCUP1|inst1|Sout_FALL~combout\ & (!\OCUP1|inst2|dezenas|Add0~1_cout\)) # (!\OCUP1|inst1|Sout_FALL~combout\ & ((\OCUP1|inst2|dezenas|Add0~1_cout\) # (GND)))))
-- \OCUP1|inst2|dezenas|Add0~3\ = CARRY((\OCUP1|inst2|dezenas|s_count\(1) & (!\OCUP1|inst1|Sout_FALL~combout\ & !\OCUP1|inst2|dezenas|Add0~1_cout\)) # (!\OCUP1|inst2|dezenas|s_count\(1) & ((!\OCUP1|inst2|dezenas|Add0~1_cout\) # 
-- (!\OCUP1|inst1|Sout_FALL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datab => \OCUP1|inst1|Sout_FALL~combout\,
	datad => VCC,
	cin => \OCUP1|inst2|dezenas|Add0~1_cout\,
	combout => \OCUP1|inst2|dezenas|Add0~2_combout\,
	cout => \OCUP1|inst2|dezenas|Add0~3\);

-- Location: LCCOMB_X107_Y38_N22
\OCUP1|inst2|dezenas|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|Add0~4_combout\ = ((\OCUP1|inst2|dezenas|s_count\(2) $ (\OCUP1|inst1|Sout_FALL~combout\ $ (!\OCUP1|inst2|dezenas|Add0~3\)))) # (GND)
-- \OCUP1|inst2|dezenas|Add0~5\ = CARRY((\OCUP1|inst2|dezenas|s_count\(2) & ((\OCUP1|inst1|Sout_FALL~combout\) # (!\OCUP1|inst2|dezenas|Add0~3\))) # (!\OCUP1|inst2|dezenas|s_count\(2) & (\OCUP1|inst1|Sout_FALL~combout\ & !\OCUP1|inst2|dezenas|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(2),
	datab => \OCUP1|inst1|Sout_FALL~combout\,
	datad => VCC,
	cin => \OCUP1|inst2|dezenas|Add0~3\,
	combout => \OCUP1|inst2|dezenas|Add0~4_combout\,
	cout => \OCUP1|inst2|dezenas|Add0~5\);

-- Location: LCCOMB_X107_Y38_N14
\OCUP1|inst2|dezenas|s_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|s_count~7_combout\ = (!\RST_DBN|s_pulsedOut~q\ & (\OCUP1|inst2|dezenas|Add0~4_combout\ & \OCUP1|inst2|dezenas|s_count~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST_DBN|s_pulsedOut~q\,
	datac => \OCUP1|inst2|dezenas|Add0~4_combout\,
	datad => \OCUP1|inst2|dezenas|s_count~8_combout\,
	combout => \OCUP1|inst2|dezenas|s_count~7_combout\);

-- Location: LCCOMB_X107_Y38_N12
\OCUP1|inst1|EVENT\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst1|EVENT~combout\ = (\SIN_DBN|s_levelOut~q\ & (((\SOUT_DBN|s_levelOut~q\)) # (!\OCUP1|inst1|FFSout|Q~q\))) # (!\SIN_DBN|s_levelOut~q\ & (\OCUP1|inst1|FFSin|Q~q\ $ (((\SOUT_DBN|s_levelOut~q\) # (!\OCUP1|inst1|FFSout|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SIN_DBN|s_levelOut~q\,
	datab => \OCUP1|inst1|FFSout|Q~q\,
	datac => \SOUT_DBN|s_levelOut~q\,
	datad => \OCUP1|inst1|FFSin|Q~q\,
	combout => \OCUP1|inst1|EVENT~combout\);

-- Location: LCCOMB_X108_Y38_N26
\OCUP1|inst2|unidades|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|unidades|Equal1~0_combout\ = (!\OCUP1|inst2|unidades|s_count\(0) & (!\OCUP1|inst2|unidades|s_count\(1) & (!\OCUP1|inst2|unidades|s_count\(2) & !\OCUP1|inst2|unidades|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|unidades|s_count\(0),
	datab => \OCUP1|inst2|unidades|s_count\(1),
	datac => \OCUP1|inst2|unidades|s_count\(2),
	datad => \OCUP1|inst2|unidades|s_count\(3),
	combout => \OCUP1|inst2|unidades|Equal1~0_combout\);

-- Location: LCCOMB_X108_Y38_N20
\OCUP1|inst2|dezenas|s_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|s_count[0]~3_combout\ = (\OCUP1|inst1|Sout_FALL~combout\ & (((!\OCUP1|inst2|unidades|s_count\(3))) # (!\OCUP1|inst|s_cheio~0_combout\))) # (!\OCUP1|inst1|Sout_FALL~combout\ & (((!\OCUP1|inst2|unidades|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst1|Sout_FALL~combout\,
	datab => \OCUP1|inst|s_cheio~0_combout\,
	datac => \OCUP1|inst2|unidades|Equal1~0_combout\,
	datad => \OCUP1|inst2|unidades|s_count\(3),
	combout => \OCUP1|inst2|dezenas|s_count[0]~3_combout\);

-- Location: LCCOMB_X108_Y38_N22
\OCUP1|inst2|dezenas|s_count[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|s_count[0]~4_combout\ = (\RST_DBN|s_pulsedOut~q\) # ((!\OCUP1|inst1|EVENT~combout\ & !\OCUP1|inst2|dezenas|s_count[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst1|EVENT~combout\,
	datac => \RST_DBN|s_pulsedOut~q\,
	datad => \OCUP1|inst2|dezenas|s_count[0]~3_combout\,
	combout => \OCUP1|inst2|dezenas|s_count[0]~4_combout\);

-- Location: FF_X107_Y38_N15
\OCUP1|inst2|dezenas|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst2|dezenas|s_count~7_combout\,
	ena => \OCUP1|inst2|dezenas|s_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst2|dezenas|s_count\(2));

-- Location: LCCOMB_X107_Y38_N24
\OCUP1|inst2|dezenas|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|Add0~6_combout\ = \OCUP1|inst1|Sout_FALL~combout\ $ (\OCUP1|inst2|dezenas|Add0~5\ $ (!\OCUP1|inst2|dezenas|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst1|Sout_FALL~combout\,
	datad => \OCUP1|inst2|dezenas|s_count\(3),
	cin => \OCUP1|inst2|dezenas|Add0~5\,
	combout => \OCUP1|inst2|dezenas|Add0~6_combout\);

-- Location: LCCOMB_X107_Y38_N0
\OCUP1|inst2|dezenas|s_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|s_count~2_combout\ = (!\RST_DBN|s_pulsedOut~q\ & ((\OCUP1|inst2|dezenas|s_count~8_combout\ & (!\OCUP1|inst2|dezenas|Add0~6_combout\)) # (!\OCUP1|inst2|dezenas|s_count~8_combout\ & ((!\OCUP1|inst1|Sout_FALL~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_pulsedOut~q\,
	datab => \OCUP1|inst2|dezenas|Add0~6_combout\,
	datac => \OCUP1|inst1|Sout_FALL~combout\,
	datad => \OCUP1|inst2|dezenas|s_count~8_combout\,
	combout => \OCUP1|inst2|dezenas|s_count~2_combout\);

-- Location: FF_X107_Y38_N1
\OCUP1|inst2|dezenas|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst2|dezenas|s_count~2_combout\,
	ena => \OCUP1|inst2|dezenas|s_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst2|dezenas|s_count\(3));

-- Location: LCCOMB_X108_Y38_N18
\OCUP1|inst2|dezenas|s_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|s_count~8_combout\ = (\OCUP1|inst|s_cheio~1_combout\ & (((!\SOUT_DBN|s_levelOut~q\ & \OCUP1|inst1|FFSout|Q~q\)) # (!\OCUP1|inst2|dezenas|s_count\(3)))) # (!\OCUP1|inst|s_cheio~1_combout\ & ((\SOUT_DBN|s_levelOut~q\) # 
-- ((\OCUP1|inst2|dezenas|s_count\(3)) # (!\OCUP1|inst1|FFSout|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SOUT_DBN|s_levelOut~q\,
	datab => \OCUP1|inst|s_cheio~1_combout\,
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst1|FFSout|Q~q\,
	combout => \OCUP1|inst2|dezenas|s_count~8_combout\);

-- Location: LCCOMB_X107_Y38_N2
\OCUP1|inst2|dezenas|s_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|s_count~5_combout\ = (!\RST_DBN|s_pulsedOut~q\ & ((\OCUP1|inst2|dezenas|s_count~8_combout\ & ((!\OCUP1|inst2|dezenas|s_count\(0)))) # (!\OCUP1|inst2|dezenas|s_count~8_combout\ & (!\OCUP1|inst1|Sout_FALL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST_DBN|s_pulsedOut~q\,
	datab => \OCUP1|inst1|Sout_FALL~combout\,
	datac => \OCUP1|inst2|dezenas|s_count\(0),
	datad => \OCUP1|inst2|dezenas|s_count~8_combout\,
	combout => \OCUP1|inst2|dezenas|s_count~5_combout\);

-- Location: FF_X107_Y38_N3
\OCUP1|inst2|dezenas|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst2|dezenas|s_count~5_combout\,
	ena => \OCUP1|inst2|dezenas|s_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst2|dezenas|s_count\(0));

-- Location: LCCOMB_X107_Y38_N18
\OCUP1|inst2|dezenas|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|Add0~1_cout\ = CARRY(!\OCUP1|inst2|dezenas|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst2|dezenas|s_count\(0),
	datad => VCC,
	cout => \OCUP1|inst2|dezenas|Add0~1_cout\);

-- Location: LCCOMB_X107_Y38_N28
\OCUP1|inst2|dezenas|s_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst2|dezenas|s_count~6_combout\ = (\OCUP1|inst2|dezenas|Add0~2_combout\ & (!\RST_DBN|s_pulsedOut~q\ & \OCUP1|inst2|dezenas|s_count~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst2|dezenas|Add0~2_combout\,
	datac => \RST_DBN|s_pulsedOut~q\,
	datad => \OCUP1|inst2|dezenas|s_count~8_combout\,
	combout => \OCUP1|inst2|dezenas|s_count~6_combout\);

-- Location: FF_X107_Y38_N29
\OCUP1|inst2|dezenas|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \OCUP1|inst2|dezenas|s_count~6_combout\,
	ena => \OCUP1|inst2|dezenas|s_count[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OCUP1|inst2|dezenas|s_count\(1));

-- Location: LCCOMB_X106_Y34_N24
\OCUP1|inst|s_cheio~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|s_cheio~1_combout\ = (!\OCUP1|inst2|dezenas|s_count\(1) & (!\OCUP1|inst2|dezenas|s_count\(2) & \OCUP1|inst2|dezenas|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datac => \OCUP1|inst2|dezenas|s_count\(2),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|s_cheio~1_combout\);

-- Location: LCCOMB_X106_Y34_N2
\OCUP1|inst|s_cheio~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|s_cheio~2_combout\ = (\OCUP1|inst|s_cheio~0_combout\ & (\OCUP1|inst|s_cheio~1_combout\ & (\OCUP1|inst2|dezenas|s_count\(3) & \OCUP1|inst2|unidades|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst|s_cheio~0_combout\,
	datab => \OCUP1|inst|s_cheio~1_combout\,
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst2|unidades|s_count\(3),
	combout => \OCUP1|inst|s_cheio~2_combout\);

-- Location: LCCOMB_X108_Y37_N4
\OCUP1|inst|unidades|decOut_n[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[6]~1_combout\ = (\OCUP1|inst|s_cheio~2_combout\) # (!\OCUP1|inst|unidades|decOut_n[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst|unidades|decOut_n[6]~0_combout\,
	datac => \OCUP1|inst|s_cheio~2_combout\,
	combout => \OCUP1|inst|unidades|decOut_n[6]~1_combout\);

-- Location: LCCOMB_X101_Y38_N2
\DIV_FREQ|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~0_combout\ = \DIV_FREQ|s_counter\(0) $ (VCC)
-- \DIV_FREQ|Add0~1\ = CARRY(\DIV_FREQ|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(0),
	datad => VCC,
	combout => \DIV_FREQ|Add0~0_combout\,
	cout => \DIV_FREQ|Add0~1\);

-- Location: FF_X101_Y38_N3
\DIV_FREQ|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(0));

-- Location: LCCOMB_X101_Y38_N4
\DIV_FREQ|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~2_combout\ = (\DIV_FREQ|s_counter\(1) & (!\DIV_FREQ|Add0~1\)) # (!\DIV_FREQ|s_counter\(1) & ((\DIV_FREQ|Add0~1\) # (GND)))
-- \DIV_FREQ|Add0~3\ = CARRY((!\DIV_FREQ|Add0~1\) # (!\DIV_FREQ|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(1),
	datad => VCC,
	cin => \DIV_FREQ|Add0~1\,
	combout => \DIV_FREQ|Add0~2_combout\,
	cout => \DIV_FREQ|Add0~3\);

-- Location: FF_X101_Y38_N5
\DIV_FREQ|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(1));

-- Location: LCCOMB_X101_Y38_N6
\DIV_FREQ|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~4_combout\ = (\DIV_FREQ|s_counter\(2) & (\DIV_FREQ|Add0~3\ $ (GND))) # (!\DIV_FREQ|s_counter\(2) & (!\DIV_FREQ|Add0~3\ & VCC))
-- \DIV_FREQ|Add0~5\ = CARRY((\DIV_FREQ|s_counter\(2) & !\DIV_FREQ|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(2),
	datad => VCC,
	cin => \DIV_FREQ|Add0~3\,
	combout => \DIV_FREQ|Add0~4_combout\,
	cout => \DIV_FREQ|Add0~5\);

-- Location: FF_X101_Y38_N7
\DIV_FREQ|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(2));

-- Location: LCCOMB_X101_Y38_N8
\DIV_FREQ|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~6_combout\ = (\DIV_FREQ|s_counter\(3) & (!\DIV_FREQ|Add0~5\)) # (!\DIV_FREQ|s_counter\(3) & ((\DIV_FREQ|Add0~5\) # (GND)))
-- \DIV_FREQ|Add0~7\ = CARRY((!\DIV_FREQ|Add0~5\) # (!\DIV_FREQ|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(3),
	datad => VCC,
	cin => \DIV_FREQ|Add0~5\,
	combout => \DIV_FREQ|Add0~6_combout\,
	cout => \DIV_FREQ|Add0~7\);

-- Location: FF_X101_Y38_N9
\DIV_FREQ|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(3));

-- Location: LCCOMB_X101_Y38_N10
\DIV_FREQ|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~8_combout\ = (\DIV_FREQ|s_counter\(4) & (\DIV_FREQ|Add0~7\ $ (GND))) # (!\DIV_FREQ|s_counter\(4) & (!\DIV_FREQ|Add0~7\ & VCC))
-- \DIV_FREQ|Add0~9\ = CARRY((\DIV_FREQ|s_counter\(4) & !\DIV_FREQ|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(4),
	datad => VCC,
	cin => \DIV_FREQ|Add0~7\,
	combout => \DIV_FREQ|Add0~8_combout\,
	cout => \DIV_FREQ|Add0~9\);

-- Location: FF_X101_Y38_N11
\DIV_FREQ|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(4));

-- Location: LCCOMB_X101_Y38_N12
\DIV_FREQ|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~10_combout\ = (\DIV_FREQ|s_counter\(5) & (!\DIV_FREQ|Add0~9\)) # (!\DIV_FREQ|s_counter\(5) & ((\DIV_FREQ|Add0~9\) # (GND)))
-- \DIV_FREQ|Add0~11\ = CARRY((!\DIV_FREQ|Add0~9\) # (!\DIV_FREQ|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(5),
	datad => VCC,
	cin => \DIV_FREQ|Add0~9\,
	combout => \DIV_FREQ|Add0~10_combout\,
	cout => \DIV_FREQ|Add0~11\);

-- Location: FF_X101_Y38_N13
\DIV_FREQ|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(5));

-- Location: LCCOMB_X101_Y37_N0
\DIV_FREQ|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~30_combout\ = (\DIV_FREQ|s_counter\(15) & (!\DIV_FREQ|Add0~29\)) # (!\DIV_FREQ|s_counter\(15) & ((\DIV_FREQ|Add0~29\) # (GND)))
-- \DIV_FREQ|Add0~31\ = CARRY((!\DIV_FREQ|Add0~29\) # (!\DIV_FREQ|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(15),
	datad => VCC,
	cin => \DIV_FREQ|Add0~29\,
	combout => \DIV_FREQ|Add0~30_combout\,
	cout => \DIV_FREQ|Add0~31\);

-- Location: LCCOMB_X101_Y37_N2
\DIV_FREQ|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~32_combout\ = (\DIV_FREQ|s_counter\(16) & (\DIV_FREQ|Add0~31\ $ (GND))) # (!\DIV_FREQ|s_counter\(16) & (!\DIV_FREQ|Add0~31\ & VCC))
-- \DIV_FREQ|Add0~33\ = CARRY((\DIV_FREQ|s_counter\(16) & !\DIV_FREQ|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(16),
	datad => VCC,
	cin => \DIV_FREQ|Add0~31\,
	combout => \DIV_FREQ|Add0~32_combout\,
	cout => \DIV_FREQ|Add0~33\);

-- Location: LCCOMB_X101_Y40_N0
\DIV_FREQ|s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~10_combout\ = (\DIV_FREQ|Add0~32_combout\ & !\DIV_FREQ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV_FREQ|Add0~32_combout\,
	datad => \DIV_FREQ|Equal0~9_combout\,
	combout => \DIV_FREQ|s_counter~10_combout\);

-- Location: FF_X101_Y40_N1
\DIV_FREQ|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(16));

-- Location: LCCOMB_X101_Y37_N4
\DIV_FREQ|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~34_combout\ = (\DIV_FREQ|s_counter\(17) & (!\DIV_FREQ|Add0~33\)) # (!\DIV_FREQ|s_counter\(17) & ((\DIV_FREQ|Add0~33\) # (GND)))
-- \DIV_FREQ|Add0~35\ = CARRY((!\DIV_FREQ|Add0~33\) # (!\DIV_FREQ|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(17),
	datad => VCC,
	cin => \DIV_FREQ|Add0~33\,
	combout => \DIV_FREQ|Add0~34_combout\,
	cout => \DIV_FREQ|Add0~35\);

-- Location: FF_X101_Y37_N5
\DIV_FREQ|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(17));

-- Location: LCCOMB_X101_Y37_N6
\DIV_FREQ|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~36_combout\ = (\DIV_FREQ|s_counter\(18) & (\DIV_FREQ|Add0~35\ $ (GND))) # (!\DIV_FREQ|s_counter\(18) & (!\DIV_FREQ|Add0~35\ & VCC))
-- \DIV_FREQ|Add0~37\ = CARRY((\DIV_FREQ|s_counter\(18) & !\DIV_FREQ|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(18),
	datad => VCC,
	cin => \DIV_FREQ|Add0~35\,
	combout => \DIV_FREQ|Add0~36_combout\,
	cout => \DIV_FREQ|Add0~37\);

-- Location: LCCOMB_X101_Y39_N26
\DIV_FREQ|s_counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~3_combout\ = (!\DIV_FREQ|Equal0~9_combout\ & \DIV_FREQ|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|Equal0~9_combout\,
	datac => \DIV_FREQ|Add0~36_combout\,
	combout => \DIV_FREQ|s_counter~3_combout\);

-- Location: FF_X101_Y39_N27
\DIV_FREQ|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(18));

-- Location: LCCOMB_X101_Y37_N8
\DIV_FREQ|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~38_combout\ = (\DIV_FREQ|s_counter\(19) & (!\DIV_FREQ|Add0~37\)) # (!\DIV_FREQ|s_counter\(19) & ((\DIV_FREQ|Add0~37\) # (GND)))
-- \DIV_FREQ|Add0~39\ = CARRY((!\DIV_FREQ|Add0~37\) # (!\DIV_FREQ|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(19),
	datad => VCC,
	cin => \DIV_FREQ|Add0~37\,
	combout => \DIV_FREQ|Add0~38_combout\,
	cout => \DIV_FREQ|Add0~39\);

-- Location: LCCOMB_X101_Y39_N16
\DIV_FREQ|s_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~2_combout\ = (\DIV_FREQ|Add0~38_combout\ & !\DIV_FREQ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|Add0~38_combout\,
	datac => \DIV_FREQ|Equal0~9_combout\,
	combout => \DIV_FREQ|s_counter~2_combout\);

-- Location: FF_X101_Y39_N17
\DIV_FREQ|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(19));

-- Location: LCCOMB_X101_Y37_N10
\DIV_FREQ|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~40_combout\ = (\DIV_FREQ|s_counter\(20) & (\DIV_FREQ|Add0~39\ $ (GND))) # (!\DIV_FREQ|s_counter\(20) & (!\DIV_FREQ|Add0~39\ & VCC))
-- \DIV_FREQ|Add0~41\ = CARRY((\DIV_FREQ|s_counter\(20) & !\DIV_FREQ|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(20),
	datad => VCC,
	cin => \DIV_FREQ|Add0~39\,
	combout => \DIV_FREQ|Add0~40_combout\,
	cout => \DIV_FREQ|Add0~41\);

-- Location: LCCOMB_X101_Y39_N12
\DIV_FREQ|s_counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~1_combout\ = (\DIV_FREQ|Add0~40_combout\ & !\DIV_FREQ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|Add0~40_combout\,
	datac => \DIV_FREQ|Equal0~9_combout\,
	combout => \DIV_FREQ|s_counter~1_combout\);

-- Location: FF_X101_Y39_N13
\DIV_FREQ|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(20));

-- Location: LCCOMB_X101_Y37_N12
\DIV_FREQ|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~42_combout\ = (\DIV_FREQ|s_counter\(21) & (!\DIV_FREQ|Add0~41\)) # (!\DIV_FREQ|s_counter\(21) & ((\DIV_FREQ|Add0~41\) # (GND)))
-- \DIV_FREQ|Add0~43\ = CARRY((!\DIV_FREQ|Add0~41\) # (!\DIV_FREQ|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(21),
	datad => VCC,
	cin => \DIV_FREQ|Add0~41\,
	combout => \DIV_FREQ|Add0~42_combout\,
	cout => \DIV_FREQ|Add0~43\);

-- Location: LCCOMB_X101_Y39_N2
\DIV_FREQ|s_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~0_combout\ = (!\DIV_FREQ|Equal0~9_combout\ & \DIV_FREQ|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|Equal0~9_combout\,
	datac => \DIV_FREQ|Add0~42_combout\,
	combout => \DIV_FREQ|s_counter~0_combout\);

-- Location: FF_X101_Y39_N3
\DIV_FREQ|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(21));

-- Location: LCCOMB_X101_Y37_N14
\DIV_FREQ|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~44_combout\ = (\DIV_FREQ|s_counter\(22) & (\DIV_FREQ|Add0~43\ $ (GND))) # (!\DIV_FREQ|s_counter\(22) & (!\DIV_FREQ|Add0~43\ & VCC))
-- \DIV_FREQ|Add0~45\ = CARRY((\DIV_FREQ|s_counter\(22) & !\DIV_FREQ|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(22),
	datad => VCC,
	cin => \DIV_FREQ|Add0~43\,
	combout => \DIV_FREQ|Add0~44_combout\,
	cout => \DIV_FREQ|Add0~45\);

-- Location: LCCOMB_X101_Y40_N12
\DIV_FREQ|s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~9_combout\ = (\DIV_FREQ|Add0~44_combout\ & !\DIV_FREQ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV_FREQ|Add0~44_combout\,
	datad => \DIV_FREQ|Equal0~9_combout\,
	combout => \DIV_FREQ|s_counter~9_combout\);

-- Location: FF_X101_Y40_N13
\DIV_FREQ|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(22));

-- Location: LCCOMB_X101_Y37_N16
\DIV_FREQ|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~46_combout\ = (\DIV_FREQ|s_counter\(23) & (!\DIV_FREQ|Add0~45\)) # (!\DIV_FREQ|s_counter\(23) & ((\DIV_FREQ|Add0~45\) # (GND)))
-- \DIV_FREQ|Add0~47\ = CARRY((!\DIV_FREQ|Add0~45\) # (!\DIV_FREQ|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(23),
	datad => VCC,
	cin => \DIV_FREQ|Add0~45\,
	combout => \DIV_FREQ|Add0~46_combout\,
	cout => \DIV_FREQ|Add0~47\);

-- Location: FF_X101_Y37_N17
\DIV_FREQ|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(23));

-- Location: LCCOMB_X101_Y37_N18
\DIV_FREQ|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~48_combout\ = (\DIV_FREQ|s_counter\(24) & (\DIV_FREQ|Add0~47\ $ (GND))) # (!\DIV_FREQ|s_counter\(24) & (!\DIV_FREQ|Add0~47\ & VCC))
-- \DIV_FREQ|Add0~49\ = CARRY((\DIV_FREQ|s_counter\(24) & !\DIV_FREQ|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(24),
	datad => VCC,
	cin => \DIV_FREQ|Add0~47\,
	combout => \DIV_FREQ|Add0~48_combout\,
	cout => \DIV_FREQ|Add0~49\);

-- Location: LCCOMB_X101_Y40_N26
\DIV_FREQ|s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~8_combout\ = (\DIV_FREQ|Add0~48_combout\ & !\DIV_FREQ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV_FREQ|Add0~48_combout\,
	datad => \DIV_FREQ|Equal0~9_combout\,
	combout => \DIV_FREQ|s_counter~8_combout\);

-- Location: FF_X101_Y40_N27
\DIV_FREQ|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(24));

-- Location: LCCOMB_X101_Y40_N24
\DIV_FREQ|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~7_combout\ = (!\DIV_FREQ|s_counter\(17) & (!\DIV_FREQ|s_counter\(23) & (\DIV_FREQ|s_counter\(24) & \DIV_FREQ|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(17),
	datab => \DIV_FREQ|s_counter\(23),
	datac => \DIV_FREQ|s_counter\(24),
	datad => \DIV_FREQ|s_counter\(22),
	combout => \DIV_FREQ|Equal0~7_combout\);

-- Location: LCCOMB_X101_Y38_N14
\DIV_FREQ|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~12_combout\ = (\DIV_FREQ|s_counter\(6) & (\DIV_FREQ|Add0~11\ $ (GND))) # (!\DIV_FREQ|s_counter\(6) & (!\DIV_FREQ|Add0~11\ & VCC))
-- \DIV_FREQ|Add0~13\ = CARRY((\DIV_FREQ|s_counter\(6) & !\DIV_FREQ|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(6),
	datad => VCC,
	cin => \DIV_FREQ|Add0~11\,
	combout => \DIV_FREQ|Add0~12_combout\,
	cout => \DIV_FREQ|Add0~13\);

-- Location: LCCOMB_X101_Y39_N8
\DIV_FREQ|s_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~7_combout\ = (\DIV_FREQ|Add0~12_combout\ & !\DIV_FREQ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|Add0~12_combout\,
	datac => \DIV_FREQ|Equal0~9_combout\,
	combout => \DIV_FREQ|s_counter~7_combout\);

-- Location: FF_X101_Y39_N9
\DIV_FREQ|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(6));

-- Location: LCCOMB_X101_Y38_N0
\DIV_FREQ|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~5_combout\ = (\DIV_FREQ|s_counter\(2) & (!\DIV_FREQ|s_counter\(6) & (\DIV_FREQ|s_counter\(3) & \DIV_FREQ|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(2),
	datab => \DIV_FREQ|s_counter\(6),
	datac => \DIV_FREQ|s_counter\(3),
	datad => \DIV_FREQ|s_counter\(4),
	combout => \DIV_FREQ|Equal0~5_combout\);

-- Location: LCCOMB_X101_Y37_N20
\DIV_FREQ|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~50_combout\ = (\DIV_FREQ|s_counter\(25) & (!\DIV_FREQ|Add0~49\)) # (!\DIV_FREQ|s_counter\(25) & ((\DIV_FREQ|Add0~49\) # (GND)))
-- \DIV_FREQ|Add0~51\ = CARRY((!\DIV_FREQ|Add0~49\) # (!\DIV_FREQ|s_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(25),
	datad => VCC,
	cin => \DIV_FREQ|Add0~49\,
	combout => \DIV_FREQ|Add0~50_combout\,
	cout => \DIV_FREQ|Add0~51\);

-- Location: FF_X101_Y37_N21
\DIV_FREQ|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(25));

-- Location: LCCOMB_X101_Y37_N22
\DIV_FREQ|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~52_combout\ = (\DIV_FREQ|s_counter\(26) & (\DIV_FREQ|Add0~51\ $ (GND))) # (!\DIV_FREQ|s_counter\(26) & (!\DIV_FREQ|Add0~51\ & VCC))
-- \DIV_FREQ|Add0~53\ = CARRY((\DIV_FREQ|s_counter\(26) & !\DIV_FREQ|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(26),
	datad => VCC,
	cin => \DIV_FREQ|Add0~51\,
	combout => \DIV_FREQ|Add0~52_combout\,
	cout => \DIV_FREQ|Add0~53\);

-- Location: FF_X101_Y37_N23
\DIV_FREQ|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(26));

-- Location: LCCOMB_X101_Y39_N6
\DIV_FREQ|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~1_combout\ = (!\DIV_FREQ|s_counter\(25) & (\DIV_FREQ|s_counter\(21) & (!\DIV_FREQ|s_counter\(26) & \DIV_FREQ|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(25),
	datab => \DIV_FREQ|s_counter\(21),
	datac => \DIV_FREQ|s_counter\(26),
	datad => \DIV_FREQ|s_counter\(20),
	combout => \DIV_FREQ|Equal0~1_combout\);

-- Location: LCCOMB_X101_Y38_N16
\DIV_FREQ|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~14_combout\ = (\DIV_FREQ|s_counter\(7) & (!\DIV_FREQ|Add0~13\)) # (!\DIV_FREQ|s_counter\(7) & ((\DIV_FREQ|Add0~13\) # (GND)))
-- \DIV_FREQ|Add0~15\ = CARRY((!\DIV_FREQ|Add0~13\) # (!\DIV_FREQ|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(7),
	datad => VCC,
	cin => \DIV_FREQ|Add0~13\,
	combout => \DIV_FREQ|Add0~14_combout\,
	cout => \DIV_FREQ|Add0~15\);

-- Location: FF_X101_Y38_N17
\DIV_FREQ|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(7));

-- Location: LCCOMB_X101_Y38_N18
\DIV_FREQ|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~16_combout\ = (\DIV_FREQ|s_counter\(8) & (\DIV_FREQ|Add0~15\ $ (GND))) # (!\DIV_FREQ|s_counter\(8) & (!\DIV_FREQ|Add0~15\ & VCC))
-- \DIV_FREQ|Add0~17\ = CARRY((\DIV_FREQ|s_counter\(8) & !\DIV_FREQ|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(8),
	datad => VCC,
	cin => \DIV_FREQ|Add0~15\,
	combout => \DIV_FREQ|Add0~16_combout\,
	cout => \DIV_FREQ|Add0~17\);

-- Location: FF_X101_Y38_N19
\DIV_FREQ|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(8));

-- Location: LCCOMB_X101_Y38_N20
\DIV_FREQ|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~18_combout\ = (\DIV_FREQ|s_counter\(9) & (!\DIV_FREQ|Add0~17\)) # (!\DIV_FREQ|s_counter\(9) & ((\DIV_FREQ|Add0~17\) # (GND)))
-- \DIV_FREQ|Add0~19\ = CARRY((!\DIV_FREQ|Add0~17\) # (!\DIV_FREQ|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(9),
	datad => VCC,
	cin => \DIV_FREQ|Add0~17\,
	combout => \DIV_FREQ|Add0~18_combout\,
	cout => \DIV_FREQ|Add0~19\);

-- Location: FF_X101_Y38_N21
\DIV_FREQ|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(9));

-- Location: LCCOMB_X101_Y38_N22
\DIV_FREQ|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~20_combout\ = (\DIV_FREQ|s_counter\(10) & (\DIV_FREQ|Add0~19\ $ (GND))) # (!\DIV_FREQ|s_counter\(10) & (!\DIV_FREQ|Add0~19\ & VCC))
-- \DIV_FREQ|Add0~21\ = CARRY((\DIV_FREQ|s_counter\(10) & !\DIV_FREQ|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(10),
	datad => VCC,
	cin => \DIV_FREQ|Add0~19\,
	combout => \DIV_FREQ|Add0~20_combout\,
	cout => \DIV_FREQ|Add0~21\);

-- Location: FF_X101_Y38_N23
\DIV_FREQ|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(10));

-- Location: LCCOMB_X101_Y38_N24
\DIV_FREQ|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~22_combout\ = (\DIV_FREQ|s_counter\(11) & (!\DIV_FREQ|Add0~21\)) # (!\DIV_FREQ|s_counter\(11) & ((\DIV_FREQ|Add0~21\) # (GND)))
-- \DIV_FREQ|Add0~23\ = CARRY((!\DIV_FREQ|Add0~21\) # (!\DIV_FREQ|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(11),
	datad => VCC,
	cin => \DIV_FREQ|Add0~21\,
	combout => \DIV_FREQ|Add0~22_combout\,
	cout => \DIV_FREQ|Add0~23\);

-- Location: LCCOMB_X101_Y39_N18
\DIV_FREQ|s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~6_combout\ = (!\DIV_FREQ|Equal0~9_combout\ & \DIV_FREQ|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|Equal0~9_combout\,
	datac => \DIV_FREQ|Add0~22_combout\,
	combout => \DIV_FREQ|s_counter~6_combout\);

-- Location: FF_X101_Y39_N19
\DIV_FREQ|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(11));

-- Location: LCCOMB_X101_Y38_N26
\DIV_FREQ|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~24_combout\ = (\DIV_FREQ|s_counter\(12) & (\DIV_FREQ|Add0~23\ $ (GND))) # (!\DIV_FREQ|s_counter\(12) & (!\DIV_FREQ|Add0~23\ & VCC))
-- \DIV_FREQ|Add0~25\ = CARRY((\DIV_FREQ|s_counter\(12) & !\DIV_FREQ|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(12),
	datad => VCC,
	cin => \DIV_FREQ|Add0~23\,
	combout => \DIV_FREQ|Add0~24_combout\,
	cout => \DIV_FREQ|Add0~25\);

-- Location: LCCOMB_X101_Y39_N30
\DIV_FREQ|s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~5_combout\ = (!\DIV_FREQ|Equal0~9_combout\ & \DIV_FREQ|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|Equal0~9_combout\,
	datac => \DIV_FREQ|Add0~24_combout\,
	combout => \DIV_FREQ|s_counter~5_combout\);

-- Location: FF_X101_Y39_N31
\DIV_FREQ|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(12));

-- Location: LCCOMB_X101_Y39_N0
\DIV_FREQ|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~2_combout\ = (\DIV_FREQ|s_counter\(12) & (\DIV_FREQ|s_counter\(19) & (\DIV_FREQ|s_counter\(18) & \DIV_FREQ|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(12),
	datab => \DIV_FREQ|s_counter\(19),
	datac => \DIV_FREQ|s_counter\(18),
	datad => \DIV_FREQ|s_counter\(13),
	combout => \DIV_FREQ|Equal0~2_combout\);

-- Location: LCCOMB_X101_Y39_N4
\DIV_FREQ|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~3_combout\ = (!\DIV_FREQ|s_counter\(7) & (!\DIV_FREQ|s_counter\(9) & (!\DIV_FREQ|s_counter\(8) & \DIV_FREQ|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(7),
	datab => \DIV_FREQ|s_counter\(9),
	datac => \DIV_FREQ|s_counter\(8),
	datad => \DIV_FREQ|s_counter\(11),
	combout => \DIV_FREQ|Equal0~3_combout\);

-- Location: LCCOMB_X101_Y37_N24
\DIV_FREQ|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~54_combout\ = (\DIV_FREQ|s_counter\(27) & (!\DIV_FREQ|Add0~53\)) # (!\DIV_FREQ|s_counter\(27) & ((\DIV_FREQ|Add0~53\) # (GND)))
-- \DIV_FREQ|Add0~55\ = CARRY((!\DIV_FREQ|Add0~53\) # (!\DIV_FREQ|s_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(27),
	datad => VCC,
	cin => \DIV_FREQ|Add0~53\,
	combout => \DIV_FREQ|Add0~54_combout\,
	cout => \DIV_FREQ|Add0~55\);

-- Location: FF_X101_Y37_N25
\DIV_FREQ|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(27));

-- Location: LCCOMB_X101_Y37_N26
\DIV_FREQ|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~56_combout\ = (\DIV_FREQ|s_counter\(28) & (\DIV_FREQ|Add0~55\ $ (GND))) # (!\DIV_FREQ|s_counter\(28) & (!\DIV_FREQ|Add0~55\ & VCC))
-- \DIV_FREQ|Add0~57\ = CARRY((\DIV_FREQ|s_counter\(28) & !\DIV_FREQ|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(28),
	datad => VCC,
	cin => \DIV_FREQ|Add0~55\,
	combout => \DIV_FREQ|Add0~56_combout\,
	cout => \DIV_FREQ|Add0~57\);

-- Location: FF_X101_Y37_N27
\DIV_FREQ|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(28));

-- Location: LCCOMB_X101_Y37_N28
\DIV_FREQ|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~58_combout\ = (\DIV_FREQ|s_counter\(29) & (!\DIV_FREQ|Add0~57\)) # (!\DIV_FREQ|s_counter\(29) & ((\DIV_FREQ|Add0~57\) # (GND)))
-- \DIV_FREQ|Add0~59\ = CARRY((!\DIV_FREQ|Add0~57\) # (!\DIV_FREQ|s_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(29),
	datad => VCC,
	cin => \DIV_FREQ|Add0~57\,
	combout => \DIV_FREQ|Add0~58_combout\,
	cout => \DIV_FREQ|Add0~59\);

-- Location: FF_X101_Y37_N29
\DIV_FREQ|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(29));

-- Location: LCCOMB_X101_Y37_N30
\DIV_FREQ|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~60_combout\ = \DIV_FREQ|s_counter\(30) $ (!\DIV_FREQ|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(30),
	cin => \DIV_FREQ|Add0~59\,
	combout => \DIV_FREQ|Add0~60_combout\);

-- Location: FF_X101_Y37_N31
\DIV_FREQ|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(30));

-- Location: LCCOMB_X101_Y39_N24
\DIV_FREQ|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~0_combout\ = (!\DIV_FREQ|s_counter\(29) & (!\DIV_FREQ|s_counter\(27) & (!\DIV_FREQ|s_counter\(30) & !\DIV_FREQ|s_counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(29),
	datab => \DIV_FREQ|s_counter\(27),
	datac => \DIV_FREQ|s_counter\(30),
	datad => \DIV_FREQ|s_counter\(28),
	combout => \DIV_FREQ|Equal0~0_combout\);

-- Location: LCCOMB_X101_Y39_N22
\DIV_FREQ|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~4_combout\ = (\DIV_FREQ|Equal0~1_combout\ & (\DIV_FREQ|Equal0~2_combout\ & (\DIV_FREQ|Equal0~3_combout\ & \DIV_FREQ|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|Equal0~1_combout\,
	datab => \DIV_FREQ|Equal0~2_combout\,
	datac => \DIV_FREQ|Equal0~3_combout\,
	datad => \DIV_FREQ|Equal0~0_combout\,
	combout => \DIV_FREQ|Equal0~4_combout\);

-- Location: LCCOMB_X101_Y39_N10
\DIV_FREQ|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~6_combout\ = (\DIV_FREQ|s_counter\(1) & (\DIV_FREQ|Equal0~5_combout\ & (\DIV_FREQ|Equal0~4_combout\ & \DIV_FREQ|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(1),
	datab => \DIV_FREQ|Equal0~5_combout\,
	datac => \DIV_FREQ|Equal0~4_combout\,
	datad => \DIV_FREQ|s_counter\(0),
	combout => \DIV_FREQ|Equal0~6_combout\);

-- Location: LCCOMB_X101_Y40_N10
\DIV_FREQ|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~8_combout\ = (!\DIV_FREQ|s_counter\(15) & (\DIV_FREQ|s_counter\(16) & (!\DIV_FREQ|s_counter\(10) & \DIV_FREQ|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(15),
	datab => \DIV_FREQ|s_counter\(16),
	datac => \DIV_FREQ|s_counter\(10),
	datad => \DIV_FREQ|s_counter\(14),
	combout => \DIV_FREQ|Equal0~8_combout\);

-- Location: LCCOMB_X101_Y40_N20
\DIV_FREQ|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Equal0~9_combout\ = (\DIV_FREQ|s_counter\(5) & (\DIV_FREQ|Equal0~7_combout\ & (\DIV_FREQ|Equal0~6_combout\ & \DIV_FREQ|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(5),
	datab => \DIV_FREQ|Equal0~7_combout\,
	datac => \DIV_FREQ|Equal0~6_combout\,
	datad => \DIV_FREQ|Equal0~8_combout\,
	combout => \DIV_FREQ|Equal0~9_combout\);

-- Location: LCCOMB_X101_Y38_N28
\DIV_FREQ|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~26_combout\ = (\DIV_FREQ|s_counter\(13) & (!\DIV_FREQ|Add0~25\)) # (!\DIV_FREQ|s_counter\(13) & ((\DIV_FREQ|Add0~25\) # (GND)))
-- \DIV_FREQ|Add0~27\ = CARRY((!\DIV_FREQ|Add0~25\) # (!\DIV_FREQ|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|s_counter\(13),
	datad => VCC,
	cin => \DIV_FREQ|Add0~25\,
	combout => \DIV_FREQ|Add0~26_combout\,
	cout => \DIV_FREQ|Add0~27\);

-- Location: LCCOMB_X101_Y39_N28
\DIV_FREQ|s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~4_combout\ = (!\DIV_FREQ|Equal0~9_combout\ & \DIV_FREQ|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIV_FREQ|Equal0~9_combout\,
	datad => \DIV_FREQ|Add0~26_combout\,
	combout => \DIV_FREQ|s_counter~4_combout\);

-- Location: FF_X101_Y39_N29
\DIV_FREQ|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(13));

-- Location: LCCOMB_X101_Y38_N30
\DIV_FREQ|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|Add0~28_combout\ = (\DIV_FREQ|s_counter\(14) & (\DIV_FREQ|Add0~27\ $ (GND))) # (!\DIV_FREQ|s_counter\(14) & (!\DIV_FREQ|Add0~27\ & VCC))
-- \DIV_FREQ|Add0~29\ = CARRY((\DIV_FREQ|s_counter\(14) & !\DIV_FREQ|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(14),
	datad => VCC,
	cin => \DIV_FREQ|Add0~27\,
	combout => \DIV_FREQ|Add0~28_combout\,
	cout => \DIV_FREQ|Add0~29\);

-- Location: LCCOMB_X101_Y40_N2
\DIV_FREQ|s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|s_counter~11_combout\ = (\DIV_FREQ|Add0~28_combout\ & !\DIV_FREQ|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIV_FREQ|Add0~28_combout\,
	datad => \DIV_FREQ|Equal0~9_combout\,
	combout => \DIV_FREQ|s_counter~11_combout\);

-- Location: FF_X101_Y40_N3
\DIV_FREQ|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|s_counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(14));

-- Location: FF_X101_Y37_N1
\DIV_FREQ|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|s_counter\(15));

-- Location: LCCOMB_X101_Y40_N28
\DIV_FREQ|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|clkOut~1_combout\ = (\DIV_FREQ|s_counter\(15) & (!\DIV_FREQ|s_counter\(16) & (\DIV_FREQ|s_counter\(10) & !\DIV_FREQ|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(15),
	datab => \DIV_FREQ|s_counter\(16),
	datac => \DIV_FREQ|s_counter\(10),
	datad => \DIV_FREQ|s_counter\(14),
	combout => \DIV_FREQ|clkOut~1_combout\);

-- Location: LCCOMB_X101_Y40_N6
\DIV_FREQ|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|clkOut~0_combout\ = (\DIV_FREQ|s_counter\(17) & (\DIV_FREQ|s_counter\(23) & (!\DIV_FREQ|s_counter\(24) & !\DIV_FREQ|s_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(17),
	datab => \DIV_FREQ|s_counter\(23),
	datac => \DIV_FREQ|s_counter\(24),
	datad => \DIV_FREQ|s_counter\(22),
	combout => \DIV_FREQ|clkOut~0_combout\);

-- Location: LCCOMB_X101_Y40_N22
\DIV_FREQ|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|clkOut~2_combout\ = (!\DIV_FREQ|s_counter\(5) & (\DIV_FREQ|clkOut~1_combout\ & \DIV_FREQ|clkOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|s_counter\(5),
	datab => \DIV_FREQ|clkOut~1_combout\,
	datad => \DIV_FREQ|clkOut~0_combout\,
	combout => \DIV_FREQ|clkOut~2_combout\);

-- Location: LCCOMB_X101_Y40_N8
\DIV_FREQ|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DIV_FREQ|clkOut~3_combout\ = (!\DIV_FREQ|Equal0~9_combout\ & ((\DIV_FREQ|clkOut~q\) # ((\DIV_FREQ|clkOut~2_combout\ & \DIV_FREQ|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|clkOut~2_combout\,
	datab => \DIV_FREQ|Equal0~6_combout\,
	datac => \DIV_FREQ|clkOut~q\,
	datad => \DIV_FREQ|Equal0~9_combout\,
	combout => \DIV_FREQ|clkOut~3_combout\);

-- Location: FF_X101_Y40_N9
\DIV_FREQ|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DIV_FREQ|clkOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DIV_FREQ|clkOut~q\);

-- Location: LCCOMB_X108_Y37_N14
\OCUP1|inst|unidades|decOut_n[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[5]~2_combout\ = (\OCUP1|inst2|unidades|s_count\(1) & (\OCUP1|inst2|unidades|s_count\(3) & ((!\OCUP1|inst2|unidades|s_count\(2)) # (!\OCUP1|inst2|unidades|s_count\(0))))) # (!\OCUP1|inst2|unidades|s_count\(1) & 
-- (!\OCUP1|inst2|unidades|s_count\(0) & (\OCUP1|inst2|unidades|s_count\(3) $ (\OCUP1|inst2|unidades|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|unidades|s_count\(1),
	datab => \OCUP1|inst2|unidades|s_count\(0),
	datac => \OCUP1|inst2|unidades|s_count\(3),
	datad => \OCUP1|inst2|unidades|s_count\(2),
	combout => \OCUP1|inst|unidades|decOut_n[5]~2_combout\);

-- Location: LCCOMB_X109_Y33_N24
\OCUP1|inst|visor_uni[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_uni[5]~0_combout\ = (\OCUP1|inst|s_cheio~2_combout\ & (\DIV_FREQ|clkOut~q\)) # (!\OCUP1|inst|s_cheio~2_combout\ & ((\OCUP1|inst|unidades|decOut_n[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|clkOut~q\,
	datac => \OCUP1|inst|s_cheio~2_combout\,
	datad => \OCUP1|inst|unidades|decOut_n[5]~2_combout\,
	combout => \OCUP1|inst|visor_uni[5]~0_combout\);

-- Location: LCCOMB_X108_Y37_N18
\OCUP1|inst|visor_uni[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_uni[4]~2_combout\ = (\DIV_FREQ|clkOut~q\ & (\OCUP1|inst2|unidades|s_count\(3) & \OCUP1|inst|s_cheio~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|clkOut~q\,
	datac => \OCUP1|inst2|unidades|s_count\(3),
	datad => \OCUP1|inst|s_cheio~0_combout\,
	combout => \OCUP1|inst|visor_uni[4]~2_combout\);

-- Location: LCCOMB_X108_Y37_N24
\OCUP1|inst|visor_uni[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_uni[4]~1_combout\ = (\OCUP1|inst2|unidades|s_count\(1) & (!\OCUP1|inst2|unidades|s_count\(0) & (\OCUP1|inst2|unidades|s_count\(3)))) # (!\OCUP1|inst2|unidades|s_count\(1) & ((\OCUP1|inst2|unidades|s_count\(2) & 
-- ((\OCUP1|inst2|unidades|s_count\(3)))) # (!\OCUP1|inst2|unidades|s_count\(2) & (!\OCUP1|inst2|unidades|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|unidades|s_count\(1),
	datab => \OCUP1|inst2|unidades|s_count\(0),
	datac => \OCUP1|inst2|unidades|s_count\(3),
	datad => \OCUP1|inst2|unidades|s_count\(2),
	combout => \OCUP1|inst|visor_uni[4]~1_combout\);

-- Location: LCCOMB_X107_Y37_N0
\OCUP1|inst|visor_uni[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_uni[4]~3_combout\ = (\OCUP1|inst|visor_uni[4]~1_combout\) # ((\OCUP1|inst|visor_uni[4]~2_combout\ & (\OCUP1|inst2|dezenas|s_count\(3) & \OCUP1|inst|s_cheio~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst|visor_uni[4]~2_combout\,
	datab => \OCUP1|inst2|dezenas|s_count\(3),
	datac => \OCUP1|inst|s_cheio~1_combout\,
	datad => \OCUP1|inst|visor_uni[4]~1_combout\,
	combout => \OCUP1|inst|visor_uni[4]~3_combout\);

-- Location: LCCOMB_X108_Y37_N28
\OCUP1|inst|unidades|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[3]~3_combout\ = (\OCUP1|inst2|unidades|s_count\(1) & ((\OCUP1|inst2|unidades|s_count\(0) & (!\OCUP1|inst2|unidades|s_count\(3) & !\OCUP1|inst2|unidades|s_count\(2))) # (!\OCUP1|inst2|unidades|s_count\(0) & 
-- ((\OCUP1|inst2|unidades|s_count\(2)))))) # (!\OCUP1|inst2|unidades|s_count\(1) & (\OCUP1|inst2|unidades|s_count\(3) & (\OCUP1|inst2|unidades|s_count\(0) $ (!\OCUP1|inst2|unidades|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|unidades|s_count\(1),
	datab => \OCUP1|inst2|unidades|s_count\(0),
	datac => \OCUP1|inst2|unidades|s_count\(3),
	datad => \OCUP1|inst2|unidades|s_count\(2),
	combout => \OCUP1|inst|unidades|decOut_n[3]~3_combout\);

-- Location: LCCOMB_X109_Y37_N8
\OCUP1|inst|visor_uni[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_uni[3]~4_combout\ = (\OCUP1|inst|s_cheio~2_combout\ & (\DIV_FREQ|clkOut~q\)) # (!\OCUP1|inst|s_cheio~2_combout\ & ((\OCUP1|inst|unidades|decOut_n[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst|s_cheio~2_combout\,
	datac => \DIV_FREQ|clkOut~q\,
	datad => \OCUP1|inst|unidades|decOut_n[3]~3_combout\,
	combout => \OCUP1|inst|visor_uni[3]~4_combout\);

-- Location: LCCOMB_X108_Y37_N6
\OCUP1|inst|unidades|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[2]~4_combout\ = (\OCUP1|inst2|unidades|s_count\(0) & ((\OCUP1|inst2|unidades|s_count\(1)) # (\OCUP1|inst2|unidades|s_count\(2)))) # (!\OCUP1|inst2|unidades|s_count\(0) & (\OCUP1|inst2|unidades|s_count\(1) & 
-- \OCUP1|inst2|unidades|s_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst2|unidades|s_count\(0),
	datac => \OCUP1|inst2|unidades|s_count\(1),
	datad => \OCUP1|inst2|unidades|s_count\(2),
	combout => \OCUP1|inst|unidades|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X108_Y37_N0
\OCUP1|inst|unidades|decOut_n[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[2]~5_combout\ = (\OCUP1|inst|s_cheio~2_combout\) # ((\OCUP1|inst|unidades|decOut_n[2]~4_combout\ & (\OCUP1|inst2|unidades|s_count\(3) $ (\OCUP1|inst2|unidades|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst|unidades|decOut_n[2]~4_combout\,
	datab => \OCUP1|inst2|unidades|s_count\(3),
	datac => \OCUP1|inst|s_cheio~2_combout\,
	datad => \OCUP1|inst2|unidades|s_count\(2),
	combout => \OCUP1|inst|unidades|decOut_n[2]~5_combout\);

-- Location: LCCOMB_X108_Y37_N10
\OCUP1|inst|unidades|decOut_n[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[1]~6_combout\ = (\OCUP1|inst2|unidades|s_count\(1) & ((\OCUP1|inst2|unidades|s_count\(0) & ((\OCUP1|inst2|unidades|s_count\(2)))) # (!\OCUP1|inst2|unidades|s_count\(0) & (!\OCUP1|inst2|unidades|s_count\(3))))) # 
-- (!\OCUP1|inst2|unidades|s_count\(1) & (\OCUP1|inst2|unidades|s_count\(2) & (\OCUP1|inst2|unidades|s_count\(0) $ (\OCUP1|inst2|unidades|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|unidades|s_count\(1),
	datab => \OCUP1|inst2|unidades|s_count\(0),
	datac => \OCUP1|inst2|unidades|s_count\(3),
	datad => \OCUP1|inst2|unidades|s_count\(2),
	combout => \OCUP1|inst|unidades|decOut_n[1]~6_combout\);

-- Location: LCCOMB_X108_Y37_N20
\OCUP1|inst|unidades|decOut_n[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[1]~7_combout\ = (\OCUP1|inst|s_cheio~2_combout\) # (\OCUP1|inst|unidades|decOut_n[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OCUP1|inst|s_cheio~2_combout\,
	datad => \OCUP1|inst|unidades|decOut_n[1]~6_combout\,
	combout => \OCUP1|inst|unidades|decOut_n[1]~7_combout\);

-- Location: LCCOMB_X108_Y37_N30
\OCUP1|inst|unidades|decOut_n[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[0]~8_combout\ = (\OCUP1|inst2|unidades|s_count\(3) & (!\OCUP1|inst2|unidades|s_count\(1) & (\OCUP1|inst2|unidades|s_count\(0) $ (!\OCUP1|inst2|unidades|s_count\(2))))) # (!\OCUP1|inst2|unidades|s_count\(3) & 
-- (!\OCUP1|inst2|unidades|s_count\(0) & (\OCUP1|inst2|unidades|s_count\(1) $ (\OCUP1|inst2|unidades|s_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|unidades|s_count\(1),
	datab => \OCUP1|inst2|unidades|s_count\(0),
	datac => \OCUP1|inst2|unidades|s_count\(3),
	datad => \OCUP1|inst2|unidades|s_count\(2),
	combout => \OCUP1|inst|unidades|decOut_n[0]~8_combout\);

-- Location: LCCOMB_X108_Y37_N8
\OCUP1|inst|unidades|decOut_n[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|unidades|decOut_n[0]~9_combout\ = (\OCUP1|inst|unidades|decOut_n[0]~8_combout\) # (\OCUP1|inst|s_cheio~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst|unidades|decOut_n[0]~8_combout\,
	datac => \OCUP1|inst|s_cheio~2_combout\,
	combout => \OCUP1|inst|unidades|decOut_n[0]~9_combout\);

-- Location: LCCOMB_X106_Y34_N28
\OCUP1|inst|dezenas|decOut_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|dezenas|decOut_n[6]~0_combout\ = (\OCUP1|inst2|dezenas|s_count\(0) & ((\OCUP1|inst2|dezenas|s_count\(1)) # (\OCUP1|inst2|dezenas|s_count\(2) $ (!\OCUP1|inst2|dezenas|s_count\(3))))) # (!\OCUP1|inst2|dezenas|s_count\(0) & 
-- ((\OCUP1|inst2|dezenas|s_count\(1) $ (\OCUP1|inst2|dezenas|s_count\(2))) # (!\OCUP1|inst2|dezenas|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datab => \OCUP1|inst2|dezenas|s_count\(2),
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|dezenas|decOut_n[6]~0_combout\);

-- Location: LCCOMB_X109_Y33_N10
\OCUP1|inst|dezenas|decOut_n[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|dezenas|decOut_n[6]~1_combout\ = (\OCUP1|inst|s_cheio~2_combout\) # (!\OCUP1|inst|dezenas|decOut_n[6]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst|dezenas|decOut_n[6]~0_combout\,
	datac => \OCUP1|inst|s_cheio~2_combout\,
	combout => \OCUP1|inst|dezenas|decOut_n[6]~1_combout\);

-- Location: LCCOMB_X106_Y34_N14
\OCUP1|inst|visor_dez[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_dez[5]~0_combout\ = (\OCUP1|inst2|dezenas|s_count\(1) & (\OCUP1|inst2|dezenas|s_count\(3) & !\OCUP1|inst2|dezenas|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|visor_dez[5]~0_combout\);

-- Location: LCCOMB_X106_Y34_N8
\OCUP1|inst|visor_dez[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_dez[5]~1_combout\ = (\OCUP1|inst2|dezenas|s_count\(1) & (!\OCUP1|inst2|dezenas|s_count\(2) & (\OCUP1|inst2|dezenas|s_count\(3) & \OCUP1|inst2|dezenas|s_count\(0)))) # (!\OCUP1|inst2|dezenas|s_count\(1) & 
-- (!\OCUP1|inst2|dezenas|s_count\(0) & (\OCUP1|inst2|dezenas|s_count\(2) $ (\OCUP1|inst2|dezenas|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datab => \OCUP1|inst2|dezenas|s_count\(2),
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|visor_dez[5]~1_combout\);

-- Location: LCCOMB_X107_Y34_N0
\OCUP1|inst|visor_dez[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_dez[5]~2_combout\ = (\OCUP1|inst|visor_dez[5]~0_combout\) # ((\OCUP1|inst|s_cheio~2_combout\ & ((\DIV_FREQ|clkOut~q\))) # (!\OCUP1|inst|s_cheio~2_combout\ & (\OCUP1|inst|visor_dez[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst|visor_dez[5]~0_combout\,
	datab => \OCUP1|inst|visor_dez[5]~1_combout\,
	datac => \DIV_FREQ|clkOut~q\,
	datad => \OCUP1|inst|s_cheio~2_combout\,
	combout => \OCUP1|inst|visor_dez[5]~2_combout\);

-- Location: LCCOMB_X106_Y34_N10
\OCUP1|inst|visor_dez[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_dez[4]~3_combout\ = (\OCUP1|inst2|dezenas|s_count\(2)) # ((\OCUP1|inst|s_cheio~0_combout\ & (\DIV_FREQ|clkOut~q\ & \OCUP1|inst2|unidades|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst|s_cheio~0_combout\,
	datab => \OCUP1|inst2|dezenas|s_count\(2),
	datac => \DIV_FREQ|clkOut~q\,
	datad => \OCUP1|inst2|unidades|s_count\(3),
	combout => \OCUP1|inst|visor_dez[4]~3_combout\);

-- Location: LCCOMB_X106_Y34_N12
\OCUP1|inst|visor_dez[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_dez[4]~4_combout\ = (\OCUP1|inst2|dezenas|s_count\(3) & (((!\OCUP1|inst2|dezenas|s_count\(1) & \OCUP1|inst|visor_dez[4]~3_combout\)) # (!\OCUP1|inst2|dezenas|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datab => \OCUP1|inst|visor_dez[4]~3_combout\,
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|visor_dez[4]~4_combout\);

-- Location: LCCOMB_X106_Y34_N30
\OCUP1|inst|visor_dez[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_dez[4]~5_combout\ = (\OCUP1|inst|visor_dez[4]~4_combout\) # ((!\OCUP1|inst2|dezenas|s_count\(2) & (!\OCUP1|inst2|dezenas|s_count\(1) & !\OCUP1|inst2|dezenas|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst|visor_dez[4]~4_combout\,
	datab => \OCUP1|inst2|dezenas|s_count\(2),
	datac => \OCUP1|inst2|dezenas|s_count\(1),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|visor_dez[4]~5_combout\);

-- Location: LCCOMB_X106_Y34_N0
\OCUP1|inst|dezenas|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|dezenas|decOut_n[3]~2_combout\ = (\OCUP1|inst2|dezenas|s_count\(1) & ((\OCUP1|inst2|dezenas|s_count\(2) & ((!\OCUP1|inst2|dezenas|s_count\(0)))) # (!\OCUP1|inst2|dezenas|s_count\(2) & (!\OCUP1|inst2|dezenas|s_count\(3) & 
-- \OCUP1|inst2|dezenas|s_count\(0))))) # (!\OCUP1|inst2|dezenas|s_count\(1) & (\OCUP1|inst2|dezenas|s_count\(3) & (\OCUP1|inst2|dezenas|s_count\(2) $ (!\OCUP1|inst2|dezenas|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datab => \OCUP1|inst2|dezenas|s_count\(2),
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|dezenas|decOut_n[3]~2_combout\);

-- Location: LCCOMB_X109_Y33_N12
\OCUP1|inst|visor_dez[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_dez[3]~6_combout\ = (\OCUP1|inst|s_cheio~2_combout\ & (\DIV_FREQ|clkOut~q\)) # (!\OCUP1|inst|s_cheio~2_combout\ & ((\OCUP1|inst|dezenas|decOut_n[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|clkOut~q\,
	datab => \OCUP1|inst|s_cheio~2_combout\,
	datac => \OCUP1|inst|dezenas|decOut_n[3]~2_combout\,
	combout => \OCUP1|inst|visor_dez[3]~6_combout\);

-- Location: LCCOMB_X106_Y34_N26
\OCUP1|inst|dezenas|decOut_n[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|dezenas|decOut_n[2]~3_combout\ = (\OCUP1|inst2|dezenas|s_count\(2) & (!\OCUP1|inst2|dezenas|s_count\(3) & ((\OCUP1|inst2|dezenas|s_count\(1)) # (\OCUP1|inst2|dezenas|s_count\(0))))) # (!\OCUP1|inst2|dezenas|s_count\(2) & 
-- (\OCUP1|inst2|dezenas|s_count\(1) & (\OCUP1|inst2|dezenas|s_count\(3) & \OCUP1|inst2|dezenas|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datab => \OCUP1|inst2|dezenas|s_count\(2),
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|dezenas|decOut_n[2]~3_combout\);

-- Location: LCCOMB_X109_Y33_N14
\OCUP1|inst|dezenas|decOut_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|dezenas|decOut_n[2]~4_combout\ = (\OCUP1|inst|s_cheio~2_combout\) # (\OCUP1|inst|dezenas|decOut_n[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst|s_cheio~2_combout\,
	datac => \OCUP1|inst|dezenas|decOut_n[2]~3_combout\,
	combout => \OCUP1|inst|dezenas|decOut_n[2]~4_combout\);

-- Location: LCCOMB_X106_Y34_N4
\OCUP1|inst|dezenas|decOut_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|dezenas|decOut_n[1]~5_combout\ = (\OCUP1|inst2|dezenas|s_count\(1) & ((\OCUP1|inst2|dezenas|s_count\(0) & (\OCUP1|inst2|dezenas|s_count\(2))) # (!\OCUP1|inst2|dezenas|s_count\(0) & ((!\OCUP1|inst2|dezenas|s_count\(3)))))) # 
-- (!\OCUP1|inst2|dezenas|s_count\(1) & (\OCUP1|inst2|dezenas|s_count\(2) & (\OCUP1|inst2|dezenas|s_count\(3) $ (\OCUP1|inst2|dezenas|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datab => \OCUP1|inst2|dezenas|s_count\(2),
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|dezenas|decOut_n[1]~5_combout\);

-- Location: LCCOMB_X109_Y33_N8
\OCUP1|inst|dezenas|decOut_n[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|dezenas|decOut_n[1]~6_combout\ = (\OCUP1|inst|dezenas|decOut_n[1]~5_combout\) # (\OCUP1|inst|s_cheio~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst|dezenas|decOut_n[1]~5_combout\,
	datac => \OCUP1|inst|s_cheio~2_combout\,
	combout => \OCUP1|inst|dezenas|decOut_n[1]~6_combout\);

-- Location: LCCOMB_X106_Y34_N22
\OCUP1|inst|dezenas|decOut_n[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|dezenas|decOut_n[0]~7_combout\ = (\OCUP1|inst2|dezenas|s_count\(2) & (!\OCUP1|inst2|dezenas|s_count\(1) & (\OCUP1|inst2|dezenas|s_count\(3) $ (!\OCUP1|inst2|dezenas|s_count\(0))))) # (!\OCUP1|inst2|dezenas|s_count\(2) & 
-- (!\OCUP1|inst2|dezenas|s_count\(0) & (\OCUP1|inst2|dezenas|s_count\(1) $ (\OCUP1|inst2|dezenas|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OCUP1|inst2|dezenas|s_count\(1),
	datab => \OCUP1|inst2|dezenas|s_count\(2),
	datac => \OCUP1|inst2|dezenas|s_count\(3),
	datad => \OCUP1|inst2|dezenas|s_count\(0),
	combout => \OCUP1|inst|dezenas|decOut_n[0]~7_combout\);

-- Location: LCCOMB_X107_Y34_N2
\OCUP1|inst|dezenas|decOut_n[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|dezenas|decOut_n[0]~8_combout\ = (\OCUP1|inst|dezenas|decOut_n[0]~7_combout\) # (\OCUP1|inst|s_cheio~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OCUP1|inst|dezenas|decOut_n[0]~7_combout\,
	datad => \OCUP1|inst|s_cheio~2_combout\,
	combout => \OCUP1|inst|dezenas|decOut_n[0]~8_combout\);

-- Location: LCCOMB_X109_Y33_N26
\OCUP1|inst|visor_cen[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OCUP1|inst|visor_cen[5]~0_combout\ = (\DIV_FREQ|clkOut~q\) # (!\OCUP1|inst|s_cheio~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIV_FREQ|clkOut~q\,
	datac => \OCUP1|inst|s_cheio~2_combout\,
	combout => \OCUP1|inst|visor_cen[5]~0_combout\);

-- Location: LCCOMB_X86_Y44_N6
\ACESSO1|TEMP1|FECHO|s_count[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[0]~27_combout\ = \ACESSO1|TEMP1|FECHO|s_count\(0) $ (VCC)
-- \ACESSO1|TEMP1|FECHO|s_count[0]~28\ = CARRY(\ACESSO1|TEMP1|FECHO|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(0),
	datad => VCC,
	combout => \ACESSO1|TEMP1|FECHO|s_count[0]~27_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[0]~28\);

-- Location: FF_X86_Y44_N7
\ACESSO1|TEMP1|FECHO|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[0]~27_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(0));

-- Location: LCCOMB_X86_Y44_N8
\ACESSO1|TEMP1|FECHO|s_count[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[1]~29_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(1) & (!\ACESSO1|TEMP1|FECHO|s_count[0]~28\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(1) & ((\ACESSO1|TEMP1|FECHO|s_count[0]~28\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[1]~30\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[0]~28\) # (!\ACESSO1|TEMP1|FECHO|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(1),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[0]~28\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[1]~29_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[1]~30\);

-- Location: FF_X86_Y44_N9
\ACESSO1|TEMP1|FECHO|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[1]~29_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(1));

-- Location: LCCOMB_X86_Y44_N10
\ACESSO1|TEMP1|FECHO|s_count[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[2]~31_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(2) & (\ACESSO1|TEMP1|FECHO|s_count[1]~30\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(2) & (!\ACESSO1|TEMP1|FECHO|s_count[1]~30\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[2]~32\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(2) & !\ACESSO1|TEMP1|FECHO|s_count[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(2),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[1]~30\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[2]~31_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[2]~32\);

-- Location: FF_X86_Y44_N11
\ACESSO1|TEMP1|FECHO|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[2]~31_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(2));

-- Location: LCCOMB_X86_Y44_N12
\ACESSO1|TEMP1|FECHO|s_count[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[3]~33_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(3) & (!\ACESSO1|TEMP1|FECHO|s_count[2]~32\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(3) & ((\ACESSO1|TEMP1|FECHO|s_count[2]~32\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[3]~34\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[2]~32\) # (!\ACESSO1|TEMP1|FECHO|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(3),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[2]~32\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[3]~33_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[3]~34\);

-- Location: FF_X86_Y44_N13
\ACESSO1|TEMP1|FECHO|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[3]~33_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(3));

-- Location: LCCOMB_X86_Y44_N14
\ACESSO1|TEMP1|FECHO|s_count[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[4]~35_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(4) & (\ACESSO1|TEMP1|FECHO|s_count[3]~34\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(4) & (!\ACESSO1|TEMP1|FECHO|s_count[3]~34\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[4]~36\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(4) & !\ACESSO1|TEMP1|FECHO|s_count[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(4),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[3]~34\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[4]~35_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[4]~36\);

-- Location: FF_X86_Y44_N15
\ACESSO1|TEMP1|FECHO|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[4]~35_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(4));

-- Location: LCCOMB_X86_Y44_N16
\ACESSO1|TEMP1|FECHO|s_count[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[5]~37_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(5) & (!\ACESSO1|TEMP1|FECHO|s_count[4]~36\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(5) & ((\ACESSO1|TEMP1|FECHO|s_count[4]~36\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[5]~38\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[4]~36\) # (!\ACESSO1|TEMP1|FECHO|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(5),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[4]~36\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[5]~37_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[5]~38\);

-- Location: FF_X86_Y44_N17
\ACESSO1|TEMP1|FECHO|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[5]~37_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(5));

-- Location: LCCOMB_X86_Y44_N18
\ACESSO1|TEMP1|FECHO|s_count[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[6]~39_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(6) & (\ACESSO1|TEMP1|FECHO|s_count[5]~38\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(6) & (!\ACESSO1|TEMP1|FECHO|s_count[5]~38\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[6]~40\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(6) & !\ACESSO1|TEMP1|FECHO|s_count[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(6),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[5]~38\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[6]~39_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[6]~40\);

-- Location: FF_X86_Y44_N19
\ACESSO1|TEMP1|FECHO|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[6]~39_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(6));

-- Location: LCCOMB_X86_Y44_N20
\ACESSO1|TEMP1|FECHO|s_count[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[7]~41_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(7) & (!\ACESSO1|TEMP1|FECHO|s_count[6]~40\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(7) & ((\ACESSO1|TEMP1|FECHO|s_count[6]~40\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[7]~42\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[6]~40\) # (!\ACESSO1|TEMP1|FECHO|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(7),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[6]~40\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[7]~41_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[7]~42\);

-- Location: FF_X86_Y44_N21
\ACESSO1|TEMP1|FECHO|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[7]~41_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(7));

-- Location: LCCOMB_X86_Y44_N22
\ACESSO1|TEMP1|FECHO|s_count[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[8]~43_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(8) & (\ACESSO1|TEMP1|FECHO|s_count[7]~42\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(8) & (!\ACESSO1|TEMP1|FECHO|s_count[7]~42\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[8]~44\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(8) & !\ACESSO1|TEMP1|FECHO|s_count[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(8),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[7]~42\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[8]~43_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[8]~44\);

-- Location: FF_X86_Y44_N23
\ACESSO1|TEMP1|FECHO|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[8]~43_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(8));

-- Location: LCCOMB_X86_Y44_N24
\ACESSO1|TEMP1|FECHO|s_count[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[9]~45_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(9) & (!\ACESSO1|TEMP1|FECHO|s_count[8]~44\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(9) & ((\ACESSO1|TEMP1|FECHO|s_count[8]~44\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[9]~46\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[8]~44\) # (!\ACESSO1|TEMP1|FECHO|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(9),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[8]~44\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[9]~45_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[9]~46\);

-- Location: FF_X86_Y44_N25
\ACESSO1|TEMP1|FECHO|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[9]~45_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(9));

-- Location: LCCOMB_X86_Y44_N26
\ACESSO1|TEMP1|FECHO|s_count[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[10]~47_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(10) & (\ACESSO1|TEMP1|FECHO|s_count[9]~46\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(10) & (!\ACESSO1|TEMP1|FECHO|s_count[9]~46\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[10]~48\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(10) & !\ACESSO1|TEMP1|FECHO|s_count[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(10),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[9]~46\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[10]~47_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[10]~48\);

-- Location: FF_X86_Y44_N27
\ACESSO1|TEMP1|FECHO|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[10]~47_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(10));

-- Location: LCCOMB_X86_Y44_N28
\ACESSO1|TEMP1|FECHO|s_count[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[11]~49_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(11) & (!\ACESSO1|TEMP1|FECHO|s_count[10]~48\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(11) & ((\ACESSO1|TEMP1|FECHO|s_count[10]~48\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[11]~50\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[10]~48\) # (!\ACESSO1|TEMP1|FECHO|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(11),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[10]~48\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[11]~49_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[11]~50\);

-- Location: FF_X86_Y44_N29
\ACESSO1|TEMP1|FECHO|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[11]~49_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(11));

-- Location: LCCOMB_X86_Y44_N30
\ACESSO1|TEMP1|FECHO|s_count[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[12]~51_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(12) & (\ACESSO1|TEMP1|FECHO|s_count[11]~50\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(12) & (!\ACESSO1|TEMP1|FECHO|s_count[11]~50\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[12]~52\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(12) & !\ACESSO1|TEMP1|FECHO|s_count[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(12),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[11]~50\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[12]~51_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[12]~52\);

-- Location: FF_X86_Y44_N31
\ACESSO1|TEMP1|FECHO|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[12]~51_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(12));

-- Location: LCCOMB_X86_Y43_N0
\ACESSO1|TEMP1|FECHO|s_count[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[13]~53_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(13) & (!\ACESSO1|TEMP1|FECHO|s_count[12]~52\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(13) & ((\ACESSO1|TEMP1|FECHO|s_count[12]~52\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[13]~54\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[12]~52\) # (!\ACESSO1|TEMP1|FECHO|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(13),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[12]~52\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[13]~53_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[13]~54\);

-- Location: FF_X86_Y43_N1
\ACESSO1|TEMP1|FECHO|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[13]~53_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(13));

-- Location: LCCOMB_X86_Y43_N2
\ACESSO1|TEMP1|FECHO|s_count[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[14]~55_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(14) & (\ACESSO1|TEMP1|FECHO|s_count[13]~54\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(14) & (!\ACESSO1|TEMP1|FECHO|s_count[13]~54\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[14]~56\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(14) & !\ACESSO1|TEMP1|FECHO|s_count[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(14),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[13]~54\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[14]~55_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[14]~56\);

-- Location: FF_X86_Y43_N3
\ACESSO1|TEMP1|FECHO|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[14]~55_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(14));

-- Location: LCCOMB_X86_Y43_N4
\ACESSO1|TEMP1|FECHO|s_count[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[15]~57_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(15) & (!\ACESSO1|TEMP1|FECHO|s_count[14]~56\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(15) & ((\ACESSO1|TEMP1|FECHO|s_count[14]~56\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[15]~58\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[14]~56\) # (!\ACESSO1|TEMP1|FECHO|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(15),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[14]~56\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[15]~57_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[15]~58\);

-- Location: FF_X86_Y43_N5
\ACESSO1|TEMP1|FECHO|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[15]~57_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(15));

-- Location: LCCOMB_X86_Y43_N6
\ACESSO1|TEMP1|FECHO|s_count[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[16]~59_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(16) & (\ACESSO1|TEMP1|FECHO|s_count[15]~58\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(16) & (!\ACESSO1|TEMP1|FECHO|s_count[15]~58\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[16]~60\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(16) & !\ACESSO1|TEMP1|FECHO|s_count[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(16),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[15]~58\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[16]~59_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[16]~60\);

-- Location: FF_X86_Y43_N7
\ACESSO1|TEMP1|FECHO|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[16]~59_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(16));

-- Location: LCCOMB_X86_Y43_N8
\ACESSO1|TEMP1|FECHO|s_count[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[17]~61_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(17) & (!\ACESSO1|TEMP1|FECHO|s_count[16]~60\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(17) & ((\ACESSO1|TEMP1|FECHO|s_count[16]~60\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[17]~62\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[16]~60\) # (!\ACESSO1|TEMP1|FECHO|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(17),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[16]~60\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[17]~61_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[17]~62\);

-- Location: FF_X86_Y43_N9
\ACESSO1|TEMP1|FECHO|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[17]~61_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(17));

-- Location: LCCOMB_X86_Y43_N10
\ACESSO1|TEMP1|FECHO|s_count[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[18]~63_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(18) & (\ACESSO1|TEMP1|FECHO|s_count[17]~62\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(18) & (!\ACESSO1|TEMP1|FECHO|s_count[17]~62\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[18]~64\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(18) & !\ACESSO1|TEMP1|FECHO|s_count[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(18),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[17]~62\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[18]~63_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[18]~64\);

-- Location: FF_X86_Y43_N11
\ACESSO1|TEMP1|FECHO|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[18]~63_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(18));

-- Location: LCCOMB_X86_Y43_N12
\ACESSO1|TEMP1|FECHO|s_count[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[19]~65_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(19) & (!\ACESSO1|TEMP1|FECHO|s_count[18]~64\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(19) & ((\ACESSO1|TEMP1|FECHO|s_count[18]~64\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[19]~66\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[18]~64\) # (!\ACESSO1|TEMP1|FECHO|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(19),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[18]~64\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[19]~65_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[19]~66\);

-- Location: FF_X86_Y43_N13
\ACESSO1|TEMP1|FECHO|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[19]~65_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(19));

-- Location: LCCOMB_X86_Y43_N14
\ACESSO1|TEMP1|FECHO|s_count[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[20]~67_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(20) & (\ACESSO1|TEMP1|FECHO|s_count[19]~66\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(20) & (!\ACESSO1|TEMP1|FECHO|s_count[19]~66\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[20]~68\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(20) & !\ACESSO1|TEMP1|FECHO|s_count[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(20),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[19]~66\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[20]~67_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[20]~68\);

-- Location: FF_X86_Y43_N15
\ACESSO1|TEMP1|FECHO|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[20]~67_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(20));

-- Location: LCCOMB_X86_Y43_N16
\ACESSO1|TEMP1|FECHO|s_count[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[21]~69_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(21) & (!\ACESSO1|TEMP1|FECHO|s_count[20]~68\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(21) & ((\ACESSO1|TEMP1|FECHO|s_count[20]~68\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[21]~70\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[20]~68\) # (!\ACESSO1|TEMP1|FECHO|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(21),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[20]~68\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[21]~69_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[21]~70\);

-- Location: FF_X86_Y43_N17
\ACESSO1|TEMP1|FECHO|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[21]~69_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(21));

-- Location: LCCOMB_X84_Y45_N6
\ACESSO1|TEMP1|FECHO|s_decorre~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~11_combout\ = (!\ACESSO1|TEMP1|FECHO|s_count\(20) & (!\ACESSO1|TEMP1|FECHO|s_count\(21) & (!\ACESSO1|TEMP1|FECHO|s_count\(18) & !\ACESSO1|TEMP1|FECHO|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(20),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(21),
	datac => \ACESSO1|TEMP1|FECHO|s_count\(18),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(16),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~11_combout\);

-- Location: LCCOMB_X86_Y43_N18
\ACESSO1|TEMP1|FECHO|s_count[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[22]~71_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(22) & (\ACESSO1|TEMP1|FECHO|s_count[21]~70\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(22) & (!\ACESSO1|TEMP1|FECHO|s_count[21]~70\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[22]~72\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(22) & !\ACESSO1|TEMP1|FECHO|s_count[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(22),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[21]~70\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[22]~71_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[22]~72\);

-- Location: FF_X86_Y43_N19
\ACESSO1|TEMP1|FECHO|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[22]~71_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(22));

-- Location: LCCOMB_X86_Y43_N20
\ACESSO1|TEMP1|FECHO|s_count[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[23]~73_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(23) & (!\ACESSO1|TEMP1|FECHO|s_count[22]~72\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(23) & ((\ACESSO1|TEMP1|FECHO|s_count[22]~72\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[23]~74\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[22]~72\) # (!\ACESSO1|TEMP1|FECHO|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(23),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[22]~72\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[23]~73_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[23]~74\);

-- Location: FF_X86_Y43_N21
\ACESSO1|TEMP1|FECHO|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[23]~73_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(23));

-- Location: LCCOMB_X86_Y43_N22
\ACESSO1|TEMP1|FECHO|s_count[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[24]~75_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(24) & (\ACESSO1|TEMP1|FECHO|s_count[23]~74\ $ (GND))) # (!\ACESSO1|TEMP1|FECHO|s_count\(24) & (!\ACESSO1|TEMP1|FECHO|s_count[23]~74\ & VCC))
-- \ACESSO1|TEMP1|FECHO|s_count[24]~76\ = CARRY((\ACESSO1|TEMP1|FECHO|s_count\(24) & !\ACESSO1|TEMP1|FECHO|s_count[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(24),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[23]~74\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[24]~75_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[24]~76\);

-- Location: FF_X86_Y43_N23
\ACESSO1|TEMP1|FECHO|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[24]~75_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(24));

-- Location: LCCOMB_X86_Y43_N24
\ACESSO1|TEMP1|FECHO|s_count[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[25]~77_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(25) & (!\ACESSO1|TEMP1|FECHO|s_count[24]~76\)) # (!\ACESSO1|TEMP1|FECHO|s_count\(25) & ((\ACESSO1|TEMP1|FECHO|s_count[24]~76\) # (GND)))
-- \ACESSO1|TEMP1|FECHO|s_count[25]~78\ = CARRY((!\ACESSO1|TEMP1|FECHO|s_count[24]~76\) # (!\ACESSO1|TEMP1|FECHO|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|FECHO|s_count\(25),
	datad => VCC,
	cin => \ACESSO1|TEMP1|FECHO|s_count[24]~76\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[25]~77_combout\,
	cout => \ACESSO1|TEMP1|FECHO|s_count[25]~78\);

-- Location: FF_X86_Y43_N25
\ACESSO1|TEMP1|FECHO|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[25]~77_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(25));

-- Location: LCCOMB_X86_Y43_N26
\ACESSO1|TEMP1|FECHO|s_count[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_count[26]~79_combout\ = \ACESSO1|TEMP1|FECHO|s_count\(26) $ (!\ACESSO1|TEMP1|FECHO|s_count[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(26),
	cin => \ACESSO1|TEMP1|FECHO|s_count[25]~78\,
	combout => \ACESSO1|TEMP1|FECHO|s_count[26]~79_combout\);

-- Location: FF_X86_Y43_N27
\ACESSO1|TEMP1|FECHO|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_count[26]~79_combout\,
	sclr => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_count\(26));

-- Location: LCCOMB_X86_Y43_N30
\ACESSO1|TEMP1|FECHO|s_decorre~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~12_combout\ = (!\ACESSO1|TEMP1|FECHO|s_count\(24) & (!\ACESSO1|TEMP1|FECHO|s_count\(22) & (!\ACESSO1|TEMP1|FECHO|s_count\(26) & !\ACESSO1|TEMP1|FECHO|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(24),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(22),
	datac => \ACESSO1|TEMP1|FECHO|s_count\(26),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(23),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~12_combout\);

-- Location: LCCOMB_X84_Y45_N12
\ACESSO1|TEMP1|FECHO|s_decorre~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~10_combout\ = (!\ACESSO1|TEMP1|FECHO|s_count\(14) & (!\ACESSO1|TEMP1|FECHO|s_count\(13) & (!\ACESSO1|TEMP1|FECHO|s_count\(15) & !\ACESSO1|TEMP1|FECHO|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(14),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(13),
	datac => \ACESSO1|TEMP1|FECHO|s_count\(15),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(8),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~10_combout\);

-- Location: LCCOMB_X84_Y45_N16
\ACESSO1|TEMP1|FECHO|s_decorre~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~13_combout\ = (\ACESSO1|TEMP1|FECHO|s_decorre~11_combout\ & (\ACESSO1|TEMP1|FECHO|s_decorre~12_combout\ & \ACESSO1|TEMP1|FECHO|s_decorre~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_decorre~11_combout\,
	datac => \ACESSO1|TEMP1|FECHO|s_decorre~12_combout\,
	datad => \ACESSO1|TEMP1|FECHO|s_decorre~10_combout\,
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~13_combout\);

-- Location: LCCOMB_X86_Y44_N2
\ACESSO1|TEMP1|FECHO|s_decorre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~2_combout\ = (!\ACESSO1|TEMP1|FECHO|s_count\(12) & (!\ACESSO1|TEMP1|FECHO|s_count\(9) & (!\ACESSO1|TEMP1|FECHO|s_count\(10) & !\ACESSO1|TEMP1|FECHO|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(12),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(9),
	datac => \ACESSO1|TEMP1|FECHO|s_count\(10),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(11),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~2_combout\);

-- Location: LCCOMB_X87_Y43_N0
\ACESSO1|TEMP1|FECHO|s_decorre~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~3_combout\ = (!\ACESSO1|TEMP1|FECHO|s_count\(19) & (!\ACESSO1|TEMP1|FECHO|s_count\(25) & !\ACESSO1|TEMP1|FECHO|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(19),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(25),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(17),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~3_combout\);

-- Location: LCCOMB_X86_Y44_N0
\ACESSO1|TEMP1|FECHO|s_decorre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~1_combout\ = (!\ACESSO1|TEMP1|FECHO|s_count\(7) & (!\ACESSO1|TEMP1|FECHO|s_count\(6) & (!\ACESSO1|TEMP1|FECHO|s_count\(4) & !\ACESSO1|TEMP1|FECHO|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(7),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(6),
	datac => \ACESSO1|TEMP1|FECHO|s_count\(4),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(5),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~1_combout\);

-- Location: LCCOMB_X87_Y44_N24
\ACESSO1|TEMP1|FECHO|s_decorre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~0_combout\ = (!\ACESSO1|TEMP1|FECHO|s_count\(3) & (!\ACESSO1|TEMP1|FECHO|s_count\(1) & (!\ACESSO1|TEMP1|FECHO|s_count\(0) & !\ACESSO1|TEMP1|FECHO|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(3),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(1),
	datac => \ACESSO1|TEMP1|FECHO|s_count\(0),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(2),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~0_combout\);

-- Location: LCCOMB_X87_Y44_N18
\ACESSO1|TEMP1|FECHO|s_decorre~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~4_combout\ = (\ACESSO1|TEMP1|FECHO|s_decorre~2_combout\ & (\ACESSO1|TEMP1|FECHO|s_decorre~3_combout\ & (\ACESSO1|TEMP1|FECHO|s_decorre~1_combout\ & \ACESSO1|TEMP1|FECHO|s_decorre~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_decorre~2_combout\,
	datab => \ACESSO1|TEMP1|FECHO|s_decorre~3_combout\,
	datac => \ACESSO1|TEMP1|FECHO|s_decorre~1_combout\,
	datad => \ACESSO1|TEMP1|FECHO|s_decorre~0_combout\,
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~4_combout\);

-- Location: LCCOMB_X84_Y45_N8
\ACESSO1|TEMP1|FECHO|s_decorre~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~5_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(14) & (\ACESSO1|TEMP1|FECHO|s_count\(13) & (\ACESSO1|TEMP1|FECHO|s_count\(15) & \ACESSO1|TEMP1|FECHO|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(14),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(13),
	datac => \ACESSO1|TEMP1|FECHO|s_count\(15),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(8),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~5_combout\);

-- Location: LCCOMB_X84_Y45_N10
\ACESSO1|TEMP1|FECHO|s_decorre~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~6_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(20) & (\ACESSO1|TEMP1|FECHO|s_count\(21) & (\ACESSO1|TEMP1|FECHO|s_count\(18) & \ACESSO1|TEMP1|FECHO|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(20),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(21),
	datac => \ACESSO1|TEMP1|FECHO|s_count\(18),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(16),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~6_combout\);

-- Location: LCCOMB_X86_Y43_N28
\ACESSO1|TEMP1|FECHO|s_decorre~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~7_combout\ = (\ACESSO1|TEMP1|FECHO|s_count\(24) & (\ACESSO1|TEMP1|FECHO|s_count\(22) & (\ACESSO1|TEMP1|FECHO|s_count\(26) & \ACESSO1|TEMP1|FECHO|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_count\(24),
	datab => \ACESSO1|TEMP1|FECHO|s_count\(22),
	datac => \ACESSO1|TEMP1|FECHO|s_count\(26),
	datad => \ACESSO1|TEMP1|FECHO|s_count\(23),
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~7_combout\);

-- Location: LCCOMB_X85_Y45_N8
\ACESSO1|TEMP1|FECHO|s_decorre~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~8_combout\ = (\ACESSO1|TEMP1|FECHO|s_decorre~5_combout\ & (\ACESSO1|TEMP1|FECHO|s_decorre~6_combout\ & \ACESSO1|TEMP1|FECHO|s_decorre~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_decorre~5_combout\,
	datac => \ACESSO1|TEMP1|FECHO|s_decorre~6_combout\,
	datad => \ACESSO1|TEMP1|FECHO|s_decorre~7_combout\,
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~8_combout\);

-- Location: LCCOMB_X89_Y44_N4
\ACESSO1|TEMP1|ESPERA|s_count[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[0]~29_combout\ = \ACESSO1|TEMP1|ESPERA|s_count\(0) $ (VCC)
-- \ACESSO1|TEMP1|ESPERA|s_count[0]~30\ = CARRY(\ACESSO1|TEMP1|ESPERA|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(0),
	datad => VCC,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[0]~29_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[0]~30\);

-- Location: LCCOMB_X83_Y41_N6
\ACESSO1|TEMP1|ABERTURA|s_count[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[0]~28_combout\ = \ACESSO1|TEMP1|ABERTURA|s_count\(0) $ (VCC)
-- \ACESSO1|TEMP1|ABERTURA|s_count[0]~29\ = CARRY(\ACESSO1|TEMP1|ABERTURA|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(0),
	datad => VCC,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[0]~28_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[0]~29\);

-- Location: LCCOMB_X83_Y40_N6
\ACESSO1|TEMP1|ABERTURA|s_count[16]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[16]~60_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(16) & (\ACESSO1|TEMP1|ABERTURA|s_count[15]~59\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(16) & (!\ACESSO1|TEMP1|ABERTURA|s_count[15]~59\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[16]~61\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(16) & !\ACESSO1|TEMP1|ABERTURA|s_count[15]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(16),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[15]~59\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[16]~60_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[16]~61\);

-- Location: LCCOMB_X83_Y40_N8
\ACESSO1|TEMP1|ABERTURA|s_count[17]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[17]~62_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(17) & (!\ACESSO1|TEMP1|ABERTURA|s_count[16]~61\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(17) & ((\ACESSO1|TEMP1|ABERTURA|s_count[16]~61\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[17]~63\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[16]~61\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(17),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[16]~61\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[17]~62_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[17]~63\);

-- Location: FF_X83_Y40_N9
\ACESSO1|TEMP1|ABERTURA|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[17]~62_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(17));

-- Location: LCCOMB_X83_Y40_N10
\ACESSO1|TEMP1|ABERTURA|s_count[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[18]~64_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(18) & (\ACESSO1|TEMP1|ABERTURA|s_count[17]~63\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(18) & (!\ACESSO1|TEMP1|ABERTURA|s_count[17]~63\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[18]~65\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(18) & !\ACESSO1|TEMP1|ABERTURA|s_count[17]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(18),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[17]~63\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[18]~64_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[18]~65\);

-- Location: FF_X83_Y40_N11
\ACESSO1|TEMP1|ABERTURA|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[18]~64_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(18));

-- Location: LCCOMB_X83_Y40_N12
\ACESSO1|TEMP1|ABERTURA|s_count[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[19]~66_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(19) & (!\ACESSO1|TEMP1|ABERTURA|s_count[18]~65\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(19) & ((\ACESSO1|TEMP1|ABERTURA|s_count[18]~65\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[19]~67\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[18]~65\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(19),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[18]~65\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[19]~66_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[19]~67\);

-- Location: FF_X83_Y40_N13
\ACESSO1|TEMP1|ABERTURA|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[19]~66_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(19));

-- Location: LCCOMB_X83_Y40_N14
\ACESSO1|TEMP1|ABERTURA|s_count[20]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[20]~68_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(20) & (\ACESSO1|TEMP1|ABERTURA|s_count[19]~67\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(20) & (!\ACESSO1|TEMP1|ABERTURA|s_count[19]~67\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[20]~69\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(20) & !\ACESSO1|TEMP1|ABERTURA|s_count[19]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(20),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[19]~67\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[20]~68_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[20]~69\);

-- Location: FF_X83_Y40_N15
\ACESSO1|TEMP1|ABERTURA|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[20]~68_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(20));

-- Location: LCCOMB_X83_Y40_N16
\ACESSO1|TEMP1|ABERTURA|s_count[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[21]~70_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(21) & (!\ACESSO1|TEMP1|ABERTURA|s_count[20]~69\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(21) & ((\ACESSO1|TEMP1|ABERTURA|s_count[20]~69\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[21]~71\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[20]~69\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(21),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[20]~69\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[21]~70_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[21]~71\);

-- Location: FF_X83_Y40_N17
\ACESSO1|TEMP1|ABERTURA|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[21]~70_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(21));

-- Location: LCCOMB_X83_Y40_N18
\ACESSO1|TEMP1|ABERTURA|s_count[22]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[22]~72_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(22) & (\ACESSO1|TEMP1|ABERTURA|s_count[21]~71\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(22) & (!\ACESSO1|TEMP1|ABERTURA|s_count[21]~71\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[22]~73\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(22) & !\ACESSO1|TEMP1|ABERTURA|s_count[21]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(22),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[21]~71\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[22]~72_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[22]~73\);

-- Location: FF_X83_Y40_N19
\ACESSO1|TEMP1|ABERTURA|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[22]~72_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(22));

-- Location: LCCOMB_X83_Y40_N20
\ACESSO1|TEMP1|ABERTURA|s_count[23]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[23]~74_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(23) & (!\ACESSO1|TEMP1|ABERTURA|s_count[22]~73\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(23) & ((\ACESSO1|TEMP1|ABERTURA|s_count[22]~73\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[23]~75\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[22]~73\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(23),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[22]~73\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[23]~74_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[23]~75\);

-- Location: FF_X83_Y40_N21
\ACESSO1|TEMP1|ABERTURA|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[23]~74_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(23));

-- Location: LCCOMB_X83_Y40_N22
\ACESSO1|TEMP1|ABERTURA|s_count[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[24]~76_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(24) & (\ACESSO1|TEMP1|ABERTURA|s_count[23]~75\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(24) & (!\ACESSO1|TEMP1|ABERTURA|s_count[23]~75\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[24]~77\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(24) & !\ACESSO1|TEMP1|ABERTURA|s_count[23]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(24),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[23]~75\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[24]~76_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[24]~77\);

-- Location: FF_X83_Y40_N23
\ACESSO1|TEMP1|ABERTURA|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[24]~76_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(24));

-- Location: LCCOMB_X83_Y40_N24
\ACESSO1|TEMP1|ABERTURA|s_count[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[25]~78_combout\ = \ACESSO1|TEMP1|ABERTURA|s_count[24]~77\ $ (\ACESSO1|TEMP1|ABERTURA|s_count\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(25),
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[24]~77\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[25]~78_combout\);

-- Location: FF_X83_Y40_N25
\ACESSO1|TEMP1|ABERTURA|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[25]~78_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(25));

-- Location: LCCOMB_X82_Y41_N10
\ACESSO1|TEMP1|ABERTURA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal0~7_combout\ = (!\ACESSO1|TEMP1|ABERTURA|s_count\(23) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(21) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(25) & !\ACESSO1|TEMP1|ABERTURA|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(23),
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(21),
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(25),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(22),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal0~7_combout\);

-- Location: LCCOMB_X82_Y41_N24
\ACESSO1|TEMP1|ABERTURA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal0~5_combout\ = (!\ACESSO1|TEMP1|ABERTURA|s_count\(12) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(14) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(7) & !\ACESSO1|TEMP1|ABERTURA|s_count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(12),
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(14),
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(7),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(13),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal0~5_combout\);

-- Location: LCCOMB_X83_Y40_N30
\ACESSO1|TEMP1|ABERTURA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal0~6_combout\ = (!\ACESSO1|TEMP1|ABERTURA|s_count\(15) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(17) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(20) & !\ACESSO1|TEMP1|ABERTURA|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(15),
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(17),
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(20),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(19),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal0~6_combout\);

-- Location: LCCOMB_X82_Y41_N4
\ACESSO1|TEMP1|ABERTURA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal0~8_combout\ = (\ACESSO1|TEMP1|ABERTURA|Equal0~7_combout\ & (\ACESSO1|TEMP1|ABERTURA|Equal0~5_combout\ & (\ACESSO1|TEMP1|ABERTURA|Equal0~4_combout\ & \ACESSO1|TEMP1|ABERTURA|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|Equal0~7_combout\,
	datab => \ACESSO1|TEMP1|ABERTURA|Equal0~5_combout\,
	datac => \ACESSO1|TEMP1|ABERTURA|Equal0~4_combout\,
	datad => \ACESSO1|TEMP1|ABERTURA|Equal0~6_combout\,
	combout => \ACESSO1|TEMP1|ABERTURA|Equal0~8_combout\);

-- Location: LCCOMB_X88_Y42_N16
\ACESSO1|TEMP1|ABERTURA|s_decorre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_decorre~2_combout\ = (\ACESSO1|TEMP1|ABERTURA|Equal0~8_combout\ & (!\ACESSO1|VAL1|AND1~0_combout\ & ((!\OCUP1|inst|s_cheio~2_combout\)))) # (!\ACESSO1|TEMP1|ABERTURA|Equal0~8_combout\ & 
-- (((\ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|VAL1|AND1~0_combout\,
	datab => \ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\,
	datac => \ACESSO1|TEMP1|ABERTURA|Equal0~8_combout\,
	datad => \OCUP1|inst|s_cheio~2_combout\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_decorre~2_combout\);

-- Location: FF_X88_Y42_N17
\ACESSO1|TEMP1|ABERTURA|s_decorre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_decorre~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_decorre~q\);

-- Location: LCCOMB_X97_Y44_N10
\CART_DBN|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~0_combout\ = \CART_DBN|s_debounceCnt\(0) $ (VCC)
-- \CART_DBN|Add0~1\ = CARRY(\CART_DBN|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(0),
	datad => VCC,
	combout => \CART_DBN|Add0~0_combout\,
	cout => \CART_DBN|Add0~1\);

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

-- Location: LCCOMB_X108_Y43_N24
\CART_DBN|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \CART_DBN|s_dirtyIn~0_combout\);

-- Location: FF_X108_Y43_N25
\CART_DBN|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_dirtyIn~q\);

-- Location: FF_X97_Y45_N3
\CART_DBN|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CART_DBN|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_previousIn~q\);

-- Location: LCCOMB_X97_Y44_N18
\CART_DBN|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~8_combout\ = (\CART_DBN|s_debounceCnt\(4) & ((GND) # (!\CART_DBN|Add0~7\))) # (!\CART_DBN|s_debounceCnt\(4) & (\CART_DBN|Add0~7\ $ (GND)))
-- \CART_DBN|Add0~9\ = CARRY((\CART_DBN|s_debounceCnt\(4)) # (!\CART_DBN|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(4),
	datad => VCC,
	cin => \CART_DBN|Add0~7\,
	combout => \CART_DBN|Add0~8_combout\,
	cout => \CART_DBN|Add0~9\);

-- Location: LCCOMB_X97_Y44_N20
\CART_DBN|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~10_combout\ = (\CART_DBN|s_debounceCnt\(5) & (\CART_DBN|Add0~9\ & VCC)) # (!\CART_DBN|s_debounceCnt\(5) & (!\CART_DBN|Add0~9\))
-- \CART_DBN|Add0~11\ = CARRY((!\CART_DBN|s_debounceCnt\(5) & !\CART_DBN|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(5),
	datad => VCC,
	cin => \CART_DBN|Add0~9\,
	combout => \CART_DBN|Add0~10_combout\,
	cout => \CART_DBN|Add0~11\);

-- Location: LCCOMB_X96_Y43_N0
\CART_DBN|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~1_combout\ = (\CART_DBN|s_debounceCnt[10]~0_combout\ & ((\CART_DBN|Add0~10_combout\) # (!\CART_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt[10]~0_combout\,
	datac => \CART_DBN|Add0~10_combout\,
	datad => \CART_DBN|s_previousIn~q\,
	combout => \CART_DBN|s_debounceCnt~1_combout\);

-- Location: LCCOMB_X97_Y45_N2
\CART_DBN|s_debounceCnt[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[10]~3_combout\ = (\CART_DBN|s_debounceCnt[10]~2_combout\) # (((\CART_DBN|s_debounceCnt\(21)) # (!\CART_DBN|s_previousIn~q\)) # (!\CART_DBN|s_dirtyIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt[10]~2_combout\,
	datab => \CART_DBN|s_dirtyIn~q\,
	datac => \CART_DBN|s_previousIn~q\,
	datad => \CART_DBN|s_debounceCnt\(21),
	combout => \CART_DBN|s_debounceCnt[10]~3_combout\);

-- Location: FF_X96_Y43_N1
\CART_DBN|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~1_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(5));

-- Location: LCCOMB_X97_Y44_N22
\CART_DBN|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~12_combout\ = (\CART_DBN|s_debounceCnt\(6) & ((GND) # (!\CART_DBN|Add0~11\))) # (!\CART_DBN|s_debounceCnt\(6) & (\CART_DBN|Add0~11\ $ (GND)))
-- \CART_DBN|Add0~13\ = CARRY((\CART_DBN|s_debounceCnt\(6)) # (!\CART_DBN|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(6),
	datad => VCC,
	cin => \CART_DBN|Add0~11\,
	combout => \CART_DBN|Add0~12_combout\,
	cout => \CART_DBN|Add0~13\);

-- Location: LCCOMB_X97_Y45_N14
\CART_DBN|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~12_combout\ = (\CART_DBN|Add0~12_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CART_DBN|Add0~12_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~12_combout\);

-- Location: FF_X97_Y45_N15
\CART_DBN|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~12_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(6));

-- Location: LCCOMB_X97_Y44_N24
\CART_DBN|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~14_combout\ = (\CART_DBN|s_debounceCnt\(7) & (\CART_DBN|Add0~13\ & VCC)) # (!\CART_DBN|s_debounceCnt\(7) & (!\CART_DBN|Add0~13\))
-- \CART_DBN|Add0~15\ = CARRY((!\CART_DBN|s_debounceCnt\(7) & !\CART_DBN|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(7),
	datad => VCC,
	cin => \CART_DBN|Add0~13\,
	combout => \CART_DBN|Add0~14_combout\,
	cout => \CART_DBN|Add0~15\);

-- Location: LCCOMB_X96_Y43_N4
\CART_DBN|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~13_combout\ = (\CART_DBN|s_debounceCnt[10]~0_combout\ & ((\CART_DBN|Add0~14_combout\) # (!\CART_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|Add0~14_combout\,
	datac => \CART_DBN|s_debounceCnt[10]~0_combout\,
	datad => \CART_DBN|s_previousIn~q\,
	combout => \CART_DBN|s_debounceCnt~13_combout\);

-- Location: FF_X96_Y43_N5
\CART_DBN|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~13_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(7));

-- Location: LCCOMB_X97_Y44_N26
\CART_DBN|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~16_combout\ = (\CART_DBN|s_debounceCnt\(8) & ((GND) # (!\CART_DBN|Add0~15\))) # (!\CART_DBN|s_debounceCnt\(8) & (\CART_DBN|Add0~15\ $ (GND)))
-- \CART_DBN|Add0~17\ = CARRY((\CART_DBN|s_debounceCnt\(8)) # (!\CART_DBN|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(8),
	datad => VCC,
	cin => \CART_DBN|Add0~15\,
	combout => \CART_DBN|Add0~16_combout\,
	cout => \CART_DBN|Add0~17\);

-- Location: LCCOMB_X96_Y43_N6
\CART_DBN|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~14_combout\ = (\CART_DBN|s_debounceCnt[10]~0_combout\ & ((\CART_DBN|Add0~16_combout\) # (!\CART_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|Add0~16_combout\,
	datac => \CART_DBN|s_debounceCnt[10]~0_combout\,
	datad => \CART_DBN|s_previousIn~q\,
	combout => \CART_DBN|s_debounceCnt~14_combout\);

-- Location: FF_X96_Y43_N7
\CART_DBN|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~14_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(8));

-- Location: LCCOMB_X97_Y44_N28
\CART_DBN|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~18_combout\ = (\CART_DBN|s_debounceCnt\(9) & (\CART_DBN|Add0~17\ & VCC)) # (!\CART_DBN|s_debounceCnt\(9) & (!\CART_DBN|Add0~17\))
-- \CART_DBN|Add0~19\ = CARRY((!\CART_DBN|s_debounceCnt\(9) & !\CART_DBN|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(9),
	datad => VCC,
	cin => \CART_DBN|Add0~17\,
	combout => \CART_DBN|Add0~18_combout\,
	cout => \CART_DBN|Add0~19\);

-- Location: LCCOMB_X97_Y44_N0
\CART_DBN|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~15_combout\ = (\CART_DBN|Add0~18_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|Add0~18_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~15_combout\);

-- Location: FF_X97_Y44_N1
\CART_DBN|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~15_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(9));

-- Location: LCCOMB_X96_Y43_N8
\CART_DBN|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_pulsedOut~2_combout\ = (!\CART_DBN|s_debounceCnt\(8) & (!\CART_DBN|s_debounceCnt\(9) & (!\CART_DBN|s_debounceCnt\(7) & !\CART_DBN|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(8),
	datab => \CART_DBN|s_debounceCnt\(9),
	datac => \CART_DBN|s_debounceCnt\(7),
	datad => \CART_DBN|s_debounceCnt\(6),
	combout => \CART_DBN|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X97_Y44_N30
\CART_DBN|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~20_combout\ = (\CART_DBN|s_debounceCnt\(10) & ((GND) # (!\CART_DBN|Add0~19\))) # (!\CART_DBN|s_debounceCnt\(10) & (\CART_DBN|Add0~19\ $ (GND)))
-- \CART_DBN|Add0~21\ = CARRY((\CART_DBN|s_debounceCnt\(10)) # (!\CART_DBN|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(10),
	datad => VCC,
	cin => \CART_DBN|Add0~19\,
	combout => \CART_DBN|Add0~20_combout\,
	cout => \CART_DBN|Add0~21\);

-- Location: LCCOMB_X96_Y43_N10
\CART_DBN|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~16_combout\ = (\CART_DBN|s_debounceCnt[10]~0_combout\ & ((\CART_DBN|Add0~20_combout\) # (!\CART_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt[10]~0_combout\,
	datac => \CART_DBN|Add0~20_combout\,
	datad => \CART_DBN|s_previousIn~q\,
	combout => \CART_DBN|s_debounceCnt~16_combout\);

-- Location: FF_X96_Y43_N11
\CART_DBN|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~16_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(10));

-- Location: LCCOMB_X97_Y43_N0
\CART_DBN|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~22_combout\ = (\CART_DBN|s_debounceCnt\(11) & (\CART_DBN|Add0~21\ & VCC)) # (!\CART_DBN|s_debounceCnt\(11) & (!\CART_DBN|Add0~21\))
-- \CART_DBN|Add0~23\ = CARRY((!\CART_DBN|s_debounceCnt\(11) & !\CART_DBN|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(11),
	datad => VCC,
	cin => \CART_DBN|Add0~21\,
	combout => \CART_DBN|Add0~22_combout\,
	cout => \CART_DBN|Add0~23\);

-- Location: LCCOMB_X97_Y43_N26
\CART_DBN|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~8_combout\ = (\CART_DBN|Add0~22_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|Add0~22_combout\,
	datac => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~8_combout\);

-- Location: FF_X97_Y43_N27
\CART_DBN|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~8_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(11));

-- Location: LCCOMB_X97_Y43_N2
\CART_DBN|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~24_combout\ = (\CART_DBN|s_debounceCnt\(12) & ((GND) # (!\CART_DBN|Add0~23\))) # (!\CART_DBN|s_debounceCnt\(12) & (\CART_DBN|Add0~23\ $ (GND)))
-- \CART_DBN|Add0~25\ = CARRY((\CART_DBN|s_debounceCnt\(12)) # (!\CART_DBN|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(12),
	datad => VCC,
	cin => \CART_DBN|Add0~23\,
	combout => \CART_DBN|Add0~24_combout\,
	cout => \CART_DBN|Add0~25\);

-- Location: LCCOMB_X97_Y43_N28
\CART_DBN|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~9_combout\ = (\CART_DBN|Add0~24_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|Add0~24_combout\,
	datac => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~9_combout\);

-- Location: FF_X97_Y43_N29
\CART_DBN|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~9_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(12));

-- Location: LCCOMB_X97_Y43_N4
\CART_DBN|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~26_combout\ = (\CART_DBN|s_debounceCnt\(13) & (\CART_DBN|Add0~25\ & VCC)) # (!\CART_DBN|s_debounceCnt\(13) & (!\CART_DBN|Add0~25\))
-- \CART_DBN|Add0~27\ = CARRY((!\CART_DBN|s_debounceCnt\(13) & !\CART_DBN|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(13),
	datad => VCC,
	cin => \CART_DBN|Add0~25\,
	combout => \CART_DBN|Add0~26_combout\,
	cout => \CART_DBN|Add0~27\);

-- Location: LCCOMB_X96_Y43_N20
\CART_DBN|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~17_combout\ = (\CART_DBN|s_debounceCnt[10]~0_combout\ & ((\CART_DBN|Add0~26_combout\) # (!\CART_DBN|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt[10]~0_combout\,
	datac => \CART_DBN|Add0~26_combout\,
	datad => \CART_DBN|s_previousIn~q\,
	combout => \CART_DBN|s_debounceCnt~17_combout\);

-- Location: FF_X96_Y43_N21
\CART_DBN|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~17_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(13));

-- Location: LCCOMB_X97_Y43_N6
\CART_DBN|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~28_combout\ = (\CART_DBN|s_debounceCnt\(14) & ((GND) # (!\CART_DBN|Add0~27\))) # (!\CART_DBN|s_debounceCnt\(14) & (\CART_DBN|Add0~27\ $ (GND)))
-- \CART_DBN|Add0~29\ = CARRY((\CART_DBN|s_debounceCnt\(14)) # (!\CART_DBN|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(14),
	datad => VCC,
	cin => \CART_DBN|Add0~27\,
	combout => \CART_DBN|Add0~28_combout\,
	cout => \CART_DBN|Add0~29\);

-- Location: LCCOMB_X97_Y43_N22
\CART_DBN|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~5_combout\ = (\CART_DBN|Add0~28_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|Add0~28_combout\,
	datac => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~5_combout\);

-- Location: FF_X97_Y43_N23
\CART_DBN|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~5_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(14));

-- Location: LCCOMB_X97_Y43_N8
\CART_DBN|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~30_combout\ = (\CART_DBN|s_debounceCnt\(15) & (\CART_DBN|Add0~29\ & VCC)) # (!\CART_DBN|s_debounceCnt\(15) & (!\CART_DBN|Add0~29\))
-- \CART_DBN|Add0~31\ = CARRY((!\CART_DBN|s_debounceCnt\(15) & !\CART_DBN|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(15),
	datad => VCC,
	cin => \CART_DBN|Add0~29\,
	combout => \CART_DBN|Add0~30_combout\,
	cout => \CART_DBN|Add0~31\);

-- Location: LCCOMB_X97_Y43_N24
\CART_DBN|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~6_combout\ = (\CART_DBN|s_debounceCnt[10]~4_combout\ & \CART_DBN|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt[10]~4_combout\,
	datac => \CART_DBN|Add0~30_combout\,
	combout => \CART_DBN|s_debounceCnt~6_combout\);

-- Location: FF_X97_Y43_N25
\CART_DBN|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~6_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(15));

-- Location: LCCOMB_X97_Y43_N10
\CART_DBN|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~32_combout\ = (\CART_DBN|s_debounceCnt\(16) & ((GND) # (!\CART_DBN|Add0~31\))) # (!\CART_DBN|s_debounceCnt\(16) & (\CART_DBN|Add0~31\ $ (GND)))
-- \CART_DBN|Add0~33\ = CARRY((\CART_DBN|s_debounceCnt\(16)) # (!\CART_DBN|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(16),
	datad => VCC,
	cin => \CART_DBN|Add0~31\,
	combout => \CART_DBN|Add0~32_combout\,
	cout => \CART_DBN|Add0~33\);

-- Location: LCCOMB_X96_Y44_N0
\CART_DBN|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~7_combout\ = (\CART_DBN|Add0~32_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|Add0~32_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~7_combout\);

-- Location: FF_X96_Y44_N1
\CART_DBN|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~7_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(16));

-- Location: LCCOMB_X97_Y43_N12
\CART_DBN|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~34_combout\ = (\CART_DBN|s_debounceCnt\(17) & (\CART_DBN|Add0~33\ & VCC)) # (!\CART_DBN|s_debounceCnt\(17) & (!\CART_DBN|Add0~33\))
-- \CART_DBN|Add0~35\ = CARRY((!\CART_DBN|s_debounceCnt\(17) & !\CART_DBN|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(17),
	datad => VCC,
	cin => \CART_DBN|Add0~33\,
	combout => \CART_DBN|Add0~34_combout\,
	cout => \CART_DBN|Add0~35\);

-- Location: LCCOMB_X96_Y43_N22
\CART_DBN|s_debounceCnt[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[17]~18_combout\ = (\CART_DBN|s_debounceCnt[10]~0_combout\ & (\CART_DBN|s_debounceCnt[10]~3_combout\ & ((\CART_DBN|Add0~34_combout\) # (!\CART_DBN|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_previousIn~q\,
	datab => \CART_DBN|s_debounceCnt[10]~0_combout\,
	datac => \CART_DBN|Add0~34_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~3_combout\,
	combout => \CART_DBN|s_debounceCnt[17]~18_combout\);

-- Location: FF_X96_Y43_N23
\CART_DBN|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(17));

-- Location: LCCOMB_X96_Y43_N18
\CART_DBN|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_pulsedOut~3_combout\ = (!\CART_DBN|s_debounceCnt\(10) & (!\CART_DBN|s_debounceCnt\(13) & (!\CART_DBN|s_debounceCnt\(17) & !\CART_DBN|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(10),
	datab => \CART_DBN|s_debounceCnt\(13),
	datac => \CART_DBN|s_debounceCnt\(17),
	datad => \CART_DBN|s_debounceCnt\(18),
	combout => \CART_DBN|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X97_Y43_N30
\CART_DBN|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_pulsedOut~1_combout\ = (!\CART_DBN|s_debounceCnt\(20) & (!\CART_DBN|s_debounceCnt\(12) & (!\CART_DBN|s_debounceCnt\(11) & !\CART_DBN|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(20),
	datab => \CART_DBN|s_debounceCnt\(12),
	datac => \CART_DBN|s_debounceCnt\(11),
	datad => \CART_DBN|s_debounceCnt\(19),
	combout => \CART_DBN|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X96_Y43_N2
\CART_DBN|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_pulsedOut~0_combout\ = (!\CART_DBN|s_debounceCnt\(15) & (!\CART_DBN|s_debounceCnt\(5) & (!\CART_DBN|s_debounceCnt\(16) & !\CART_DBN|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(15),
	datab => \CART_DBN|s_debounceCnt\(5),
	datac => \CART_DBN|s_debounceCnt\(16),
	datad => \CART_DBN|s_debounceCnt\(14),
	combout => \CART_DBN|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X96_Y43_N12
\CART_DBN|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_pulsedOut~4_combout\ = (\CART_DBN|s_pulsedOut~2_combout\ & (\CART_DBN|s_pulsedOut~3_combout\ & (\CART_DBN|s_pulsedOut~1_combout\ & \CART_DBN|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_pulsedOut~2_combout\,
	datab => \CART_DBN|s_pulsedOut~3_combout\,
	datac => \CART_DBN|s_pulsedOut~1_combout\,
	datad => \CART_DBN|s_pulsedOut~0_combout\,
	combout => \CART_DBN|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X97_Y45_N30
\CART_DBN|s_debounceCnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[10]~2_combout\ = ((\CART_DBN|s_debounceCnt\(0)) # (!\CART_DBN|s_pulsedOut~4_combout\)) # (!\CART_DBN|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_pulsedOut~5_combout\,
	datac => \CART_DBN|s_pulsedOut~4_combout\,
	datad => \CART_DBN|s_debounceCnt\(0),
	combout => \CART_DBN|s_debounceCnt[10]~2_combout\);

-- Location: LCCOMB_X97_Y45_N26
\CART_DBN|s_debounceCnt[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[21]~25_combout\ = (\CART_DBN|s_dirtyIn~q\ & ((\CART_DBN|s_debounceCnt\(21) & ((!\CART_DBN|LessThan0~6_combout\))) # (!\CART_DBN|s_debounceCnt\(21) & (\CART_DBN|s_debounceCnt[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt[10]~2_combout\,
	datab => \CART_DBN|LessThan0~6_combout\,
	datac => \CART_DBN|s_dirtyIn~q\,
	datad => \CART_DBN|s_debounceCnt\(21),
	combout => \CART_DBN|s_debounceCnt[21]~25_combout\);

-- Location: LCCOMB_X97_Y43_N18
\CART_DBN|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~40_combout\ = (\CART_DBN|s_debounceCnt\(20) & ((GND) # (!\CART_DBN|Add0~39\))) # (!\CART_DBN|s_debounceCnt\(20) & (\CART_DBN|Add0~39\ $ (GND)))
-- \CART_DBN|Add0~41\ = CARRY((\CART_DBN|s_debounceCnt\(20)) # (!\CART_DBN|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(20),
	datad => VCC,
	cin => \CART_DBN|Add0~39\,
	combout => \CART_DBN|Add0~40_combout\,
	cout => \CART_DBN|Add0~41\);

-- Location: LCCOMB_X97_Y43_N20
\CART_DBN|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~42_combout\ = \CART_DBN|s_debounceCnt\(21) $ (!\CART_DBN|Add0~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(21),
	cin => \CART_DBN|Add0~41\,
	combout => \CART_DBN|Add0~42_combout\);

-- Location: LCCOMB_X97_Y45_N28
\CART_DBN|s_debounceCnt[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[21]~26_combout\ = (\CART_DBN|s_previousIn~q\ & (\CART_DBN|s_debounceCnt[21]~25_combout\ & ((\CART_DBN|Add0~42_combout\)))) # (!\CART_DBN|s_previousIn~q\ & (((\CART_DBN|s_debounceCnt[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt[21]~25_combout\,
	datab => \CART_DBN|s_debounceCnt[10]~0_combout\,
	datac => \CART_DBN|s_previousIn~q\,
	datad => \CART_DBN|Add0~42_combout\,
	combout => \CART_DBN|s_debounceCnt[21]~26_combout\);

-- Location: FF_X97_Y45_N29
\CART_DBN|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(21));

-- Location: LCCOMB_X97_Y45_N20
\CART_DBN|s_debounceCnt[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[10]~0_combout\ = (\CART_DBN|s_dirtyIn~q\ & ((!\CART_DBN|s_debounceCnt\(21)) # (!\CART_DBN|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|LessThan0~6_combout\,
	datac => \CART_DBN|s_dirtyIn~q\,
	datad => \CART_DBN|s_debounceCnt\(21),
	combout => \CART_DBN|s_debounceCnt[10]~0_combout\);

-- Location: LCCOMB_X97_Y43_N14
\CART_DBN|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~36_combout\ = (\CART_DBN|s_debounceCnt\(18) & ((GND) # (!\CART_DBN|Add0~35\))) # (!\CART_DBN|s_debounceCnt\(18) & (\CART_DBN|Add0~35\ $ (GND)))
-- \CART_DBN|Add0~37\ = CARRY((\CART_DBN|s_debounceCnt\(18)) # (!\CART_DBN|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(18),
	datad => VCC,
	cin => \CART_DBN|Add0~35\,
	combout => \CART_DBN|Add0~36_combout\,
	cout => \CART_DBN|Add0~37\);

-- Location: LCCOMB_X96_Y43_N16
\CART_DBN|s_debounceCnt[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[18]~19_combout\ = (\CART_DBN|s_debounceCnt[10]~0_combout\ & (\CART_DBN|s_debounceCnt[10]~3_combout\ & ((\CART_DBN|Add0~36_combout\) # (!\CART_DBN|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_previousIn~q\,
	datab => \CART_DBN|s_debounceCnt[10]~0_combout\,
	datac => \CART_DBN|Add0~36_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~3_combout\,
	combout => \CART_DBN|s_debounceCnt[18]~19_combout\);

-- Location: FF_X96_Y43_N17
\CART_DBN|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(18));

-- Location: LCCOMB_X97_Y43_N16
\CART_DBN|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~38_combout\ = (\CART_DBN|s_debounceCnt\(19) & (\CART_DBN|Add0~37\ & VCC)) # (!\CART_DBN|s_debounceCnt\(19) & (!\CART_DBN|Add0~37\))
-- \CART_DBN|Add0~39\ = CARRY((!\CART_DBN|s_debounceCnt\(19) & !\CART_DBN|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(19),
	datad => VCC,
	cin => \CART_DBN|Add0~37\,
	combout => \CART_DBN|Add0~38_combout\,
	cout => \CART_DBN|Add0~39\);

-- Location: LCCOMB_X97_Y45_N10
\CART_DBN|s_debounceCnt[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[19]~10_combout\ = (\CART_DBN|s_debounceCnt[10]~4_combout\ & (\CART_DBN|Add0~38_combout\ & \CART_DBN|s_debounceCnt[10]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt[10]~4_combout\,
	datac => \CART_DBN|Add0~38_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~3_combout\,
	combout => \CART_DBN|s_debounceCnt[19]~10_combout\);

-- Location: FF_X97_Y45_N11
\CART_DBN|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(19));

-- Location: LCCOMB_X97_Y45_N12
\CART_DBN|s_debounceCnt[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[20]~11_combout\ = (\CART_DBN|s_debounceCnt[10]~4_combout\ & (\CART_DBN|Add0~40_combout\ & \CART_DBN|s_debounceCnt[10]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt[10]~4_combout\,
	datac => \CART_DBN|Add0~40_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~3_combout\,
	combout => \CART_DBN|s_debounceCnt[20]~11_combout\);

-- Location: FF_X97_Y45_N13
\CART_DBN|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(20));

-- Location: LCCOMB_X96_Y43_N26
\CART_DBN|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|LessThan0~3_combout\ = (\CART_DBN|s_debounceCnt\(11)) # ((\CART_DBN|s_debounceCnt\(12)) # ((\CART_DBN|s_debounceCnt\(10) & \CART_DBN|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(10),
	datab => \CART_DBN|s_debounceCnt\(11),
	datac => \CART_DBN|s_debounceCnt\(12),
	datad => \CART_DBN|s_debounceCnt\(9),
	combout => \CART_DBN|LessThan0~3_combout\);

-- Location: LCCOMB_X96_Y43_N28
\CART_DBN|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|LessThan0~4_combout\ = (\CART_DBN|s_debounceCnt\(15)) # ((\CART_DBN|s_debounceCnt\(14)) # ((\CART_DBN|s_debounceCnt\(13) & \CART_DBN|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(15),
	datab => \CART_DBN|s_debounceCnt\(13),
	datac => \CART_DBN|LessThan0~3_combout\,
	datad => \CART_DBN|s_debounceCnt\(14),
	combout => \CART_DBN|LessThan0~4_combout\);

-- Location: LCCOMB_X96_Y43_N30
\CART_DBN|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|LessThan0~5_combout\ = (\CART_DBN|s_debounceCnt\(17) & (\CART_DBN|s_debounceCnt\(18) & ((\CART_DBN|s_debounceCnt\(16)) # (\CART_DBN|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(16),
	datab => \CART_DBN|LessThan0~4_combout\,
	datac => \CART_DBN|s_debounceCnt\(17),
	datad => \CART_DBN|s_debounceCnt\(18),
	combout => \CART_DBN|LessThan0~5_combout\);

-- Location: LCCOMB_X96_Y43_N14
\CART_DBN|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|LessThan0~1_combout\ = (\CART_DBN|s_debounceCnt\(17) & (\CART_DBN|s_debounceCnt\(13) & (\CART_DBN|s_debounceCnt\(7) & \CART_DBN|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(17),
	datab => \CART_DBN|s_debounceCnt\(13),
	datac => \CART_DBN|s_debounceCnt\(7),
	datad => \CART_DBN|s_debounceCnt\(18),
	combout => \CART_DBN|LessThan0~1_combout\);

-- Location: LCCOMB_X97_Y45_N16
\CART_DBN|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|LessThan0~0_combout\ = (\CART_DBN|s_debounceCnt\(6)) # ((\CART_DBN|s_debounceCnt\(5) & ((\CART_DBN|s_debounceCnt\(0)) # (!\CART_DBN|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_pulsedOut~5_combout\,
	datab => \CART_DBN|s_debounceCnt\(5),
	datac => \CART_DBN|s_debounceCnt\(6),
	datad => \CART_DBN|s_debounceCnt\(0),
	combout => \CART_DBN|LessThan0~0_combout\);

-- Location: LCCOMB_X96_Y43_N24
\CART_DBN|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|LessThan0~2_combout\ = (\CART_DBN|s_debounceCnt\(8) & (\CART_DBN|s_debounceCnt\(10) & (\CART_DBN|LessThan0~1_combout\ & \CART_DBN|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(8),
	datab => \CART_DBN|s_debounceCnt\(10),
	datac => \CART_DBN|LessThan0~1_combout\,
	datad => \CART_DBN|LessThan0~0_combout\,
	combout => \CART_DBN|LessThan0~2_combout\);

-- Location: LCCOMB_X97_Y45_N18
\CART_DBN|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|LessThan0~6_combout\ = (\CART_DBN|s_debounceCnt\(20)) # ((\CART_DBN|LessThan0~5_combout\) # ((\CART_DBN|LessThan0~2_combout\) # (\CART_DBN|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(20),
	datab => \CART_DBN|LessThan0~5_combout\,
	datac => \CART_DBN|LessThan0~2_combout\,
	datad => \CART_DBN|s_debounceCnt\(19),
	combout => \CART_DBN|LessThan0~6_combout\);

-- Location: LCCOMB_X97_Y45_N0
\CART_DBN|s_debounceCnt[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt[10]~4_combout\ = (\CART_DBN|s_previousIn~q\ & (\CART_DBN|s_dirtyIn~q\ & ((!\CART_DBN|s_debounceCnt\(21)) # (!\CART_DBN|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_previousIn~q\,
	datab => \CART_DBN|LessThan0~6_combout\,
	datac => \CART_DBN|s_dirtyIn~q\,
	datad => \CART_DBN|s_debounceCnt\(21),
	combout => \CART_DBN|s_debounceCnt[10]~4_combout\);

-- Location: LCCOMB_X97_Y45_N8
\CART_DBN|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~24_combout\ = (\CART_DBN|Add0~0_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CART_DBN|Add0~0_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~24_combout\);

-- Location: FF_X97_Y45_N9
\CART_DBN|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~24_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(0));

-- Location: LCCOMB_X97_Y44_N12
\CART_DBN|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~2_combout\ = (\CART_DBN|s_debounceCnt\(1) & (\CART_DBN|Add0~1\ & VCC)) # (!\CART_DBN|s_debounceCnt\(1) & (!\CART_DBN|Add0~1\))
-- \CART_DBN|Add0~3\ = CARRY((!\CART_DBN|s_debounceCnt\(1) & !\CART_DBN|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(1),
	datad => VCC,
	cin => \CART_DBN|Add0~1\,
	combout => \CART_DBN|Add0~2_combout\,
	cout => \CART_DBN|Add0~3\);

-- Location: LCCOMB_X96_Y44_N2
\CART_DBN|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~20_combout\ = (\CART_DBN|Add0~2_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CART_DBN|Add0~2_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~20_combout\);

-- Location: FF_X96_Y44_N3
\CART_DBN|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~20_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(1));

-- Location: LCCOMB_X97_Y44_N14
\CART_DBN|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~4_combout\ = (\CART_DBN|s_debounceCnt\(2) & ((GND) # (!\CART_DBN|Add0~3\))) # (!\CART_DBN|s_debounceCnt\(2) & (\CART_DBN|Add0~3\ $ (GND)))
-- \CART_DBN|Add0~5\ = CARRY((\CART_DBN|s_debounceCnt\(2)) # (!\CART_DBN|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(2),
	datad => VCC,
	cin => \CART_DBN|Add0~3\,
	combout => \CART_DBN|Add0~4_combout\,
	cout => \CART_DBN|Add0~5\);

-- Location: LCCOMB_X97_Y44_N2
\CART_DBN|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~21_combout\ = (\CART_DBN|Add0~4_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CART_DBN|Add0~4_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~21_combout\);

-- Location: FF_X97_Y44_N3
\CART_DBN|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~21_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(2));

-- Location: LCCOMB_X97_Y44_N16
\CART_DBN|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|Add0~6_combout\ = (\CART_DBN|s_debounceCnt\(3) & (\CART_DBN|Add0~5\ & VCC)) # (!\CART_DBN|s_debounceCnt\(3) & (!\CART_DBN|Add0~5\))
-- \CART_DBN|Add0~7\ = CARRY((!\CART_DBN|s_debounceCnt\(3) & !\CART_DBN|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|s_debounceCnt\(3),
	datad => VCC,
	cin => \CART_DBN|Add0~5\,
	combout => \CART_DBN|Add0~6_combout\,
	cout => \CART_DBN|Add0~7\);

-- Location: LCCOMB_X97_Y44_N4
\CART_DBN|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~22_combout\ = (\CART_DBN|Add0~6_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|Add0~6_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~22_combout\);

-- Location: FF_X97_Y44_N5
\CART_DBN|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~22_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(3));

-- Location: LCCOMB_X97_Y44_N6
\CART_DBN|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_debounceCnt~23_combout\ = (\CART_DBN|Add0~8_combout\ & \CART_DBN|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CART_DBN|Add0~8_combout\,
	datad => \CART_DBN|s_debounceCnt[10]~4_combout\,
	combout => \CART_DBN|s_debounceCnt~23_combout\);

-- Location: FF_X97_Y44_N7
\CART_DBN|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_debounceCnt~23_combout\,
	ena => \CART_DBN|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_debounceCnt\(4));

-- Location: LCCOMB_X97_Y44_N8
\CART_DBN|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_pulsedOut~5_combout\ = (!\CART_DBN|s_debounceCnt\(4) & (!\CART_DBN|s_debounceCnt\(2) & (!\CART_DBN|s_debounceCnt\(3) & !\CART_DBN|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_debounceCnt\(4),
	datab => \CART_DBN|s_debounceCnt\(2),
	datac => \CART_DBN|s_debounceCnt\(3),
	datad => \CART_DBN|s_debounceCnt\(1),
	combout => \CART_DBN|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X97_Y45_N22
\CART_DBN|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_pulsedOut~6_combout\ = (\CART_DBN|s_previousIn~q\ & (!\CART_DBN|s_debounceCnt\(21) & (\CART_DBN|s_dirtyIn~q\ & \CART_DBN|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_previousIn~q\,
	datab => \CART_DBN|s_debounceCnt\(21),
	datac => \CART_DBN|s_dirtyIn~q\,
	datad => \CART_DBN|s_debounceCnt\(0),
	combout => \CART_DBN|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X97_Y45_N24
\CART_DBN|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CART_DBN|s_pulsedOut~7_combout\ = (\CART_DBN|s_pulsedOut~5_combout\ & (\CART_DBN|s_pulsedOut~4_combout\ & \CART_DBN|s_pulsedOut~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CART_DBN|s_pulsedOut~5_combout\,
	datab => \CART_DBN|s_pulsedOut~4_combout\,
	datac => \CART_DBN|s_pulsedOut~6_combout\,
	combout => \CART_DBN|s_pulsedOut~7_combout\);

-- Location: FF_X97_Y45_N25
\CART_DBN|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CART_DBN|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CART_DBN|s_pulsedOut~q\);

-- Location: LCCOMB_X88_Y42_N8
\ACESSO1|VAL1|AND1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|VAL1|AND1~combout\ = (\ACESSO1|VAL1|AND1~0_combout\) # (\OCUP1|inst|s_cheio~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|VAL1|AND1~0_combout\,
	datad => \OCUP1|inst|s_cheio~2_combout\,
	combout => \ACESSO1|VAL1|AND1~combout\);

-- Location: LCCOMB_X88_Y40_N4
\ACESSO1|PROL1|HALF_CYCLE|s_count[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[0]~30_combout\ = \ACESSO1|PROL1|HALF_CYCLE|s_count\(0) $ (VCC)
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[0]~31\ = CARRY(\ACESSO1|PROL1|HALF_CYCLE|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(0),
	datad => VCC,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[0]~30_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[0]~31\);

-- Location: LCCOMB_X88_Y40_N6
\ACESSO1|PROL1|HALF_CYCLE|s_count[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[1]~32_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(1) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[0]~31\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(1) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[0]~31\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[1]~33\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[0]~31\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(1),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[0]~31\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[1]~32_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[1]~33\);

-- Location: LCCOMB_X88_Y40_N8
\ACESSO1|PROL1|HALF_CYCLE|s_count[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[2]~34_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(2) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[1]~33\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(2) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[1]~33\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[2]~35\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(2) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[1]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(2),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[1]~33\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[2]~34_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[2]~35\);

-- Location: FF_X88_Y40_N9
\ACESSO1|PROL1|HALF_CYCLE|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[2]~34_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(2));

-- Location: LCCOMB_X88_Y40_N10
\ACESSO1|PROL1|HALF_CYCLE|s_count[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[3]~36_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(3) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[2]~35\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(3) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[2]~35\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[3]~37\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[2]~35\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(3),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[2]~35\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[3]~36_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[3]~37\);

-- Location: FF_X88_Y40_N11
\ACESSO1|PROL1|HALF_CYCLE|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[3]~36_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(3));

-- Location: LCCOMB_X88_Y40_N12
\ACESSO1|PROL1|HALF_CYCLE|s_count[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[4]~38_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(4) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[3]~37\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(4) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[3]~37\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[4]~39\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(4) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(4),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[3]~37\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[4]~38_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[4]~39\);

-- Location: FF_X88_Y40_N13
\ACESSO1|PROL1|HALF_CYCLE|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[4]~38_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(4));

-- Location: LCCOMB_X88_Y40_N14
\ACESSO1|PROL1|HALF_CYCLE|s_count[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[5]~40_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(5) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[4]~39\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(5) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[4]~39\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[5]~41\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[4]~39\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(5),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[4]~39\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[5]~40_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[5]~41\);

-- Location: FF_X88_Y40_N15
\ACESSO1|PROL1|HALF_CYCLE|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[5]~40_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(5));

-- Location: LCCOMB_X88_Y40_N16
\ACESSO1|PROL1|HALF_CYCLE|s_count[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[6]~42_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(6) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[5]~41\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(6) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[5]~41\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[6]~43\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(6) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[5]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(6),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[5]~41\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[6]~42_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[6]~43\);

-- Location: FF_X88_Y40_N17
\ACESSO1|PROL1|HALF_CYCLE|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[6]~42_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(6));

-- Location: LCCOMB_X88_Y40_N18
\ACESSO1|PROL1|HALF_CYCLE|s_count[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[7]~44_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(7) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[6]~43\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(7) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[6]~43\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[7]~45\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[6]~43\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(7),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[6]~43\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[7]~44_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[7]~45\);

-- Location: FF_X88_Y40_N19
\ACESSO1|PROL1|HALF_CYCLE|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[7]~44_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(7));

-- Location: LCCOMB_X88_Y40_N20
\ACESSO1|PROL1|HALF_CYCLE|s_count[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[8]~46_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(8) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[7]~45\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(8) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[7]~45\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[8]~47\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(8) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[7]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(8),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[7]~45\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[8]~46_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[8]~47\);

-- Location: FF_X88_Y40_N21
\ACESSO1|PROL1|HALF_CYCLE|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[8]~46_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(8));

-- Location: LCCOMB_X88_Y40_N22
\ACESSO1|PROL1|HALF_CYCLE|s_count[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[9]~48_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(9) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[8]~47\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(9) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[8]~47\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[9]~49\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[8]~47\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(9),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[8]~47\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[9]~48_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[9]~49\);

-- Location: FF_X88_Y40_N23
\ACESSO1|PROL1|HALF_CYCLE|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[9]~48_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(9));

-- Location: LCCOMB_X88_Y40_N24
\ACESSO1|PROL1|HALF_CYCLE|s_count[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[10]~50_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(10) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[9]~49\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(10) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[9]~49\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[10]~51\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(10) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[9]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(10),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[9]~49\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[10]~50_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[10]~51\);

-- Location: FF_X88_Y40_N25
\ACESSO1|PROL1|HALF_CYCLE|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[10]~50_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(10));

-- Location: LCCOMB_X88_Y40_N26
\ACESSO1|PROL1|HALF_CYCLE|s_count[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[11]~52_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(11) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[10]~51\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(11) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[10]~51\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[11]~53\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[10]~51\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(11),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[10]~51\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[11]~52_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[11]~53\);

-- Location: FF_X88_Y40_N27
\ACESSO1|PROL1|HALF_CYCLE|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[11]~52_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(11));

-- Location: LCCOMB_X88_Y40_N28
\ACESSO1|PROL1|HALF_CYCLE|s_count[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[12]~54_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(12) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[11]~53\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(12) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[11]~53\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[12]~55\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(12) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[11]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(12),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[11]~53\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[12]~54_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[12]~55\);

-- Location: FF_X88_Y40_N29
\ACESSO1|PROL1|HALF_CYCLE|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[12]~54_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(12));

-- Location: LCCOMB_X88_Y40_N30
\ACESSO1|PROL1|HALF_CYCLE|s_count[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[13]~56_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(13) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[12]~55\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(13) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[12]~55\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[13]~57\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[12]~55\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(13),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[12]~55\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[13]~56_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[13]~57\);

-- Location: FF_X88_Y40_N31
\ACESSO1|PROL1|HALF_CYCLE|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[13]~56_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(13));

-- Location: LCCOMB_X88_Y39_N0
\ACESSO1|PROL1|HALF_CYCLE|s_count[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[14]~58_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(14) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[13]~57\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(14) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[13]~57\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[14]~59\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(14) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[13]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(14),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[13]~57\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[14]~58_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[14]~59\);

-- Location: FF_X88_Y39_N1
\ACESSO1|PROL1|HALF_CYCLE|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[14]~58_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(14));

-- Location: LCCOMB_X88_Y39_N2
\ACESSO1|PROL1|HALF_CYCLE|s_count[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[15]~60_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(15) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[14]~59\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(15) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[14]~59\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[15]~61\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[14]~59\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(15),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[14]~59\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[15]~60_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[15]~61\);

-- Location: FF_X88_Y39_N3
\ACESSO1|PROL1|HALF_CYCLE|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[15]~60_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(15));

-- Location: LCCOMB_X88_Y39_N4
\ACESSO1|PROL1|HALF_CYCLE|s_count[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[16]~62_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(16) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[15]~61\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(16) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[15]~61\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[16]~63\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(16) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[15]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(16),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[15]~61\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[16]~62_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[16]~63\);

-- Location: FF_X88_Y39_N5
\ACESSO1|PROL1|HALF_CYCLE|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[16]~62_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(16));

-- Location: LCCOMB_X88_Y39_N6
\ACESSO1|PROL1|HALF_CYCLE|s_count[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[17]~64_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(17) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[16]~63\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(17) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[16]~63\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[17]~65\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[16]~63\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(17),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[16]~63\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[17]~64_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[17]~65\);

-- Location: FF_X88_Y39_N7
\ACESSO1|PROL1|HALF_CYCLE|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[17]~64_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(17));

-- Location: LCCOMB_X88_Y39_N8
\ACESSO1|PROL1|HALF_CYCLE|s_count[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[18]~66_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(18) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[17]~65\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(18) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[17]~65\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[18]~67\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(18) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[17]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(18),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[17]~65\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[18]~66_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[18]~67\);

-- Location: FF_X88_Y39_N9
\ACESSO1|PROL1|HALF_CYCLE|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[18]~66_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(18));

-- Location: LCCOMB_X88_Y39_N10
\ACESSO1|PROL1|HALF_CYCLE|s_count[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[19]~68_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(19) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[18]~67\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(19) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[18]~67\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[19]~69\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[18]~67\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(19),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[18]~67\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[19]~68_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[19]~69\);

-- Location: FF_X88_Y39_N11
\ACESSO1|PROL1|HALF_CYCLE|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[19]~68_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(19));

-- Location: LCCOMB_X88_Y39_N12
\ACESSO1|PROL1|HALF_CYCLE|s_count[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[20]~70_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(20) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[19]~69\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(20) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[19]~69\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[20]~71\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(20) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[19]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(20),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[19]~69\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[20]~70_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[20]~71\);

-- Location: FF_X88_Y39_N13
\ACESSO1|PROL1|HALF_CYCLE|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[20]~70_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(20));

-- Location: LCCOMB_X88_Y39_N14
\ACESSO1|PROL1|HALF_CYCLE|s_count[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[21]~72_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(21) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[20]~71\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(21) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[20]~71\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[21]~73\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[20]~71\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(21),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[20]~71\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[21]~72_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[21]~73\);

-- Location: FF_X88_Y39_N15
\ACESSO1|PROL1|HALF_CYCLE|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[21]~72_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(21));

-- Location: LCCOMB_X88_Y39_N16
\ACESSO1|PROL1|HALF_CYCLE|s_count[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[22]~74_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(22) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[21]~73\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(22) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[21]~73\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[22]~75\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(22) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[21]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(22),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[21]~73\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[22]~74_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[22]~75\);

-- Location: FF_X88_Y39_N17
\ACESSO1|PROL1|HALF_CYCLE|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[22]~74_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(22));

-- Location: LCCOMB_X88_Y39_N18
\ACESSO1|PROL1|HALF_CYCLE|s_count[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[23]~76_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(23) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[22]~75\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(23) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[22]~75\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[23]~77\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[22]~75\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(23),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[22]~75\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[23]~76_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[23]~77\);

-- Location: FF_X88_Y39_N19
\ACESSO1|PROL1|HALF_CYCLE|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[23]~76_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(23));

-- Location: LCCOMB_X88_Y39_N20
\ACESSO1|PROL1|HALF_CYCLE|s_count[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[24]~78_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(24) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[23]~77\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(24) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[23]~77\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[24]~79\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(24) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[23]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(24),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[23]~77\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[24]~78_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[24]~79\);

-- Location: FF_X88_Y39_N21
\ACESSO1|PROL1|HALF_CYCLE|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[24]~78_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(24));

-- Location: LCCOMB_X88_Y39_N28
\ACESSO1|PROL1|HALF_CYCLE|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal0~2_combout\ = (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(10) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(14) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(16) & !\ACESSO1|PROL1|HALF_CYCLE|s_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(10),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(14),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(16),
	datad => \ACESSO1|PROL1|HALF_CYCLE|s_count\(11),
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal0~2_combout\);

-- Location: LCCOMB_X87_Y39_N24
\ACESSO1|PROL1|HALF_CYCLE|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal0~3_combout\ = (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(24) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(19) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(20) & \ACESSO1|PROL1|HALF_CYCLE|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(24),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(19),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(20),
	datad => \ACESSO1|PROL1|HALF_CYCLE|Equal0~2_combout\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal0~3_combout\);

-- Location: LCCOMB_X88_Y39_N22
\ACESSO1|PROL1|HALF_CYCLE|s_count[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[25]~80_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(25) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[24]~79\)) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(25) & ((\ACESSO1|PROL1|HALF_CYCLE|s_count[24]~79\) # (GND)))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[25]~81\ = CARRY((!\ACESSO1|PROL1|HALF_CYCLE|s_count[24]~79\) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(25),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[24]~79\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[25]~80_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[25]~81\);

-- Location: FF_X88_Y39_N23
\ACESSO1|PROL1|HALF_CYCLE|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[25]~80_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(25));

-- Location: LCCOMB_X88_Y39_N24
\ACESSO1|PROL1|HALF_CYCLE|s_count[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[26]~82_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(26) & (\ACESSO1|PROL1|HALF_CYCLE|s_count[25]~81\ $ (GND))) # (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(26) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count[25]~81\ & VCC))
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[26]~83\ = CARRY((\ACESSO1|PROL1|HALF_CYCLE|s_count\(26) & !\ACESSO1|PROL1|HALF_CYCLE|s_count[25]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(26),
	datad => VCC,
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[25]~81\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[26]~82_combout\,
	cout => \ACESSO1|PROL1|HALF_CYCLE|s_count[26]~83\);

-- Location: FF_X88_Y39_N25
\ACESSO1|PROL1|HALF_CYCLE|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[26]~82_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(26));

-- Location: LCCOMB_X88_Y39_N26
\ACESSO1|PROL1|HALF_CYCLE|s_count[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count[27]~84_combout\ = \ACESSO1|PROL1|HALF_CYCLE|s_count\(27) $ (\ACESSO1|PROL1|HALF_CYCLE|s_count[26]~83\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(27),
	cin => \ACESSO1|PROL1|HALF_CYCLE|s_count[26]~83\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count[27]~84_combout\);

-- Location: FF_X88_Y39_N27
\ACESSO1|PROL1|HALF_CYCLE|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[27]~84_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(27));

-- Location: LCCOMB_X87_Y39_N0
\ACESSO1|PROL1|HALF_CYCLE|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal0~5_combout\ = (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(15) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(21) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(18) & !\ACESSO1|PROL1|HALF_CYCLE|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(15),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(21),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(18),
	datad => \ACESSO1|PROL1|HALF_CYCLE|s_count\(17),
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal0~5_combout\);

-- Location: LCCOMB_X87_Y40_N4
\ACESSO1|PROL1|HALF_CYCLE|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal0~4_combout\ = (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(7) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(9) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(13) & !\ACESSO1|PROL1|HALF_CYCLE|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(7),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(9),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(13),
	datad => \ACESSO1|PROL1|HALF_CYCLE|s_count\(12),
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal0~4_combout\);

-- Location: LCCOMB_X89_Y39_N24
\ACESSO1|PROL1|HALF_CYCLE|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal0~6_combout\ = (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(23) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(25) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(22) & !\ACESSO1|PROL1|HALF_CYCLE|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(23),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(25),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(22),
	datad => \ACESSO1|PROL1|HALF_CYCLE|s_count\(26),
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal0~6_combout\);

-- Location: LCCOMB_X87_Y39_N26
\ACESSO1|PROL1|HALF_CYCLE|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal0~7_combout\ = (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(27) & (\ACESSO1|PROL1|HALF_CYCLE|Equal0~5_combout\ & (\ACESSO1|PROL1|HALF_CYCLE|Equal0~4_combout\ & \ACESSO1|PROL1|HALF_CYCLE|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(27),
	datab => \ACESSO1|PROL1|HALF_CYCLE|Equal0~5_combout\,
	datac => \ACESSO1|PROL1|HALF_CYCLE|Equal0~4_combout\,
	datad => \ACESSO1|PROL1|HALF_CYCLE|Equal0~6_combout\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal0~7_combout\);

-- Location: LCCOMB_X89_Y40_N0
\ACESSO1|PROL1|HALF_CYCLE|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal0~1_combout\ = (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(5) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(8) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(6) & !\ACESSO1|PROL1|HALF_CYCLE|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(5),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(8),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(6),
	datad => \ACESSO1|PROL1|HALF_CYCLE|s_count\(4),
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal0~1_combout\);

-- Location: LCCOMB_X87_Y39_N12
\ACESSO1|PROL1|HALF_CYCLE|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal0~8_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|Equal0~0_combout\ & (\ACESSO1|PROL1|HALF_CYCLE|Equal0~3_combout\ & (\ACESSO1|PROL1|HALF_CYCLE|Equal0~7_combout\ & \ACESSO1|PROL1|HALF_CYCLE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|Equal0~0_combout\,
	datab => \ACESSO1|PROL1|HALF_CYCLE|Equal0~3_combout\,
	datac => \ACESSO1|PROL1|HALF_CYCLE|Equal0~7_combout\,
	datad => \ACESSO1|PROL1|HALF_CYCLE|Equal0~1_combout\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal0~8_combout\);

-- Location: LCCOMB_X87_Y39_N14
\ACESSO1|PROL1|HALF_CYCLE|s_count~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|Equal0~8_combout\ & (((\ACESSO1|VAL1|AND1~0_combout\) # (\OCUP1|inst|s_cheio~2_combout\)))) # (!\ACESSO1|PROL1|HALF_CYCLE|Equal0~8_combout\ & 
-- (\ACESSO1|PROL1|HALF_CYCLE|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|Equal1~4_combout\,
	datab => \ACESSO1|VAL1|AND1~0_combout\,
	datac => \OCUP1|inst|s_cheio~2_combout\,
	datad => \ACESSO1|PROL1|HALF_CYCLE|Equal0~8_combout\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\);

-- Location: FF_X88_Y40_N5
\ACESSO1|PROL1|HALF_CYCLE|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[0]~30_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(0));

-- Location: FF_X88_Y40_N7
\ACESSO1|PROL1|HALF_CYCLE|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|HALF_CYCLE|s_count[1]~32_combout\,
	sclr => \ACESSO1|PROL1|HALF_CYCLE|s_count~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|HALF_CYCLE|s_count\(1));

-- Location: LCCOMB_X87_Y40_N0
\ACESSO1|PROL1|HALF_CYCLE|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal0~0_combout\ = (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(1) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(3) & (!\ACESSO1|PROL1|HALF_CYCLE|s_count\(2) & !\ACESSO1|PROL1|HALF_CYCLE|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(1),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(3),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(2),
	datad => \ACESSO1|PROL1|HALF_CYCLE|s_count\(0),
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal0~0_combout\);

-- Location: LCCOMB_X88_Y39_N30
\ACESSO1|PROL1|HALF_CYCLE|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal1~2_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(23) & (\ACESSO1|PROL1|HALF_CYCLE|s_count\(22) & (\ACESSO1|PROL1|HALF_CYCLE|s_count\(25) & \ACESSO1|PROL1|HALF_CYCLE|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(23),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(22),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(25),
	datad => \ACESSO1|PROL1|HALF_CYCLE|s_count\(26),
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal1~2_combout\);

-- Location: LCCOMB_X87_Y40_N18
\ACESSO1|PROL1|HALF_CYCLE|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal1~0_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(7) & (\ACESSO1|PROL1|HALF_CYCLE|s_count\(9) & (\ACESSO1|PROL1|HALF_CYCLE|s_count\(13) & \ACESSO1|PROL1|HALF_CYCLE|s_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(7),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(9),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(13),
	datad => \ACESSO1|PROL1|HALF_CYCLE|s_count\(12),
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal1~0_combout\);

-- Location: LCCOMB_X87_Y39_N10
\ACESSO1|PROL1|HALF_CYCLE|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal1~1_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|s_count\(15) & (\ACESSO1|PROL1|HALF_CYCLE|s_count\(21) & (\ACESSO1|PROL1|HALF_CYCLE|s_count\(18) & \ACESSO1|PROL1|HALF_CYCLE|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|s_count\(15),
	datab => \ACESSO1|PROL1|HALF_CYCLE|s_count\(21),
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(18),
	datad => \ACESSO1|PROL1|HALF_CYCLE|s_count\(17),
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal1~1_combout\);

-- Location: LCCOMB_X87_Y39_N4
\ACESSO1|PROL1|HALF_CYCLE|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal1~3_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|Equal1~2_combout\ & (\ACESSO1|PROL1|HALF_CYCLE|Equal1~0_combout\ & (\ACESSO1|PROL1|HALF_CYCLE|s_count\(27) & \ACESSO1|PROL1|HALF_CYCLE|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|Equal1~2_combout\,
	datab => \ACESSO1|PROL1|HALF_CYCLE|Equal1~0_combout\,
	datac => \ACESSO1|PROL1|HALF_CYCLE|s_count\(27),
	datad => \ACESSO1|PROL1|HALF_CYCLE|Equal1~1_combout\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal1~3_combout\);

-- Location: LCCOMB_X87_Y39_N22
\ACESSO1|PROL1|HALF_CYCLE|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|HALF_CYCLE|Equal1~4_combout\ = (\ACESSO1|PROL1|HALF_CYCLE|Equal0~0_combout\ & (\ACESSO1|PROL1|HALF_CYCLE|Equal0~3_combout\ & (\ACESSO1|PROL1|HALF_CYCLE|Equal1~3_combout\ & \ACESSO1|PROL1|HALF_CYCLE|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|PROL1|HALF_CYCLE|Equal0~0_combout\,
	datab => \ACESSO1|PROL1|HALF_CYCLE|Equal0~3_combout\,
	datac => \ACESSO1|PROL1|HALF_CYCLE|Equal1~3_combout\,
	datad => \ACESSO1|PROL1|HALF_CYCLE|Equal0~1_combout\,
	combout => \ACESSO1|PROL1|HALF_CYCLE|Equal1~4_combout\);

-- Location: LCCOMB_X89_Y42_N2
\ACESSO1|PROL1|AMOSTRA_SIN|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|PROL1|AMOSTRA_SIN|Q~0_combout\ = (\ACESSO1|VAL1|AND1~combout\ & ((\ACESSO1|PROL1|HALF_CYCLE|Equal1~4_combout\ & (\SIN_DBN|s_levelOut~q\)) # (!\ACESSO1|PROL1|HALF_CYCLE|Equal1~4_combout\ & ((\ACESSO1|PROL1|AMOSTRA_SIN|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|VAL1|AND1~combout\,
	datab => \SIN_DBN|s_levelOut~q\,
	datac => \ACESSO1|PROL1|AMOSTRA_SIN|Q~q\,
	datad => \ACESSO1|PROL1|HALF_CYCLE|Equal1~4_combout\,
	combout => \ACESSO1|PROL1|AMOSTRA_SIN|Q~0_combout\);

-- Location: FF_X89_Y42_N3
\ACESSO1|PROL1|AMOSTRA_SIN|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|PROL1|AMOSTRA_SIN|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|PROL1|AMOSTRA_SIN|Q~q\);

-- Location: LCCOMB_X89_Y42_N24
\ACESSO1|TEMP1|ESPERA|s_decorre~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_decorre~1_combout\ = (\SIN_DBN|s_levelOut~q\ & ((\ACESSO1|PROL1|AMOSTRA_SIN|Q~q\ & ((\ACESSO1|TEMP1|ESPERA|s_decorre~q\))) # (!\ACESSO1|PROL1|AMOSTRA_SIN|Q~q\ & (!\ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\)))) # 
-- (!\SIN_DBN|s_levelOut~q\ & (!\ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	datab => \SIN_DBN|s_levelOut~q\,
	datac => \ACESSO1|TEMP1|ESPERA|s_decorre~q\,
	datad => \ACESSO1|PROL1|AMOSTRA_SIN|Q~q\,
	combout => \ACESSO1|TEMP1|ESPERA|s_decorre~1_combout\);

-- Location: FF_X89_Y42_N25
\ACESSO1|TEMP1|ESPERA|s_decorre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_decorre~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_decorre~q\);

-- Location: LCCOMB_X88_Y42_N6
\ACESSO1|VAL1|AND1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|VAL1|AND1~0_combout\ = (\ACESSO1|TEMP1|FECHO|s_decorre~q\) # ((\ACESSO1|TEMP1|ABERTURA|s_decorre~q\) # ((\ACESSO1|TEMP1|ESPERA|s_decorre~q\) # (!\CART_DBN|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_decorre~q\,
	datab => \ACESSO1|TEMP1|ABERTURA|s_decorre~q\,
	datac => \CART_DBN|s_pulsedOut~q\,
	datad => \ACESSO1|TEMP1|ESPERA|s_decorre~q\,
	combout => \ACESSO1|VAL1|AND1~0_combout\);

-- Location: LCCOMB_X88_Y42_N10
\ACESSO1|TEMP1|ABERTURA|s_count~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\ = (\ACESSO1|TEMP1|ABERTURA|Equal0~8_combout\ & ((\ACESSO1|VAL1|AND1~0_combout\) # ((\OCUP1|inst|s_cheio~2_combout\)))) # (!\ACESSO1|TEMP1|ABERTURA|Equal0~8_combout\ & 
-- (((!\ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|VAL1|AND1~0_combout\,
	datab => \ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\,
	datac => \ACESSO1|TEMP1|ABERTURA|Equal0~8_combout\,
	datad => \OCUP1|inst|s_cheio~2_combout\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\);

-- Location: FF_X83_Y41_N7
\ACESSO1|TEMP1|ABERTURA|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[0]~28_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(0));

-- Location: LCCOMB_X83_Y41_N8
\ACESSO1|TEMP1|ABERTURA|s_count[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[1]~30_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(1) & (!\ACESSO1|TEMP1|ABERTURA|s_count[0]~29\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(1) & ((\ACESSO1|TEMP1|ABERTURA|s_count[0]~29\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[1]~31\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[0]~29\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(1),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[0]~29\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[1]~30_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[1]~31\);

-- Location: FF_X83_Y41_N9
\ACESSO1|TEMP1|ABERTURA|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[1]~30_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(1));

-- Location: LCCOMB_X83_Y41_N10
\ACESSO1|TEMP1|ABERTURA|s_count[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[2]~32_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(2) & (\ACESSO1|TEMP1|ABERTURA|s_count[1]~31\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(2) & (!\ACESSO1|TEMP1|ABERTURA|s_count[1]~31\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[2]~33\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(2) & !\ACESSO1|TEMP1|ABERTURA|s_count[1]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(2),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[1]~31\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[2]~32_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[2]~33\);

-- Location: FF_X83_Y41_N11
\ACESSO1|TEMP1|ABERTURA|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[2]~32_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(2));

-- Location: LCCOMB_X83_Y41_N12
\ACESSO1|TEMP1|ABERTURA|s_count[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[3]~34_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(3) & (!\ACESSO1|TEMP1|ABERTURA|s_count[2]~33\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(3) & ((\ACESSO1|TEMP1|ABERTURA|s_count[2]~33\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[3]~35\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[2]~33\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(3),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[2]~33\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[3]~34_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[3]~35\);

-- Location: FF_X83_Y41_N13
\ACESSO1|TEMP1|ABERTURA|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[3]~34_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(3));

-- Location: LCCOMB_X83_Y41_N14
\ACESSO1|TEMP1|ABERTURA|s_count[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[4]~36_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(4) & (\ACESSO1|TEMP1|ABERTURA|s_count[3]~35\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(4) & (!\ACESSO1|TEMP1|ABERTURA|s_count[3]~35\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[4]~37\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(4) & !\ACESSO1|TEMP1|ABERTURA|s_count[3]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(4),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[3]~35\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[4]~36_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[4]~37\);

-- Location: FF_X83_Y41_N15
\ACESSO1|TEMP1|ABERTURA|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[4]~36_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(4));

-- Location: LCCOMB_X83_Y41_N16
\ACESSO1|TEMP1|ABERTURA|s_count[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[5]~38_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(5) & (!\ACESSO1|TEMP1|ABERTURA|s_count[4]~37\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(5) & ((\ACESSO1|TEMP1|ABERTURA|s_count[4]~37\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[5]~39\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[4]~37\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(5),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[4]~37\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[5]~38_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[5]~39\);

-- Location: FF_X83_Y41_N17
\ACESSO1|TEMP1|ABERTURA|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[5]~38_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(5));

-- Location: LCCOMB_X83_Y41_N18
\ACESSO1|TEMP1|ABERTURA|s_count[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[6]~40_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(6) & (\ACESSO1|TEMP1|ABERTURA|s_count[5]~39\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(6) & (!\ACESSO1|TEMP1|ABERTURA|s_count[5]~39\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[6]~41\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(6) & !\ACESSO1|TEMP1|ABERTURA|s_count[5]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(6),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[5]~39\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[6]~40_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[6]~41\);

-- Location: FF_X83_Y41_N19
\ACESSO1|TEMP1|ABERTURA|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[6]~40_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(6));

-- Location: LCCOMB_X83_Y41_N20
\ACESSO1|TEMP1|ABERTURA|s_count[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[7]~42_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(7) & (!\ACESSO1|TEMP1|ABERTURA|s_count[6]~41\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(7) & ((\ACESSO1|TEMP1|ABERTURA|s_count[6]~41\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[7]~43\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[6]~41\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(7),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[6]~41\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[7]~42_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[7]~43\);

-- Location: FF_X83_Y41_N21
\ACESSO1|TEMP1|ABERTURA|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[7]~42_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(7));

-- Location: LCCOMB_X83_Y41_N22
\ACESSO1|TEMP1|ABERTURA|s_count[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[8]~44_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(8) & (\ACESSO1|TEMP1|ABERTURA|s_count[7]~43\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(8) & (!\ACESSO1|TEMP1|ABERTURA|s_count[7]~43\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[8]~45\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(8) & !\ACESSO1|TEMP1|ABERTURA|s_count[7]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(8),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[7]~43\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[8]~44_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[8]~45\);

-- Location: FF_X83_Y41_N23
\ACESSO1|TEMP1|ABERTURA|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[8]~44_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(8));

-- Location: LCCOMB_X83_Y41_N24
\ACESSO1|TEMP1|ABERTURA|s_count[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[9]~46_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(9) & (!\ACESSO1|TEMP1|ABERTURA|s_count[8]~45\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(9) & ((\ACESSO1|TEMP1|ABERTURA|s_count[8]~45\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[9]~47\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[8]~45\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(9),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[8]~45\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[9]~46_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[9]~47\);

-- Location: FF_X83_Y41_N25
\ACESSO1|TEMP1|ABERTURA|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[9]~46_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(9));

-- Location: LCCOMB_X83_Y41_N26
\ACESSO1|TEMP1|ABERTURA|s_count[10]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[10]~48_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(10) & (\ACESSO1|TEMP1|ABERTURA|s_count[9]~47\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(10) & (!\ACESSO1|TEMP1|ABERTURA|s_count[9]~47\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[10]~49\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(10) & !\ACESSO1|TEMP1|ABERTURA|s_count[9]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(10),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[9]~47\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[10]~48_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[10]~49\);

-- Location: FF_X83_Y41_N27
\ACESSO1|TEMP1|ABERTURA|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[10]~48_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(10));

-- Location: LCCOMB_X83_Y41_N28
\ACESSO1|TEMP1|ABERTURA|s_count[11]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[11]~50_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(11) & (!\ACESSO1|TEMP1|ABERTURA|s_count[10]~49\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(11) & ((\ACESSO1|TEMP1|ABERTURA|s_count[10]~49\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[11]~51\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[10]~49\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(11),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[10]~49\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[11]~50_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[11]~51\);

-- Location: FF_X83_Y41_N29
\ACESSO1|TEMP1|ABERTURA|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[11]~50_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(11));

-- Location: LCCOMB_X83_Y41_N30
\ACESSO1|TEMP1|ABERTURA|s_count[12]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[12]~52_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(12) & (\ACESSO1|TEMP1|ABERTURA|s_count[11]~51\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(12) & (!\ACESSO1|TEMP1|ABERTURA|s_count[11]~51\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[12]~53\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(12) & !\ACESSO1|TEMP1|ABERTURA|s_count[11]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(12),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[11]~51\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[12]~52_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[12]~53\);

-- Location: FF_X83_Y41_N31
\ACESSO1|TEMP1|ABERTURA|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[12]~52_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(12));

-- Location: LCCOMB_X83_Y40_N0
\ACESSO1|TEMP1|ABERTURA|s_count[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[13]~54_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(13) & (!\ACESSO1|TEMP1|ABERTURA|s_count[12]~53\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(13) & ((\ACESSO1|TEMP1|ABERTURA|s_count[12]~53\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[13]~55\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[12]~53\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(13),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[12]~53\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[13]~54_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[13]~55\);

-- Location: FF_X83_Y40_N1
\ACESSO1|TEMP1|ABERTURA|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[13]~54_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(13));

-- Location: LCCOMB_X83_Y40_N2
\ACESSO1|TEMP1|ABERTURA|s_count[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[14]~56_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(14) & (\ACESSO1|TEMP1|ABERTURA|s_count[13]~55\ $ (GND))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(14) & (!\ACESSO1|TEMP1|ABERTURA|s_count[13]~55\ & VCC))
-- \ACESSO1|TEMP1|ABERTURA|s_count[14]~57\ = CARRY((\ACESSO1|TEMP1|ABERTURA|s_count\(14) & !\ACESSO1|TEMP1|ABERTURA|s_count[13]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(14),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[13]~55\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[14]~56_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[14]~57\);

-- Location: FF_X83_Y40_N3
\ACESSO1|TEMP1|ABERTURA|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[14]~56_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(14));

-- Location: LCCOMB_X83_Y40_N4
\ACESSO1|TEMP1|ABERTURA|s_count[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|s_count[15]~58_combout\ = (\ACESSO1|TEMP1|ABERTURA|s_count\(15) & (!\ACESSO1|TEMP1|ABERTURA|s_count[14]~57\)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(15) & ((\ACESSO1|TEMP1|ABERTURA|s_count[14]~57\) # (GND)))
-- \ACESSO1|TEMP1|ABERTURA|s_count[15]~59\ = CARRY((!\ACESSO1|TEMP1|ABERTURA|s_count[14]~57\) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(15),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ABERTURA|s_count[14]~57\,
	combout => \ACESSO1|TEMP1|ABERTURA|s_count[15]~58_combout\,
	cout => \ACESSO1|TEMP1|ABERTURA|s_count[15]~59\);

-- Location: FF_X83_Y40_N5
\ACESSO1|TEMP1|ABERTURA|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[15]~58_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(15));

-- Location: FF_X83_Y40_N7
\ACESSO1|TEMP1|ABERTURA|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ABERTURA|s_count[16]~60_combout\,
	sclr => \ACESSO1|TEMP1|ABERTURA|s_count~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ABERTURA|s_count\(16));

-- Location: LCCOMB_X83_Y41_N4
\ACESSO1|TEMP1|ABERTURA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal0~2_combout\ = (!\ACESSO1|TEMP1|ABERTURA|s_count\(16) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(11) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(10) & !\ACESSO1|TEMP1|ABERTURA|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(16),
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(11),
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(10),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(9),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal0~2_combout\);

-- Location: LCCOMB_X83_Y41_N0
\ACESSO1|TEMP1|ABERTURA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal0~0_combout\ = (!\ACESSO1|TEMP1|ABERTURA|s_count\(3) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(0) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(1) & !\ACESSO1|TEMP1|ABERTURA|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(3),
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(0),
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(1),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(2),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal0~0_combout\);

-- Location: LCCOMB_X83_Y40_N28
\ACESSO1|TEMP1|ABERTURA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal0~3_combout\ = (!\ACESSO1|TEMP1|ABERTURA|s_count\(24) & !\ACESSO1|TEMP1|ABERTURA|s_count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(24),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(18),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal0~3_combout\);

-- Location: LCCOMB_X83_Y41_N2
\ACESSO1|TEMP1|ABERTURA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal0~1_combout\ = (!\ACESSO1|TEMP1|ABERTURA|s_count\(8) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(6) & (!\ACESSO1|TEMP1|ABERTURA|s_count\(4) & !\ACESSO1|TEMP1|ABERTURA|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(8),
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(6),
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(4),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(5),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal0~1_combout\);

-- Location: LCCOMB_X82_Y41_N12
\ACESSO1|TEMP1|ABERTURA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal0~4_combout\ = (\ACESSO1|TEMP1|ABERTURA|Equal0~2_combout\ & (\ACESSO1|TEMP1|ABERTURA|Equal0~0_combout\ & (\ACESSO1|TEMP1|ABERTURA|Equal0~3_combout\ & \ACESSO1|TEMP1|ABERTURA|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|Equal0~2_combout\,
	datab => \ACESSO1|TEMP1|ABERTURA|Equal0~0_combout\,
	datac => \ACESSO1|TEMP1|ABERTURA|Equal0~3_combout\,
	datad => \ACESSO1|TEMP1|ABERTURA|Equal0~1_combout\,
	combout => \ACESSO1|TEMP1|ABERTURA|Equal0~4_combout\);

-- Location: LCCOMB_X82_Y41_N16
\ACESSO1|TEMP1|ABERTURA|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal1~0_combout\ = (((!\ACESSO1|TEMP1|ABERTURA|s_count\(13)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(7))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(14))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(12),
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(14),
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(7),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(13),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal1~0_combout\);

-- Location: LCCOMB_X82_Y41_N26
\ACESSO1|TEMP1|ABERTURA|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal1~2_combout\ = (((!\ACESSO1|TEMP1|ABERTURA|s_count\(22)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(25))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(21))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(23),
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(21),
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(25),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(22),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal1~2_combout\);

-- Location: LCCOMB_X83_Y40_N26
\ACESSO1|TEMP1|ABERTURA|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal1~1_combout\ = (((!\ACESSO1|TEMP1|ABERTURA|s_count\(19)) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(20))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(17))) # (!\ACESSO1|TEMP1|ABERTURA|s_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|s_count\(15),
	datab => \ACESSO1|TEMP1|ABERTURA|s_count\(17),
	datac => \ACESSO1|TEMP1|ABERTURA|s_count\(20),
	datad => \ACESSO1|TEMP1|ABERTURA|s_count\(19),
	combout => \ACESSO1|TEMP1|ABERTURA|Equal1~1_combout\);

-- Location: LCCOMB_X82_Y41_N14
\ACESSO1|TEMP1|ABERTURA|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\ = ((\ACESSO1|TEMP1|ABERTURA|Equal1~0_combout\) # ((\ACESSO1|TEMP1|ABERTURA|Equal1~2_combout\) # (\ACESSO1|TEMP1|ABERTURA|Equal1~1_combout\))) # (!\ACESSO1|TEMP1|ABERTURA|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ABERTURA|Equal0~4_combout\,
	datab => \ACESSO1|TEMP1|ABERTURA|Equal1~0_combout\,
	datac => \ACESSO1|TEMP1|ABERTURA|Equal1~2_combout\,
	datad => \ACESSO1|TEMP1|ABERTURA|Equal1~1_combout\,
	combout => \ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\);

-- Location: LCCOMB_X89_Y44_N22
\ACESSO1|TEMP1|ESPERA|s_count[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[9]~48_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(9) & (!\ACESSO1|TEMP1|ESPERA|s_count[8]~47\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(9) & ((\ACESSO1|TEMP1|ESPERA|s_count[8]~47\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[9]~49\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[8]~47\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(9),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[8]~47\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[9]~48_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[9]~49\);

-- Location: LCCOMB_X89_Y44_N24
\ACESSO1|TEMP1|ESPERA|s_count[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[10]~50_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(10) & (\ACESSO1|TEMP1|ESPERA|s_count[9]~49\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(10) & (!\ACESSO1|TEMP1|ESPERA|s_count[9]~49\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[10]~51\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(10) & !\ACESSO1|TEMP1|ESPERA|s_count[9]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(10),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[9]~49\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[10]~50_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[10]~51\);

-- Location: LCCOMB_X89_Y44_N2
\ACESSO1|TEMP1|ESPERA|s_count[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\ = (\ACESSO1|TEMP1|ESPERA|Equal0~9_combout\ & (!\ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\ & ((!\SIN_DBN|s_levelOut~q\) # (!\ACESSO1|PROL1|AMOSTRA_SIN|Q~q\)))) # (!\ACESSO1|TEMP1|ESPERA|Equal0~9_combout\ & 
-- (((!\SIN_DBN|s_levelOut~q\)) # (!\ACESSO1|PROL1|AMOSTRA_SIN|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|Equal0~9_combout\,
	datab => \ACESSO1|PROL1|AMOSTRA_SIN|Q~q\,
	datac => \ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\,
	datad => \SIN_DBN|s_levelOut~q\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\);

-- Location: FF_X89_Y44_N25
\ACESSO1|TEMP1|ESPERA|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[10]~50_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(10));

-- Location: LCCOMB_X89_Y44_N26
\ACESSO1|TEMP1|ESPERA|s_count[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[11]~52_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(11) & (!\ACESSO1|TEMP1|ESPERA|s_count[10]~51\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(11) & ((\ACESSO1|TEMP1|ESPERA|s_count[10]~51\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[11]~53\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[10]~51\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(11),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[10]~51\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[11]~52_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[11]~53\);

-- Location: FF_X89_Y44_N27
\ACESSO1|TEMP1|ESPERA|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[11]~52_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(11));

-- Location: LCCOMB_X89_Y44_N28
\ACESSO1|TEMP1|ESPERA|s_count[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[12]~54_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(12) & (\ACESSO1|TEMP1|ESPERA|s_count[11]~53\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(12) & (!\ACESSO1|TEMP1|ESPERA|s_count[11]~53\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[12]~55\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(12) & !\ACESSO1|TEMP1|ESPERA|s_count[11]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(12),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[11]~53\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[12]~54_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[12]~55\);

-- Location: FF_X89_Y44_N29
\ACESSO1|TEMP1|ESPERA|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[12]~54_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(12));

-- Location: LCCOMB_X89_Y44_N30
\ACESSO1|TEMP1|ESPERA|s_count[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[13]~56_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(13) & (!\ACESSO1|TEMP1|ESPERA|s_count[12]~55\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(13) & ((\ACESSO1|TEMP1|ESPERA|s_count[12]~55\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[13]~57\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[12]~55\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(13),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[12]~55\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[13]~56_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[13]~57\);

-- Location: FF_X89_Y44_N31
\ACESSO1|TEMP1|ESPERA|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[13]~56_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(13));

-- Location: LCCOMB_X89_Y43_N0
\ACESSO1|TEMP1|ESPERA|s_count[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[14]~58_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(14) & (\ACESSO1|TEMP1|ESPERA|s_count[13]~57\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(14) & (!\ACESSO1|TEMP1|ESPERA|s_count[13]~57\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[14]~59\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(14) & !\ACESSO1|TEMP1|ESPERA|s_count[13]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(14),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[13]~57\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[14]~58_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[14]~59\);

-- Location: FF_X89_Y43_N1
\ACESSO1|TEMP1|ESPERA|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[14]~58_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(14));

-- Location: LCCOMB_X89_Y43_N2
\ACESSO1|TEMP1|ESPERA|s_count[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[15]~60_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(15) & (!\ACESSO1|TEMP1|ESPERA|s_count[14]~59\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(15) & ((\ACESSO1|TEMP1|ESPERA|s_count[14]~59\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[15]~61\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[14]~59\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(15),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[14]~59\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[15]~60_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[15]~61\);

-- Location: FF_X89_Y43_N3
\ACESSO1|TEMP1|ESPERA|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[15]~60_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(15));

-- Location: LCCOMB_X89_Y43_N4
\ACESSO1|TEMP1|ESPERA|s_count[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[16]~62_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(16) & (\ACESSO1|TEMP1|ESPERA|s_count[15]~61\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(16) & (!\ACESSO1|TEMP1|ESPERA|s_count[15]~61\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[16]~63\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(16) & !\ACESSO1|TEMP1|ESPERA|s_count[15]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(16),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[15]~61\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[16]~62_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[16]~63\);

-- Location: FF_X89_Y43_N5
\ACESSO1|TEMP1|ESPERA|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[16]~62_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(16));

-- Location: LCCOMB_X89_Y43_N6
\ACESSO1|TEMP1|ESPERA|s_count[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[17]~64_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(17) & (!\ACESSO1|TEMP1|ESPERA|s_count[16]~63\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(17) & ((\ACESSO1|TEMP1|ESPERA|s_count[16]~63\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[17]~65\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[16]~63\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(17),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[16]~63\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[17]~64_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[17]~65\);

-- Location: FF_X89_Y43_N7
\ACESSO1|TEMP1|ESPERA|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[17]~64_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(17));

-- Location: LCCOMB_X89_Y43_N8
\ACESSO1|TEMP1|ESPERA|s_count[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[18]~66_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(18) & (\ACESSO1|TEMP1|ESPERA|s_count[17]~65\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(18) & (!\ACESSO1|TEMP1|ESPERA|s_count[17]~65\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[18]~67\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(18) & !\ACESSO1|TEMP1|ESPERA|s_count[17]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(18),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[17]~65\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[18]~66_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[18]~67\);

-- Location: FF_X89_Y43_N9
\ACESSO1|TEMP1|ESPERA|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[18]~66_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(18));

-- Location: LCCOMB_X89_Y43_N10
\ACESSO1|TEMP1|ESPERA|s_count[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[19]~68_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(19) & (!\ACESSO1|TEMP1|ESPERA|s_count[18]~67\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(19) & ((\ACESSO1|TEMP1|ESPERA|s_count[18]~67\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[19]~69\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[18]~67\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(19),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[18]~67\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[19]~68_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[19]~69\);

-- Location: FF_X89_Y43_N11
\ACESSO1|TEMP1|ESPERA|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[19]~68_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(19));

-- Location: LCCOMB_X89_Y43_N12
\ACESSO1|TEMP1|ESPERA|s_count[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[20]~70_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(20) & (\ACESSO1|TEMP1|ESPERA|s_count[19]~69\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(20) & (!\ACESSO1|TEMP1|ESPERA|s_count[19]~69\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[20]~71\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(20) & !\ACESSO1|TEMP1|ESPERA|s_count[19]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(20),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[19]~69\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[20]~70_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[20]~71\);

-- Location: FF_X89_Y43_N13
\ACESSO1|TEMP1|ESPERA|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[20]~70_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(20));

-- Location: LCCOMB_X89_Y42_N10
\ACESSO1|TEMP1|ESPERA|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~7_combout\ = (!\ACESSO1|TEMP1|ESPERA|s_count\(20) & (!\ACESSO1|TEMP1|ESPERA|s_count\(15) & (!\ACESSO1|TEMP1|ESPERA|s_count\(18) & !\ACESSO1|TEMP1|ESPERA|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(20),
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(15),
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(18),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(19),
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~7_combout\);

-- Location: LCCOMB_X89_Y42_N30
\ACESSO1|TEMP1|ESPERA|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~1_combout\ = (!\ACESSO1|TEMP1|ESPERA|s_count\(4) & (!\ACESSO1|TEMP1|ESPERA|s_count\(10) & (!\ACESSO1|TEMP1|ESPERA|s_count\(6) & !\ACESSO1|TEMP1|ESPERA|s_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(4),
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(10),
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(6),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(5),
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~1_combout\);

-- Location: LCCOMB_X89_Y42_N28
\ACESSO1|TEMP1|ESPERA|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~0_combout\ = (!\ACESSO1|TEMP1|ESPERA|s_count\(0) & (!\ACESSO1|TEMP1|ESPERA|s_count\(2) & (!\ACESSO1|TEMP1|ESPERA|s_count\(3) & !\ACESSO1|TEMP1|ESPERA|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(0),
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(2),
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(3),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(1),
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~0_combout\);

-- Location: LCCOMB_X89_Y42_N0
\ACESSO1|TEMP1|ESPERA|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~2_combout\ = (!\ACESSO1|TEMP1|ESPERA|s_count\(13) & !\ACESSO1|TEMP1|ESPERA|s_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(13),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(11),
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~2_combout\);

-- Location: LCCOMB_X89_Y43_N14
\ACESSO1|TEMP1|ESPERA|s_count[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[21]~72_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(21) & (!\ACESSO1|TEMP1|ESPERA|s_count[20]~71\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(21) & ((\ACESSO1|TEMP1|ESPERA|s_count[20]~71\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[21]~73\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[20]~71\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(21),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[20]~71\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[21]~72_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[21]~73\);

-- Location: FF_X89_Y43_N15
\ACESSO1|TEMP1|ESPERA|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[21]~72_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(21));

-- Location: LCCOMB_X89_Y43_N16
\ACESSO1|TEMP1|ESPERA|s_count[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[22]~74_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(22) & (\ACESSO1|TEMP1|ESPERA|s_count[21]~73\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(22) & (!\ACESSO1|TEMP1|ESPERA|s_count[21]~73\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[22]~75\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(22) & !\ACESSO1|TEMP1|ESPERA|s_count[21]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(22),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[21]~73\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[22]~74_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[22]~75\);

-- Location: FF_X89_Y43_N17
\ACESSO1|TEMP1|ESPERA|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[22]~74_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(22));

-- Location: LCCOMB_X89_Y43_N18
\ACESSO1|TEMP1|ESPERA|s_count[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[23]~76_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(23) & (!\ACESSO1|TEMP1|ESPERA|s_count[22]~75\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(23) & ((\ACESSO1|TEMP1|ESPERA|s_count[22]~75\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[23]~77\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[22]~75\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(23),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[22]~75\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[23]~76_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[23]~77\);

-- Location: FF_X89_Y43_N19
\ACESSO1|TEMP1|ESPERA|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[23]~76_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(23));

-- Location: LCCOMB_X89_Y43_N20
\ACESSO1|TEMP1|ESPERA|s_count[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[24]~78_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(24) & (\ACESSO1|TEMP1|ESPERA|s_count[23]~77\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(24) & (!\ACESSO1|TEMP1|ESPERA|s_count[23]~77\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[24]~79\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(24) & !\ACESSO1|TEMP1|ESPERA|s_count[23]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(24),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[23]~77\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[24]~78_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[24]~79\);

-- Location: FF_X89_Y43_N21
\ACESSO1|TEMP1|ESPERA|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[24]~78_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(24));

-- Location: LCCOMB_X89_Y43_N22
\ACESSO1|TEMP1|ESPERA|s_count[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[25]~80_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(25) & (!\ACESSO1|TEMP1|ESPERA|s_count[24]~79\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(25) & ((\ACESSO1|TEMP1|ESPERA|s_count[24]~79\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[25]~81\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[24]~79\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(25),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[24]~79\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[25]~80_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[25]~81\);

-- Location: FF_X89_Y43_N23
\ACESSO1|TEMP1|ESPERA|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[25]~80_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(25));

-- Location: LCCOMB_X89_Y43_N30
\ACESSO1|TEMP1|ESPERA|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~3_combout\ = (!\ACESSO1|TEMP1|ESPERA|s_count\(17) & (!\ACESSO1|TEMP1|ESPERA|s_count\(21) & (!\ACESSO1|TEMP1|ESPERA|s_count\(25) & !\ACESSO1|TEMP1|ESPERA|s_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(17),
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(21),
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(25),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(24),
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~3_combout\);

-- Location: LCCOMB_X89_Y42_N26
\ACESSO1|TEMP1|ESPERA|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~4_combout\ = (!\ACESSO1|TEMP1|ESPERA|s_count\(16) & (\ACESSO1|TEMP1|ESPERA|Equal0~2_combout\ & (\ACESSO1|TEMP1|ESPERA|Equal0~3_combout\ & !\ACESSO1|TEMP1|ESPERA|s_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(16),
	datab => \ACESSO1|TEMP1|ESPERA|Equal0~2_combout\,
	datac => \ACESSO1|TEMP1|ESPERA|Equal0~3_combout\,
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(14),
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~4_combout\);

-- Location: LCCOMB_X89_Y43_N24
\ACESSO1|TEMP1|ESPERA|s_count[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[26]~82_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(26) & (\ACESSO1|TEMP1|ESPERA|s_count[25]~81\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(26) & (!\ACESSO1|TEMP1|ESPERA|s_count[25]~81\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[26]~83\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(26) & !\ACESSO1|TEMP1|ESPERA|s_count[25]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(26),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[25]~81\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[26]~82_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[26]~83\);

-- Location: FF_X89_Y43_N25
\ACESSO1|TEMP1|ESPERA|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[26]~82_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(26));

-- Location: LCCOMB_X89_Y43_N26
\ACESSO1|TEMP1|ESPERA|s_count[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[27]~84_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(27) & (!\ACESSO1|TEMP1|ESPERA|s_count[26]~83\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(27) & ((\ACESSO1|TEMP1|ESPERA|s_count[26]~83\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[27]~85\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[26]~83\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(27),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[26]~83\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[27]~84_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[27]~85\);

-- Location: FF_X89_Y43_N27
\ACESSO1|TEMP1|ESPERA|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[27]~84_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(27));

-- Location: LCCOMB_X89_Y42_N20
\ACESSO1|TEMP1|ESPERA|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~5_combout\ = (\ACESSO1|TEMP1|ESPERA|Equal0~1_combout\ & (\ACESSO1|TEMP1|ESPERA|Equal0~0_combout\ & (\ACESSO1|TEMP1|ESPERA|Equal0~4_combout\ & !\ACESSO1|TEMP1|ESPERA|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|Equal0~1_combout\,
	datab => \ACESSO1|TEMP1|ESPERA|Equal0~0_combout\,
	datac => \ACESSO1|TEMP1|ESPERA|Equal0~4_combout\,
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(27),
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~5_combout\);

-- Location: LCCOMB_X89_Y43_N28
\ACESSO1|TEMP1|ESPERA|s_count[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[28]~86_combout\ = \ACESSO1|TEMP1|ESPERA|s_count[27]~85\ $ (!\ACESSO1|TEMP1|ESPERA|s_count\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(28),
	cin => \ACESSO1|TEMP1|ESPERA|s_count[27]~85\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[28]~86_combout\);

-- Location: FF_X89_Y43_N29
\ACESSO1|TEMP1|ESPERA|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[28]~86_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(28));

-- Location: LCCOMB_X89_Y42_N4
\ACESSO1|TEMP1|ESPERA|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~8_combout\ = (!\ACESSO1|TEMP1|ESPERA|s_count\(22) & (!\ACESSO1|TEMP1|ESPERA|s_count\(28) & (!\ACESSO1|TEMP1|ESPERA|s_count\(26) & !\ACESSO1|TEMP1|ESPERA|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(22),
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(28),
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(26),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(23),
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~8_combout\);

-- Location: LCCOMB_X89_Y42_N16
\ACESSO1|TEMP1|ESPERA|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~6_combout\ = (!\ACESSO1|TEMP1|ESPERA|s_count\(9) & (!\ACESSO1|TEMP1|ESPERA|s_count\(8) & (!\ACESSO1|TEMP1|ESPERA|s_count\(12) & !\ACESSO1|TEMP1|ESPERA|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(9),
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(8),
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(12),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(7),
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~6_combout\);

-- Location: LCCOMB_X89_Y42_N14
\ACESSO1|TEMP1|ESPERA|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal0~9_combout\ = (\ACESSO1|TEMP1|ESPERA|Equal0~7_combout\ & (\ACESSO1|TEMP1|ESPERA|Equal0~5_combout\ & (\ACESSO1|TEMP1|ESPERA|Equal0~8_combout\ & \ACESSO1|TEMP1|ESPERA|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|Equal0~7_combout\,
	datab => \ACESSO1|TEMP1|ESPERA|Equal0~5_combout\,
	datac => \ACESSO1|TEMP1|ESPERA|Equal0~8_combout\,
	datad => \ACESSO1|TEMP1|ESPERA|Equal0~6_combout\,
	combout => \ACESSO1|TEMP1|ESPERA|Equal0~9_combout\);

-- Location: LCCOMB_X89_Y44_N0
\ACESSO1|TEMP1|ESPERA|s_decorre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\ = (\ACESSO1|TEMP1|ESPERA|Equal0~9_combout\ & ((\ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\))) # (!\ACESSO1|TEMP1|ESPERA|Equal0~9_combout\ & (\ACESSO1|TEMP1|ESPERA|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|Equal1~3_combout\,
	datac => \ACESSO1|TEMP1|ABERTURA|Equal1~3_combout\,
	datad => \ACESSO1|TEMP1|ESPERA|Equal0~9_combout\,
	combout => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\);

-- Location: FF_X89_Y44_N5
\ACESSO1|TEMP1|ESPERA|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[0]~29_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(0));

-- Location: LCCOMB_X89_Y44_N6
\ACESSO1|TEMP1|ESPERA|s_count[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[1]~32_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(1) & (!\ACESSO1|TEMP1|ESPERA|s_count[0]~30\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(1) & ((\ACESSO1|TEMP1|ESPERA|s_count[0]~30\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[1]~33\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[0]~30\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(1),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[0]~30\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[1]~32_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[1]~33\);

-- Location: FF_X89_Y44_N7
\ACESSO1|TEMP1|ESPERA|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[1]~32_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(1));

-- Location: LCCOMB_X89_Y44_N8
\ACESSO1|TEMP1|ESPERA|s_count[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[2]~34_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(2) & (\ACESSO1|TEMP1|ESPERA|s_count[1]~33\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(2) & (!\ACESSO1|TEMP1|ESPERA|s_count[1]~33\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[2]~35\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(2) & !\ACESSO1|TEMP1|ESPERA|s_count[1]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(2),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[1]~33\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[2]~34_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[2]~35\);

-- Location: FF_X89_Y44_N9
\ACESSO1|TEMP1|ESPERA|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[2]~34_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(2));

-- Location: LCCOMB_X89_Y44_N10
\ACESSO1|TEMP1|ESPERA|s_count[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[3]~36_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(3) & (!\ACESSO1|TEMP1|ESPERA|s_count[2]~35\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(3) & ((\ACESSO1|TEMP1|ESPERA|s_count[2]~35\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[3]~37\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[2]~35\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(3),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[2]~35\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[3]~36_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[3]~37\);

-- Location: FF_X89_Y44_N11
\ACESSO1|TEMP1|ESPERA|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[3]~36_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(3));

-- Location: LCCOMB_X89_Y44_N12
\ACESSO1|TEMP1|ESPERA|s_count[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[4]~38_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(4) & (\ACESSO1|TEMP1|ESPERA|s_count[3]~37\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(4) & (!\ACESSO1|TEMP1|ESPERA|s_count[3]~37\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[4]~39\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(4) & !\ACESSO1|TEMP1|ESPERA|s_count[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(4),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[3]~37\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[4]~38_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[4]~39\);

-- Location: FF_X89_Y44_N13
\ACESSO1|TEMP1|ESPERA|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[4]~38_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(4));

-- Location: LCCOMB_X89_Y44_N14
\ACESSO1|TEMP1|ESPERA|s_count[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[5]~40_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(5) & (!\ACESSO1|TEMP1|ESPERA|s_count[4]~39\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(5) & ((\ACESSO1|TEMP1|ESPERA|s_count[4]~39\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[5]~41\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[4]~39\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(5),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[4]~39\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[5]~40_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[5]~41\);

-- Location: FF_X89_Y44_N15
\ACESSO1|TEMP1|ESPERA|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[5]~40_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(5));

-- Location: LCCOMB_X89_Y44_N16
\ACESSO1|TEMP1|ESPERA|s_count[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[6]~42_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(6) & (\ACESSO1|TEMP1|ESPERA|s_count[5]~41\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(6) & (!\ACESSO1|TEMP1|ESPERA|s_count[5]~41\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[6]~43\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(6) & !\ACESSO1|TEMP1|ESPERA|s_count[5]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(6),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[5]~41\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[6]~42_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[6]~43\);

-- Location: FF_X89_Y44_N17
\ACESSO1|TEMP1|ESPERA|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[6]~42_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(6));

-- Location: LCCOMB_X89_Y44_N18
\ACESSO1|TEMP1|ESPERA|s_count[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[7]~44_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(7) & (!\ACESSO1|TEMP1|ESPERA|s_count[6]~43\)) # (!\ACESSO1|TEMP1|ESPERA|s_count\(7) & ((\ACESSO1|TEMP1|ESPERA|s_count[6]~43\) # (GND)))
-- \ACESSO1|TEMP1|ESPERA|s_count[7]~45\ = CARRY((!\ACESSO1|TEMP1|ESPERA|s_count[6]~43\) # (!\ACESSO1|TEMP1|ESPERA|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(7),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[6]~43\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[7]~44_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[7]~45\);

-- Location: FF_X89_Y44_N19
\ACESSO1|TEMP1|ESPERA|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[7]~44_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(7));

-- Location: LCCOMB_X89_Y44_N20
\ACESSO1|TEMP1|ESPERA|s_count[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|s_count[8]~46_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(8) & (\ACESSO1|TEMP1|ESPERA|s_count[7]~45\ $ (GND))) # (!\ACESSO1|TEMP1|ESPERA|s_count\(8) & (!\ACESSO1|TEMP1|ESPERA|s_count[7]~45\ & VCC))
-- \ACESSO1|TEMP1|ESPERA|s_count[8]~47\ = CARRY((\ACESSO1|TEMP1|ESPERA|s_count\(8) & !\ACESSO1|TEMP1|ESPERA|s_count[7]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(8),
	datad => VCC,
	cin => \ACESSO1|TEMP1|ESPERA|s_count[7]~45\,
	combout => \ACESSO1|TEMP1|ESPERA|s_count[8]~46_combout\,
	cout => \ACESSO1|TEMP1|ESPERA|s_count[8]~47\);

-- Location: FF_X89_Y44_N21
\ACESSO1|TEMP1|ESPERA|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[8]~46_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(8));

-- Location: FF_X89_Y44_N23
\ACESSO1|TEMP1|ESPERA|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|ESPERA|s_count[9]~48_combout\,
	sclr => \ACESSO1|TEMP1|ESPERA|s_decorre~0_combout\,
	ena => \ACESSO1|TEMP1|ESPERA|s_count[2]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|ESPERA|s_count\(9));

-- Location: LCCOMB_X89_Y42_N6
\ACESSO1|TEMP1|ESPERA|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal1~0_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(9) & (\ACESSO1|TEMP1|ESPERA|s_count\(8) & (\ACESSO1|TEMP1|ESPERA|s_count\(12) & \ACESSO1|TEMP1|ESPERA|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(9),
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(8),
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(12),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(7),
	combout => \ACESSO1|TEMP1|ESPERA|Equal1~0_combout\);

-- Location: LCCOMB_X89_Y42_N18
\ACESSO1|TEMP1|ESPERA|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal1~2_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(22) & (\ACESSO1|TEMP1|ESPERA|s_count\(28) & (\ACESSO1|TEMP1|ESPERA|s_count\(26) & \ACESSO1|TEMP1|ESPERA|s_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(22),
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(28),
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(26),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(23),
	combout => \ACESSO1|TEMP1|ESPERA|Equal1~2_combout\);

-- Location: LCCOMB_X89_Y42_N8
\ACESSO1|TEMP1|ESPERA|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal1~1_combout\ = (\ACESSO1|TEMP1|ESPERA|s_count\(20) & (\ACESSO1|TEMP1|ESPERA|s_count\(15) & (\ACESSO1|TEMP1|ESPERA|s_count\(18) & \ACESSO1|TEMP1|ESPERA|s_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|s_count\(20),
	datab => \ACESSO1|TEMP1|ESPERA|s_count\(15),
	datac => \ACESSO1|TEMP1|ESPERA|s_count\(18),
	datad => \ACESSO1|TEMP1|ESPERA|s_count\(19),
	combout => \ACESSO1|TEMP1|ESPERA|Equal1~1_combout\);

-- Location: LCCOMB_X89_Y42_N12
\ACESSO1|TEMP1|ESPERA|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|ESPERA|Equal1~3_combout\ = (\ACESSO1|TEMP1|ESPERA|Equal1~0_combout\ & (\ACESSO1|TEMP1|ESPERA|Equal1~2_combout\ & (\ACESSO1|TEMP1|ESPERA|Equal1~1_combout\ & \ACESSO1|TEMP1|ESPERA|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|Equal1~0_combout\,
	datab => \ACESSO1|TEMP1|ESPERA|Equal1~2_combout\,
	datac => \ACESSO1|TEMP1|ESPERA|Equal1~1_combout\,
	datad => \ACESSO1|TEMP1|ESPERA|Equal0~5_combout\,
	combout => \ACESSO1|TEMP1|ESPERA|Equal1~3_combout\);

-- Location: LCCOMB_X89_Y42_N22
\ACESSO1|TEMP1|FECHO|s_decorre~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~9_combout\ = ((\ACESSO1|PROL1|AMOSTRA_SIN|Q~q\ & \SIN_DBN|s_levelOut~q\)) # (!\ACESSO1|TEMP1|ESPERA|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|ESPERA|Equal1~3_combout\,
	datab => \ACESSO1|PROL1|AMOSTRA_SIN|Q~q\,
	datac => \SIN_DBN|s_levelOut~q\,
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~9_combout\);

-- Location: LCCOMB_X86_Y44_N4
\ACESSO1|TEMP1|FECHO|s_decorre~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\ = (\ACESSO1|TEMP1|FECHO|s_decorre~4_combout\ & ((\ACESSO1|TEMP1|FECHO|s_decorre~8_combout\) # ((\ACESSO1|TEMP1|FECHO|s_decorre~13_combout\ & \ACESSO1|TEMP1|FECHO|s_decorre~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_decorre~13_combout\,
	datab => \ACESSO1|TEMP1|FECHO|s_decorre~4_combout\,
	datac => \ACESSO1|TEMP1|FECHO|s_decorre~8_combout\,
	datad => \ACESSO1|TEMP1|FECHO|s_decorre~9_combout\,
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\);

-- Location: LCCOMB_X88_Y42_N26
\ACESSO1|TEMP1|FECHO|s_decorre~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|TEMP1|FECHO|s_decorre~15_combout\ = !\ACESSO1|TEMP1|FECHO|s_decorre~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ACESSO1|TEMP1|FECHO|s_decorre~14_combout\,
	combout => \ACESSO1|TEMP1|FECHO|s_decorre~15_combout\);

-- Location: FF_X88_Y42_N27
\ACESSO1|TEMP1|FECHO|s_decorre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ACESSO1|TEMP1|FECHO|s_decorre~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ACESSO1|TEMP1|FECHO|s_decorre~q\);

-- Location: LCCOMB_X88_Y42_N12
\ACESSO1|SIN1|PISCA_EN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ACESSO1|SIN1|PISCA_EN~0_combout\ = (\DIV_FREQ|clkOut~q\ & ((\ACESSO1|TEMP1|FECHO|s_decorre~q\) # ((\ACESSO1|TEMP1|ABERTURA|s_decorre~q\) # (\ACESSO1|TEMP1|ESPERA|s_decorre~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACESSO1|TEMP1|FECHO|s_decorre~q\,
	datab => \ACESSO1|TEMP1|ABERTURA|s_decorre~q\,
	datac => \DIV_FREQ|clkOut~q\,
	datad => \ACESSO1|TEMP1|ESPERA|s_decorre~q\,
	combout => \ACESSO1|SIN1|PISCA_EN~0_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


