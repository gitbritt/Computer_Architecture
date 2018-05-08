-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "05/04/2017 02:40:49"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	memory_mapped IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	MEMORY_mapped_IO_INPUT : IN std_logic;
	ADDRESS : IN std_logic_vector(31 DOWNTO 0);
	WDATA : IN std_logic_vector(31 DOWNTO 0);
	INPUT1 : IN std_logic_vector(31 DOWNTO 0);
	INPUT2 : IN std_logic_vector(31 DOWNTO 0);
	READMEM : OUT std_logic_vector(31 DOWNTO 0);
	OUTSig1 : OUT std_logic_vector(31 DOWNTO 0);
	OUTSig2 : OUT std_logic_vector(31 DOWNTO 0)
	);
END memory_mapped;

-- Design Ports Information
-- MEMORY_mapped_IO_INPUT	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[4]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[8]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[9]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[11]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[12]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[13]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[14]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[16]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[18]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[19]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[20]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[21]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[23]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[24]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[25]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[26]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[27]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[28]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[29]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[30]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READMEM[31]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[10]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[11]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[12]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[13]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[15]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[16]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[17]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[18]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[19]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[20]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[21]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[22]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[23]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[24]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[25]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[26]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[27]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[28]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[29]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[30]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig1[31]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[7]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[11]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[12]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[13]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[14]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[15]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[16]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[17]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[18]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[19]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[20]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[21]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[22]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[23]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[24]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[25]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[26]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[27]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[28]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[29]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[30]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTSig2[31]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[26]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[27]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[28]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[29]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[30]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[31]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[20]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[21]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[22]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[23]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[24]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[25]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[14]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[15]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[16]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[17]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[18]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[19]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[2]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[7]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[8]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[10]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[11]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDRESS[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[5]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[6]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[8]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[9]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[9]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[10]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[11]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[11]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[12]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[12]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[13]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[13]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[14]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[15]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[16]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[16]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[17]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[17]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[18]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[18]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[19]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[19]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[20]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[20]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[21]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[21]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[22]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[22]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[23]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[23]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[24]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[24]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[25]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[25]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[26]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[26]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[27]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[27]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[28]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[28]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[29]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[29]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[30]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[30]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT1[31]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT2[31]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[9]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[11]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[12]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[13]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[14]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[16]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[17]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[19]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[20]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[21]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[22]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[23]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[24]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[25]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[26]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[27]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[28]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[29]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[30]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[31]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memory_mapped IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_MEMORY_mapped_IO_INPUT : std_logic;
SIGNAL ww_ADDRESS : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_WDATA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_INPUT1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_INPUT2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_READMEM : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OUTSig1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OUTSig2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEMORY_mapped_IO_INPUT~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ADDRESS[1]~input_o\ : std_logic;
SIGNAL \INPUT1[0]~input_o\ : std_logic;
SIGNAL \ADDRESS[0]~input_o\ : std_logic;
SIGNAL \ADDRESS[31]~input_o\ : std_logic;
SIGNAL \ADDRESS[26]~input_o\ : std_logic;
SIGNAL \ADDRESS[27]~input_o\ : std_logic;
SIGNAL \ADDRESS[30]~input_o\ : std_logic;
SIGNAL \ADDRESS[28]~input_o\ : std_logic;
SIGNAL \ADDRESS[29]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ADDRESS[22]~input_o\ : std_logic;
SIGNAL \ADDRESS[20]~input_o\ : std_logic;
SIGNAL \ADDRESS[25]~input_o\ : std_logic;
SIGNAL \ADDRESS[24]~input_o\ : std_logic;
SIGNAL \ADDRESS[21]~input_o\ : std_logic;
SIGNAL \ADDRESS[23]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ADDRESS[13]~input_o\ : std_logic;
SIGNAL \ADDRESS[14]~input_o\ : std_logic;
SIGNAL \ADDRESS[16]~input_o\ : std_logic;
SIGNAL \ADDRESS[19]~input_o\ : std_logic;
SIGNAL \ADDRESS[15]~input_o\ : std_logic;
SIGNAL \ADDRESS[18]~input_o\ : std_logic;
SIGNAL \ADDRESS[17]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \ADDRESS[4]~input_o\ : std_logic;
SIGNAL \ADDRESS[3]~input_o\ : std_logic;
SIGNAL \ADDRESS[7]~input_o\ : std_logic;
SIGNAL \ADDRESS[2]~input_o\ : std_logic;
SIGNAL \ADDRESS[6]~input_o\ : std_logic;
SIGNAL \ADDRESS[5]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \ADDRESS[9]~input_o\ : std_logic;
SIGNAL \ADDRESS[10]~input_o\ : std_logic;
SIGNAL \ADDRESS[11]~input_o\ : std_logic;
SIGNAL \ADDRESS[8]~input_o\ : std_logic;
SIGNAL \ADDRESS[12]~input_o\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \INPUT2[0]~input_o\ : std_logic;
SIGNAL \READMEM~0_combout\ : std_logic;
SIGNAL \INPUT1[1]~input_o\ : std_logic;
SIGNAL \INPUT2[1]~input_o\ : std_logic;
SIGNAL \READMEM~1_combout\ : std_logic;
SIGNAL \INPUT1[2]~input_o\ : std_logic;
SIGNAL \INPUT2[2]~input_o\ : std_logic;
SIGNAL \READMEM~2_combout\ : std_logic;
SIGNAL \INPUT1[3]~input_o\ : std_logic;
SIGNAL \INPUT2[3]~input_o\ : std_logic;
SIGNAL \READMEM~3_combout\ : std_logic;
SIGNAL \INPUT1[4]~input_o\ : std_logic;
SIGNAL \INPUT2[4]~input_o\ : std_logic;
SIGNAL \READMEM~4_combout\ : std_logic;
SIGNAL \INPUT2[5]~input_o\ : std_logic;
SIGNAL \INPUT1[5]~input_o\ : std_logic;
SIGNAL \READMEM~5_combout\ : std_logic;
SIGNAL \INPUT2[6]~input_o\ : std_logic;
SIGNAL \INPUT1[6]~input_o\ : std_logic;
SIGNAL \READMEM~6_combout\ : std_logic;
SIGNAL \INPUT1[7]~input_o\ : std_logic;
SIGNAL \INPUT2[7]~input_o\ : std_logic;
SIGNAL \READMEM~7_combout\ : std_logic;
SIGNAL \INPUT1[8]~input_o\ : std_logic;
SIGNAL \INPUT2[8]~input_o\ : std_logic;
SIGNAL \READMEM~8_combout\ : std_logic;
SIGNAL \INPUT1[9]~input_o\ : std_logic;
SIGNAL \INPUT2[9]~input_o\ : std_logic;
SIGNAL \READMEM~9_combout\ : std_logic;
SIGNAL \INPUT1[10]~input_o\ : std_logic;
SIGNAL \INPUT2[10]~input_o\ : std_logic;
SIGNAL \READMEM~10_combout\ : std_logic;
SIGNAL \INPUT2[11]~input_o\ : std_logic;
SIGNAL \INPUT1[11]~input_o\ : std_logic;
SIGNAL \READMEM~11_combout\ : std_logic;
SIGNAL \INPUT1[12]~input_o\ : std_logic;
SIGNAL \INPUT2[12]~input_o\ : std_logic;
SIGNAL \READMEM~12_combout\ : std_logic;
SIGNAL \INPUT1[13]~input_o\ : std_logic;
SIGNAL \INPUT2[13]~input_o\ : std_logic;
SIGNAL \READMEM~13_combout\ : std_logic;
SIGNAL \INPUT1[14]~input_o\ : std_logic;
SIGNAL \INPUT2[14]~input_o\ : std_logic;
SIGNAL \READMEM~14_combout\ : std_logic;
SIGNAL \INPUT2[15]~input_o\ : std_logic;
SIGNAL \INPUT1[15]~input_o\ : std_logic;
SIGNAL \READMEM~15_combout\ : std_logic;
SIGNAL \INPUT2[16]~input_o\ : std_logic;
SIGNAL \INPUT1[16]~input_o\ : std_logic;
SIGNAL \READMEM~16_combout\ : std_logic;
SIGNAL \INPUT1[17]~input_o\ : std_logic;
SIGNAL \INPUT2[17]~input_o\ : std_logic;
SIGNAL \READMEM~17_combout\ : std_logic;
SIGNAL \INPUT1[18]~input_o\ : std_logic;
SIGNAL \INPUT2[18]~input_o\ : std_logic;
SIGNAL \READMEM~18_combout\ : std_logic;
SIGNAL \INPUT1[19]~input_o\ : std_logic;
SIGNAL \INPUT2[19]~input_o\ : std_logic;
SIGNAL \READMEM~19_combout\ : std_logic;
SIGNAL \INPUT2[20]~input_o\ : std_logic;
SIGNAL \INPUT1[20]~input_o\ : std_logic;
SIGNAL \READMEM~20_combout\ : std_logic;
SIGNAL \INPUT2[21]~input_o\ : std_logic;
SIGNAL \INPUT1[21]~input_o\ : std_logic;
SIGNAL \READMEM~21_combout\ : std_logic;
SIGNAL \INPUT2[22]~input_o\ : std_logic;
SIGNAL \INPUT1[22]~input_o\ : std_logic;
SIGNAL \READMEM~22_combout\ : std_logic;
SIGNAL \INPUT1[23]~input_o\ : std_logic;
SIGNAL \INPUT2[23]~input_o\ : std_logic;
SIGNAL \READMEM~23_combout\ : std_logic;
SIGNAL \INPUT2[24]~input_o\ : std_logic;
SIGNAL \INPUT1[24]~input_o\ : std_logic;
SIGNAL \READMEM~24_combout\ : std_logic;
SIGNAL \INPUT2[25]~input_o\ : std_logic;
SIGNAL \INPUT1[25]~input_o\ : std_logic;
SIGNAL \READMEM~25_combout\ : std_logic;
SIGNAL \INPUT2[26]~input_o\ : std_logic;
SIGNAL \INPUT1[26]~input_o\ : std_logic;
SIGNAL \READMEM~26_combout\ : std_logic;
SIGNAL \INPUT2[27]~input_o\ : std_logic;
SIGNAL \INPUT1[27]~input_o\ : std_logic;
SIGNAL \READMEM~27_combout\ : std_logic;
SIGNAL \INPUT1[28]~input_o\ : std_logic;
SIGNAL \INPUT2[28]~input_o\ : std_logic;
SIGNAL \READMEM~28_combout\ : std_logic;
SIGNAL \INPUT1[29]~input_o\ : std_logic;
SIGNAL \INPUT2[29]~input_o\ : std_logic;
SIGNAL \READMEM~29_combout\ : std_logic;
SIGNAL \INPUT2[30]~input_o\ : std_logic;
SIGNAL \INPUT1[30]~input_o\ : std_logic;
SIGNAL \READMEM~30_combout\ : std_logic;
SIGNAL \INPUT1[31]~input_o\ : std_logic;
SIGNAL \INPUT2[31]~input_o\ : std_logic;
SIGNAL \READMEM~31_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \WDATA[0]~input_o\ : std_logic;
SIGNAL \OUTSig1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \OUTSig1[0]~0_combout\ : std_logic;
SIGNAL \OUTSig1[0]~reg0_q\ : std_logic;
SIGNAL \WDATA[1]~input_o\ : std_logic;
SIGNAL \OUTSig1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[1]~reg0_q\ : std_logic;
SIGNAL \WDATA[2]~input_o\ : std_logic;
SIGNAL \OUTSig1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[2]~reg0_q\ : std_logic;
SIGNAL \WDATA[3]~input_o\ : std_logic;
SIGNAL \OUTSig1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[3]~reg0_q\ : std_logic;
SIGNAL \WDATA[4]~input_o\ : std_logic;
SIGNAL \OUTSig1[4]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[4]~reg0_q\ : std_logic;
SIGNAL \WDATA[5]~input_o\ : std_logic;
SIGNAL \OUTSig1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[5]~reg0_q\ : std_logic;
SIGNAL \WDATA[6]~input_o\ : std_logic;
SIGNAL \OUTSig1[6]~reg0_q\ : std_logic;
SIGNAL \WDATA[7]~input_o\ : std_logic;
SIGNAL \OUTSig1[7]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[7]~reg0_q\ : std_logic;
SIGNAL \WDATA[8]~input_o\ : std_logic;
SIGNAL \OUTSig1[8]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[8]~reg0_q\ : std_logic;
SIGNAL \WDATA[9]~input_o\ : std_logic;
SIGNAL \OUTSig1[9]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[9]~reg0_q\ : std_logic;
SIGNAL \WDATA[10]~input_o\ : std_logic;
SIGNAL \OUTSig1[10]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[10]~reg0_q\ : std_logic;
SIGNAL \WDATA[11]~input_o\ : std_logic;
SIGNAL \OUTSig1[11]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[11]~reg0_q\ : std_logic;
SIGNAL \WDATA[12]~input_o\ : std_logic;
SIGNAL \OUTSig1[12]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[12]~reg0_q\ : std_logic;
SIGNAL \WDATA[13]~input_o\ : std_logic;
SIGNAL \OUTSig1[13]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[13]~reg0_q\ : std_logic;
SIGNAL \WDATA[14]~input_o\ : std_logic;
SIGNAL \OUTSig1[14]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[14]~reg0_q\ : std_logic;
SIGNAL \WDATA[15]~input_o\ : std_logic;
SIGNAL \OUTSig1[15]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[15]~reg0_q\ : std_logic;
SIGNAL \WDATA[16]~input_o\ : std_logic;
SIGNAL \OUTSig1[16]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[16]~reg0_q\ : std_logic;
SIGNAL \WDATA[17]~input_o\ : std_logic;
SIGNAL \OUTSig1[17]~reg0_q\ : std_logic;
SIGNAL \WDATA[18]~input_o\ : std_logic;
SIGNAL \OUTSig1[18]~reg0_q\ : std_logic;
SIGNAL \WDATA[19]~input_o\ : std_logic;
SIGNAL \OUTSig1[19]~reg0_q\ : std_logic;
SIGNAL \WDATA[20]~input_o\ : std_logic;
SIGNAL \OUTSig1[20]~reg0_q\ : std_logic;
SIGNAL \WDATA[21]~input_o\ : std_logic;
SIGNAL \OUTSig1[21]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[21]~reg0_q\ : std_logic;
SIGNAL \WDATA[22]~input_o\ : std_logic;
SIGNAL \OUTSig1[22]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[22]~reg0_q\ : std_logic;
SIGNAL \WDATA[23]~input_o\ : std_logic;
SIGNAL \OUTSig1[23]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[23]~reg0_q\ : std_logic;
SIGNAL \WDATA[24]~input_o\ : std_logic;
SIGNAL \OUTSig1[24]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[24]~reg0_q\ : std_logic;
SIGNAL \WDATA[25]~input_o\ : std_logic;
SIGNAL \OUTSig1[25]~reg0_q\ : std_logic;
SIGNAL \WDATA[26]~input_o\ : std_logic;
SIGNAL \OUTSig1[26]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[26]~reg0_q\ : std_logic;
SIGNAL \WDATA[27]~input_o\ : std_logic;
SIGNAL \OUTSig1[27]~reg0_q\ : std_logic;
SIGNAL \WDATA[28]~input_o\ : std_logic;
SIGNAL \OUTSig1[28]~reg0_q\ : std_logic;
SIGNAL \WDATA[29]~input_o\ : std_logic;
SIGNAL \OUTSig1[29]~reg0_q\ : std_logic;
SIGNAL \WDATA[30]~input_o\ : std_logic;
SIGNAL \OUTSig1[30]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[30]~reg0_q\ : std_logic;
SIGNAL \WDATA[31]~input_o\ : std_logic;
SIGNAL \OUTSig1[31]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig1[31]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[0]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[0]~0_combout\ : std_logic;
SIGNAL \OUTSig2[0]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[1]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[2]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[3]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[4]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[4]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[5]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[5]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[6]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[7]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[7]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[8]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[8]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[9]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[9]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[10]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[10]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[11]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[12]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[12]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[13]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[13]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[14]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[14]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[15]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[15]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[16]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[16]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[17]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[18]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[19]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[20]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[21]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[21]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[22]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[22]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[23]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[23]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[24]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[24]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[25]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[26]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[26]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[27]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[28]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[29]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[30]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[30]~reg0_q\ : std_logic;
SIGNAL \OUTSig2[31]~reg0feeder_combout\ : std_logic;
SIGNAL \OUTSig2[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_WDATA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_WDATA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_INPUT1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ADDRESS[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_MEMORY_mapped_IO_INPUT <= MEMORY_mapped_IO_INPUT;
ww_ADDRESS <= ADDRESS;
ww_WDATA <= WDATA;
ww_INPUT1 <= INPUT1;
ww_INPUT2 <= INPUT2;
READMEM <= ww_READMEM;
OUTSig1 <= ww_OUTSig1;
OUTSig2 <= ww_OUTSig2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WDATA[31]~input_o\ <= NOT \WDATA[31]~input_o\;
\ALT_INV_WDATA[30]~input_o\ <= NOT \WDATA[30]~input_o\;
\ALT_INV_WDATA[26]~input_o\ <= NOT \WDATA[26]~input_o\;
\ALT_INV_WDATA[24]~input_o\ <= NOT \WDATA[24]~input_o\;
\ALT_INV_WDATA[23]~input_o\ <= NOT \WDATA[23]~input_o\;
\ALT_INV_WDATA[22]~input_o\ <= NOT \WDATA[22]~input_o\;
\ALT_INV_WDATA[21]~input_o\ <= NOT \WDATA[21]~input_o\;
\ALT_INV_WDATA[16]~input_o\ <= NOT \WDATA[16]~input_o\;
\ALT_INV_WDATA[15]~input_o\ <= NOT \WDATA[15]~input_o\;
\ALT_INV_WDATA[14]~input_o\ <= NOT \WDATA[14]~input_o\;
\ALT_INV_WDATA[13]~input_o\ <= NOT \WDATA[13]~input_o\;
\ALT_INV_WDATA[12]~input_o\ <= NOT \WDATA[12]~input_o\;
\ALT_INV_WDATA[11]~input_o\ <= NOT \WDATA[11]~input_o\;
\ALT_INV_WDATA[10]~input_o\ <= NOT \WDATA[10]~input_o\;
\ALT_INV_WDATA[9]~input_o\ <= NOT \WDATA[9]~input_o\;
\ALT_INV_WDATA[8]~input_o\ <= NOT \WDATA[8]~input_o\;
\ALT_INV_WDATA[7]~input_o\ <= NOT \WDATA[7]~input_o\;
\ALT_INV_WDATA[5]~input_o\ <= NOT \WDATA[5]~input_o\;
\ALT_INV_WDATA[4]~input_o\ <= NOT \WDATA[4]~input_o\;
\ALT_INV_WDATA[3]~input_o\ <= NOT \WDATA[3]~input_o\;
\ALT_INV_WDATA[2]~input_o\ <= NOT \WDATA[2]~input_o\;
\ALT_INV_WDATA[1]~input_o\ <= NOT \WDATA[1]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_WDATA[0]~input_o\ <= NOT \WDATA[0]~input_o\;
\ALT_INV_INPUT2[31]~input_o\ <= NOT \INPUT2[31]~input_o\;
\ALT_INV_INPUT1[31]~input_o\ <= NOT \INPUT1[31]~input_o\;
\ALT_INV_INPUT2[30]~input_o\ <= NOT \INPUT2[30]~input_o\;
\ALT_INV_INPUT1[30]~input_o\ <= NOT \INPUT1[30]~input_o\;
\ALT_INV_INPUT2[29]~input_o\ <= NOT \INPUT2[29]~input_o\;
\ALT_INV_INPUT1[29]~input_o\ <= NOT \INPUT1[29]~input_o\;
\ALT_INV_INPUT2[28]~input_o\ <= NOT \INPUT2[28]~input_o\;
\ALT_INV_INPUT1[28]~input_o\ <= NOT \INPUT1[28]~input_o\;
\ALT_INV_INPUT2[27]~input_o\ <= NOT \INPUT2[27]~input_o\;
\ALT_INV_INPUT1[27]~input_o\ <= NOT \INPUT1[27]~input_o\;
\ALT_INV_INPUT2[26]~input_o\ <= NOT \INPUT2[26]~input_o\;
\ALT_INV_INPUT1[26]~input_o\ <= NOT \INPUT1[26]~input_o\;
\ALT_INV_INPUT2[25]~input_o\ <= NOT \INPUT2[25]~input_o\;
\ALT_INV_INPUT1[25]~input_o\ <= NOT \INPUT1[25]~input_o\;
\ALT_INV_INPUT2[24]~input_o\ <= NOT \INPUT2[24]~input_o\;
\ALT_INV_INPUT1[24]~input_o\ <= NOT \INPUT1[24]~input_o\;
\ALT_INV_INPUT2[23]~input_o\ <= NOT \INPUT2[23]~input_o\;
\ALT_INV_INPUT1[23]~input_o\ <= NOT \INPUT1[23]~input_o\;
\ALT_INV_INPUT2[22]~input_o\ <= NOT \INPUT2[22]~input_o\;
\ALT_INV_INPUT1[22]~input_o\ <= NOT \INPUT1[22]~input_o\;
\ALT_INV_INPUT2[21]~input_o\ <= NOT \INPUT2[21]~input_o\;
\ALT_INV_INPUT1[21]~input_o\ <= NOT \INPUT1[21]~input_o\;
\ALT_INV_INPUT2[20]~input_o\ <= NOT \INPUT2[20]~input_o\;
\ALT_INV_INPUT1[20]~input_o\ <= NOT \INPUT1[20]~input_o\;
\ALT_INV_INPUT2[19]~input_o\ <= NOT \INPUT2[19]~input_o\;
\ALT_INV_INPUT1[19]~input_o\ <= NOT \INPUT1[19]~input_o\;
\ALT_INV_INPUT2[18]~input_o\ <= NOT \INPUT2[18]~input_o\;
\ALT_INV_INPUT1[18]~input_o\ <= NOT \INPUT1[18]~input_o\;
\ALT_INV_INPUT2[17]~input_o\ <= NOT \INPUT2[17]~input_o\;
\ALT_INV_INPUT1[17]~input_o\ <= NOT \INPUT1[17]~input_o\;
\ALT_INV_INPUT2[16]~input_o\ <= NOT \INPUT2[16]~input_o\;
\ALT_INV_INPUT1[16]~input_o\ <= NOT \INPUT1[16]~input_o\;
\ALT_INV_INPUT2[15]~input_o\ <= NOT \INPUT2[15]~input_o\;
\ALT_INV_INPUT1[15]~input_o\ <= NOT \INPUT1[15]~input_o\;
\ALT_INV_INPUT2[14]~input_o\ <= NOT \INPUT2[14]~input_o\;
\ALT_INV_INPUT1[14]~input_o\ <= NOT \INPUT1[14]~input_o\;
\ALT_INV_INPUT2[13]~input_o\ <= NOT \INPUT2[13]~input_o\;
\ALT_INV_INPUT1[13]~input_o\ <= NOT \INPUT1[13]~input_o\;
\ALT_INV_INPUT2[12]~input_o\ <= NOT \INPUT2[12]~input_o\;
\ALT_INV_INPUT1[12]~input_o\ <= NOT \INPUT1[12]~input_o\;
\ALT_INV_INPUT2[11]~input_o\ <= NOT \INPUT2[11]~input_o\;
\ALT_INV_INPUT1[11]~input_o\ <= NOT \INPUT1[11]~input_o\;
\ALT_INV_INPUT2[10]~input_o\ <= NOT \INPUT2[10]~input_o\;
\ALT_INV_INPUT1[10]~input_o\ <= NOT \INPUT1[10]~input_o\;
\ALT_INV_INPUT2[9]~input_o\ <= NOT \INPUT2[9]~input_o\;
\ALT_INV_INPUT1[9]~input_o\ <= NOT \INPUT1[9]~input_o\;
\ALT_INV_INPUT2[8]~input_o\ <= NOT \INPUT2[8]~input_o\;
\ALT_INV_INPUT1[8]~input_o\ <= NOT \INPUT1[8]~input_o\;
\ALT_INV_INPUT2[7]~input_o\ <= NOT \INPUT2[7]~input_o\;
\ALT_INV_INPUT1[7]~input_o\ <= NOT \INPUT1[7]~input_o\;
\ALT_INV_INPUT2[6]~input_o\ <= NOT \INPUT2[6]~input_o\;
\ALT_INV_INPUT1[6]~input_o\ <= NOT \INPUT1[6]~input_o\;
\ALT_INV_INPUT2[5]~input_o\ <= NOT \INPUT2[5]~input_o\;
\ALT_INV_INPUT1[5]~input_o\ <= NOT \INPUT1[5]~input_o\;
\ALT_INV_INPUT2[4]~input_o\ <= NOT \INPUT2[4]~input_o\;
\ALT_INV_INPUT1[4]~input_o\ <= NOT \INPUT1[4]~input_o\;
\ALT_INV_INPUT2[3]~input_o\ <= NOT \INPUT2[3]~input_o\;
\ALT_INV_INPUT1[3]~input_o\ <= NOT \INPUT1[3]~input_o\;
\ALT_INV_INPUT2[2]~input_o\ <= NOT \INPUT2[2]~input_o\;
\ALT_INV_INPUT1[2]~input_o\ <= NOT \INPUT1[2]~input_o\;
\ALT_INV_INPUT2[1]~input_o\ <= NOT \INPUT2[1]~input_o\;
\ALT_INV_INPUT1[1]~input_o\ <= NOT \INPUT1[1]~input_o\;
\ALT_INV_INPUT2[0]~input_o\ <= NOT \INPUT2[0]~input_o\;
\ALT_INV_INPUT1[0]~input_o\ <= NOT \INPUT1[0]~input_o\;
\ALT_INV_ADDRESS[12]~input_o\ <= NOT \ADDRESS[12]~input_o\;
\ALT_INV_ADDRESS[11]~input_o\ <= NOT \ADDRESS[11]~input_o\;
\ALT_INV_ADDRESS[10]~input_o\ <= NOT \ADDRESS[10]~input_o\;
\ALT_INV_ADDRESS[9]~input_o\ <= NOT \ADDRESS[9]~input_o\;
\ALT_INV_ADDRESS[8]~input_o\ <= NOT \ADDRESS[8]~input_o\;
\ALT_INV_ADDRESS[7]~input_o\ <= NOT \ADDRESS[7]~input_o\;
\ALT_INV_ADDRESS[6]~input_o\ <= NOT \ADDRESS[6]~input_o\;
\ALT_INV_ADDRESS[5]~input_o\ <= NOT \ADDRESS[5]~input_o\;
\ALT_INV_ADDRESS[4]~input_o\ <= NOT \ADDRESS[4]~input_o\;
\ALT_INV_ADDRESS[3]~input_o\ <= NOT \ADDRESS[3]~input_o\;
\ALT_INV_ADDRESS[2]~input_o\ <= NOT \ADDRESS[2]~input_o\;
\ALT_INV_ADDRESS[19]~input_o\ <= NOT \ADDRESS[19]~input_o\;
\ALT_INV_ADDRESS[18]~input_o\ <= NOT \ADDRESS[18]~input_o\;
\ALT_INV_ADDRESS[17]~input_o\ <= NOT \ADDRESS[17]~input_o\;
\ALT_INV_ADDRESS[16]~input_o\ <= NOT \ADDRESS[16]~input_o\;
\ALT_INV_ADDRESS[15]~input_o\ <= NOT \ADDRESS[15]~input_o\;
\ALT_INV_ADDRESS[14]~input_o\ <= NOT \ADDRESS[14]~input_o\;
\ALT_INV_ADDRESS[25]~input_o\ <= NOT \ADDRESS[25]~input_o\;
\ALT_INV_ADDRESS[24]~input_o\ <= NOT \ADDRESS[24]~input_o\;
\ALT_INV_ADDRESS[23]~input_o\ <= NOT \ADDRESS[23]~input_o\;
\ALT_INV_ADDRESS[22]~input_o\ <= NOT \ADDRESS[22]~input_o\;
\ALT_INV_ADDRESS[21]~input_o\ <= NOT \ADDRESS[21]~input_o\;
\ALT_INV_ADDRESS[20]~input_o\ <= NOT \ADDRESS[20]~input_o\;
\ALT_INV_ADDRESS[31]~input_o\ <= NOT \ADDRESS[31]~input_o\;
\ALT_INV_ADDRESS[30]~input_o\ <= NOT \ADDRESS[30]~input_o\;
\ALT_INV_ADDRESS[29]~input_o\ <= NOT \ADDRESS[29]~input_o\;
\ALT_INV_ADDRESS[28]~input_o\ <= NOT \ADDRESS[28]~input_o\;
\ALT_INV_ADDRESS[27]~input_o\ <= NOT \ADDRESS[27]~input_o\;
\ALT_INV_ADDRESS[26]~input_o\ <= NOT \ADDRESS[26]~input_o\;
\ALT_INV_ADDRESS[13]~input_o\ <= NOT \ADDRESS[13]~input_o\;
\ALT_INV_ADDRESS[1]~input_o\ <= NOT \ADDRESS[1]~input_o\;
\ALT_INV_ADDRESS[0]~input_o\ <= NOT \ADDRESS[0]~input_o\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X88_Y81_N20
\READMEM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~0_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(0));

-- Location: IOOBUF_X70_Y81_N2
\READMEM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~1_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(1));

-- Location: IOOBUF_X30_Y81_N36
\READMEM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~2_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(2));

