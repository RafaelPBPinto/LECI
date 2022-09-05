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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/17/2021 18:33:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Register8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Register8_vhd_vec_tst IS
END Register8_vhd_vec_tst;
ARCHITECTURE Register8_arch OF Register8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataIN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL en : STD_LOGIC;
COMPONENT Register8
	PORT (
	clk : IN STD_LOGIC;
	dataIN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	en : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Register8
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIN => dataIN,
	dataOUT => dataOUT,
	en => en
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '0';
	WAIT FOR 120000 ps;
	en <= '1';
	WAIT FOR 720000 ps;
	en <= '0';
	WAIT FOR 80000 ps;
	en <= '1';
	WAIT FOR 40000 ps;
	en <= '0';
WAIT;
END PROCESS t_prcs_en;
-- dataIN[7]
t_prcs_dataIN_7: PROCESS
BEGIN
	dataIN(7) <= '0';
	WAIT FOR 300000 ps;
	dataIN(7) <= '1';
	WAIT FOR 500000 ps;
	dataIN(7) <= '0';
	WAIT FOR 120000 ps;
	dataIN(7) <= '1';
	WAIT FOR 40000 ps;
	dataIN(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIN_7;
-- dataIN[6]
t_prcs_dataIN_6: PROCESS
BEGIN
	dataIN(6) <= '1';
	WAIT FOR 200000 ps;
	dataIN(6) <= '0';
	WAIT FOR 200000 ps;
	dataIN(6) <= '1';
	WAIT FOR 200000 ps;
	dataIN(6) <= '0';
	WAIT FOR 100000 ps;
	dataIN(6) <= '1';
	WAIT FOR 100000 ps;
	dataIN(6) <= '0';
	WAIT FOR 100000 ps;
	dataIN(6) <= '1';
	WAIT FOR 60000 ps;
	dataIN(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIN_6;
-- dataIN[5]
t_prcs_dataIN_5: PROCESS
BEGIN
	dataIN(5) <= '0';
	WAIT FOR 100000 ps;
	dataIN(5) <= '1';
	WAIT FOR 100000 ps;
	dataIN(5) <= '0';
	WAIT FOR 300000 ps;
	dataIN(5) <= '1';
	WAIT FOR 100000 ps;
	dataIN(5) <= '0';
	WAIT FOR 100000 ps;
	dataIN(5) <= '1';
	WAIT FOR 200000 ps;
	dataIN(5) <= '0';
	WAIT FOR 20000 ps;
	dataIN(5) <= '1';
	WAIT FOR 40000 ps;
	dataIN(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIN_5;
-- dataIN[4]
t_prcs_dataIN_4: PROCESS
BEGIN
	dataIN(4) <= '0';
	WAIT FOR 100000 ps;
	dataIN(4) <= '1';
	WAIT FOR 100000 ps;
	dataIN(4) <= '0';
	WAIT FOR 200000 ps;
	dataIN(4) <= '1';
	WAIT FOR 100000 ps;
	dataIN(4) <= '0';
	WAIT FOR 300000 ps;
	dataIN(4) <= '1';
	WAIT FOR 160000 ps;
	dataIN(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIN_4;
-- dataIN[3]
t_prcs_dataIN_3: PROCESS
BEGIN
	dataIN(3) <= '0';
	WAIT FOR 500000 ps;
	dataIN(3) <= '1';
	WAIT FOR 200000 ps;
	dataIN(3) <= '0';
	WAIT FOR 100000 ps;
	dataIN(3) <= '1';
	WAIT FOR 160000 ps;
	dataIN(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIN_3;
-- dataIN[2]
t_prcs_dataIN_2: PROCESS
BEGIN
	dataIN(2) <= '0';
	WAIT FOR 200000 ps;
	dataIN(2) <= '1';
	WAIT FOR 100000 ps;
	dataIN(2) <= '0';
	WAIT FOR 100000 ps;
	dataIN(2) <= '1';
	WAIT FOR 200000 ps;
	dataIN(2) <= '0';
	WAIT FOR 200000 ps;
	dataIN(2) <= '1';
	WAIT FOR 160000 ps;
	dataIN(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIN_2;
-- dataIN[1]
t_prcs_dataIN_1: PROCESS
BEGIN
	dataIN(1) <= '0';
	WAIT FOR 200000 ps;
	dataIN(1) <= '1';
	WAIT FOR 100000 ps;
	dataIN(1) <= '0';
	WAIT FOR 200000 ps;
	dataIN(1) <= '1';
	WAIT FOR 100000 ps;
	dataIN(1) <= '0';
	WAIT FOR 200000 ps;
	dataIN(1) <= '1';
	WAIT FOR 160000 ps;
	dataIN(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIN_1;
-- dataIN[0]
t_prcs_dataIN_0: PROCESS
BEGIN
	dataIN(0) <= '1';
	WAIT FOR 100000 ps;
	dataIN(0) <= '0';
	WAIT FOR 100000 ps;
	dataIN(0) <= '1';
	WAIT FOR 100000 ps;
	dataIN(0) <= '0';
	WAIT FOR 200000 ps;
	dataIN(0) <= '1';
	WAIT FOR 200000 ps;
	dataIN(0) <= '0';
	WAIT FOR 220000 ps;
	dataIN(0) <= '1';
	WAIT FOR 40000 ps;
	dataIN(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIN_0;
END Register8_arch;
