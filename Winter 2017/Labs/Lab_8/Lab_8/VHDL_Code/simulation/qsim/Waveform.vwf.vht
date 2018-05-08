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
-- Generated on "04/19/2018 13:36:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          signExtImm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY signExtImm_vhd_vec_tst IS
END signExtImm_vhd_vec_tst;
ARCHITECTURE signExtImm_arch OF signExtImm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Data_Out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL input1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT signExtImm
	PORT (
	Data_Out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	input1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : signExtImm
	PORT MAP (
-- list connections between master ports and signals
	Data_Out => Data_Out,
	input1 => input1
	);
-- input1[15]
t_prcs_input1_15: PROCESS
BEGIN
	input1(15) <= '0';
WAIT;
END PROCESS t_prcs_input1_15;
-- input1[14]
t_prcs_input1_14: PROCESS
BEGIN
	input1(14) <= '0';
WAIT;
END PROCESS t_prcs_input1_14;
-- input1[13]
t_prcs_input1_13: PROCESS
BEGIN
	input1(13) <= '0';
WAIT;
END PROCESS t_prcs_input1_13;
-- input1[12]
t_prcs_input1_12: PROCESS
BEGIN
	input1(12) <= '0';
WAIT;
END PROCESS t_prcs_input1_12;
-- input1[11]
t_prcs_input1_11: PROCESS
BEGIN
	input1(11) <= '0';
WAIT;
END PROCESS t_prcs_input1_11;
-- input1[10]
t_prcs_input1_10: PROCESS
BEGIN
	input1(10) <= '0';
WAIT;
END PROCESS t_prcs_input1_10;
-- input1[9]
t_prcs_input1_9: PROCESS
BEGIN
	input1(9) <= '0';
WAIT;
END PROCESS t_prcs_input1_9;
-- input1[8]
t_prcs_input1_8: PROCESS
BEGIN
	input1(8) <= '0';
WAIT;
END PROCESS t_prcs_input1_8;
-- input1[7]
t_prcs_input1_7: PROCESS
BEGIN
	input1(7) <= '0';
WAIT;
END PROCESS t_prcs_input1_7;
-- input1[6]
t_prcs_input1_6: PROCESS
BEGIN
	input1(6) <= '0';
WAIT;
END PROCESS t_prcs_input1_6;
-- input1[5]
t_prcs_input1_5: PROCESS
BEGIN
	input1(5) <= '0';
WAIT;
END PROCESS t_prcs_input1_5;
-- input1[4]
t_prcs_input1_4: PROCESS
BEGIN
	input1(4) <= '0';
WAIT;
END PROCESS t_prcs_input1_4;
-- input1[3]
t_prcs_input1_3: PROCESS
BEGIN
	input1(3) <= '1';
	WAIT FOR 100000 ps;
	input1(3) <= '0';
WAIT;
END PROCESS t_prcs_input1_3;
-- input1[2]
t_prcs_input1_2: PROCESS
BEGIN
	input1(2) <= '1';
	WAIT FOR 100000 ps;
	input1(2) <= '0';
WAIT;
END PROCESS t_prcs_input1_2;
-- input1[1]
t_prcs_input1_1: PROCESS
BEGIN
	input1(1) <= '0';
WAIT;
END PROCESS t_prcs_input1_1;
-- input1[0]
t_prcs_input1_0: PROCESS
BEGIN
	input1(0) <= '0';
WAIT;
END PROCESS t_prcs_input1_0;
END signExtImm_arch;