-- Location: IOOBUF_X38_Y0_N19
\READMEM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~3_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(3));

-- Location: IOOBUF_X34_Y81_N93
\READMEM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~4_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(4));

-- Location: IOOBUF_X6_Y0_N19
\READMEM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~5_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(5));

-- Location: IOOBUF_X88_Y81_N54
\READMEM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~6_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(6));

-- Location: IOOBUF_X72_Y81_N53
\READMEM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~7_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(7));

-- Location: IOOBUF_X60_Y81_N36
\READMEM[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~8_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(8));

-- Location: IOOBUF_X88_Y81_N3
\READMEM[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~9_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(9));

-- Location: IOOBUF_X2_Y0_N59
\READMEM[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~10_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(10));

-- Location: IOOBUF_X70_Y81_N36
\READMEM[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~11_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(11));

-- Location: IOOBUF_X68_Y81_N19
\READMEM[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~12_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(12));

-- Location: IOOBUF_X89_Y38_N5
\READMEM[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~13_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(13));

-- Location: IOOBUF_X36_Y81_N2
\READMEM[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~14_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(14));

-- Location: IOOBUF_X28_Y0_N36
\READMEM[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~15_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(15));

-- Location: IOOBUF_X89_Y38_N56
\READMEM[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~16_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(16));

