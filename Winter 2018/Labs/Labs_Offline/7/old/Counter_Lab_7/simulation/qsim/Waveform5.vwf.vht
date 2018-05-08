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
-- Generated on "04/11/2018 17:35:00"
                                                             
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
SIGNAL ALUControl : STD_LOGIC_VECTOR(3 DOWNTO 0);
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
	ALUControl : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ALUsrc : OUT STD_LOGIC;
	Beq : OUT STD_LOGIC;
	Bne : OUT STD_LOGIC;
	funct : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Jal : OUT STD_LOGIC;
	JR : OUT STD_LOGIC;
	Jump : OUT STD_LOGIC;
	MemRead : OUT STD_LOGIC;
	MemtoReg : OUT STD_LOGIC;
	MemWrite : OUT STD_LOGIC;
	opcode : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	RegDst : OUT STD_LOGIC;
	RegWrite : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mips_control
	PORT MAP (
-- list connections between master ports and signals
	ALUControl => ALUControl,
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
END mips_control_arch;
