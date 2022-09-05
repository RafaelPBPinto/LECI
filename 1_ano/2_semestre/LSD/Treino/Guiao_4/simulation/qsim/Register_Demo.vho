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

-- DATE "04/17/2021 18:33:30"

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

ENTITY 	Register8 IS
    PORT (
	clk : IN std_logic;
	en : IN std_logic;
	dataIN : IN std_logic_vector(7 DOWNTO 0);
	dataOUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Register8;

ARCHITECTURE structure OF Register8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_dataIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataOUT[0]~output_o\ : std_logic;
SIGNAL \dataOUT[1]~output_o\ : std_logic;
SIGNAL \dataOUT[2]~output_o\ : std_logic;
SIGNAL \dataOUT[3]~output_o\ : std_logic;
SIGNAL \dataOUT[4]~output_o\ : std_logic;
SIGNAL \dataOUT[5]~output_o\ : std_logic;
SIGNAL \dataOUT[6]~output_o\ : std_logic;
SIGNAL \dataOUT[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dataIN[0]~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \dataOUT[0]~reg0_q\ : std_logic;
SIGNAL \dataIN[1]~input_o\ : std_logic;
SIGNAL \dataOUT[1]~reg0_q\ : std_logic;
SIGNAL \dataIN[2]~input_o\ : std_logic;
SIGNAL \dataOUT[2]~reg0_q\ : std_logic;
SIGNAL \dataIN[3]~input_o\ : std_logic;
SIGNAL \dataOUT[3]~reg0_q\ : std_logic;
SIGNAL \dataIN[4]~input_o\ : std_logic;
SIGNAL \dataOUT[4]~reg0_q\ : std_logic;
SIGNAL \dataIN[5]~input_o\ : std_logic;
SIGNAL \dataOUT[5]~reg0_q\ : std_logic;
SIGNAL \dataIN[6]~input_o\ : std_logic;
SIGNAL \dataOUT[6]~reg0_q\ : std_logic;
SIGNAL \dataIN[7]~input_o\ : std_logic;
SIGNAL \dataOUT[7]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_en <= en;
ww_dataIN <= dataIN;
dataOUT <= ww_dataOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOUT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOUT[0]~output_o\);

\dataOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOUT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOUT[1]~output_o\);

\dataOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOUT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOUT[2]~output_o\);

\dataOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOUT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOUT[3]~output_o\);

\dataOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOUT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOUT[4]~output_o\);

\dataOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOUT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOUT[5]~output_o\);

\dataOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOUT[6]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOUT[6]~output_o\);

\dataOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOUT[7]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOUT[7]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\dataIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(0),
	o => \dataIN[0]~input_o\);

\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

\dataOUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataIN[0]~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOUT[0]~reg0_q\);

\dataIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(1),
	o => \dataIN[1]~input_o\);

\dataOUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataIN[1]~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOUT[1]~reg0_q\);

\dataIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(2),
	o => \dataIN[2]~input_o\);

\dataOUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataIN[2]~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOUT[2]~reg0_q\);

\dataIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(3),
	o => \dataIN[3]~input_o\);

\dataOUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataIN[3]~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOUT[3]~reg0_q\);

\dataIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(4),
	o => \dataIN[4]~input_o\);

\dataOUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataIN[4]~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOUT[4]~reg0_q\);

\dataIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(5),
	o => \dataIN[5]~input_o\);

\dataOUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataIN[5]~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOUT[5]~reg0_q\);

\dataIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(6),
	o => \dataIN[6]~input_o\);

\dataOUT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataIN[6]~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOUT[6]~reg0_q\);

\dataIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIN(7),
	o => \dataIN[7]~input_o\);

\dataOUT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataIN[7]~input_o\,
	ena => \en~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOUT[7]~reg0_q\);

ww_dataOUT(0) <= \dataOUT[0]~output_o\;

ww_dataOUT(1) <= \dataOUT[1]~output_o\;

ww_dataOUT(2) <= \dataOUT[2]~output_o\;

ww_dataOUT(3) <= \dataOUT[3]~output_o\;

ww_dataOUT(4) <= \dataOUT[4]~output_o\;

ww_dataOUT(5) <= \dataOUT[5]~output_o\;

ww_dataOUT(6) <= \dataOUT[6]~output_o\;

ww_dataOUT(7) <= \dataOUT[7]~output_o\;
END structure;