-- Location: IOOBUF_X56_Y0_N53
\READMEM[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~17_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(17));

-- Location: IOOBUF_X26_Y81_N42
\READMEM[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~18_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(18));

-- Location: IOOBUF_X82_Y81_N59
\READMEM[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~19_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(19));

-- Location: IOOBUF_X62_Y81_N2
\READMEM[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~20_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(20));

-- Location: IOOBUF_X4_Y0_N36
\READMEM[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~21_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(21));

-- Location: IOOBUF_X28_Y81_N19
\READMEM[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~22_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(22));

-- Location: IOOBUF_X89_Y38_N22
\READMEM[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~23_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(23));

-- Location: IOOBUF_X64_Y81_N19
\READMEM[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~24_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(24));

-- Location: IOOBUF_X84_Y81_N53
\READMEM[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~25_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(25));

-- Location: IOOBUF_X28_Y81_N36
\READMEM[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~26_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(26));

-- Location: IOOBUF_X70_Y81_N19
\READMEM[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~27_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(27));

-- Location: IOOBUF_X86_Y81_N36
\READMEM[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~28_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(28));

-- Location: IOOBUF_X56_Y0_N36
\READMEM[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~29_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(29));

-- Location: IOOBUF_X74_Y81_N93
\READMEM[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~30_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(30));

-- Location: IOOBUF_X72_Y81_N36
\READMEM[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \READMEM~31_combout\,
	devoe => ww_devoe,
	o => ww_READMEM(31));

-- Location: IOOBUF_X40_Y0_N19
\OUTSig1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(0));

-- Location: IOOBUF_X34_Y0_N76
\OUTSig1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(1));

-- Location: IOOBUF_X89_Y8_N56
\OUTSig1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(2));

-- Location: IOOBUF_X6_Y0_N2
\OUTSig1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(3));

-- Location: IOOBUF_X58_Y0_N42
\OUTSig1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(4));

-- Location: IOOBUF_X60_Y0_N19
\OUTSig1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(5));

-- Location: IOOBUF_X40_Y0_N2
\OUTSig1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(6));

-- Location: IOOBUF_X68_Y0_N19
\OUTSig1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(7));

-- Location: IOOBUF_X34_Y0_N42
\OUTSig1[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(8));

