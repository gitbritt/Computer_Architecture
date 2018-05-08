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
-- Generated on "04/05/2017 14:20:32"
                                                             
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
	ALU_Result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ALUControl : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	inputA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	inputB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	shamt : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	Zero : IN STD_LOGIC
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
END mips_alu_arch;
