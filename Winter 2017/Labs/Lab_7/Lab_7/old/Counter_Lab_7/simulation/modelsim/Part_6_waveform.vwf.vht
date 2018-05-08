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
-- Generated on "03/27/2017 22:09:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips_control
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_control_vhd_vec_tst IS
END mips_control_vhd_vec_tst;
ARCHITECTURE mips_control_arch OF mips_control_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUsrc : STD_LOGIC;
SIGNAL Beq : STD_LOGIC;
SIGNAL Bne : STD_LOGIC;
SIGNAL funct : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Jal : STD_LOGIC;
SIGNAL JR : STD_LOGIC;
SIGNAL Jump : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWrite : STD_LOGIC;
COMPONENT mips_control
	PORT (
	ALUsrc : BUFFER STD_LOGIC;
	Beq : BUFFER STD_LOGIC;
	Bne : BUFFER STD_LOGIC;
	funct : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Jal : BUFFER STD_LOGIC;
	JR : BUFFER STD_LOGIC;
	Jump : BUFFER STD_LOGIC;
	MemRead : BUFFER STD_LOGIC;
	MemtoReg : BUFFER STD_LOGIC;
	MemWrite : BUFFER STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	RegDst : BUFFER STD_LOGIC;
	RegWrite : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mips_control
	PORT MAP (
-- list connections between master ports and signals
	ALUsrc => ALUsrc,
	Beq => Beq,
	Bne => Bne,
	funct => funct,
	Jal => Jal,
	JR => JR,
	Jump => Jump,
	MemRead => MemRead,
	MemtoReg => MemtoReg,
	MemWrite => MemWrite,
	opcode => opcode,
	RegDst => RegDst,
	RegWrite => RegWrite
	);
-- funct[7]
t_prcs_funct_7: PROCESS
BEGIN
	funct(7) <= '1';
WAIT;
END PROCESS t_prcs_funct_7;
-- funct[6]
t_prcs_funct_6: PROCESS
BEGIN
	funct(6) <= '1';
WAIT;
END PROCESS t_prcs_funct_6;
-- funct[5]
t_prcs_funct_5: PROCESS
BEGIN
	funct(5) <= '1';
WAIT;
END PROCESS t_prcs_funct_5;
-- funct[4]
t_prcs_funct_4: PROCESS
BEGIN
	funct(4) <= '1';
WAIT;
END PROCESS t_prcs_funct_4;
-- funct[3]
t_prcs_funct_3: PROCESS
BEGIN
	funct(3) <= '1';
WAIT;
END PROCESS t_prcs_funct_3;
-- funct[2]
t_prcs_funct_2: PROCESS
BEGIN
	funct(2) <= '1';
WAIT;
END PROCESS t_prcs_funct_2;
-- funct[1]
t_prcs_funct_1: PROCESS
BEGIN
	funct(1) <= '1';
WAIT;
END PROCESS t_prcs_funct_1;
-- funct[0]
t_prcs_funct_0: PROCESS
BEGIN
	funct(0) <= '1';
WAIT;
END PROCESS t_prcs_funct_0;
-- opcode[7]
t_prcs_opcode_7: PROCESS
BEGIN
	opcode(7) <= '1';
WAIT;
END PROCESS t_prcs_opcode_7;
-- opcode[6]
t_prcs_opcode_6: PROCESS
BEGIN
	opcode(6) <= '1';
WAIT;
END PROCESS t_prcs_opcode_6;
-- opcode[5]
t_prcs_opcode_5: PROCESS
BEGIN
	opcode(5) <= '1';
WAIT;
END PROCESS t_prcs_opcode_5;
-- opcode[4]
t_prcs_opcode_4: PROCESS
BEGIN
	opcode(4) <= '1';
WAIT;
END PROCESS t_prcs_opcode_4;
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
	opcode(3) <= '1';
WAIT;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	opcode(2) <= '1';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
	opcode(1) <= '1';
WAIT;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
	opcode(0) <= '1';
WAIT;
END PROCESS t_prcs_opcode_0;
END mips_control_arch;
