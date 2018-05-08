-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/06/2017 13:39:49"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips_alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_alu_vhd_vec_tst IS
END mips_alu_vhd_vec_tst;
ARCHITECTURE mips_alu_arch OF mips_alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_Result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ALUControl : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL inputA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL inputB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL shamt : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Zero : STD_LOGIC;
COMPONENT mips_alu
	PORT (
	ALU_Result : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ALUControl : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	inputA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	inputB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	shamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Zero : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mips_alu
	PORT MAP (
-- list connections between master ports and signals
	ALU_Result => ALU_Result,
	ALUControl => ALUControl,
	inputA => inputA,
	inputB => inputB,
	shamt => shamt,
	Zero => Zero
	);
-- ALUControl[3]
t_prcs_ALUControl_3: PROCESS
BEGIN
	ALUControl(3) <= '0';
	WAIT FOR 24320000 ps;
	ALUControl(3) <= '1';
	WAIT FOR 3840000 ps;
	ALUControl(3) <= '0';
	WAIT FOR 5120000 ps;
	ALUControl(3) <= '1';
	WAIT FOR 26880000 ps;
	ALUControl(3) <= '0';
WAIT;
END PROCESS t_prcs_ALUControl_3;
-- ALUControl[2]
t_prcs_ALUControl_2: PROCESS
BEGIN
	ALUControl(2) <= '0';
	WAIT FOR 15360000 ps;
	ALUControl(2) <= '1';
	WAIT FOR 8960000 ps;
	ALUControl(2) <= '0';
	WAIT FOR 3840000 ps;
	ALUControl(2) <= '1';
	WAIT FOR 5120000 ps;
	ALUControl(2) <= '0';
	WAIT FOR 8960000 ps;
	ALUControl(2) <= '1';
	WAIT FOR 17920000 ps;
	ALUControl(2) <= '0';
WAIT;
END PROCESS t_prcs_ALUControl_2;
-- ALUControl[1]
t_prcs_ALUControl_1: PROCESS
BEGIN
	ALUControl(1) <= '1';
	WAIT FOR 24320000 ps;
	ALUControl(1) <= '0';
	WAIT FOR 3840000 ps;
	ALUControl(1) <= '1';
	WAIT FOR 14080000 ps;
	ALUControl(1) <= '0';
WAIT;
END PROCESS t_prcs_ALUControl_1;
-- ALUControl[0]
t_prcs_ALUControl_0: PROCESS
BEGIN
	ALUControl(0) <= '0';
	WAIT FOR 28160000 ps;
	ALUControl(0) <= '1';
	WAIT FOR 5120000 ps;
	ALUControl(0) <= '0';
	WAIT FOR 17920000 ps;
	ALUControl(0) <= '1';
	WAIT FOR 16640000 ps;
	ALUControl(0) <= '0';
WAIT;
END PROCESS t_prcs_ALUControl_0;
-- inputA[31]
t_prcs_inputA_31: PROCESS
BEGIN
	inputA(31) <= '0';
WAIT;
END PROCESS t_prcs_inputA_31;
-- inputA[30]
t_prcs_inputA_30: PROCESS
BEGIN
	inputA(30) <= '0';
WAIT;
END PROCESS t_prcs_inputA_30;
-- inputA[29]
t_prcs_inputA_29: PROCESS
BEGIN
	inputA(29) <= '0';
WAIT;
END PROCESS t_prcs_inputA_29;
-- inputA[28]
t_prcs_inputA_28: PROCESS
BEGIN
	inputA(28) <= '0';
WAIT;
END PROCESS t_prcs_inputA_28;
-- inputA[27]
t_prcs_inputA_27: PROCESS
BEGIN
	inputA(27) <= '0';
WAIT;
END PROCESS t_prcs_inputA_27;
-- inputA[26]
t_prcs_inputA_26: PROCESS
BEGIN
	inputA(26) <= '0';
WAIT;
END PROCESS t_prcs_inputA_26;
-- inputA[25]
t_prcs_inputA_25: PROCESS
BEGIN
	inputA(25) <= '0';
WAIT;
END PROCESS t_prcs_inputA_25;
-- inputA[24]
t_prcs_inputA_24: PROCESS
BEGIN
	inputA(24) <= '0';
WAIT;
END PROCESS t_prcs_inputA_24;
-- inputA[23]
t_prcs_inputA_23: PROCESS
BEGIN
	inputA(23) <= '0';
WAIT;
END PROCESS t_prcs_inputA_23;
-- inputA[22]
t_prcs_inputA_22: PROCESS
BEGIN
	inputA(22) <= '0';
WAIT;
END PROCESS t_prcs_inputA_22;
-- inputA[21]
t_prcs_inputA_21: PROCESS
BEGIN
	inputA(21) <= '0';
WAIT;
END PROCESS t_prcs_inputA_21;
-- inputA[20]
t_prcs_inputA_20: PROCESS
BEGIN
	inputA(20) <= '0';
WAIT;
END PROCESS t_prcs_inputA_20;
-- inputA[19]
t_prcs_inputA_19: PROCESS
BEGIN
	inputA(19) <= '0';
WAIT;
END PROCESS t_prcs_inputA_19;
-- inputA[18]
t_prcs_inputA_18: PROCESS
BEGIN
	inputA(18) <= '0';
WAIT;
END PROCESS t_prcs_inputA_18;
-- inputA[17]
t_prcs_inputA_17: PROCESS
BEGIN
	inputA(17) <= '0';
WAIT;
END PROCESS t_prcs_inputA_17;
-- inputA[16]
t_prcs_inputA_16: PROCESS
BEGIN
	inputA(16) <= '0';
WAIT;
END PROCESS t_prcs_inputA_16;
-- inputA[15]
t_prcs_inputA_15: PROCESS
BEGIN
	inputA(15) <= '0';
WAIT;
END PROCESS t_prcs_inputA_15;
-- inputA[14]
t_prcs_inputA_14: PROCESS
BEGIN
	inputA(14) <= '0';
WAIT;
END PROCESS t_prcs_inputA_14;
-- inputA[13]
t_prcs_inputA_13: PROCESS
BEGIN
	inputA(13) <= '0';
WAIT;
END PROCESS t_prcs_inputA_13;
-- inputA[12]
t_prcs_inputA_12: PROCESS
BEGIN
	inputA(12) <= '0';
WAIT;
END PROCESS t_prcs_inputA_12;
-- inputA[11]
t_prcs_inputA_11: PROCESS
BEGIN
	inputA(11) <= '0';
WAIT;
END PROCESS t_prcs_inputA_11;
-- inputA[10]
t_prcs_inputA_10: PROCESS
BEGIN
	inputA(10) <= '0';
WAIT;
END PROCESS t_prcs_inputA_10;
-- inputA[9]
t_prcs_inputA_9: PROCESS
BEGIN
	inputA(9) <= '0';
WAIT;
END PROCESS t_prcs_inputA_9;
-- inputA[8]
t_prcs_inputA_8: PROCESS
BEGIN
	inputA(8) <= '0';
WAIT;
END PROCESS t_prcs_inputA_8;
-- inputA[7]
t_prcs_inputA_7: PROCESS
BEGIN
	inputA(7) <= '0';
WAIT;
END PROCESS t_prcs_inputA_7;
-- inputA[6]
t_prcs_inputA_6: PROCESS
BEGIN
	inputA(6) <= '0';
WAIT;
END PROCESS t_prcs_inputA_6;
-- inputA[5]
t_prcs_inputA_5: PROCESS
BEGIN
	inputA(5) <= '0';
WAIT;
END PROCESS t_prcs_inputA_5;
-- inputA[4]
t_prcs_inputA_4: PROCESS
BEGIN
	inputA(4) <= '0';
WAIT;
END PROCESS t_prcs_inputA_4;
-- inputA[3]
t_prcs_inputA_3: PROCESS
BEGIN
	inputA(3) <= '0';
	WAIT FOR 7680000 ps;
	inputA(3) <= '1';
	WAIT FOR 6400000 ps;
	inputA(3) <= '0';
	WAIT FOR 19200000 ps;
	inputA(3) <= '1';
	WAIT FOR 8960000 ps;
	inputA(3) <= '0';
	WAIT FOR 17920000 ps;
	inputA(3) <= '1';
	WAIT FOR 7680000 ps;
	inputA(3) <= '0';
WAIT;
END PROCESS t_prcs_inputA_3;
-- inputA[2]
t_prcs_inputA_2: PROCESS
BEGIN
	inputA(2) <= '1';
	WAIT FOR 7680000 ps;
	inputA(2) <= '0';
	WAIT FOR 6400000 ps;
	inputA(2) <= '1';
	WAIT FOR 19200000 ps;
	inputA(2) <= '0';
	WAIT FOR 17920000 ps;
	inputA(2) <= '1';
	WAIT FOR 16640000 ps;
	inputA(2) <= '0';
WAIT;
END PROCESS t_prcs_inputA_2;
-- inputA[1]
t_prcs_inputA_1: PROCESS
BEGIN
	inputA(1) <= '1';
	WAIT FOR 7680000 ps;
	inputA(1) <= '0';
	WAIT FOR 6400000 ps;
	inputA(1) <= '1';
	WAIT FOR 14080000 ps;
	inputA(1) <= '0';
	WAIT FOR 14080000 ps;
	inputA(1) <= '1';
	WAIT FOR 17920000 ps;
	inputA(1) <= '0';
	WAIT FOR 7680000 ps;
	inputA(1) <= '1';
WAIT;
END PROCESS t_prcs_inputA_1;
-- inputA[0]
t_prcs_inputA_0: PROCESS
BEGIN
	inputA(0) <= '1';
	WAIT FOR 28160000 ps;
	inputA(0) <= '0';
	WAIT FOR 23040000 ps;
	inputA(0) <= '1';
	WAIT FOR 8960000 ps;
	inputA(0) <= '0';
	WAIT FOR 7680000 ps;
	inputA(0) <= '1';
WAIT;
END PROCESS t_prcs_inputA_0;
-- inputB[31]
t_prcs_inputB_31: PROCESS
BEGIN
	inputB(31) <= '0';
WAIT;
END PROCESS t_prcs_inputB_31;
-- inputB[30]
t_prcs_inputB_30: PROCESS
BEGIN
	inputB(30) <= '0';
WAIT;
END PROCESS t_prcs_inputB_30;
-- inputB[29]
t_prcs_inputB_29: PROCESS
BEGIN
	inputB(29) <= '0';
WAIT;
END PROCESS t_prcs_inputB_29;
-- inputB[28]
t_prcs_inputB_28: PROCESS
BEGIN
	inputB(28) <= '0';
WAIT;
END PROCESS t_prcs_inputB_28;
-- inputB[27]
t_prcs_inputB_27: PROCESS
BEGIN
	inputB(27) <= '0';
WAIT;
END PROCESS t_prcs_inputB_27;
-- inputB[26]
t_prcs_inputB_26: PROCESS
BEGIN
	inputB(26) <= '0';
WAIT;
END PROCESS t_prcs_inputB_26;
-- inputB[25]
t_prcs_inputB_25: PROCESS
BEGIN
	inputB(25) <= '0';
WAIT;
END PROCESS t_prcs_inputB_25;
-- inputB[24]
t_prcs_inputB_24: PROCESS
BEGIN
	inputB(24) <= '0';
WAIT;
END PROCESS t_prcs_inputB_24;
-- inputB[23]
t_prcs_inputB_23: PROCESS
BEGIN
	inputB(23) <= '0';
WAIT;
END PROCESS t_prcs_inputB_23;
-- inputB[22]
t_prcs_inputB_22: PROCESS
BEGIN
	inputB(22) <= '0';
WAIT;
END PROCESS t_prcs_inputB_22;
-- inputB[21]
t_prcs_inputB_21: PROCESS
BEGIN
	inputB(21) <= '0';
WAIT;
END PROCESS t_prcs_inputB_21;
-- inputB[20]
t_prcs_inputB_20: PROCESS
BEGIN
	inputB(20) <= '0';
WAIT;
END PROCESS t_prcs_inputB_20;
-- inputB[19]
t_prcs_inputB_19: PROCESS
BEGIN
	inputB(19) <= '0';
WAIT;
END PROCESS t_prcs_inputB_19;
-- inputB[18]
t_prcs_inputB_18: PROCESS
BEGIN
	inputB(18) <= '0';
WAIT;
END PROCESS t_prcs_inputB_18;
-- inputB[17]
t_prcs_inputB_17: PROCESS
BEGIN
	inputB(17) <= '0';
WAIT;
END PROCESS t_prcs_inputB_17;
-- inputB[16]
t_prcs_inputB_16: PROCESS
BEGIN
	inputB(16) <= '0';
WAIT;
END PROCESS t_prcs_inputB_16;
-- inputB[15]
t_prcs_inputB_15: PROCESS
BEGIN
	inputB(15) <= '0';
WAIT;
END PROCESS t_prcs_inputB_15;
-- inputB[14]
t_prcs_inputB_14: PROCESS
BEGIN
	inputB(14) <= '0';
WAIT;
END PROCESS t_prcs_inputB_14;
-- inputB[13]
t_prcs_inputB_13: PROCESS
BEGIN
	inputB(13) <= '0';
WAIT;
END PROCESS t_prcs_inputB_13;
-- inputB[12]
t_prcs_inputB_12: PROCESS
BEGIN
	inputB(12) <= '0';
WAIT;
END PROCESS t_prcs_inputB_12;
-- inputB[11]
t_prcs_inputB_11: PROCESS
BEGIN
	inputB(11) <= '0';
WAIT;
END PROCESS t_prcs_inputB_11;
-- inputB[10]
t_prcs_inputB_10: PROCESS
BEGIN
	inputB(10) <= '0';
WAIT;
END PROCESS t_prcs_inputB_10;
-- inputB[9]
t_prcs_inputB_9: PROCESS
BEGIN
	inputB(9) <= '0';
WAIT;
END PROCESS t_prcs_inputB_9;
-- inputB[8]
t_prcs_inputB_8: PROCESS
BEGIN
	inputB(8) <= '0';
WAIT;
END PROCESS t_prcs_inputB_8;
-- inputB[7]
t_prcs_inputB_7: PROCESS
BEGIN
	inputB(7) <= '0';
WAIT;
END PROCESS t_prcs_inputB_7;
-- inputB[6]
t_prcs_inputB_6: PROCESS
BEGIN
	inputB(6) <= '0';
WAIT;
END PROCESS t_prcs_inputB_6;
-- inputB[5]
t_prcs_inputB_5: PROCESS
BEGIN
	inputB(5) <= '0';
WAIT;
END PROCESS t_prcs_inputB_5;
-- inputB[4]
t_prcs_inputB_4: PROCESS
BEGIN
	inputB(4) <= '0';
WAIT;
END PROCESS t_prcs_inputB_4;
-- inputB[3]
t_prcs_inputB_3: PROCESS
BEGIN
	inputB(3) <= '0';
	WAIT FOR 15360000 ps;
	inputB(3) <= '1';
	WAIT FOR 12800000 ps;
	inputB(3) <= '0';
	WAIT FOR 5120000 ps;
	inputB(3) <= '1';
	WAIT FOR 8960000 ps;
	inputB(3) <= '0';
WAIT;
END PROCESS t_prcs_inputB_3;
-- inputB[2]
t_prcs_inputB_2: PROCESS
BEGIN
	inputB(2) <= '1';
	WAIT FOR 7680000 ps;
	inputB(2) <= '0';
	WAIT FOR 7680000 ps;
	inputB(2) <= '1';
	WAIT FOR 12800000 ps;
	inputB(2) <= '0';
	WAIT FOR 14080000 ps;
	inputB(2) <= '1';
	WAIT FOR 25600000 ps;
	inputB(2) <= '0';
WAIT;
END PROCESS t_prcs_inputB_2;
-- inputB[1]
t_prcs_inputB_1: PROCESS
BEGIN
	inputB(1) <= '1';
	WAIT FOR 15360000 ps;
	inputB(1) <= '0';
	WAIT FOR 26880000 ps;
	inputB(1) <= '1';
	WAIT FOR 8960000 ps;
	inputB(1) <= '0';
	WAIT FOR 8960000 ps;
	inputB(1) <= '1';
	WAIT FOR 7680000 ps;
	inputB(1) <= '0';
WAIT;
END PROCESS t_prcs_inputB_1;
-- inputB[0]
t_prcs_inputB_0: PROCESS
BEGIN
	inputB(0) <= '1';
	WAIT FOR 28160000 ps;
	inputB(0) <= '0';
	WAIT FOR 14080000 ps;
	inputB(0) <= '1';
	WAIT FOR 17920000 ps;
	inputB(0) <= '0';
	WAIT FOR 7680000 ps;
	inputB(0) <= '1';
WAIT;
END PROCESS t_prcs_inputB_0;
-- shamt[4]
t_prcs_shamt_4: PROCESS
BEGIN
	shamt(4) <= '0';
WAIT;
END PROCESS t_prcs_shamt_4;
-- shamt[3]
t_prcs_shamt_3: PROCESS
BEGIN
	shamt(3) <= '0';
WAIT;
END PROCESS t_prcs_shamt_3;
-- shamt[2]
t_prcs_shamt_2: PROCESS
BEGIN
	shamt(2) <= '0';
WAIT;
END PROCESS t_prcs_shamt_2;
-- shamt[1]
t_prcs_shamt_1: PROCESS
BEGIN
	shamt(1) <= '0';
WAIT;
END PROCESS t_prcs_shamt_1;
-- shamt[0]
t_prcs_shamt_0: PROCESS
BEGIN
	shamt(0) <= '0';
	WAIT FOR 33280000 ps;
	shamt(0) <= '1';
	WAIT FOR 8960000 ps;
	shamt(0) <= '0';
WAIT;
END PROCESS t_prcs_shamt_0;
END mips_alu_arch;