-- Location: IOOBUF_X66_Y81_N93
\OUTSig1[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(9));

-- Location: IOOBUF_X34_Y0_N59
\OUTSig1[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(10));

-- Location: IOOBUF_X89_Y35_N96
\OUTSig1[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(11));

-- Location: IOOBUF_X70_Y0_N19
\OUTSig1[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(12));

-- Location: IOOBUF_X89_Y9_N22
\OUTSig1[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(13));

-- Location: IOOBUF_X62_Y0_N2
\OUTSig1[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(14));

-- Location: IOOBUF_X36_Y0_N2
\OUTSig1[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(15));

-- Location: IOOBUF_X62_Y0_N53
\OUTSig1[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(16));

-- Location: IOOBUF_X89_Y6_N22
\OUTSig1[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(17));

-- Location: IOOBUF_X8_Y0_N53
\OUTSig1[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(18));

-- Location: IOOBUF_X6_Y0_N53
\OUTSig1[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(19));

-- Location: IOOBUF_X66_Y0_N76
\OUTSig1[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(20));

-- Location: IOOBUF_X28_Y0_N19
\OUTSig1[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(21));

-- Location: IOOBUF_X89_Y4_N45
\OUTSig1[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(22));

-- Location: IOOBUF_X8_Y0_N19
\OUTSig1[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(23));

-- Location: IOOBUF_X38_Y0_N53
\OUTSig1[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(24));

-- Location: IOOBUF_X64_Y0_N36
\OUTSig1[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(25));

-- Location: IOOBUF_X89_Y4_N62
\OUTSig1[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(26));

-- Location: IOOBUF_X54_Y0_N19
\OUTSig1[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(27));

-- Location: IOOBUF_X89_Y37_N5
\OUTSig1[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(28));

-- Location: IOOBUF_X28_Y0_N2
\OUTSig1[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(29));

-- Location: IOOBUF_X66_Y0_N93
\OUTSig1[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(30));

-- Location: IOOBUF_X62_Y0_N19
\OUTSig1[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig1[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig1(31));

-- Location: IOOBUF_X54_Y0_N36
\OUTSig2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(0));

-- Location: IOOBUF_X34_Y0_N93
\OUTSig2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(1));

-- Location: IOOBUF_X89_Y4_N96
\OUTSig2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(2));

-- Location: IOOBUF_X2_Y0_N93
\OUTSig2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(3));

-- Location: IOOBUF_X58_Y0_N59
\OUTSig2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(4));

-- Location: IOOBUF_X58_Y0_N76
\OUTSig2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(5));

-- Location: IOOBUF_X40_Y0_N53
\OUTSig2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(6));

-- Location: IOOBUF_X66_Y0_N59
\OUTSig2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(7));

-- Location: IOOBUF_X62_Y81_N36
\OUTSig2[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(8));

-- Location: IOOBUF_X68_Y0_N36
\OUTSig2[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(9));

-- Location: IOOBUF_X38_Y0_N36
\OUTSig2[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(10));

-- Location: IOOBUF_X89_Y8_N39
\OUTSig2[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(11));

-- Location: IOOBUF_X64_Y0_N53
\OUTSig2[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(12));

-- Location: IOOBUF_X89_Y6_N39
\OUTSig2[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(13));

-- Location: IOOBUF_X64_Y0_N2
\OUTSig2[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(14));

-- Location: IOOBUF_X36_Y0_N53
\OUTSig2[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(15));

-- Location: IOOBUF_X60_Y0_N53
\OUTSig2[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(16));

-- Location: IOOBUF_X89_Y6_N5
\OUTSig2[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(17));

-- Location: IOOBUF_X26_Y0_N59
\OUTSig2[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(18));

-- Location: IOOBUF_X2_Y0_N42
\OUTSig2[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(19));

-- Location: IOOBUF_X66_Y0_N42
\OUTSig2[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(20));

-- Location: IOOBUF_X28_Y0_N53
\OUTSig2[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(21));

-- Location: IOOBUF_X89_Y8_N22
\OUTSig2[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(22));

-- Location: IOOBUF_X30_Y0_N53
\OUTSig2[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(23));

-- Location: IOOBUF_X36_Y0_N36
\OUTSig2[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(24));

-- Location: IOOBUF_X62_Y0_N36
\OUTSig2[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(25));

-- Location: IOOBUF_X72_Y0_N2
\OUTSig2[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(26));

-- Location: IOOBUF_X40_Y0_N36
\OUTSig2[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(27));

-- Location: IOOBUF_X36_Y0_N19
\OUTSig2[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(28));

-- Location: IOOBUF_X8_Y0_N2
\OUTSig2[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(29));

-- Location: IOOBUF_X70_Y0_N2
\OUTSig2[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(30));

-- Location: IOOBUF_X68_Y0_N53
\OUTSig2[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \OUTSig2[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_OUTSig2(31));

-- Location: IOIBUF_X64_Y81_N35
\ADDRESS[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(1),
	o => \ADDRESS[1]~input_o\);

-- Location: IOIBUF_X76_Y81_N1
\INPUT1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(0),
	o => \INPUT1[0]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\ADDRESS[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(0),
	o => \ADDRESS[0]~input_o\);

-- Location: IOIBUF_X56_Y81_N52
\ADDRESS[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(31),
	o => \ADDRESS[31]~input_o\);

-- Location: IOIBUF_X54_Y81_N1
\ADDRESS[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(26),
	o => \ADDRESS[26]~input_o\);

-- Location: IOIBUF_X56_Y81_N18
\ADDRESS[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(27),
	o => \ADDRESS[27]~input_o\);

-- Location: IOIBUF_X58_Y81_N75
\ADDRESS[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(30),
	o => \ADDRESS[30]~input_o\);

-- Location: IOIBUF_X54_Y81_N18
\ADDRESS[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(28),
	o => \ADDRESS[28]~input_o\);

-- Location: IOIBUF_X58_Y81_N92
\ADDRESS[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(29),
	o => \ADDRESS[29]~input_o\);

-- Location: LABCELL_X56_Y79_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\ADDRESS[28]~input_o\ & ( !\ADDRESS[29]~input_o\ & ( (\ADDRESS[31]~input_o\ & (!\ADDRESS[26]~input_o\ & (!\ADDRESS[27]~input_o\ & !\ADDRESS[30]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[31]~input_o\,
	datab => \ALT_INV_ADDRESS[26]~input_o\,
	datac => \ALT_INV_ADDRESS[27]~input_o\,
	datad => \ALT_INV_ADDRESS[30]~input_o\,
	datae => \ALT_INV_ADDRESS[28]~input_o\,
	dataf => \ALT_INV_ADDRESS[29]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X54_Y81_N52
\ADDRESS[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(22),
	o => \ADDRESS[22]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\ADDRESS[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(20),
	o => \ADDRESS[20]~input_o\);

-- Location: IOIBUF_X40_Y81_N52
\ADDRESS[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(25),
	o => \ADDRESS[25]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\ADDRESS[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(24),
	o => \ADDRESS[24]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\ADDRESS[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(21),
	o => \ADDRESS[21]~input_o\);

-- Location: IOIBUF_X56_Y81_N1
\ADDRESS[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(23),
	o => \ADDRESS[23]~input_o\);

-- Location: LABCELL_X50_Y79_N30
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\ADDRESS[21]~input_o\ & ( !\ADDRESS[23]~input_o\ & ( (!\ADDRESS[22]~input_o\ & (!\ADDRESS[20]~input_o\ & (!\ADDRESS[25]~input_o\ & !\ADDRESS[24]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[22]~input_o\,
	datab => \ALT_INV_ADDRESS[20]~input_o\,
	datac => \ALT_INV_ADDRESS[25]~input_o\,
	datad => \ALT_INV_ADDRESS[24]~input_o\,
	datae => \ALT_INV_ADDRESS[21]~input_o\,
	dataf => \ALT_INV_ADDRESS[23]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X50_Y81_N41
\ADDRESS[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(13),
	o => \ADDRESS[13]~input_o\);

-- Location: IOIBUF_X52_Y81_N18
\ADDRESS[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(14),
	o => \ADDRESS[14]~input_o\);

-- Location: IOIBUF_X50_Y81_N58
\ADDRESS[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(16),
	o => \ADDRESS[16]~input_o\);

-- Location: IOIBUF_X34_Y81_N58
\ADDRESS[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(19),
	o => \ADDRESS[19]~input_o\);

-- Location: IOIBUF_X52_Y81_N35
\ADDRESS[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(15),
	o => \ADDRESS[15]~input_o\);

-- Location: IOIBUF_X50_Y81_N75
\ADDRESS[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(18),
	o => \ADDRESS[18]~input_o\);

-- Location: IOIBUF_X52_Y81_N52
\ADDRESS[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(17),
	o => \ADDRESS[17]~input_o\);

-- Location: LABCELL_X50_Y79_N6
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\ADDRESS[18]~input_o\ & ( !\ADDRESS[17]~input_o\ & ( (!\ADDRESS[14]~input_o\ & (!\ADDRESS[16]~input_o\ & (!\ADDRESS[19]~input_o\ & !\ADDRESS[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[14]~input_o\,
	datab => \ALT_INV_ADDRESS[16]~input_o\,
	datac => \ALT_INV_ADDRESS[19]~input_o\,
	datad => \ALT_INV_ADDRESS[15]~input_o\,
	datae => \ALT_INV_ADDRESS[18]~input_o\,
	dataf => \ALT_INV_ADDRESS[17]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X32_Y0_N1
\ADDRESS[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(4),
	o => \ADDRESS[4]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\ADDRESS[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(3),
	o => \ADDRESS[3]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\ADDRESS[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(7),
	o => \ADDRESS[7]~input_o\);

-- Location: IOIBUF_X36_Y81_N18
\ADDRESS[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(2),
	o => \ADDRESS[2]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\ADDRESS[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(6),
	o => \ADDRESS[6]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\ADDRESS[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(5),
	o => \ADDRESS[5]~input_o\);

-- Location: LABCELL_X36_Y80_N33
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\ADDRESS[6]~input_o\ & ( !\ADDRESS[5]~input_o\ & ( (!\ADDRESS[4]~input_o\ & (!\ADDRESS[3]~input_o\ & (!\ADDRESS[7]~input_o\ & !\ADDRESS[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[4]~input_o\,
	datab => \ALT_INV_ADDRESS[3]~input_o\,
	datac => \ALT_INV_ADDRESS[7]~input_o\,
	datad => \ALT_INV_ADDRESS[2]~input_o\,
	datae => \ALT_INV_ADDRESS[6]~input_o\,
	dataf => \ALT_INV_ADDRESS[5]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X26_Y81_N75
\ADDRESS[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(9),
	o => \ADDRESS[9]~input_o\);

-- Location: IOIBUF_X26_Y81_N92
\ADDRESS[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(10),
	o => \ADDRESS[10]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\ADDRESS[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(11),
	o => \ADDRESS[11]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\ADDRESS[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(8),
	o => \ADDRESS[8]~input_o\);

-- Location: IOIBUF_X28_Y81_N52
\ADDRESS[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDRESS(12),
	o => \ADDRESS[12]~input_o\);

-- Location: LABCELL_X27_Y80_N0
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\ADDRESS[8]~input_o\ & ( !\ADDRESS[12]~input_o\ & ( (!\ADDRESS[9]~input_o\ & (!\ADDRESS[10]~input_o\ & !\ADDRESS[11]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[9]~input_o\,
	datab => \ALT_INV_ADDRESS[10]~input_o\,
	datac => \ALT_INV_ADDRESS[11]~input_o\,
	datae => \ALT_INV_ADDRESS[8]~input_o\,
	dataf => \ALT_INV_ADDRESS[12]~input_o\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X50_Y79_N42
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~3_combout\ & ( \Equal0~4_combout\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (!\ADDRESS[13]~input_o\ & \Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_ADDRESS[13]~input_o\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: IOIBUF_X78_Y81_N52
\INPUT2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(0),
	o => \INPUT2[0]~input_o\);

-- Location: MLABCELL_X78_Y80_N0
\READMEM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~0_combout\ = ( \Equal0~5_combout\ & ( \INPUT2[0]~input_o\ & ( (!\ADDRESS[1]~input_o\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[0]~input_o\))) ) ) ) # ( \Equal0~5_combout\ & ( !\INPUT2[0]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\INPUT1[0]~input_o\ & 
-- !\ADDRESS[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_INPUT1[0]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_INPUT2[0]~input_o\,
	combout => \READMEM~0_combout\);

-- Location: IOIBUF_X68_Y81_N35
\INPUT1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(1),
	o => \INPUT1[1]~input_o\);

-- Location: IOIBUF_X74_Y81_N58
\INPUT2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(1),
	o => \INPUT2[1]~input_o\);

-- Location: LABCELL_X75_Y80_N0
\READMEM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~1_combout\ = ( !\ADDRESS[1]~input_o\ & ( \INPUT2[1]~input_o\ & ( (\Equal0~5_combout\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[1]~input_o\))) ) ) ) # ( !\ADDRESS[1]~input_o\ & ( !\INPUT2[1]~input_o\ & ( (\INPUT1[1]~input_o\ & (!\ADDRESS[0]~input_o\ & 
-- \Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000000000000000000000111000001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT1[1]~input_o\,
	datab => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_ADDRESS[1]~input_o\,
	dataf => \ALT_INV_INPUT2[1]~input_o\,
	combout => \READMEM~1_combout\);

-- Location: IOIBUF_X30_Y81_N52
\INPUT1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(2),
	o => \INPUT1[2]~input_o\);

-- Location: IOIBUF_X34_Y81_N41
\INPUT2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(2),
	o => \INPUT2[2]~input_o\);

-- Location: LABCELL_X33_Y80_N30
\READMEM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~2_combout\ = ( \INPUT2[2]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((\INPUT1[2]~input_o\) # (\ADDRESS[0]~input_o\))) ) ) ) # ( !\INPUT2[2]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & (!\ADDRESS[0]~input_o\ & 
-- \INPUT1[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000101010001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_INPUT1[2]~input_o\,
	datae => \ALT_INV_INPUT2[2]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~2_combout\);

-- Location: IOIBUF_X40_Y81_N18
\INPUT1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(3),
	o => \INPUT1[3]~input_o\);

-- Location: IOIBUF_X50_Y81_N92
\INPUT2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(3),
	o => \INPUT2[3]~input_o\);

-- Location: LABCELL_X50_Y79_N48
\READMEM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~3_combout\ = ( \ADDRESS[0]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\INPUT2[3]~input_o\ & \Equal0~5_combout\) ) ) ) # ( !\ADDRESS[0]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\INPUT1[3]~input_o\ & \Equal0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_INPUT1[3]~input_o\,
	datac => \ALT_INV_INPUT2[3]~input_o\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_ADDRESS[0]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~3_combout\);

-- Location: IOIBUF_X38_Y81_N35
\INPUT1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(4),
	o => \INPUT1[4]~input_o\);

-- Location: IOIBUF_X30_Y81_N18
\INPUT2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(4),
	o => \INPUT2[4]~input_o\);

-- Location: LABCELL_X33_Y80_N9
\READMEM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~4_combout\ = ( \INPUT2[4]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[4]~input_o\))) ) ) ) # ( !\INPUT2[4]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\INPUT1[4]~input_o\ & (!\ADDRESS[0]~input_o\ & 
-- \Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT1[4]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_INPUT2[4]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~4_combout\);

-- Location: IOIBUF_X66_Y81_N58
\INPUT2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(5),
	o => \INPUT2[5]~input_o\);

-- Location: IOIBUF_X68_Y81_N52
\INPUT1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(5),
	o => \INPUT1[5]~input_o\);

-- Location: LABCELL_X75_Y80_N6
\READMEM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~5_combout\ = ( \INPUT1[5]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[5]~input_o\)))) ) ) # ( !\INPUT1[5]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\Equal0~5_combout\ & (\INPUT2[5]~input_o\ & 
-- \ADDRESS[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000100010000000100010001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_INPUT2[5]~input_o\,
	datad => \ALT_INV_ADDRESS[0]~input_o\,
	dataf => \ALT_INV_INPUT1[5]~input_o\,
	combout => \READMEM~5_combout\);

-- Location: IOIBUF_X76_Y81_N52
\INPUT2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(6),
	o => \INPUT2[6]~input_o\);

-- Location: IOIBUF_X86_Y81_N18
\INPUT1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(6),
	o => \INPUT1[6]~input_o\);

-- Location: MLABCELL_X78_Y80_N36
\READMEM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~6_combout\ = ( \INPUT1[6]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[6]~input_o\)))) ) ) # ( !\INPUT1[6]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\Equal0~5_combout\ & (\INPUT2[6]~input_o\ & 
-- \ADDRESS[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000100010000000100010001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_INPUT2[6]~input_o\,
	datad => \ALT_INV_ADDRESS[0]~input_o\,
	dataf => \ALT_INV_INPUT1[6]~input_o\,
	combout => \READMEM~6_combout\);

-- Location: IOIBUF_X82_Y81_N41
\INPUT1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(7),
	o => \INPUT1[7]~input_o\);

-- Location: IOIBUF_X74_Y81_N41
\INPUT2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(7),
	o => \INPUT2[7]~input_o\);

