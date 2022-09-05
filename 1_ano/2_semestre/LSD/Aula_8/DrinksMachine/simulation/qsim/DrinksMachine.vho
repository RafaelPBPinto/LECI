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

-- DATE "05/17/2021 16:57:19"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DrinksFSM IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	V : IN std_logic;
	C : IN std_logic;
	d : OUT std_logic
	);
END DrinksFSM;

ARCHITECTURE structure OF DrinksFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \V~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \s_nextState.E0_138~combout\ : std_logic;
SIGNAL \s_currentstate~13_combout\ : std_logic;
SIGNAL \s_currentstate.E0~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \s_nextState.E1_130~combout\ : std_logic;
SIGNAL \s_currentstate~12_combout\ : std_logic;
SIGNAL \s_currentstate.E1~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \s_nextState.E2_122~combout\ : std_logic;
SIGNAL \s_currentstate~9_combout\ : std_logic;
SIGNAL \s_currentstate.E2~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \s_nextState.E3_114~combout\ : std_logic;
SIGNAL \s_currentstate~10_combout\ : std_logic;
SIGNAL \s_currentstate.E3~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \s_nextState.E4_106~combout\ : std_logic;
SIGNAL \s_currentstate~11_combout\ : std_logic;
SIGNAL \s_currentstate.E4~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \s_nextState.E5_98~combout\ : std_logic;
SIGNAL \s_currentstate~8_combout\ : std_logic;
SIGNAL \s_currentstate.E5~q\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_V <= V;
ww_C <= C;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_currentstate.E5~q\,
	devoe => ww_devoe,
	o => \d~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

\V~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_V,
	o => \V~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\V~input_o\) # ((\C~input_o\) # (\s_currentstate.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \V~input_o\,
	datab => \C~input_o\,
	datac => \s_currentstate.E0~q\,
	combout => \Selector10~0_combout\);

\s_nextState.E0_138\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E0_138~combout\ = (\s_currentstate.E5~q\ & ((\s_nextState.E0_138~combout\))) # (!\s_currentstate.E5~q\ & (!\Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~0_combout\,
	datac => \s_nextState.E0_138~combout\,
	datad => \s_currentstate.E5~q\,
	combout => \s_nextState.E0_138~combout\);

\s_currentstate~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentstate~13_combout\ = (!\reset~input_o\ & !\s_nextState.E0_138~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \s_nextState.E0_138~combout\,
	combout => \s_currentstate~13_combout\);

\s_currentstate.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentstate~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentstate.E0~q\);

\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\V~input_o\ & (((!\s_currentstate.E0~q\)))) # (!\V~input_o\ & (\s_currentstate.E1~q\ & (!\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentstate.E1~q\,
	datab => \V~input_o\,
	datac => \C~input_o\,
	datad => \s_currentstate.E0~q\,
	combout => \Selector8~0_combout\);

\s_nextState.E1_130\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E1_130~combout\ = (\s_currentstate.E5~q\ & ((\s_nextState.E1_130~combout\))) # (!\s_currentstate.E5~q\ & (\Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~0_combout\,
	datac => \s_nextState.E1_130~combout\,
	datad => \s_currentstate.E5~q\,
	combout => \s_nextState.E1_130~combout\);

\s_currentstate~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentstate~12_combout\ = (\s_nextState.E1_130~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E1_130~combout\,
	datad => \reset~input_o\,
	combout => \s_currentstate~12_combout\);

\s_currentstate.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentstate~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentstate.E1~q\);

\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\V~input_o\ & (\s_currentstate.E1~q\)) # (!\V~input_o\ & (((\s_currentstate.E2~q\ & !\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentstate.E1~q\,
	datab => \V~input_o\,
	datac => \s_currentstate.E2~q\,
	datad => \C~input_o\,
	combout => \Selector6~0_combout\);

