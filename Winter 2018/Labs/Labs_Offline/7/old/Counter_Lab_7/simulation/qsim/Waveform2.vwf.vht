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
-- Generated on "04/05/2018 16:54:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips_register_file
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_register_file_vhd_vec_tst IS
END mips_register_file_vhd_vec_tst;
ARCHITECTURE mips_register_file_arch OF mips_register_file_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL read_data1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL read_data2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL read_reg1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL read_reg2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RegWrite : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL write_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL write_reg : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT mips_register_file
	PORT (
	clock : IN STD_LOGIC;
	read_data1 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	read_data2 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	read_reg1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	read_reg2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	RegWrite : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	write_reg : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mips_register_file
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	read_data1 => read_data1,
	read_data2 => read_data2,
	read_reg1 => read_reg1,
	read_reg2 => read_reg2,
	RegWrite => RegWrite,
	Reset => Reset,
	write_data => write_data,
	write_reg => write_reg
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '1';
	WAIT FOR 10000000 ps;
	clock <= '0';
	WAIT FOR 5000000 ps;
	clock <= '1';
	WAIT FOR 5000000 ps;
	FOR i IN 1 TO 8
	LOOP
		clock <= '0';
		WAIT FOR 5000000 ps;
		clock <= '1';
		WAIT FOR 5000000 ps;
	END LOOP;
WAIT;
END PROCESS t_prcs_clock;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
	WAIT FOR 5120000 ps;
	Reset <= '1';
	WAIT FOR 46080000 ps;
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;

-- RegWrite
t_prcs_RegWrite: PROCESS
BEGIN
	RegWrite <= '0';
	WAIT FOR 8320000 ps;
	RegWrite <= '1';
	WAIT FOR 39040000 ps;
	RegWrite <= '0';
WAIT;
END PROCESS t_prcs_RegWrite;
-- read_reg1[4]
t_prcs_read_reg1_4: PROCESS
BEGIN
	read_reg1(4) <= '0';
WAIT;
END PROCESS t_prcs_read_reg1_4;
-- read_reg1[3]
t_prcs_read_reg1_3: PROCESS
BEGIN
	read_reg1(3) <= '0';
	WAIT FOR 18560000 ps;
	read_reg1(3) <= '1';
WAIT;
END PROCESS t_prcs_read_reg1_3;
-- read_reg1[2]
t_prcs_read_reg1_2: PROCESS
BEGIN
	read_reg1(2) <= '0';
WAIT;
END PROCESS t_prcs_read_reg1_2;
-- read_reg1[1]
t_prcs_read_reg1_1: PROCESS
BEGIN
	read_reg1(1) <= '0';
WAIT;
END PROCESS t_prcs_read_reg1_1;
-- read_reg1[0]
t_prcs_read_reg1_0: PROCESS
BEGIN
	read_reg1(0) <= '0';
	WAIT FOR 9600000 ps;
	read_reg1(0) <= '1';
	WAIT FOR 8960000 ps;
	read_reg1(0) <= '0';
WAIT;
END PROCESS t_prcs_read_reg1_0;
-- read_reg2[4]
t_prcs_read_reg2_4: PROCESS
BEGIN
	read_reg2(4) <= '0';
WAIT;
END PROCESS t_prcs_read_reg2_4;
-- read_reg2[3]
t_prcs_read_reg2_3: PROCESS
BEGIN
	read_reg2(3) <= '0';
WAIT;
END PROCESS t_prcs_read_reg2_3;
-- read_reg2[2]
t_prcs_read_reg2_2: PROCESS
BEGIN
	read_reg2(2) <= '0';
WAIT;
END PROCESS t_prcs_read_reg2_2;
-- read_reg2[1]
t_prcs_read_reg2_1: PROCESS
BEGIN
	read_reg2(1) <= '0';
	WAIT FOR 18560000 ps;
	read_reg2(1) <= '1';
WAIT;
END PROCESS t_prcs_read_reg2_1;
-- read_reg2[0]
t_prcs_read_reg2_0: PROCESS
BEGIN
	read_reg2(0) <= '0';
WAIT;
END PROCESS t_prcs_read_reg2_0;
-- write_data[31]
t_prcs_write_data_31: PROCESS
BEGIN
	write_data(31) <= '0';
WAIT;
END PROCESS t_prcs_write_data_31;
-- write_data[30]
t_prcs_write_data_30: PROCESS
BEGIN
	write_data(30) <= '0';
WAIT;
END PROCESS t_prcs_write_data_30;
-- write_data[29]
t_prcs_write_data_29: PROCESS
BEGIN
	write_data(29) <= '0';
WAIT;
END PROCESS t_prcs_write_data_29;
-- write_data[28]
t_prcs_write_data_28: PROCESS
BEGIN
	write_data(28) <= '0';
WAIT;
END PROCESS t_prcs_write_data_28;
-- write_data[27]
t_prcs_write_data_27: PROCESS
BEGIN
	write_data(27) <= '0';
WAIT;
END PROCESS t_prcs_write_data_27;
-- write_data[26]
t_prcs_write_data_26: PROCESS
BEGIN
	write_data(26) <= '0';
WAIT;
END PROCESS t_prcs_write_data_26;
-- write_data[25]
t_prcs_write_data_25: PROCESS
BEGIN
	write_data(25) <= '0';
WAIT;
END PROCESS t_prcs_write_data_25;
-- write_data[24]
t_prcs_write_data_24: PROCESS
BEGIN
	write_data(24) <= '0';
WAIT;
END PROCESS t_prcs_write_data_24;
-- write_data[23]
t_prcs_write_data_23: PROCESS
BEGIN
	write_data(23) <= '0';
WAIT;
END PROCESS t_prcs_write_data_23;
-- write_data[22]
t_prcs_write_data_22: PROCESS
BEGIN
	write_data(22) <= '0';
WAIT;
END PROCESS t_prcs_write_data_22;
-- write_data[21]
t_prcs_write_data_21: PROCESS
BEGIN
	write_data(21) <= '0';
WAIT;
END PROCESS t_prcs_write_data_21;
-- write_data[20]
t_prcs_write_data_20: PROCESS
BEGIN
	write_data(20) <= '0';
WAIT;
END PROCESS t_prcs_write_data_20;
-- write_data[19]
t_prcs_write_data_19: PROCESS
BEGIN
	write_data(19) <= '0';
WAIT;
END PROCESS t_prcs_write_data_19;
-- write_data[18]
t_prcs_write_data_18: PROCESS
BEGIN
	write_data(18) <= '0';
WAIT;
END PROCESS t_prcs_write_data_18;
-- write_data[17]
t_prcs_write_data_17: PROCESS
BEGIN
	write_data(17) <= '0';
WAIT;
END PROCESS t_prcs_write_data_17;
-- write_data[16]
t_prcs_write_data_16: PROCESS
BEGIN
	write_data(16) <= '0';
WAIT;
END PROCESS t_prcs_write_data_16;
-- write_data[15]
t_prcs_write_data_15: PROCESS
BEGIN
	write_data(15) <= '0';
WAIT;
END PROCESS t_prcs_write_data_15;
-- write_data[14]
t_prcs_write_data_14: PROCESS
BEGIN
	write_data(14) <= '0';
WAIT;
END PROCESS t_prcs_write_data_14;
-- write_data[13]
t_prcs_write_data_13: PROCESS
BEGIN
	write_data(13) <= '0';
WAIT;
END PROCESS t_prcs_write_data_13;
-- write_data[12]
t_prcs_write_data_12: PROCESS
BEGIN
	write_data(12) <= '0';
WAIT;
END PROCESS t_prcs_write_data_12;
-- write_data[11]
t_prcs_write_data_11: PROCESS
BEGIN
	write_data(11) <= '0';
WAIT;
END PROCESS t_prcs_write_data_11;
-- write_data[10]
t_prcs_write_data_10: PROCESS
BEGIN
	write_data(10) <= '0';
WAIT;
END PROCESS t_prcs_write_data_10;
-- write_data[9]
t_prcs_write_data_9: PROCESS
BEGIN
	write_data(9) <= '0';
WAIT;
END PROCESS t_prcs_write_data_9;
-- write_data[8]
t_prcs_write_data_8: PROCESS
BEGIN
	write_data(8) <= '0';
WAIT;
END PROCESS t_prcs_write_data_8;
-- write_data[7]
t_prcs_write_data_7: PROCESS
BEGIN
	write_data(7) <= '0';
WAIT;
END PROCESS t_prcs_write_data_7;
-- write_data[6]
t_prcs_write_data_6: PROCESS
BEGIN
	write_data(6) <= '0';
WAIT;
END PROCESS t_prcs_write_data_6;
-- write_data[5]
t_prcs_write_data_5: PROCESS
BEGIN
	write_data(5) <= '0';
WAIT;
END PROCESS t_prcs_write_data_5;
-- write_data[4]
t_prcs_write_data_4: PROCESS
BEGIN
	write_data(4) <= '0';
WAIT;
END PROCESS t_prcs_write_data_4;
-- write_data[3]
t_prcs_write_data_3: PROCESS
BEGIN
	write_data(3) <= '0';
WAIT;
END PROCESS t_prcs_write_data_3;
-- write_data[2]
t_prcs_write_data_2: PROCESS
BEGIN
	write_data(2) <= '0';
	WAIT FOR 10240000 ps;
	write_data(2) <= '1';
WAIT;
END PROCESS t_prcs_write_data_2;
-- write_data[1]
t_prcs_write_data_1: PROCESS
BEGIN
	write_data(1) <= '0';
	WAIT FOR 10240000 ps;
	write_data(1) <= '1';
WAIT;
END PROCESS t_prcs_write_data_1;
-- write_data[0]
t_prcs_write_data_0: PROCESS
BEGIN
	write_data(0) <= '0';
	WAIT FOR 17280000 ps;
	write_data(0) <= '1';
WAIT;
END PROCESS t_prcs_write_data_0;
-- write_reg[4]
t_prcs_write_reg_4: PROCESS
BEGIN
	write_reg(4) <= '0';
WAIT;
END PROCESS t_prcs_write_reg_4;
-- write_reg[3]
t_prcs_write_reg_3: PROCESS
BEGIN
	write_reg(3) <= '1';
	WAIT FOR 19200000 ps;
	write_reg(3) <= '0';
WAIT;
END PROCESS t_prcs_write_reg_3;
-- write_reg[2]
t_prcs_write_reg_2: PROCESS
BEGIN
	write_reg(2) <= '0';
WAIT;
END PROCESS t_prcs_write_reg_2;
-- write_reg[1]
t_prcs_write_reg_1: PROCESS
BEGIN
	write_reg(1) <= '0';
	WAIT FOR 19200000 ps;
	write_reg(1) <= '1';
	WAIT FOR 8320000 ps;
	write_reg(1) <= '0';
WAIT;
END PROCESS t_prcs_write_reg_1;
-- write_reg[0]
t_prcs_write_reg_0: PROCESS
BEGIN
	write_reg(0) <= '0';
WAIT;
END PROCESS t_prcs_write_reg_0;
END mips_register_file_arch;