-- Location: LABCELL_X75_Y80_N42
\READMEM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~7_combout\ = ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\ & (\INPUT1[7]~input_o\)) # (\ADDRESS[0]~input_o\ & ((\INPUT2[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111000000000000000000000100000001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT1[7]~input_o\,
	datab => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_INPUT2[7]~input_o\,
	datae => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~7_combout\);

-- Location: IOIBUF_X60_Y81_N18
\INPUT1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(8),
	o => \INPUT1[8]~input_o\);

-- Location: IOIBUF_X60_Y81_N1
\INPUT2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(8),
	o => \INPUT2[8]~input_o\);

-- Location: LABCELL_X60_Y80_N30
\READMEM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~8_combout\ = ( \INPUT2[8]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[8]~input_o\))) ) ) ) # ( !\INPUT2[8]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & (\INPUT1[8]~input_o\ & 
-- !\ADDRESS[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000101010001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_INPUT1[8]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datae => \ALT_INV_INPUT2[8]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~8_combout\);

-- Location: IOIBUF_X78_Y81_N35
\INPUT1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(9),
	o => \INPUT1[9]~input_o\);

-- Location: IOIBUF_X80_Y81_N1
\INPUT2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(9),
	o => \INPUT2[9]~input_o\);

-- Location: MLABCELL_X78_Y80_N42
\READMEM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~9_combout\ = ( \Equal0~5_combout\ & ( \INPUT2[9]~input_o\ & ( (!\ADDRESS[1]~input_o\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[9]~input_o\))) ) ) ) # ( \Equal0~5_combout\ & ( !\INPUT2[9]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\INPUT1[9]~input_o\ & 
-- !\ADDRESS[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_INPUT1[9]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_INPUT2[9]~input_o\,
	combout => \READMEM~9_combout\);

-- Location: IOIBUF_X32_Y0_N52
\INPUT1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(10),
	o => \INPUT1[10]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\INPUT2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(10),
	o => \INPUT2[10]~input_o\);

-- Location: LABCELL_X77_Y46_N3
\READMEM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~10_combout\ = ( \INPUT2[10]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((\INPUT1[10]~input_o\) # (\ADDRESS[0]~input_o\))) ) ) ) # ( !\INPUT2[10]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (!\ADDRESS[0]~input_o\ & (\Equal0~5_combout\ 
-- & \INPUT1[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000100110001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[0]~input_o\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_INPUT1[10]~input_o\,
	datae => \ALT_INV_INPUT2[10]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~10_combout\);

-- Location: IOIBUF_X66_Y81_N41
\INPUT2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(11),
	o => \INPUT2[11]~input_o\);

-- Location: IOIBUF_X72_Y81_N18
\INPUT1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(11),
	o => \INPUT1[11]~input_o\);

-- Location: LABCELL_X75_Y80_N18
\READMEM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~11_combout\ = ( !\ADDRESS[1]~input_o\ & ( \INPUT1[11]~input_o\ & ( (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[11]~input_o\))) ) ) ) # ( !\ADDRESS[1]~input_o\ & ( !\INPUT1[11]~input_o\ & ( (\INPUT2[11]~input_o\ & 
-- (\ADDRESS[0]~input_o\ & \Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000001101000011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT2[11]~input_o\,
	datab => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_ADDRESS[1]~input_o\,
	dataf => \ALT_INV_INPUT1[11]~input_o\,
	combout => \READMEM~11_combout\);

-- Location: IOIBUF_X58_Y81_N41
\INPUT1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(12),
	o => \INPUT1[12]~input_o\);

-- Location: IOIBUF_X74_Y81_N75
\INPUT2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(12),
	o => \INPUT2[12]~input_o\);

-- Location: LABCELL_X75_Y80_N9
\READMEM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~12_combout\ = ( \INPUT2[12]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\Equal0~5_combout\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[12]~input_o\)))) ) ) # ( !\INPUT2[12]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\Equal0~5_combout\ & (\INPUT1[12]~input_o\ & 
-- !\ADDRESS[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_INPUT1[12]~input_o\,
	datad => \ALT_INV_ADDRESS[0]~input_o\,
	dataf => \ALT_INV_INPUT2[12]~input_o\,
	combout => \READMEM~12_combout\);

-- Location: IOIBUF_X76_Y81_N35
\INPUT1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(13),
	o => \INPUT1[13]~input_o\);

-- Location: IOIBUF_X86_Y81_N52
\INPUT2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(13),
	o => \INPUT2[13]~input_o\);

-- Location: MLABCELL_X78_Y80_N48
\READMEM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~13_combout\ = ( \Equal0~5_combout\ & ( \INPUT2[13]~input_o\ & ( (!\ADDRESS[1]~input_o\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[13]~input_o\))) ) ) ) # ( \Equal0~5_combout\ & ( !\INPUT2[13]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\INPUT1[13]~input_o\ 
-- & !\ADDRESS[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_INPUT1[13]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_INPUT2[13]~input_o\,
	combout => \READMEM~13_combout\);

