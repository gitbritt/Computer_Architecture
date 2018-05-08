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
-- Generated on "05/03/2018 21:43:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_vhd_vec_tst IS
END mips_vhd_vec_tst;
ARCHITECTURE mips_arch OF mips_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fast_clock : STD_LOGIC;
SIGNAL instruction_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Mem_OUT_Test : STD_LOGIC;
SIGNAL MEMORY_INPUT_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MEMORY_INPUT_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MEMORY_IO : STD_LOGIC;
SIGNAL OUTSIGNAL_IO_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OUTSIGNAL_IO_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Read_data1_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Read_data2_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL READ_MEM : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Read_reg1_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Read_reg2_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL slow_clock : STD_LOGIC;
SIGNAL Write_data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Write_reg_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT mips
	PORT (
	fast_clock : IN STD_LOGIC;
	instruction_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Mem_OUT_Test : OUT STD_LOGIC;
	MEMORY_INPUT_1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	MEMORY_INPUT_2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	MEMORY_IO : IN STD_LOGIC;
	OUTSIGNAL_IO_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	OUTSIGNAL_IO_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Read_data1_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Read_data2_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	READ_MEM : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Read_reg1_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Read_reg2_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	reset : IN STD_LOGIC;
	slow_clock : IN STD_LOGIC;
	Write_data_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Write_reg_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mips
	PORT MAP (
-- list connections between master ports and signals
	fast_clock => fast_clock,
	instruction_out => instruction_out,
	Mem_OUT_Test => Mem_OUT_Test,
	MEMORY_INPUT_1 => MEMORY_INPUT_1,
	MEMORY_INPUT_2 => MEMORY_INPUT_2,
	MEMORY_IO => MEMORY_IO,
	OUTSIGNAL_IO_1 => OUTSIGNAL_IO_1,
	OUTSIGNAL_IO_2 => OUTSIGNAL_IO_2,
	PC_out => PC_out,
	Read_data1_out => Read_data1_out,
	Read_data2_out => Read_data2_out,
	READ_MEM => READ_MEM,
	Read_reg1_out => Read_reg1_out,
	Read_reg2_out => Read_reg2_out,
	reset => reset,
	slow_clock => slow_clock,
	Write_data_out => Write_data_out,
	Write_reg_out => Write_reg_out
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 1040000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- fast_clock
t_prcs_fast_clock: PROCESS
BEGIN
LOOP
	fast_clock <= '0';
	WAIT FOR 50000 ps;
	fast_clock <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_fast_clock;

-- slow_clock
t_prcs_slow_clock: PROCESS
BEGIN
LOOP
	slow_clock <= '0';
	WAIT FOR 500000 ps;
	slow_clock <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_slow_clock;
-- MEMORY_INPUT_1[7]
t_prcs_MEMORY_INPUT_1_7: PROCESS
BEGIN
	MEMORY_INPUT_1(7) <= '0';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_1_7;
-- MEMORY_INPUT_1[6]
t_prcs_MEMORY_INPUT_1_6: PROCESS
BEGIN
	MEMORY_INPUT_1(6) <= '1';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_1_6;
-- MEMORY_INPUT_1[5]
t_prcs_MEMORY_INPUT_1_5: PROCESS
BEGIN
	MEMORY_INPUT_1(5) <= '1';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_1_5;
-- MEMORY_INPUT_1[4]
t_prcs_MEMORY_INPUT_1_4: PROCESS
BEGIN
	MEMORY_INPUT_1(4) <= '1';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_1_4;
-- MEMORY_INPUT_1[3]
t_prcs_MEMORY_INPUT_1_3: PROCESS
BEGIN
	MEMORY_INPUT_1(3) <= '1';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_1_3;
-- MEMORY_INPUT_1[2]
t_prcs_MEMORY_INPUT_1_2: PROCESS
BEGIN
	MEMORY_INPUT_1(2) <= '0';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_1_2;
-- MEMORY_INPUT_1[1]
t_prcs_MEMORY_INPUT_1_1: PROCESS
BEGIN
	MEMORY_INPUT_1(1) <= '0';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_1_1;
-- MEMORY_INPUT_1[0]
t_prcs_MEMORY_INPUT_1_0: PROCESS
BEGIN
	MEMORY_INPUT_1(0) <= '0';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_1_0;
-- MEMORY_INPUT_2[7]
t_prcs_MEMORY_INPUT_2_7: PROCESS
BEGIN
	MEMORY_INPUT_2(7) <= '0';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_2_7;
-- MEMORY_INPUT_2[6]
t_prcs_MEMORY_INPUT_2_6: PROCESS
BEGIN
	MEMORY_INPUT_2(6) <= '1';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_2_6;
-- MEMORY_INPUT_2[5]
t_prcs_MEMORY_INPUT_2_5: PROCESS
BEGIN
	MEMORY_INPUT_2(5) <= '1';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_2_5;
-- MEMORY_INPUT_2[4]
t_prcs_MEMORY_INPUT_2_4: PROCESS
BEGIN
	MEMORY_INPUT_2(4) <= '0';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_2_4;
-- MEMORY_INPUT_2[3]
t_prcs_MEMORY_INPUT_2_3: PROCESS
BEGIN
	MEMORY_INPUT_2(3) <= '0';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_2_3;
-- MEMORY_INPUT_2[2]
t_prcs_MEMORY_INPUT_2_2: PROCESS
BEGIN
	MEMORY_INPUT_2(2) <= '1';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_2_2;
-- MEMORY_INPUT_2[1]
t_prcs_MEMORY_INPUT_2_1: PROCESS
BEGIN
	MEMORY_INPUT_2(1) <= '1';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_2_1;
-- MEMORY_INPUT_2[0]
t_prcs_MEMORY_INPUT_2_0: PROCESS
BEGIN
	MEMORY_INPUT_2(0) <= '1';
WAIT;
END PROCESS t_prcs_MEMORY_INPUT_2_0;

-- MEMORY_IO
t_prcs_MEMORY_IO: PROCESS
BEGIN
	MEMORY_IO <= '0';
WAIT;
END PROCESS t_prcs_MEMORY_IO;
END mips_arch;
