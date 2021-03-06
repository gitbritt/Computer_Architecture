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
-- Generated on "04/30/2018 09:54:08"
                                                             
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
SIGNAL PC_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Read_data1_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Read_data2_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Read_reg1_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Read_reg2_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL slow_clock : STD_LOGIC;
SIGNAL Write_data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Write_reg_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT mips
	PORT (
	fast_clock : IN STD_LOGIC;
	instruction_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	PC_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Read_data1_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Read_data2_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Read_reg1_out : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	Read_reg2_out : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	reset : IN STD_LOGIC;
	slow_clock : IN STD_LOGIC;
	Write_data_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Write_reg_out : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mips
	PORT MAP (
-- list connections between master ports and signals
	fast_clock => fast_clock,
	instruction_out => instruction_out,
	PC_out => PC_out,
	Read_data1_out => Read_data1_out,
	Read_data2_out => Read_data2_out,
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
	WAIT FOR 1920000 ps;
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
END mips_arch;
