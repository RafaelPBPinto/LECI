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
-- Generated on "04/12/2021 15:16:19"
                                                             
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
SIGNAL dataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
COMPONENT Register8
	PORT (
	clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	enable : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Register8
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIn => dataIn,
	dataOut => dataOut,
	enable => enable
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

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 200000 ps;
	enable <= '0';
	WAIT FOR 220000 ps;
	enable <= '1';
	WAIT FOR 220000 ps;
	enable <= '0';
	WAIT FOR 200000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;
-- dataIn[7]
t_prcs_dataIn_7: PROCESS
BEGIN
	dataIn(7) <= '0';
	WAIT FOR 560000 ps;
	dataIn(7) <= '1';
	WAIT FOR 420000 ps;
	dataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_7;
-- dataIn[6]
t_prcs_dataIn_6: PROCESS
BEGIN
	dataIn(6) <= '0';
	WAIT FOR 70000 ps;
	dataIn(6) <= '1';
	WAIT FOR 70000 ps;
	dataIn(6) <= '0';
	WAIT FOR 70000 ps;
	dataIn(6) <= '1';
	WAIT FOR 70000 ps;
	dataIn(6) <= '0';
	WAIT FOR 210000 ps;
	dataIn(6) <= '1';
	WAIT FOR 70000 ps;
	dataIn(6) <= '0';
	WAIT FOR 70000 ps;
	dataIn(6) <= '1';
	WAIT FOR 140000 ps;
	dataIn(6) <= '0';
	WAIT FOR 140000 ps;
	dataIn(6) <= '1';
	WAIT FOR 70000 ps;
	dataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_6;
-- dataIn[5]
t_prcs_dataIn_5: PROCESS
BEGIN
	dataIn(5) <= '1';
	WAIT FOR 70000 ps;
	dataIn(5) <= '0';
	WAIT FOR 70000 ps;
	dataIn(5) <= '1';
	WAIT FOR 140000 ps;
	dataIn(5) <= '0';
	WAIT FOR 210000 ps;
	dataIn(5) <= '1';
	WAIT FOR 140000 ps;
	dataIn(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_5;
-- dataIn[4]
t_prcs_dataIn_4: PROCESS
BEGIN
	dataIn(4) <= '1';
	WAIT FOR 210000 ps;
	dataIn(4) <= '0';
	WAIT FOR 210000 ps;
	dataIn(4) <= '1';
	WAIT FOR 210000 ps;
	dataIn(4) <= '0';
	WAIT FOR 210000 ps;
	dataIn(4) <= '1';
	WAIT FOR 140000 ps;
	dataIn(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_4;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '1';
	WAIT FOR 70000 ps;
	dataIn(3) <= '0';
	WAIT FOR 70000 ps;
	dataIn(3) <= '1';
	WAIT FOR 140000 ps;
	dataIn(3) <= '0';
	WAIT FOR 210000 ps;
	dataIn(3) <= '1';
	WAIT FOR 70000 ps;
	dataIn(3) <= '0';
	WAIT FOR 70000 ps;
	dataIn(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	dataIn(2) <= '0';
	WAIT FOR 280000 ps;
	dataIn(2) <= '1';
	WAIT FOR 350000 ps;
	dataIn(2) <= '0';
	WAIT FOR 140000 ps;
	dataIn(2) <= '1';
	WAIT FOR 140000 ps;
	dataIn(2) <= '0';
	WAIT FOR 70000 ps;
	dataIn(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
	dataIn(1) <= '0';
	WAIT FOR 70000 ps;
	dataIn(1) <= '1';
	WAIT FOR 70000 ps;
	dataIn(1) <= '0';
	WAIT FOR 70000 ps;
	dataIn(1) <= '1';
	WAIT FOR 420000 ps;
	dataIn(1) <= '0';
	WAIT FOR 140000 ps;
	dataIn(1) <= '1';
	WAIT FOR 70000 ps;
	dataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	dataIn(0) <= '1';
	WAIT FOR 140000 ps;
	dataIn(0) <= '0';
	WAIT FOR 70000 ps;
	dataIn(0) <= '1';
	WAIT FOR 280000 ps;
	dataIn(0) <= '0';
	WAIT FOR 140000 ps;
	dataIn(0) <= '1';
	WAIT FOR 350000 ps;
	dataIn(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_0;
END Register8_arch;
