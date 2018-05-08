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
-- Generated on "05/04/2018 10:49:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Counter_vhd_vec_tst IS
END Counter_vhd_vec_tst;
ARCHITECTURE Counter_arch OF Counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL Count : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Next_count : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
COMPONENT Counter
	PORT (
	Clock : IN STD_LOGIC;
	Count : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Next_count : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Counter
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	Count => Count,
	Next_count => Next_count,
	Reset => Reset
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 10000 ps;
	Clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;
-- Next_count[31]
t_prcs_Next_count_31: PROCESS
BEGIN
	Next_count(31) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_31;
-- Next_count[30]
t_prcs_Next_count_30: PROCESS
BEGIN
	Next_count(30) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_30;
-- Next_count[29]
t_prcs_Next_count_29: PROCESS
BEGIN
	Next_count(29) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_29;
-- Next_count[28]
t_prcs_Next_count_28: PROCESS
BEGIN
	Next_count(28) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_28;
-- Next_count[27]
t_prcs_Next_count_27: PROCESS
BEGIN
	Next_count(27) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_27;
-- Next_count[26]
t_prcs_Next_count_26: PROCESS
BEGIN
	Next_count(26) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_26;
-- Next_count[25]
t_prcs_Next_count_25: PROCESS
BEGIN
	Next_count(25) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_25;
-- Next_count[24]
t_prcs_Next_count_24: PROCESS
BEGIN
	Next_count(24) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_24;
-- Next_count[23]
t_prcs_Next_count_23: PROCESS
BEGIN
	Next_count(23) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_23;
-- Next_count[22]
t_prcs_Next_count_22: PROCESS
BEGIN
	Next_count(22) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_22;
-- Next_count[21]
t_prcs_Next_count_21: PROCESS
BEGIN
	Next_count(21) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_21;
-- Next_count[20]
t_prcs_Next_count_20: PROCESS
BEGIN
	Next_count(20) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_20;
-- Next_count[19]
t_prcs_Next_count_19: PROCESS
BEGIN
	Next_count(19) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_19;
-- Next_count[18]
t_prcs_Next_count_18: PROCESS
BEGIN
	Next_count(18) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_18;
-- Next_count[17]
t_prcs_Next_count_17: PROCESS
BEGIN
	Next_count(17) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_17;
-- Next_count[16]
t_prcs_Next_count_16: PROCESS
BEGIN
	Next_count(16) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_16;
-- Next_count[15]
t_prcs_Next_count_15: PROCESS
BEGIN
	Next_count(15) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_15;
-- Next_count[14]
t_prcs_Next_count_14: PROCESS
BEGIN
	Next_count(14) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_14;
-- Next_count[13]
t_prcs_Next_count_13: PROCESS
BEGIN
	Next_count(13) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_13;
-- Next_count[12]
t_prcs_Next_count_12: PROCESS
BEGIN
	Next_count(12) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_12;
-- Next_count[11]
t_prcs_Next_count_11: PROCESS
BEGIN
	Next_count(11) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_11;
-- Next_count[10]
t_prcs_Next_count_10: PROCESS
BEGIN
	Next_count(10) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_10;
-- Next_count[9]
t_prcs_Next_count_9: PROCESS
BEGIN
	Next_count(9) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_9;
-- Next_count[8]
t_prcs_Next_count_8: PROCESS
BEGIN
	Next_count(8) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_8;
-- Next_count[7]
t_prcs_Next_count_7: PROCESS
BEGIN
	Next_count(7) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_7;
-- Next_count[6]
t_prcs_Next_count_6: PROCESS
BEGIN
	Next_count(6) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_6;
-- Next_count[5]
t_prcs_Next_count_5: PROCESS
BEGIN
	Next_count(5) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_5;
-- Next_count[4]
t_prcs_Next_count_4: PROCESS
BEGIN
	Next_count(4) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_4;
-- Next_count[3]
t_prcs_Next_count_3: PROCESS
BEGIN
	Next_count(3) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_3;
-- Next_count[2]
t_prcs_Next_count_2: PROCESS
BEGIN
	Next_count(2) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_2;
-- Next_count[1]
t_prcs_Next_count_1: PROCESS
BEGIN
	Next_count(1) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_1;
-- Next_count[0]
t_prcs_Next_count_0: PROCESS
BEGIN
	Next_count(0) <= '0';
WAIT;
END PROCESS t_prcs_Next_count_0;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
	WAIT FOR 30000 ps;
	Reset <= '1';
WAIT;
END PROCESS t_prcs_Reset;
END Counter_arch;