\s_nextState.E2_122\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E2_122~combout\ = (\s_currentstate.E5~q\ & ((\s_nextState.E2_122~combout\))) # (!\s_currentstate.E5~q\ & (\Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~0_combout\,
	datac => \s_nextState.E2_122~combout\,
	datad => \s_currentstate.E5~q\,
	combout => \s_nextState.E2_122~combout\);

\s_currentstate~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentstate~9_combout\ = (\s_nextState.E2_122~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E2_122~combout\,
	datad => \reset~input_o\,
	combout => \s_currentstate~9_combout\);

\s_currentstate.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentstate~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentstate.E2~q\);

\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\V~input_o\ & ((\C~input_o\ & ((!\s_currentstate.E0~q\))) # (!\C~input_o\ & (\s_currentstate.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentstate.E3~q\,
	datab => \C~input_o\,
	datac => \s_currentstate.E0~q\,
	datad => \V~input_o\,
	combout => \Selector4~0_combout\);

\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\V~input_o\ & \s_currentstate.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \V~input_o\,
	datac => \s_currentstate.E2~q\,
	combout => \Selector4~1_combout\);

\s_nextState.E3_114\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E3_114~combout\ = (\s_currentstate.E5~q\ & ((\s_nextState.E3_114~combout\))) # (!\s_currentstate.E5~q\ & (\Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~1_combout\,
	datac => \s_nextState.E3_114~combout\,
	datad => \s_currentstate.E5~q\,
	combout => \s_nextState.E3_114~combout\);

\s_currentstate~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentstate~10_combout\ = (\s_nextState.E3_114~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E3_114~combout\,
	datad => \reset~input_o\,
	combout => \s_currentstate~10_combout\);

\s_currentstate.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentstate~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentstate.E3~q\);

\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\C~input_o\ & (!\V~input_o\ & ((\s_currentstate.E2~q\) # (\s_currentstate.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \s_currentstate.E2~q\,
	datac => \s_currentstate.E3~q\,
	datad => \V~input_o\,
	combout => \Selector1~0_combout\);

\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\V~input_o\ & ((\C~input_o\ & (\s_currentstate.E1~q\)) # (!\C~input_o\ & ((\s_currentstate.E4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_currentstate.E1~q\,
	datab => \s_currentstate.E4~q\,
	datac => \C~input_o\,
	datad => \V~input_o\,
	combout => \Selector2~0_combout\);

\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\V~input_o\ & \s_currentstate.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \V~input_o\,
	datac => \s_currentstate.E3~q\,
	combout => \Selector2~1_combout\);

\s_nextState.E4_106\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E4_106~combout\ = (\s_currentstate.E5~q\ & ((\s_nextState.E4_106~combout\))) # (!\s_currentstate.E5~q\ & (\Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~1_combout\,
	datac => \s_nextState.E4_106~combout\,
	datad => \s_currentstate.E5~q\,
	combout => \s_nextState.E4_106~combout\);

\s_currentstate~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentstate~11_combout\ = (\s_nextState.E4_106~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E4_106~combout\,
	datad => \reset~input_o\,
	combout => \s_currentstate~11_combout\);

\s_currentstate.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentstate~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentstate.E4~q\);

\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\s_currentstate.E4~q\ & ((\V~input_o\) # (\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \s_currentstate.E4~q\,
	datac => \V~input_o\,
	datad => \C~input_o\,
	combout => \Selector1~1_combout\);

\s_nextState.E5_98\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_nextState.E5_98~combout\ = (\s_currentstate.E5~q\ & ((\s_nextState.E5_98~combout\))) # (!\s_currentstate.E5~q\ & (\Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~1_combout\,
	datac => \s_nextState.E5_98~combout\,
	datad => \s_currentstate.E5~q\,
	combout => \s_nextState.E5_98~combout\);

\s_currentstate~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_currentstate~8_combout\ = (\s_nextState.E5_98~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_nextState.E5_98~combout\,
	datad => \reset~input_o\,
	combout => \s_currentstate~8_combout\);

\s_currentstate.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_currentstate~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_currentstate.E5~q\);

ww_d <= \d~output_o\;
END structure;