-- Location: IOIBUF_X40_Y81_N1
\INPUT1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(14),
	o => \INPUT1[14]~input_o\);

-- Location: IOIBUF_X52_Y81_N1
\INPUT2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(14),
	o => \INPUT2[14]~input_o\);

-- Location: LABCELL_X50_Y79_N24
\READMEM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~14_combout\ = ( \ADDRESS[0]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & \INPUT2[14]~input_o\) ) ) ) # ( !\ADDRESS[0]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & \INPUT1[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_INPUT1[14]~input_o\,
	datad => \ALT_INV_INPUT2[14]~input_o\,
	datae => \ALT_INV_ADDRESS[0]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~14_combout\);

-- Location: IOIBUF_X32_Y81_N18
\INPUT2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(15),
	o => \INPUT2[15]~input_o\);

-- Location: IOIBUF_X34_Y81_N75
\INPUT1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(15),
	o => \INPUT1[15]~input_o\);

-- Location: LABCELL_X33_Y80_N15
\READMEM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~15_combout\ = ( \INPUT1[15]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[15]~input_o\))) ) ) ) # ( !\INPUT1[15]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & (\ADDRESS[0]~input_o\ 
-- & \INPUT2[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010001010100010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_INPUT2[15]~input_o\,
	datae => \ALT_INV_INPUT1[15]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~15_combout\);

-- Location: IOIBUF_X80_Y81_N35
\INPUT2[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(16),
	o => \INPUT2[16]~input_o\);

-- Location: IOIBUF_X84_Y81_N35
\INPUT1[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(16),
	o => \INPUT1[16]~input_o\);

-- Location: MLABCELL_X78_Y80_N54
\READMEM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~16_combout\ = ( \Equal0~5_combout\ & ( (!\ADDRESS[1]~input_o\ & ((!\ADDRESS[0]~input_o\ & ((\INPUT1[16]~input_o\))) # (\ADDRESS[0]~input_o\ & (\INPUT2[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000101010001000000000000000000000001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_INPUT2[16]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datad => \ALT_INV_INPUT1[16]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	combout => \READMEM~16_combout\);

-- Location: IOIBUF_X56_Y81_N35
\INPUT1[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(17),
	o => \INPUT1[17]~input_o\);

-- Location: IOIBUF_X58_Y81_N58
\INPUT2[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(17),
	o => \INPUT2[17]~input_o\);

-- Location: LABCELL_X56_Y80_N30
\READMEM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~17_combout\ = ( \INPUT2[17]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[17]~input_o\))) ) ) ) # ( !\INPUT2[17]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & (\INPUT1[17]~input_o\ 
-- & !\ADDRESS[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000101010001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_INPUT1[17]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datae => \ALT_INV_INPUT2[17]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~17_combout\);

-- Location: IOIBUF_X30_Y81_N1
\INPUT1[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(18),
	o => \INPUT1[18]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\INPUT2[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(18),
	o => \INPUT2[18]~input_o\);

-- Location: LABCELL_X33_Y80_N21
\READMEM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~18_combout\ = ( \INPUT2[18]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[18]~input_o\))) ) ) ) # ( !\INPUT2[18]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\INPUT1[18]~input_o\ & 
-- (!\ADDRESS[0]~input_o\ & \Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT1[18]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_INPUT2[18]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~18_combout\);

-- Location: IOIBUF_X82_Y81_N92
\INPUT1[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(19),
	o => \INPUT1[19]~input_o\);

-- Location: IOIBUF_X80_Y81_N18
\INPUT2[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(19),
	o => \INPUT2[19]~input_o\);

-- Location: MLABCELL_X78_Y80_N39
\READMEM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~19_combout\ = ( \ADDRESS[0]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\Equal0~5_combout\ & \INPUT2[19]~input_o\)) ) ) # ( !\ADDRESS[0]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\Equal0~5_combout\ & \INPUT1[19]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_INPUT1[19]~input_o\,
	datad => \ALT_INV_INPUT2[19]~input_o\,
	dataf => \ALT_INV_ADDRESS[0]~input_o\,
	combout => \READMEM~19_combout\);

-- Location: IOIBUF_X60_Y81_N52
\INPUT2[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(20),
	o => \INPUT2[20]~input_o\);

-- Location: IOIBUF_X62_Y81_N52
\INPUT1[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(20),
	o => \INPUT1[20]~input_o\);

-- Location: LABCELL_X60_Y80_N9
\READMEM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~20_combout\ = ( \INPUT1[20]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[20]~input_o\)))) ) ) # ( !\INPUT1[20]~input_o\ & ( (\ADDRESS[0]~input_o\ & (!\ADDRESS[1]~input_o\ & (\INPUT2[20]~input_o\ 
-- & \Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000100011000000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[0]~input_o\,
	datab => \ALT_INV_ADDRESS[1]~input_o\,
	datac => \ALT_INV_INPUT2[20]~input_o\,
	datad => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_INPUT1[20]~input_o\,
	combout => \READMEM~20_combout\);

-- Location: IOIBUF_X54_Y81_N35
\INPUT2[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(21),
	o => \INPUT2[21]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\INPUT1[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(21),
	o => \INPUT1[21]~input_o\);

-- Location: MLABCELL_X59_Y44_N0
\READMEM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~21_combout\ = ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\ & ((\INPUT1[21]~input_o\))) # (\ADDRESS[0]~input_o\ & (\INPUT2[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000000000000000000001101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT2[21]~input_o\,
	datab => \ALT_INV_INPUT1[21]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~21_combout\);

-- Location: IOIBUF_X4_Y0_N52
\INPUT2[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(22),
	o => \INPUT2[22]~input_o\);

-- Location: IOIBUF_X32_Y81_N1
\INPUT1[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(22),
	o => \INPUT1[22]~input_o\);

-- Location: LABCELL_X33_Y80_N57
\READMEM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~22_combout\ = ( \INPUT1[22]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[22]~input_o\))) ) ) ) # ( !\INPUT1[22]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\INPUT2[22]~input_o\ & 
-- (\ADDRESS[0]~input_o\ & \Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT2[22]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_INPUT1[22]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~22_combout\);

-- Location: IOIBUF_X76_Y81_N18
\INPUT1[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(23),
	o => \INPUT1[23]~input_o\);

-- Location: IOIBUF_X80_Y81_N52
\INPUT2[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(23),
	o => \INPUT2[23]~input_o\);

-- Location: MLABCELL_X78_Y80_N30
\READMEM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~23_combout\ = ( \Equal0~5_combout\ & ( \INPUT2[23]~input_o\ & ( (!\ADDRESS[1]~input_o\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[23]~input_o\))) ) ) ) # ( \Equal0~5_combout\ & ( !\INPUT2[23]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\INPUT1[23]~input_o\ 
-- & !\ADDRESS[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_INPUT1[23]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_INPUT2[23]~input_o\,
	combout => \READMEM~23_combout\);

-- Location: IOIBUF_X6_Y0_N35
\INPUT2[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(24),
	o => \INPUT2[24]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\INPUT1[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(24),
	o => \INPUT1[24]~input_o\);

-- Location: MLABCELL_X59_Y44_N6
\READMEM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~24_combout\ = ( \Equal0~5_combout\ & ( \INPUT1[24]~input_o\ & ( (!\ADDRESS[1]~input_o\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[24]~input_o\))) ) ) ) # ( \Equal0~5_combout\ & ( !\INPUT1[24]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\INPUT2[24]~input_o\ 
-- & \ADDRESS[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000001000000000000000001010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_INPUT2[24]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_INPUT1[24]~input_o\,
	combout => \READMEM~24_combout\);

-- Location: IOIBUF_X78_Y81_N18
\INPUT2[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(25),
	o => \INPUT2[25]~input_o\);

-- Location: IOIBUF_X84_Y81_N18
\INPUT1[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(25),
	o => \INPUT1[25]~input_o\);

-- Location: MLABCELL_X78_Y80_N9
\READMEM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~25_combout\ = ( \Equal0~5_combout\ & ( \INPUT1[25]~input_o\ & ( (!\ADDRESS[1]~input_o\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[25]~input_o\))) ) ) ) # ( \Equal0~5_combout\ & ( !\INPUT1[25]~input_o\ & ( (\ADDRESS[0]~input_o\ & (\INPUT2[25]~input_o\ 
-- & !\ADDRESS[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_INPUT2[25]~input_o\,
	datad => \ALT_INV_ADDRESS[1]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_INPUT1[25]~input_o\,
	combout => \READMEM~25_combout\);

-- Location: IOIBUF_X32_Y81_N52
\INPUT2[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(26),
	o => \INPUT2[26]~input_o\);

-- Location: IOIBUF_X32_Y81_N35
\INPUT1[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(26),
	o => \INPUT1[26]~input_o\);

-- Location: LABCELL_X33_Y80_N0
\READMEM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~26_combout\ = ( \ADDRESS[0]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & \INPUT2[26]~input_o\) ) ) ) # ( !\ADDRESS[0]~input_o\ & ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & \INPUT1[26]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_INPUT2[26]~input_o\,
	datac => \ALT_INV_INPUT1[26]~input_o\,
	datae => \ALT_INV_ADDRESS[0]~input_o\,
	dataf => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~26_combout\);

-- Location: IOIBUF_X68_Y81_N1
\INPUT2[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(27),
	o => \INPUT2[27]~input_o\);

-- Location: IOIBUF_X72_Y81_N1
\INPUT1[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(27),
	o => \INPUT1[27]~input_o\);

-- Location: LABCELL_X75_Y80_N54
\READMEM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~27_combout\ = ( !\ADDRESS[1]~input_o\ & ( \INPUT1[27]~input_o\ & ( (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[27]~input_o\))) ) ) ) # ( !\ADDRESS[1]~input_o\ & ( !\INPUT1[27]~input_o\ & ( (\INPUT2[27]~input_o\ & 
-- (\ADDRESS[0]~input_o\ & \Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000000000000000001101000011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT2[27]~input_o\,
	datab => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_ADDRESS[1]~input_o\,
	dataf => \ALT_INV_INPUT1[27]~input_o\,
	combout => \READMEM~27_combout\);

-- Location: IOIBUF_X78_Y81_N1
\INPUT1[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(28),
	o => \INPUT1[28]~input_o\);

-- Location: IOIBUF_X84_Y81_N1
\INPUT2[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(28),
	o => \INPUT2[28]~input_o\);

-- Location: MLABCELL_X78_Y80_N12
\READMEM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~28_combout\ = ( \Equal0~5_combout\ & ( \INPUT2[28]~input_o\ & ( (!\ADDRESS[1]~input_o\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[28]~input_o\))) ) ) ) # ( \Equal0~5_combout\ & ( !\INPUT2[28]~input_o\ & ( (!\ADDRESS[1]~input_o\ & (\INPUT1[28]~input_o\ 
-- & !\ADDRESS[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000000000000000000000010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[1]~input_o\,
	datab => \ALT_INV_INPUT1[28]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_INPUT2[28]~input_o\,
	combout => \READMEM~28_combout\);

-- Location: IOIBUF_X62_Y81_N18
\INPUT1[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(29),
	o => \INPUT1[29]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\INPUT2[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(29),
	o => \INPUT2[29]~input_o\);

-- Location: MLABCELL_X59_Y44_N42
\READMEM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~29_combout\ = ( !\ADDRESS[1]~input_o\ & ( (\Equal0~5_combout\ & ((!\ADDRESS[0]~input_o\ & (\INPUT1[29]~input_o\)) # (\ADDRESS[0]~input_o\ & ((\INPUT2[29]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000000000000000000010100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_INPUT1[29]~input_o\,
	datab => \ALT_INV_INPUT2[29]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_ADDRESS[1]~input_o\,
	combout => \READMEM~29_combout\);

-- Location: IOIBUF_X82_Y81_N75
\INPUT2[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(30),
	o => \INPUT2[30]~input_o\);

-- Location: IOIBUF_X86_Y81_N1
\INPUT1[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(30),
	o => \INPUT1[30]~input_o\);

-- Location: MLABCELL_X78_Y80_N21
\READMEM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~30_combout\ = ( \Equal0~5_combout\ & ( \INPUT1[30]~input_o\ & ( (!\ADDRESS[1]~input_o\ & ((!\ADDRESS[0]~input_o\) # (\INPUT2[30]~input_o\))) ) ) ) # ( \Equal0~5_combout\ & ( !\INPUT1[30]~input_o\ & ( (\ADDRESS[0]~input_o\ & (\INPUT2[30]~input_o\ 
-- & !\ADDRESS[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_INPUT2[30]~input_o\,
	datad => \ALT_INV_ADDRESS[1]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_INPUT1[30]~input_o\,
	combout => \READMEM~30_combout\);

-- Location: IOIBUF_X70_Y81_N52
\INPUT1[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT1(31),
	o => \INPUT1[31]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\INPUT2[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT2(31),
	o => \INPUT2[31]~input_o\);

-- Location: LABCELL_X75_Y80_N33
\READMEM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \READMEM~31_combout\ = ( !\ADDRESS[1]~input_o\ & ( \INPUT2[31]~input_o\ & ( (\Equal0~5_combout\ & ((\ADDRESS[0]~input_o\) # (\INPUT1[31]~input_o\))) ) ) ) # ( !\ADDRESS[1]~input_o\ & ( !\INPUT2[31]~input_o\ & ( (\Equal0~5_combout\ & (\INPUT1[31]~input_o\ 
-- & !\ADDRESS[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000000000000000010101000101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_INPUT1[31]~input_o\,
	datac => \ALT_INV_ADDRESS[0]~input_o\,
	datae => \ALT_INV_ADDRESS[1]~input_o\,
	dataf => \ALT_INV_INPUT2[31]~input_o\,
	combout => \READMEM~31_combout\);

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X52_Y0_N35
\WDATA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(0),
	o => \WDATA[0]~input_o\);

-- Location: LABCELL_X53_Y1_N3
\OUTSig1[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[0]~reg0feeder_combout\ = ( \WDATA[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[0]~input_o\,
	combout => \OUTSig1[0]~reg0feeder_combout\);

-- Location: IOIBUF_X56_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: MLABCELL_X59_Y44_N51
\OUTSig1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[0]~0_combout\ = ( \Equal0~5_combout\ & ( (!\ADDRESS[0]~input_o\ & (\reset~input_o\ & \ADDRESS[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_ADDRESS[1]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	combout => \OUTSig1[0]~0_combout\);

-- Location: FF_X53_Y1_N4
\OUTSig1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[0]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[0]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N52
\WDATA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(1),
	o => \WDATA[1]~input_o\);

-- Location: LABCELL_X53_Y1_N0
\OUTSig1[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[1]~reg0feeder_combout\ = ( \WDATA[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[1]~input_o\,
	combout => \OUTSig1[1]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N1
\OUTSig1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[1]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[1]~reg0_q\);

-- Location: IOIBUF_X89_Y9_N38
\WDATA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(2),
	o => \WDATA[2]~input_o\);

-- Location: MLABCELL_X82_Y6_N33
\OUTSig1[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[2]~reg0feeder_combout\ = ( \WDATA[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[2]~input_o\,
	combout => \OUTSig1[2]~reg0feeder_combout\);

-- Location: FF_X82_Y6_N34
\OUTSig1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[2]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[2]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N75
\WDATA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(3),
	o => \WDATA[3]~input_o\);

-- Location: LABCELL_X30_Y1_N33
\OUTSig1[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[3]~reg0feeder_combout\ = ( \WDATA[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[3]~input_o\,
	combout => \OUTSig1[3]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N34
\OUTSig1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[3]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[3]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N35
\WDATA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(4),
	o => \WDATA[4]~input_o\);

-- Location: LABCELL_X64_Y1_N30
\OUTSig1[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[4]~reg0feeder_combout\ = ( \WDATA[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[4]~input_o\,
	combout => \OUTSig1[4]~reg0feeder_combout\);

-- Location: FF_X64_Y1_N31
\OUTSig1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[4]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[4]~reg0_q\);

-- Location: IOIBUF_X60_Y0_N1
\WDATA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(5),
	o => \WDATA[5]~input_o\);

-- Location: LABCELL_X64_Y1_N36
\OUTSig1[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[5]~reg0feeder_combout\ = ( \WDATA[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[5]~input_o\,
	combout => \OUTSig1[5]~reg0feeder_combout\);

-- Location: FF_X64_Y1_N38
\OUTSig1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[5]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[5]~reg0_q\);

-- Location: IOIBUF_X54_Y0_N52
\WDATA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(6),
	o => \WDATA[6]~input_o\);

-- Location: FF_X53_Y1_N40
\OUTSig1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[6]~input_o\,
	sload => VCC,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[6]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N35
\WDATA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(7),
	o => \WDATA[7]~input_o\);

-- Location: LABCELL_X67_Y1_N3
\OUTSig1[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[7]~reg0feeder_combout\ = ( \WDATA[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[7]~input_o\,
	combout => \OUTSig1[7]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N4
\OUTSig1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[7]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[7]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N18
\WDATA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(8),
	o => \WDATA[8]~input_o\);

-- Location: LABCELL_X53_Y1_N42
\OUTSig1[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[8]~reg0feeder_combout\ = ( \WDATA[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[8]~input_o\,
	combout => \OUTSig1[8]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N43
\OUTSig1[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[8]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[8]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N52
\WDATA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(9),
	o => \WDATA[9]~input_o\);

-- Location: LABCELL_X67_Y1_N9
\OUTSig1[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[9]~reg0feeder_combout\ = ( \WDATA[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[9]~input_o\,
	combout => \OUTSig1[9]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N10
\OUTSig1[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[9]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[9]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N41
\WDATA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(10),
	o => \WDATA[10]~input_o\);

-- Location: LABCELL_X53_Y1_N48
\OUTSig1[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[10]~reg0feeder_combout\ = ( \WDATA[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[10]~input_o\,
	combout => \OUTSig1[10]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N49
\OUTSig1[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[10]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[10]~reg0_q\);

-- Location: IOIBUF_X89_Y9_N55
\WDATA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(11),
	o => \WDATA[11]~input_o\);

-- Location: LABCELL_X88_Y35_N33
\OUTSig1[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[11]~reg0feeder_combout\ = ( \WDATA[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[11]~input_o\,
	combout => \OUTSig1[11]~reg0feeder_combout\);

-- Location: FF_X88_Y35_N34
\OUTSig1[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[11]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[11]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N52
\WDATA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(12),
	o => \WDATA[12]~input_o\);

-- Location: LABCELL_X67_Y1_N15
\OUTSig1[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[12]~reg0feeder_combout\ = ( \WDATA[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[12]~input_o\,
	combout => \OUTSig1[12]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N16
\OUTSig1[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[12]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[12]~reg0_q\);

-- Location: IOIBUF_X89_Y8_N4
\WDATA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(13),
	o => \WDATA[13]~input_o\);

-- Location: MLABCELL_X82_Y6_N6
\OUTSig1[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[13]~reg0feeder_combout\ = ( \WDATA[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[13]~input_o\,
	combout => \OUTSig1[13]~reg0feeder_combout\);

-- Location: FF_X82_Y6_N7
\OUTSig1[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[13]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[13]~reg0_q\);

-- Location: IOIBUF_X89_Y4_N78
\WDATA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(14),
	o => \WDATA[14]~input_o\);

-- Location: LABCELL_X64_Y1_N15
\OUTSig1[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[14]~reg0feeder_combout\ = ( \WDATA[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[14]~input_o\,
	combout => \OUTSig1[14]~reg0feeder_combout\);

-- Location: FF_X64_Y1_N16
\OUTSig1[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[14]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[14]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N92
\WDATA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(15),
	o => \WDATA[15]~input_o\);

-- Location: LABCELL_X53_Y1_N45
\OUTSig1[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[15]~reg0feeder_combout\ = ( \WDATA[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[15]~input_o\,
	combout => \OUTSig1[15]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N46
\OUTSig1[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[15]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[15]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N92
\WDATA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(16),
	o => \WDATA[16]~input_o\);

-- Location: LABCELL_X64_Y1_N21
\OUTSig1[16]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[16]~reg0feeder_combout\ = ( \WDATA[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[16]~input_o\,
	combout => \OUTSig1[16]~reg0feeder_combout\);

-- Location: FF_X64_Y1_N23
\OUTSig1[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[16]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[16]~reg0_q\);

-- Location: IOIBUF_X89_Y35_N78
\WDATA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(17),
	o => \WDATA[17]~input_o\);

-- Location: FF_X82_Y6_N13
\OUTSig1[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[17]~input_o\,
	sload => VCC,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[17]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N35
\WDATA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(18),
	o => \WDATA[18]~input_o\);

-- Location: FF_X30_Y1_N40
\OUTSig1[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[18]~input_o\,
	sload => VCC,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[18]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N41
\WDATA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(19),
	o => \WDATA[19]~input_o\);

-- Location: FF_X30_Y1_N43
\OUTSig1[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[19]~input_o\,
	sload => VCC,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[19]~reg0_q\);

-- Location: IOIBUF_X66_Y81_N75
\WDATA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(20),
	o => \WDATA[20]~input_o\);

-- Location: FF_X67_Y1_N50
\OUTSig1[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[20]~input_o\,
	sload => VCC,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[20]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N1
\WDATA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(21),
	o => \WDATA[21]~input_o\);

-- Location: LABCELL_X30_Y1_N21
\OUTSig1[21]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[21]~reg0feeder_combout\ = ( \WDATA[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[21]~input_o\,
	combout => \OUTSig1[21]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N23
\OUTSig1[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[21]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[21]~reg0_q\);

-- Location: IOIBUF_X89_Y6_N55
\WDATA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(22),
	o => \WDATA[22]~input_o\);

-- Location: MLABCELL_X82_Y6_N21
\OUTSig1[22]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[22]~reg0feeder_combout\ = ( \WDATA[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[22]~input_o\,
	combout => \OUTSig1[22]~reg0feeder_combout\);

-- Location: FF_X82_Y6_N22
\OUTSig1[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[22]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[22]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N92
\WDATA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(23),
	o => \WDATA[23]~input_o\);

-- Location: LABCELL_X30_Y1_N54
\OUTSig1[23]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[23]~reg0feeder_combout\ = ( \WDATA[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[23]~input_o\,
	combout => \OUTSig1[23]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N55
\OUTSig1[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[23]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[23]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N75
\WDATA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(24),
	o => \WDATA[24]~input_o\);

-- Location: LABCELL_X53_Y1_N27
\OUTSig1[24]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[24]~reg0feeder_combout\ = ( \WDATA[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[24]~input_o\,
	combout => \OUTSig1[24]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N29
\OUTSig1[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[24]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[24]~reg0_q\);

-- Location: IOIBUF_X64_Y0_N18
\WDATA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(25),
	o => \WDATA[25]~input_o\);

-- Location: FF_X64_Y1_N56
\OUTSig1[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[25]~input_o\,
	sload => VCC,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[25]~reg0_q\);

-- Location: IOIBUF_X88_Y81_N36
\WDATA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(26),
	o => \WDATA[26]~input_o\);

-- Location: MLABCELL_X82_Y6_N57
\OUTSig1[26]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[26]~reg0feeder_combout\ = ( \WDATA[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[26]~input_o\,
	combout => \OUTSig1[26]~reg0feeder_combout\);

-- Location: FF_X82_Y6_N58
\OUTSig1[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[26]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[26]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N58
\WDATA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(27),
	o => \WDATA[27]~input_o\);

-- Location: FF_X53_Y1_N38
\OUTSig1[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[27]~input_o\,
	sload => VCC,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[27]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N1
\WDATA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(28),
	o => \WDATA[28]~input_o\);

-- Location: FF_X53_Y1_N25
\OUTSig1[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[28]~input_o\,
	sload => VCC,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[28]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N18
\WDATA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(29),
	o => \WDATA[29]~input_o\);

-- Location: FF_X30_Y1_N2
\OUTSig1[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[29]~input_o\,
	sload => VCC,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[29]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N1
\WDATA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(30),
	o => \WDATA[30]~input_o\);

-- Location: LABCELL_X67_Y1_N24
\OUTSig1[30]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[30]~reg0feeder_combout\ = ( \WDATA[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[30]~input_o\,
	combout => \OUTSig1[30]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N25
\OUTSig1[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[30]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[30]~reg0_q\);

-- Location: IOIBUF_X72_Y0_N35
\WDATA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(31),
	o => \WDATA[31]~input_o\);

-- Location: LABCELL_X67_Y1_N30
\OUTSig1[31]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig1[31]~reg0feeder_combout\ = ( \WDATA[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[31]~input_o\,
	combout => \OUTSig1[31]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N31
\OUTSig1[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig1[31]~reg0feeder_combout\,
	ena => \OUTSig1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig1[31]~reg0_q\);

-- Location: LABCELL_X53_Y1_N33
\OUTSig2[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[0]~reg0feeder_combout\ = ( \WDATA[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[0]~input_o\,
	combout => \OUTSig2[0]~reg0feeder_combout\);

-- Location: MLABCELL_X59_Y44_N27
\OUTSig2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[0]~0_combout\ = ( \Equal0~5_combout\ & ( (\ADDRESS[0]~input_o\ & (\reset~input_o\ & \ADDRESS[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ADDRESS[0]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_ADDRESS[1]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	combout => \OUTSig2[0]~0_combout\);

-- Location: FF_X53_Y1_N34
\OUTSig2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[0]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[0]~reg0_q\);

-- Location: LABCELL_X53_Y1_N30
\OUTSig2[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[1]~reg0feeder_combout\ = ( \WDATA[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[1]~input_o\,
	combout => \OUTSig2[1]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N31
\OUTSig2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[1]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[1]~reg0_q\);

-- Location: MLABCELL_X82_Y6_N0
\OUTSig2[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[2]~reg0feeder_combout\ = ( \WDATA[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[2]~input_o\,
	combout => \OUTSig2[2]~reg0feeder_combout\);

-- Location: FF_X82_Y6_N1
\OUTSig2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[2]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[2]~reg0_q\);

-- Location: LABCELL_X30_Y1_N9
\OUTSig2[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[3]~reg0feeder_combout\ = ( \WDATA[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[3]~input_o\,
	combout => \OUTSig2[3]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N10
\OUTSig2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[3]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[3]~reg0_q\);

-- Location: LABCELL_X64_Y1_N0
\OUTSig2[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[4]~reg0feeder_combout\ = ( \WDATA[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[4]~input_o\,
	combout => \OUTSig2[4]~reg0feeder_combout\);

-- Location: FF_X64_Y1_N1
\OUTSig2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[4]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[4]~reg0_q\);

-- Location: LABCELL_X64_Y1_N6
\OUTSig2[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[5]~reg0feeder_combout\ = ( \WDATA[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[5]~input_o\,
	combout => \OUTSig2[5]~reg0feeder_combout\);

-- Location: FF_X64_Y1_N7
\OUTSig2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[5]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[5]~reg0_q\);

-- Location: FF_X53_Y1_N10
\OUTSig2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[6]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[6]~reg0_q\);

-- Location: LABCELL_X67_Y1_N39
\OUTSig2[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[7]~reg0feeder_combout\ = ( \WDATA[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[7]~input_o\,
	combout => \OUTSig2[7]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N40
\OUTSig2[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[7]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[7]~reg0_q\);

-- Location: LABCELL_X53_Y1_N12
\OUTSig2[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[8]~reg0feeder_combout\ = ( \WDATA[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[8]~input_o\,
	combout => \OUTSig2[8]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N13
\OUTSig2[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[8]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[8]~reg0_q\);

-- Location: LABCELL_X67_Y1_N45
\OUTSig2[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[9]~reg0feeder_combout\ = ( \WDATA[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[9]~input_o\,
	combout => \OUTSig2[9]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N46
\OUTSig2[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[9]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[9]~reg0_q\);

-- Location: LABCELL_X53_Y1_N18
\OUTSig2[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[10]~reg0feeder_combout\ = ( \WDATA[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[10]~input_o\,
	combout => \OUTSig2[10]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N19
\OUTSig2[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[10]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[10]~reg0_q\);

-- Location: FF_X82_Y6_N37
\OUTSig2[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[11]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[11]~reg0_q\);

-- Location: LABCELL_X67_Y1_N21
\OUTSig2[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[12]~reg0feeder_combout\ = ( \WDATA[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[12]~input_o\,
	combout => \OUTSig2[12]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N22
\OUTSig2[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[12]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[12]~reg0_q\);

-- Location: MLABCELL_X82_Y6_N42
\OUTSig2[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[13]~reg0feeder_combout\ = ( \WDATA[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[13]~input_o\,
	combout => \OUTSig2[13]~reg0feeder_combout\);

-- Location: FF_X82_Y6_N43
\OUTSig2[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[13]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[13]~reg0_q\);

-- Location: LABCELL_X64_Y1_N45
\OUTSig2[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[14]~reg0feeder_combout\ = ( \WDATA[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[14]~input_o\,
	combout => \OUTSig2[14]~reg0feeder_combout\);

-- Location: FF_X64_Y1_N47
\OUTSig2[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[14]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[14]~reg0_q\);

-- Location: LABCELL_X53_Y1_N15
\OUTSig2[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[15]~reg0feeder_combout\ = ( \WDATA[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[15]~input_o\,
	combout => \OUTSig2[15]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N16
\OUTSig2[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[15]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[15]~reg0_q\);

-- Location: LABCELL_X64_Y1_N51
\OUTSig2[16]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[16]~reg0feeder_combout\ = ( \WDATA[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[16]~input_o\,
	combout => \OUTSig2[16]~reg0feeder_combout\);

-- Location: FF_X64_Y1_N52
\OUTSig2[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[16]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[16]~reg0_q\);

-- Location: FF_X82_Y6_N52
\OUTSig2[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[17]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[17]~reg0_q\);

-- Location: FF_X30_Y1_N17
\OUTSig2[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[18]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[18]~reg0_q\);

-- Location: FF_X30_Y1_N49
\OUTSig2[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[19]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[19]~reg0_q\);

-- Location: FF_X67_Y1_N56
\OUTSig2[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[20]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[20]~reg0_q\);

-- Location: LABCELL_X30_Y1_N51
\OUTSig2[21]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[21]~reg0feeder_combout\ = ( \WDATA[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[21]~input_o\,
	combout => \OUTSig2[21]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N53
\OUTSig2[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[21]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[21]~reg0_q\);

-- Location: MLABCELL_X82_Y6_N45
\OUTSig2[22]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[22]~reg0feeder_combout\ = ( \WDATA[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[22]~input_o\,
	combout => \OUTSig2[22]~reg0feeder_combout\);

-- Location: FF_X82_Y6_N46
\OUTSig2[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[22]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[22]~reg0_q\);

-- Location: LABCELL_X30_Y1_N12
\OUTSig2[23]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[23]~reg0feeder_combout\ = ( \WDATA[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[23]~input_o\,
	combout => \OUTSig2[23]~reg0feeder_combout\);

-- Location: FF_X30_Y1_N13
\OUTSig2[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[23]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[23]~reg0_q\);

-- Location: LABCELL_X53_Y1_N57
\OUTSig2[24]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[24]~reg0feeder_combout\ = ( \WDATA[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[24]~input_o\,
	combout => \OUTSig2[24]~reg0feeder_combout\);

-- Location: FF_X53_Y1_N58
\OUTSig2[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[24]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[24]~reg0_q\);

-- Location: FF_X64_Y1_N25
\OUTSig2[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[25]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[25]~reg0_q\);

-- Location: MLABCELL_X82_Y6_N48
\OUTSig2[26]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[26]~reg0feeder_combout\ = ( \WDATA[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[26]~input_o\,
	combout => \OUTSig2[26]~reg0feeder_combout\);

-- Location: FF_X82_Y6_N49
\OUTSig2[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[26]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[26]~reg0_q\);

-- Location: FF_X53_Y1_N7
\OUTSig2[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[27]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[27]~reg0_q\);

-- Location: FF_X53_Y1_N55
\OUTSig2[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[28]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[28]~reg0_q\);

-- Location: FF_X30_Y1_N25
\OUTSig2[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \WDATA[29]~input_o\,
	sload => VCC,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[29]~reg0_q\);

-- Location: LABCELL_X67_Y1_N18
\OUTSig2[30]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[30]~reg0feeder_combout\ = ( \WDATA[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[30]~input_o\,
	combout => \OUTSig2[30]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N19
\OUTSig2[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[30]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[30]~reg0_q\);

-- Location: LABCELL_X67_Y1_N42
\OUTSig2[31]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTSig2[31]~reg0feeder_combout\ = ( \WDATA[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_WDATA[31]~input_o\,
	combout => \OUTSig2[31]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N44
\OUTSig2[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \OUTSig2[31]~reg0feeder_combout\,
	ena => \OUTSig2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUTSig2[31]~reg0_q\);

-- Location: IOIBUF_X64_Y81_N52
\MEMORY_mapped_IO_INPUT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEMORY_mapped_IO_INPUT,
	o => \MEMORY_mapped_IO_INPUT~input_o\);

-- Location: LABCELL_X16_Y42_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


