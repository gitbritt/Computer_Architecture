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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "04/06/2017 13:39:51"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips_alu IS
    PORT (
	ALUControl : IN std_logic_vector(3 DOWNTO 0);
	inputA : IN std_logic_vector(31 DOWNTO 0);
	inputB : IN std_logic_vector(31 DOWNTO 0);
	shamt : IN std_logic_vector(4 DOWNTO 0);
	Zero : BUFFER std_logic;
	ALU_Result : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END mips_alu;

-- Design Ports Information
-- Zero	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[5]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[6]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[8]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[9]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[10]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[11]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[13]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[14]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[15]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[16]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[17]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[18]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[19]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[20]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[21]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[22]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[23]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[24]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[25]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[26]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[27]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[28]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[29]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[30]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[31]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[16]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[16]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[14]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[14]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[15]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[15]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[10]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[10]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[11]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[11]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[12]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[12]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[13]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[9]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[6]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[2]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[3]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[28]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[28]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[29]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[30]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[30]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[31]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[31]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[26]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[26]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[27]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[27]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[25]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[25]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[23]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[23]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[24]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[24]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[19]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[19]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[22]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[22]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[17]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[17]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[18]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[18]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[20]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[20]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[21]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[21]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[4]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[2]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips_alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALUControl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inputA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inputB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL ww_ALU_Result : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ALUControl[0]~input_o\ : std_logic;
SIGNAL \ALUControl[1]~input_o\ : std_logic;
SIGNAL \inputB[2]~input_o\ : std_logic;
SIGNAL \inputB[0]~input_o\ : std_logic;
SIGNAL \inputB[1]~input_o\ : std_logic;
SIGNAL \inputB[3]~input_o\ : std_logic;
SIGNAL \inputB[4]~input_o\ : std_logic;
SIGNAL \Mux0~24_combout\ : std_logic;
SIGNAL \inputB[9]~input_o\ : std_logic;
SIGNAL \inputB[8]~input_o\ : std_logic;
SIGNAL \inputB[6]~input_o\ : std_logic;
SIGNAL \inputB[7]~input_o\ : std_logic;
SIGNAL \inputB[10]~input_o\ : std_logic;
SIGNAL \Mux0~25_combout\ : std_logic;
SIGNAL \inputB[14]~input_o\ : std_logic;
SIGNAL \inputB[15]~input_o\ : std_logic;
SIGNAL \inputB[12]~input_o\ : std_logic;
SIGNAL \inputB[13]~input_o\ : std_logic;
SIGNAL \Mux0~23_combout\ : std_logic;
SIGNAL \inputB[5]~input_o\ : std_logic;
SIGNAL \inputB[11]~input_o\ : std_logic;
SIGNAL \Mux0~26_combout\ : std_logic;
SIGNAL \inputA[14]~input_o\ : std_logic;
SIGNAL \inputA[7]~input_o\ : std_logic;
SIGNAL \inputA[0]~input_o\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \inputA[28]~input_o\ : std_logic;
SIGNAL \inputB[28]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \inputB[30]~input_o\ : std_logic;
SIGNAL \inputA[30]~input_o\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \inputB[25]~input_o\ : std_logic;
SIGNAL \inputA[25]~input_o\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \inputB[24]~input_o\ : std_logic;
SIGNAL \inputA[24]~input_o\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \inputB[23]~input_o\ : std_logic;
SIGNAL \inputA[23]~input_o\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \inputB[22]~input_o\ : std_logic;
SIGNAL \inputA[22]~input_o\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \inputB[17]~input_o\ : std_logic;
SIGNAL \inputA[17]~input_o\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \inputA[19]~input_o\ : std_logic;
SIGNAL \inputB[19]~input_o\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \inputB[16]~input_o\ : std_logic;
SIGNAL \inputA[16]~input_o\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \inputA[18]~input_o\ : std_logic;
SIGNAL \inputB[18]~input_o\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \inputB[21]~input_o\ : std_logic;
SIGNAL \inputA[21]~input_o\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \inputB[20]~input_o\ : std_logic;
SIGNAL \inputA[20]~input_o\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \inputA[27]~input_o\ : std_logic;
SIGNAL \inputB[27]~input_o\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \inputA[26]~input_o\ : std_logic;
SIGNAL \inputB[26]~input_o\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \LessThan7~3_combout\ : std_logic;
SIGNAL \inputB[29]~input_o\ : std_logic;
SIGNAL \inputA[29]~input_o\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \LessThan7~4_combout\ : std_logic;
SIGNAL \inputA[15]~input_o\ : std_logic;
SIGNAL \inputA[13]~input_o\ : std_logic;
SIGNAL \inputA[12]~input_o\ : std_logic;
SIGNAL \LessThan7~6_combout\ : std_logic;
SIGNAL \inputB[31]~input_o\ : std_logic;
SIGNAL \inputA[31]~input_o\ : std_logic;
SIGNAL \inputA[1]~input_o\ : std_logic;
SIGNAL \LessThan7~5_combout\ : std_logic;
SIGNAL \inputA[11]~input_o\ : std_logic;
SIGNAL \inputA[8]~input_o\ : std_logic;
SIGNAL \inputA[5]~input_o\ : std_logic;
SIGNAL \inputA[6]~input_o\ : std_logic;
SIGNAL \LessThan7~9_combout\ : std_logic;
SIGNAL \inputA[2]~input_o\ : std_logic;
SIGNAL \inputA[3]~input_o\ : std_logic;
SIGNAL \LessThan7~8_combout\ : std_logic;
SIGNAL \inputA[4]~input_o\ : std_logic;
SIGNAL \LessThan7~10_combout\ : std_logic;
SIGNAL \inputA[9]~input_o\ : std_logic;
SIGNAL \inputA[10]~input_o\ : std_logic;
SIGNAL \LessThan7~7_combout\ : std_logic;
SIGNAL \LessThan7~11_combout\ : std_logic;
SIGNAL \LessThan7~12_combout\ : std_logic;
SIGNAL \Mux0~48_combout\ : std_logic;
SIGNAL \LessThan4~13_combout\ : std_logic;
SIGNAL \LessThan4~14_combout\ : std_logic;
SIGNAL \LessThan4~18_combout\ : std_logic;
SIGNAL \LessThan4~19_combout\ : std_logic;
SIGNAL \LessThan4~20_combout\ : std_logic;
SIGNAL \LessThan4~21_combout\ : std_logic;
SIGNAL \LessThan4~22_combout\ : std_logic;
SIGNAL \LessThan4~29_combout\ : std_logic;
SIGNAL \LessThan4~30_combout\ : std_logic;
SIGNAL \LessThan4~23_combout\ : std_logic;
SIGNAL \LessThan4~26_combout\ : std_logic;
SIGNAL \LessThan4~27_combout\ : std_logic;
SIGNAL \LessThan4~24_combout\ : std_logic;
SIGNAL \LessThan4~28_combout\ : std_logic;
SIGNAL \LessThan4~25_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \LessThan4~15_combout\ : std_logic;
SIGNAL \LessThan4~16_combout\ : std_logic;
SIGNAL \LessThan4~10_combout\ : std_logic;
SIGNAL \LessThan4~5_combout\ : std_logic;
SIGNAL \LessThan4~9_combout\ : std_logic;
SIGNAL \LessThan4~11_combout\ : std_logic;
SIGNAL \LessThan4~6_combout\ : std_logic;
SIGNAL \LessThan4~7_combout\ : std_logic;
SIGNAL \LessThan4~12_combout\ : std_logic;
SIGNAL \LessThan4~8_combout\ : std_logic;
SIGNAL \LessThan4~17_combout\ : std_logic;
SIGNAL \LessThan4~31_combout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~123\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~127\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~103\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~107\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~111\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~115\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~119\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~83\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~87\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Mux0~40_combout\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Mux0~41_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~95\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~99\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~63\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~71\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Mux0~42_combout\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~75\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Mux0~43_combout\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Mux0~44_combout\ : std_logic;
SIGNAL \Mux0~45_combout\ : std_logic;
SIGNAL \Mux0~46_combout\ : std_logic;
SIGNAL \Mux0~47_combout\ : std_logic;
SIGNAL \ALUControl[3]~input_o\ : std_logic;
SIGNAL \ALUControl[2]~input_o\ : std_logic;
SIGNAL \shamt[3]~input_o\ : std_logic;
SIGNAL \shamt[0]~input_o\ : std_logic;
SIGNAL \shamt[1]~input_o\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \shamt[2]~input_o\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \shamt[4]~input_o\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \LessThan6~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \LessThan6~5_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \LessThan6~6_combout\ : std_logic;
SIGNAL \LessThan6~8_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \LessThan6~9_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \LessThan6~3_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~98_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \ShiftRight0~94_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~90_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \LessThan5~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \LessThan5~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \LessThan5~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \LessThan5~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \LessThan5~9_combout\ : std_logic;
SIGNAL \LessThan5~10_combout\ : std_logic;
SIGNAL \Mux0~39_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~126\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Mux0~31_combout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Mux0~32_combout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Mux0~33_combout\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \Mux0~34_combout\ : std_logic;
SIGNAL \Mux0~35_combout\ : std_logic;
SIGNAL \Mux0~36_combout\ : std_logic;
SIGNAL \Mux0~37_combout\ : std_logic;
SIGNAL \Mux0~28_combout\ : std_logic;
SIGNAL \Mux0~27_combout\ : std_logic;
SIGNAL \Mux0~29_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~14_combout\ : std_logic;
SIGNAL \Mux0~15_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~16_combout\ : std_logic;
SIGNAL \Mux0~17_combout\ : std_logic;
SIGNAL \Mux0~18_combout\ : std_logic;
SIGNAL \Mux0~19_combout\ : std_logic;
SIGNAL \Mux0~20_combout\ : std_logic;
SIGNAL \Mux0~21_combout\ : std_logic;
SIGNAL \Mux0~22_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~30_combout\ : std_logic;
SIGNAL \Mux0~38_combout\ : std_logic;
SIGNAL \Mux0~49_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Zero$latch~combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \ALU_Result[0]$latch~combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \ALU_Result[1]$latch~combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \ALU_Result[2]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \ALU_Result[3]$latch~combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \ALU_Result[4]$latch~combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \ALU_Result[5]$latch~combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \ALU_Result[6]$latch~combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \ALU_Result[7]$latch~combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \ALU_Result[8]$latch~combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \ALU_Result[9]$latch~combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \ALU_Result[10]$latch~combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \ALU_Result[11]$latch~combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \ALU_Result[12]$latch~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \ALU_Result[13]$latch~combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \ALU_Result[14]$latch~combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \ALU_Result[15]$latch~combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \ALU_Result[16]$latch~combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \ALU_Result[17]$latch~combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \ALU_Result[18]$latch~combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \ShiftRight0~78_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \ALU_Result[19]$latch~combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \ShiftRight0~79_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \ALU_Result[20]$latch~combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \ShiftRight0~80_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \ALU_Result[21]$latch~combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \ShiftRight0~81_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \ALU_Result[22]$latch~combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \ShiftRight0~82_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \ALU_Result[23]$latch~combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \ShiftRight0~83_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \ALU_Result[24]$latch~combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \ShiftRight0~84_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \ALU_Result[25]$latch~combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \ShiftRight0~85_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \ALU_Result[26]$latch~combout\ : std_logic;
SIGNAL \ShiftRight0~86_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \ALU_Result[27]$latch~combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \ShiftRight0~87_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \ALU_Result[28]$latch~combout\ : std_logic;
SIGNAL \ShiftRight0~88_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \ALU_Result[29]$latch~combout\ : std_logic;
SIGNAL \ShiftRight0~89_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \ALU_Result[30]$latch~combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \ALU_Result[31]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Mux0~35_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~34_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~33_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~32_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~31_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~30_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~29_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~28_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~27_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~20_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~19_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~11_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~10_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~9_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~8_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~18_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~17_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~98_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~94_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~90_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~3_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~3_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~9_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~76_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~75_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~74_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~73_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~72_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~71_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~70_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~69_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~68_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~67_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~5_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~66_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~65_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~64_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~63_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~62_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~61_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~60_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~59_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~58_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~57_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~56_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~55_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~54_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~53_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~52_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~51_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~50_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~49_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~48_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~47_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~46_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~45_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~44_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~43_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~42_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~41_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~40_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~39_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~38_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~37_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~36_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~35_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~34_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~33_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~32_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~31_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~30_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~29_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~28_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~27_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~26_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~25_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~24_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~23_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~22_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~21_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~19_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~18_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~17_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~16_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~15_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~14_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~13_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~12_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~11_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~10_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~9_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~8_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~7_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~6_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~5_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~38_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~37_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~36_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~49_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~48_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~47_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~31_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~30_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~29_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~27_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~46_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~45_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~44_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~43_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~42_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~41_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~40_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~39_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~9_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~8_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~7_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~6_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~4_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Zero$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~89_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~88_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~87_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~86_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~85_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~84_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~83_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~82_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~81_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~80_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~79_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~78_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \ALT_INV_ShiftRight0~77_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUControl[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_shamt[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUControl[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUControl[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[31]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[30]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[29]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[28]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[27]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[26]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[25]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[24]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[23]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[22]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[21]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[20]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[19]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[18]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[17]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[16]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALU_Result[14]$latch~combout\ : std_logic;

BEGIN

ww_ALUControl <= ALUControl;
ww_inputA <= inputA;
ww_inputB <= inputB;
ww_shamt <= shamt;
Zero <= ww_Zero;
ALU_Result <= ww_ALU_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~125_sumout\ <= NOT \Add0~125_sumout\;
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Mux0~35_combout\ <= NOT \Mux0~35_combout\;
\ALT_INV_Mux0~34_combout\ <= NOT \Mux0~34_combout\;
\ALT_INV_Mux0~33_combout\ <= NOT \Mux0~33_combout\;
\ALT_INV_Mux0~32_combout\ <= NOT \Mux0~32_combout\;
\ALT_INV_Mux0~31_combout\ <= NOT \Mux0~31_combout\;
\ALT_INV_Mux0~30_combout\ <= NOT \Mux0~30_combout\;
\ALT_INV_Mux0~29_combout\ <= NOT \Mux0~29_combout\;
\ALT_INV_Mux0~28_combout\ <= NOT \Mux0~28_combout\;
\ALT_INV_process_0~14_combout\ <= NOT \process_0~14_combout\;
\ALT_INV_Mux0~27_combout\ <= NOT \Mux0~27_combout\;
\ALT_INV_process_0~13_combout\ <= NOT \process_0~13_combout\;
\ALT_INV_Mux0~26_combout\ <= NOT \Mux0~26_combout\;
\ALT_INV_Mux0~25_combout\ <= NOT \Mux0~25_combout\;
\ALT_INV_Mux0~24_combout\ <= NOT \Mux0~24_combout\;
\ALT_INV_Mux0~23_combout\ <= NOT \Mux0~23_combout\;
\ALT_INV_Mux0~22_combout\ <= NOT \Mux0~22_combout\;
\ALT_INV_Mux0~21_combout\ <= NOT \Mux0~21_combout\;
\ALT_INV_Mux0~20_combout\ <= NOT \Mux0~20_combout\;
\ALT_INV_process_0~12_combout\ <= NOT \process_0~12_combout\;
\ALT_INV_Mux0~19_combout\ <= NOT \Mux0~19_combout\;
\ALT_INV_process_0~11_combout\ <= NOT \process_0~11_combout\;
\ALT_INV_process_0~10_combout\ <= NOT \process_0~10_combout\;
\ALT_INV_process_0~9_combout\ <= NOT \process_0~9_combout\;
\ALT_INV_process_0~8_combout\ <= NOT \process_0~8_combout\;
\ALT_INV_process_0~7_combout\ <= NOT \process_0~7_combout\;
\ALT_INV_process_0~6_combout\ <= NOT \process_0~6_combout\;
\ALT_INV_Mux0~18_combout\ <= NOT \Mux0~18_combout\;
\ALT_INV_process_0~5_combout\ <= NOT \process_0~5_combout\;
\ALT_INV_process_0~4_combout\ <= NOT \process_0~4_combout\;
\ALT_INV_Mux0~17_combout\ <= NOT \Mux0~17_combout\;
\ALT_INV_process_0~3_combout\ <= NOT \process_0~3_combout\;
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_Mux0~16_combout\ <= NOT \Mux0~16_combout\;
\ALT_INV_Mux0~15_combout\ <= NOT \Mux0~15_combout\;
\ALT_INV_Mux0~14_combout\ <= NOT \Mux0~14_combout\;
\ALT_INV_Mux0~13_combout\ <= NOT \Mux0~13_combout\;
\ALT_INV_Mux0~12_combout\ <= NOT \Mux0~12_combout\;
\ALT_INV_Mux0~11_combout\ <= NOT \Mux0~11_combout\;
\ALT_INV_Mux0~10_combout\ <= NOT \Mux0~10_combout\;
\ALT_INV_Mux0~9_combout\ <= NOT \Mux0~9_combout\;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
\ALT_INV_Mux0~7_combout\ <= NOT \Mux0~7_combout\;
\ALT_INV_Mux0~6_combout\ <= NOT \Mux0~6_combout\;
\ALT_INV_Mux0~5_combout\ <= NOT \Mux0~5_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_ShiftRight0~98_combout\ <= NOT \ShiftRight0~98_combout\;
\ALT_INV_ShiftRight0~94_combout\ <= NOT \ShiftRight0~94_combout\;
\ALT_INV_ShiftRight0~90_combout\ <= NOT \ShiftRight0~90_combout\;
\ALT_INV_Mux30~2_combout\ <= NOT \Mux30~2_combout\;
\ALT_INV_Mux31~2_combout\ <= NOT \Mux31~2_combout\;
\ALT_INV_Mux32~2_combout\ <= NOT \Mux32~2_combout\;
\ALT_INV_Mux33~3_combout\ <= NOT \Mux33~3_combout\;
\ALT_INV_Add1~125_sumout\ <= NOT \Add1~125_sumout\;
\ALT_INV_Add1~121_sumout\ <= NOT \Add1~121_sumout\;
\ALT_INV_Add1~117_sumout\ <= NOT \Add1~117_sumout\;
\ALT_INV_Add1~113_sumout\ <= NOT \Add1~113_sumout\;
\ALT_INV_Add1~109_sumout\ <= NOT \Add1~109_sumout\;
\ALT_INV_Add1~105_sumout\ <= NOT \Add1~105_sumout\;
\ALT_INV_Add1~101_sumout\ <= NOT \Add1~101_sumout\;
\ALT_INV_Add1~97_sumout\ <= NOT \Add1~97_sumout\;
\ALT_INV_Add1~93_sumout\ <= NOT \Add1~93_sumout\;
\ALT_INV_Add1~89_sumout\ <= NOT \Add1~89_sumout\;
\ALT_INV_Add1~85_sumout\ <= NOT \Add1~85_sumout\;
\ALT_INV_Add1~81_sumout\ <= NOT \Add1~81_sumout\;
\ALT_INV_Add1~77_sumout\ <= NOT \Add1~77_sumout\;
\ALT_INV_Add1~73_sumout\ <= NOT \Add1~73_sumout\;
\ALT_INV_Add1~69_sumout\ <= NOT \Add1~69_sumout\;
\ALT_INV_Add1~65_sumout\ <= NOT \Add1~65_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_ShiftLeft0~32_combout\ <= NOT \ShiftLeft0~32_combout\;
\ALT_INV_ShiftLeft0~31_combout\ <= NOT \ShiftLeft0~31_combout\;
\ALT_INV_ShiftLeft0~30_combout\ <= NOT \ShiftLeft0~30_combout\;
\ALT_INV_ShiftLeft0~29_combout\ <= NOT \ShiftLeft0~29_combout\;
\ALT_INV_ShiftLeft0~28_combout\ <= NOT \ShiftLeft0~28_combout\;
\ALT_INV_LessThan5~3_combout\ <= NOT \LessThan5~3_combout\;
\ALT_INV_ShiftLeft0~27_combout\ <= NOT \ShiftLeft0~27_combout\;
\ALT_INV_ShiftLeft0~26_combout\ <= NOT \ShiftLeft0~26_combout\;
\ALT_INV_ShiftLeft0~25_combout\ <= NOT \ShiftLeft0~25_combout\;
\ALT_INV_ShiftLeft0~24_combout\ <= NOT \ShiftLeft0~24_combout\;
\ALT_INV_ShiftLeft0~23_combout\ <= NOT \ShiftLeft0~23_combout\;
\ALT_INV_LessThan5~2_combout\ <= NOT \LessThan5~2_combout\;
\ALT_INV_ShiftLeft0~22_combout\ <= NOT \ShiftLeft0~22_combout\;
\ALT_INV_ShiftLeft0~21_combout\ <= NOT \ShiftLeft0~21_combout\;
\ALT_INV_ShiftLeft0~20_combout\ <= NOT \ShiftLeft0~20_combout\;
\ALT_INV_LessThan5~1_combout\ <= NOT \LessThan5~1_combout\;
\ALT_INV_ShiftLeft0~19_combout\ <= NOT \ShiftLeft0~19_combout\;
\ALT_INV_ShiftLeft0~18_combout\ <= NOT \ShiftLeft0~18_combout\;
\ALT_INV_ShiftLeft0~17_combout\ <= NOT \ShiftLeft0~17_combout\;
\ALT_INV_ShiftLeft0~16_combout\ <= NOT \ShiftLeft0~16_combout\;
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_ShiftLeft0~15_combout\ <= NOT \ShiftLeft0~15_combout\;
\ALT_INV_ShiftLeft0~14_combout\ <= NOT \ShiftLeft0~14_combout\;
\ALT_INV_LessThan6~9_combout\ <= NOT \LessThan6~9_combout\;
\ALT_INV_ShiftRight0~76_combout\ <= NOT \ShiftRight0~76_combout\;
\ALT_INV_ShiftRight0~75_combout\ <= NOT \ShiftRight0~75_combout\;
\ALT_INV_ShiftRight0~74_combout\ <= NOT \ShiftRight0~74_combout\;
\ALT_INV_ShiftRight0~73_combout\ <= NOT \ShiftRight0~73_combout\;
\ALT_INV_ShiftLeft0~13_combout\ <= NOT \ShiftLeft0~13_combout\;
\ALT_INV_ShiftRight0~72_combout\ <= NOT \ShiftRight0~72_combout\;
\ALT_INV_ShiftRight0~71_combout\ <= NOT \ShiftRight0~71_combout\;
\ALT_INV_ShiftRight0~70_combout\ <= NOT \ShiftRight0~70_combout\;
\ALT_INV_ShiftRight0~69_combout\ <= NOT \ShiftRight0~69_combout\;
\ALT_INV_ShiftRight0~68_combout\ <= NOT \ShiftRight0~68_combout\;
\ALT_INV_ShiftRight0~67_combout\ <= NOT \ShiftRight0~67_combout\;
\ALT_INV_LessThan6~8_combout\ <= NOT \LessThan6~8_combout\;
\ALT_INV_LessThan6~7_combout\ <= NOT \LessThan6~7_combout\;
\ALT_INV_LessThan6~6_combout\ <= NOT \LessThan6~6_combout\;
\ALT_INV_LessThan6~5_combout\ <= NOT \LessThan6~5_combout\;
\ALT_INV_ShiftRight0~66_combout\ <= NOT \ShiftRight0~66_combout\;
\ALT_INV_ShiftRight0~65_combout\ <= NOT \ShiftRight0~65_combout\;
\ALT_INV_LessThan6~4_combout\ <= NOT \LessThan6~4_combout\;
\ALT_INV_LessThan6~3_combout\ <= NOT \LessThan6~3_combout\;
\ALT_INV_ShiftRight0~64_combout\ <= NOT \ShiftRight0~64_combout\;
\ALT_INV_ShiftRight0~63_combout\ <= NOT \ShiftRight0~63_combout\;
\ALT_INV_ShiftRight0~62_combout\ <= NOT \ShiftRight0~62_combout\;
\ALT_INV_ShiftRight0~61_combout\ <= NOT \ShiftRight0~61_combout\;
\ALT_INV_ShiftRight0~60_combout\ <= NOT \ShiftRight0~60_combout\;
\ALT_INV_ShiftRight0~59_combout\ <= NOT \ShiftRight0~59_combout\;
\ALT_INV_ShiftRight0~58_combout\ <= NOT \ShiftRight0~58_combout\;
\ALT_INV_ShiftRight0~57_combout\ <= NOT \ShiftRight0~57_combout\;
\ALT_INV_ShiftRight0~56_combout\ <= NOT \ShiftRight0~56_combout\;
\ALT_INV_ShiftRight0~55_combout\ <= NOT \ShiftRight0~55_combout\;
\ALT_INV_ShiftRight0~54_combout\ <= NOT \ShiftRight0~54_combout\;
\ALT_INV_ShiftRight0~53_combout\ <= NOT \ShiftRight0~53_combout\;
\ALT_INV_ShiftRight0~52_combout\ <= NOT \ShiftRight0~52_combout\;
\ALT_INV_ShiftRight0~51_combout\ <= NOT \ShiftRight0~51_combout\;
\ALT_INV_ShiftRight0~50_combout\ <= NOT \ShiftRight0~50_combout\;
\ALT_INV_ShiftRight0~49_combout\ <= NOT \ShiftRight0~49_combout\;
\ALT_INV_ShiftRight0~48_combout\ <= NOT \ShiftRight0~48_combout\;
\ALT_INV_ShiftRight0~47_combout\ <= NOT \ShiftRight0~47_combout\;
\ALT_INV_ShiftRight0~46_combout\ <= NOT \ShiftRight0~46_combout\;
\ALT_INV_LessThan6~2_combout\ <= NOT \LessThan6~2_combout\;
\ALT_INV_ShiftRight0~45_combout\ <= NOT \ShiftRight0~45_combout\;
\ALT_INV_ShiftRight0~44_combout\ <= NOT \ShiftRight0~44_combout\;
\ALT_INV_ShiftRight0~43_combout\ <= NOT \ShiftRight0~43_combout\;
\ALT_INV_ShiftRight0~42_combout\ <= NOT \ShiftRight0~42_combout\;
\ALT_INV_ShiftRight0~41_combout\ <= NOT \ShiftRight0~41_combout\;
\ALT_INV_ShiftRight0~40_combout\ <= NOT \ShiftRight0~40_combout\;
\ALT_INV_ShiftRight0~39_combout\ <= NOT \ShiftRight0~39_combout\;
\ALT_INV_ShiftRight0~38_combout\ <= NOT \ShiftRight0~38_combout\;
\ALT_INV_ShiftRight0~37_combout\ <= NOT \ShiftRight0~37_combout\;
\ALT_INV_LessThan6~1_combout\ <= NOT \LessThan6~1_combout\;
\ALT_INV_ShiftRight0~36_combout\ <= NOT \ShiftRight0~36_combout\;
\ALT_INV_ShiftRight0~35_combout\ <= NOT \ShiftRight0~35_combout\;
\ALT_INV_ShiftRight0~34_combout\ <= NOT \ShiftRight0~34_combout\;
\ALT_INV_ShiftRight0~33_combout\ <= NOT \ShiftRight0~33_combout\;
\ALT_INV_ShiftRight0~32_combout\ <= NOT \ShiftRight0~32_combout\;
\ALT_INV_ShiftRight0~31_combout\ <= NOT \ShiftRight0~31_combout\;
\ALT_INV_ShiftRight0~30_combout\ <= NOT \ShiftRight0~30_combout\;
\ALT_INV_ShiftRight0~29_combout\ <= NOT \ShiftRight0~29_combout\;
\ALT_INV_ShiftRight0~28_combout\ <= NOT \ShiftRight0~28_combout\;
\ALT_INV_ShiftRight0~27_combout\ <= NOT \ShiftRight0~27_combout\;
\ALT_INV_ShiftRight0~26_combout\ <= NOT \ShiftRight0~26_combout\;
\ALT_INV_ShiftRight0~25_combout\ <= NOT \ShiftRight0~25_combout\;
\ALT_INV_ShiftRight0~24_combout\ <= NOT \ShiftRight0~24_combout\;
\ALT_INV_ShiftRight0~23_combout\ <= NOT \ShiftRight0~23_combout\;
\ALT_INV_ShiftRight0~22_combout\ <= NOT \ShiftRight0~22_combout\;
\ALT_INV_ShiftRight0~21_combout\ <= NOT \ShiftRight0~21_combout\;
\ALT_INV_ShiftRight0~20_combout\ <= NOT \ShiftRight0~20_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_ShiftRight0~19_combout\ <= NOT \ShiftRight0~19_combout\;
\ALT_INV_ShiftRight0~18_combout\ <= NOT \ShiftRight0~18_combout\;
\ALT_INV_ShiftRight0~17_combout\ <= NOT \ShiftRight0~17_combout\;
\ALT_INV_ShiftRight0~16_combout\ <= NOT \ShiftRight0~16_combout\;
\ALT_INV_ShiftLeft0~12_combout\ <= NOT \ShiftLeft0~12_combout\;
\ALT_INV_ShiftRight0~15_combout\ <= NOT \ShiftRight0~15_combout\;
\ALT_INV_ShiftRight0~14_combout\ <= NOT \ShiftRight0~14_combout\;
\ALT_INV_ShiftRight0~13_combout\ <= NOT \ShiftRight0~13_combout\;
\ALT_INV_ShiftRight0~12_combout\ <= NOT \ShiftRight0~12_combout\;
\ALT_INV_ShiftRight0~11_combout\ <= NOT \ShiftRight0~11_combout\;
\ALT_INV_ShiftRight0~10_combout\ <= NOT \ShiftRight0~10_combout\;
\ALT_INV_ShiftLeft0~11_combout\ <= NOT \ShiftLeft0~11_combout\;
\ALT_INV_ShiftRight0~9_combout\ <= NOT \ShiftRight0~9_combout\;
\ALT_INV_ShiftRight0~8_combout\ <= NOT \ShiftRight0~8_combout\;
\ALT_INV_ShiftRight0~7_combout\ <= NOT \ShiftRight0~7_combout\;
\ALT_INV_ShiftRight0~6_combout\ <= NOT \ShiftRight0~6_combout\;
\ALT_INV_ShiftRight0~5_combout\ <= NOT \ShiftRight0~5_combout\;
\ALT_INV_ShiftRight0~4_combout\ <= NOT \ShiftRight0~4_combout\;
\ALT_INV_ShiftRight0~3_combout\ <= NOT \ShiftRight0~3_combout\;
\ALT_INV_ShiftRight0~2_combout\ <= NOT \ShiftRight0~2_combout\;
\ALT_INV_ShiftRight0~1_combout\ <= NOT \ShiftRight0~1_combout\;
\ALT_INV_ShiftRight0~0_combout\ <= NOT \ShiftRight0~0_combout\;
\ALT_INV_ShiftLeft0~10_combout\ <= NOT \ShiftLeft0~10_combout\;
\ALT_INV_ShiftLeft0~9_combout\ <= NOT \ShiftLeft0~9_combout\;
\ALT_INV_ShiftLeft0~8_combout\ <= NOT \ShiftLeft0~8_combout\;
\ALT_INV_ShiftLeft0~7_combout\ <= NOT \ShiftLeft0~7_combout\;
\ALT_INV_ShiftLeft0~6_combout\ <= NOT \ShiftLeft0~6_combout\;
\ALT_INV_ShiftLeft0~5_combout\ <= NOT \ShiftLeft0~5_combout\;
\ALT_INV_ShiftLeft0~4_combout\ <= NOT \ShiftLeft0~4_combout\;
\ALT_INV_ShiftLeft0~3_combout\ <= NOT \ShiftLeft0~3_combout\;
\ALT_INV_ShiftLeft0~2_combout\ <= NOT \ShiftLeft0~2_combout\;
\ALT_INV_ShiftLeft0~1_combout\ <= NOT \ShiftLeft0~1_combout\;
\ALT_INV_ShiftLeft0~0_combout\ <= NOT \ShiftLeft0~0_combout\;
\ALT_INV_Mux0~38_combout\ <= NOT \Mux0~38_combout\;
\ALT_INV_Mux0~37_combout\ <= NOT \Mux0~37_combout\;
\ALT_INV_Mux0~36_combout\ <= NOT \Mux0~36_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux2~5_combout\ <= NOT \Mux2~5_combout\;
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux0~49_combout\ <= NOT \Mux0~49_combout\;
\ALT_INV_Mux0~48_combout\ <= NOT \Mux0~48_combout\;
\ALT_INV_LessThan7~12_combout\ <= NOT \LessThan7~12_combout\;
\ALT_INV_LessThan7~11_combout\ <= NOT \LessThan7~11_combout\;
\ALT_INV_LessThan7~10_combout\ <= NOT \LessThan7~10_combout\;
\ALT_INV_LessThan7~9_combout\ <= NOT \LessThan7~9_combout\;
\ALT_INV_LessThan7~8_combout\ <= NOT \LessThan7~8_combout\;
\ALT_INV_LessThan7~7_combout\ <= NOT \LessThan7~7_combout\;
\ALT_INV_LessThan7~6_combout\ <= NOT \LessThan7~6_combout\;
\ALT_INV_LessThan7~5_combout\ <= NOT \LessThan7~5_combout\;
\ALT_INV_LessThan7~4_combout\ <= NOT \LessThan7~4_combout\;
\ALT_INV_LessThan7~3_combout\ <= NOT \LessThan7~3_combout\;
\ALT_INV_LessThan7~2_combout\ <= NOT \LessThan7~2_combout\;
\ALT_INV_LessThan7~1_combout\ <= NOT \LessThan7~1_combout\;
\ALT_INV_LessThan7~0_combout\ <= NOT \LessThan7~0_combout\;
\ALT_INV_Mux0~47_combout\ <= NOT \Mux0~47_combout\;
\ALT_INV_LessThan4~31_combout\ <= NOT \LessThan4~31_combout\;
\ALT_INV_LessThan4~30_combout\ <= NOT \LessThan4~30_combout\;
\ALT_INV_LessThan4~29_combout\ <= NOT \LessThan4~29_combout\;
\ALT_INV_LessThan4~28_combout\ <= NOT \LessThan4~28_combout\;
\ALT_INV_LessThan4~27_combout\ <= NOT \LessThan4~27_combout\;
\ALT_INV_LessThan4~26_combout\ <= NOT \LessThan4~26_combout\;
\ALT_INV_LessThan4~25_combout\ <= NOT \LessThan4~25_combout\;
\ALT_INV_LessThan4~24_combout\ <= NOT \LessThan4~24_combout\;
\ALT_INV_LessThan4~23_combout\ <= NOT \LessThan4~23_combout\;
\ALT_INV_LessThan4~22_combout\ <= NOT \LessThan4~22_combout\;
\ALT_INV_LessThan4~21_combout\ <= NOT \LessThan4~21_combout\;
\ALT_INV_LessThan4~20_combout\ <= NOT \LessThan4~20_combout\;
\ALT_INV_LessThan4~19_combout\ <= NOT \LessThan4~19_combout\;
\ALT_INV_LessThan4~18_combout\ <= NOT \LessThan4~18_combout\;
\ALT_INV_LessThan4~17_combout\ <= NOT \LessThan4~17_combout\;
\ALT_INV_LessThan4~16_combout\ <= NOT \LessThan4~16_combout\;
\ALT_INV_LessThan4~15_combout\ <= NOT \LessThan4~15_combout\;
\ALT_INV_LessThan4~14_combout\ <= NOT \LessThan4~14_combout\;
\ALT_INV_LessThan4~13_combout\ <= NOT \LessThan4~13_combout\;
\ALT_INV_LessThan4~12_combout\ <= NOT \LessThan4~12_combout\;
\ALT_INV_LessThan4~11_combout\ <= NOT \LessThan4~11_combout\;
\ALT_INV_LessThan4~10_combout\ <= NOT \LessThan4~10_combout\;
\ALT_INV_LessThan4~9_combout\ <= NOT \LessThan4~9_combout\;
\ALT_INV_LessThan4~8_combout\ <= NOT \LessThan4~8_combout\;
\ALT_INV_LessThan4~7_combout\ <= NOT \LessThan4~7_combout\;
\ALT_INV_LessThan4~6_combout\ <= NOT \LessThan4~6_combout\;
\ALT_INV_LessThan4~5_combout\ <= NOT \LessThan4~5_combout\;
\ALT_INV_LessThan4~4_combout\ <= NOT \LessThan4~4_combout\;
\ALT_INV_LessThan4~3_combout\ <= NOT \LessThan4~3_combout\;
\ALT_INV_LessThan4~2_combout\ <= NOT \LessThan4~2_combout\;
\ALT_INV_LessThan4~1_combout\ <= NOT \LessThan4~1_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
\ALT_INV_Mux0~46_combout\ <= NOT \Mux0~46_combout\;
\ALT_INV_Mux0~45_combout\ <= NOT \Mux0~45_combout\;
\ALT_INV_Mux0~44_combout\ <= NOT \Mux0~44_combout\;
\ALT_INV_Mux0~43_combout\ <= NOT \Mux0~43_combout\;
\ALT_INV_Mux0~42_combout\ <= NOT \Mux0~42_combout\;
\ALT_INV_Mux0~41_combout\ <= NOT \Mux0~41_combout\;
\ALT_INV_Mux0~40_combout\ <= NOT \Mux0~40_combout\;
\ALT_INV_Mux0~39_combout\ <= NOT \Mux0~39_combout\;
\ALT_INV_LessThan5~10_combout\ <= NOT \LessThan5~10_combout\;
\ALT_INV_LessThan5~9_combout\ <= NOT \LessThan5~9_combout\;
\ALT_INV_ShiftLeft0~78_combout\ <= NOT \ShiftLeft0~78_combout\;
\ALT_INV_ShiftLeft0~77_combout\ <= NOT \ShiftLeft0~77_combout\;
\ALT_INV_ShiftLeft0~76_combout\ <= NOT \ShiftLeft0~76_combout\;
\ALT_INV_ShiftLeft0~75_combout\ <= NOT \ShiftLeft0~75_combout\;
\ALT_INV_ShiftLeft0~74_combout\ <= NOT \ShiftLeft0~74_combout\;
\ALT_INV_ShiftLeft0~73_combout\ <= NOT \ShiftLeft0~73_combout\;
\ALT_INV_ShiftLeft0~72_combout\ <= NOT \ShiftLeft0~72_combout\;
\ALT_INV_ShiftLeft0~71_combout\ <= NOT \ShiftLeft0~71_combout\;
\ALT_INV_ShiftLeft0~70_combout\ <= NOT \ShiftLeft0~70_combout\;
\ALT_INV_ShiftLeft0~69_combout\ <= NOT \ShiftLeft0~69_combout\;
\ALT_INV_ShiftLeft0~68_combout\ <= NOT \ShiftLeft0~68_combout\;
\ALT_INV_ShiftLeft0~67_combout\ <= NOT \ShiftLeft0~67_combout\;
\ALT_INV_ShiftLeft0~66_combout\ <= NOT \ShiftLeft0~66_combout\;
\ALT_INV_ShiftLeft0~65_combout\ <= NOT \ShiftLeft0~65_combout\;
\ALT_INV_ShiftLeft0~64_combout\ <= NOT \ShiftLeft0~64_combout\;
\ALT_INV_ShiftLeft0~63_combout\ <= NOT \ShiftLeft0~63_combout\;
\ALT_INV_ShiftLeft0~62_combout\ <= NOT \ShiftLeft0~62_combout\;
\ALT_INV_ShiftLeft0~61_combout\ <= NOT \ShiftLeft0~61_combout\;
\ALT_INV_ShiftLeft0~60_combout\ <= NOT \ShiftLeft0~60_combout\;
\ALT_INV_LessThan5~8_combout\ <= NOT \LessThan5~8_combout\;
\ALT_INV_ShiftLeft0~59_combout\ <= NOT \ShiftLeft0~59_combout\;
\ALT_INV_ShiftLeft0~58_combout\ <= NOT \ShiftLeft0~58_combout\;
\ALT_INV_ShiftLeft0~57_combout\ <= NOT \ShiftLeft0~57_combout\;
\ALT_INV_ShiftLeft0~56_combout\ <= NOT \ShiftLeft0~56_combout\;
\ALT_INV_ShiftLeft0~55_combout\ <= NOT \ShiftLeft0~55_combout\;
\ALT_INV_ShiftLeft0~54_combout\ <= NOT \ShiftLeft0~54_combout\;
\ALT_INV_LessThan5~7_combout\ <= NOT \LessThan5~7_combout\;
\ALT_INV_ShiftLeft0~53_combout\ <= NOT \ShiftLeft0~53_combout\;
\ALT_INV_ShiftLeft0~52_combout\ <= NOT \ShiftLeft0~52_combout\;
\ALT_INV_ShiftLeft0~51_combout\ <= NOT \ShiftLeft0~51_combout\;
\ALT_INV_ShiftLeft0~50_combout\ <= NOT \ShiftLeft0~50_combout\;
\ALT_INV_ShiftLeft0~49_combout\ <= NOT \ShiftLeft0~49_combout\;
\ALT_INV_ShiftLeft0~48_combout\ <= NOT \ShiftLeft0~48_combout\;
\ALT_INV_ShiftLeft0~47_combout\ <= NOT \ShiftLeft0~47_combout\;
\ALT_INV_ShiftLeft0~46_combout\ <= NOT \ShiftLeft0~46_combout\;
\ALT_INV_LessThan5~6_combout\ <= NOT \LessThan5~6_combout\;
\ALT_INV_ShiftLeft0~45_combout\ <= NOT \ShiftLeft0~45_combout\;
\ALT_INV_ShiftLeft0~44_combout\ <= NOT \ShiftLeft0~44_combout\;
\ALT_INV_ShiftLeft0~43_combout\ <= NOT \ShiftLeft0~43_combout\;
\ALT_INV_ShiftLeft0~42_combout\ <= NOT \ShiftLeft0~42_combout\;
\ALT_INV_ShiftLeft0~41_combout\ <= NOT \ShiftLeft0~41_combout\;
\ALT_INV_ShiftLeft0~40_combout\ <= NOT \ShiftLeft0~40_combout\;
\ALT_INV_ShiftLeft0~39_combout\ <= NOT \ShiftLeft0~39_combout\;
\ALT_INV_ShiftLeft0~38_combout\ <= NOT \ShiftLeft0~38_combout\;
\ALT_INV_ShiftLeft0~37_combout\ <= NOT \ShiftLeft0~37_combout\;
\ALT_INV_ShiftLeft0~36_combout\ <= NOT \ShiftLeft0~36_combout\;
\ALT_INV_ShiftLeft0~35_combout\ <= NOT \ShiftLeft0~35_combout\;
\ALT_INV_ShiftLeft0~34_combout\ <= NOT \ShiftLeft0~34_combout\;
\ALT_INV_LessThan5~5_combout\ <= NOT \LessThan5~5_combout\;
\ALT_INV_LessThan5~4_combout\ <= NOT \LessThan5~4_combout\;
\ALT_INV_ShiftLeft0~33_combout\ <= NOT \ShiftLeft0~33_combout\;
\ALT_INV_ALU_Result[13]$latch~combout\ <= NOT \ALU_Result[13]$latch~combout\;
\ALT_INV_ALU_Result[12]$latch~combout\ <= NOT \ALU_Result[12]$latch~combout\;
\ALT_INV_ALU_Result[11]$latch~combout\ <= NOT \ALU_Result[11]$latch~combout\;
\ALT_INV_ALU_Result[10]$latch~combout\ <= NOT \ALU_Result[10]$latch~combout\;
\ALT_INV_ALU_Result[9]$latch~combout\ <= NOT \ALU_Result[9]$latch~combout\;
\ALT_INV_ALU_Result[8]$latch~combout\ <= NOT \ALU_Result[8]$latch~combout\;
\ALT_INV_ALU_Result[7]$latch~combout\ <= NOT \ALU_Result[7]$latch~combout\;
\ALT_INV_ALU_Result[6]$latch~combout\ <= NOT \ALU_Result[6]$latch~combout\;
\ALT_INV_ALU_Result[5]$latch~combout\ <= NOT \ALU_Result[5]$latch~combout\;
\ALT_INV_ALU_Result[4]$latch~combout\ <= NOT \ALU_Result[4]$latch~combout\;
\ALT_INV_ALU_Result[3]$latch~combout\ <= NOT \ALU_Result[3]$latch~combout\;
\ALT_INV_ALU_Result[2]$latch~combout\ <= NOT \ALU_Result[2]$latch~combout\;
\ALT_INV_ALU_Result[1]$latch~combout\ <= NOT \ALU_Result[1]$latch~combout\;
\ALT_INV_ALU_Result[0]$latch~combout\ <= NOT \ALU_Result[0]$latch~combout\;
\ALT_INV_Zero$latch~combout\ <= NOT \Zero$latch~combout\;
\ALT_INV_Mux33~2_combout\ <= NOT \Mux33~2_combout\;
\ALT_INV_Mux33~1_combout\ <= NOT \Mux33~1_combout\;
\ALT_INV_Mux32~1_combout\ <= NOT \Mux32~1_combout\;
\ALT_INV_Mux32~0_combout\ <= NOT \Mux32~0_combout\;
\ALT_INV_ShiftRight0~89_combout\ <= NOT \ShiftRight0~89_combout\;
\ALT_INV_Mux31~1_combout\ <= NOT \Mux31~1_combout\;
\ALT_INV_Mux31~0_combout\ <= NOT \Mux31~0_combout\;
\ALT_INV_ShiftRight0~88_combout\ <= NOT \ShiftRight0~88_combout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\ALT_INV_ShiftRight0~87_combout\ <= NOT \ShiftRight0~87_combout\;
\ALT_INV_Mux29~2_combout\ <= NOT \Mux29~2_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\ALT_INV_ShiftRight0~86_combout\ <= NOT \ShiftRight0~86_combout\;
\ALT_INV_Mux28~2_combout\ <= NOT \Mux28~2_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\ALT_INV_ShiftRight0~85_combout\ <= NOT \ShiftRight0~85_combout\;
\ALT_INV_Mux27~2_combout\ <= NOT \Mux27~2_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\ALT_INV_ShiftRight0~84_combout\ <= NOT \ShiftRight0~84_combout\;
\ALT_INV_Mux26~2_combout\ <= NOT \Mux26~2_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\ALT_INV_ShiftRight0~83_combout\ <= NOT \ShiftRight0~83_combout\;
\ALT_INV_Mux25~2_combout\ <= NOT \Mux25~2_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\ALT_INV_ShiftRight0~82_combout\ <= NOT \ShiftRight0~82_combout\;
\ALT_INV_Mux24~2_combout\ <= NOT \Mux24~2_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\ALT_INV_ShiftRight0~81_combout\ <= NOT \ShiftRight0~81_combout\;
\ALT_INV_Mux23~2_combout\ <= NOT \Mux23~2_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\ALT_INV_ShiftRight0~80_combout\ <= NOT \ShiftRight0~80_combout\;
\ALT_INV_Mux22~2_combout\ <= NOT \Mux22~2_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_ShiftRight0~79_combout\ <= NOT \ShiftRight0~79_combout\;
\ALT_INV_Mux21~2_combout\ <= NOT \Mux21~2_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_ShiftRight0~78_combout\ <= NOT \ShiftRight0~78_combout\;
\ALT_INV_Mux20~5_combout\ <= NOT \Mux20~5_combout\;
\ALT_INV_Mux20~4_combout\ <= NOT \Mux20~4_combout\;
\ALT_INV_Mux20~3_combout\ <= NOT \Mux20~3_combout\;
\ALT_INV_ShiftRight0~77_combout\ <= NOT \ShiftRight0~77_combout\;
\ALT_INV_Mux19~2_combout\ <= NOT \Mux19~2_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\ALT_INV_Mux18~2_combout\ <= NOT \Mux18~2_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux20~2_combout\ <= NOT \Mux20~2_combout\;
\ALT_INV_Mux33~0_combout\ <= NOT \Mux33~0_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux17~3_combout\ <= NOT \Mux17~3_combout\;
\ALT_INV_Mux17~2_combout\ <= NOT \Mux17~2_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux16~3_combout\ <= NOT \Mux16~3_combout\;
\ALT_INV_Mux16~2_combout\ <= NOT \Mux16~2_combout\;
\ALT_INV_Mux16~1_combout\ <= NOT \Mux16~1_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_Mux15~3_combout\ <= NOT \Mux15~3_combout\;
\ALT_INV_Mux15~2_combout\ <= NOT \Mux15~2_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux11~3_combout\ <= NOT \Mux11~3_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux10~3_combout\ <= NOT \Mux10~3_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux9~3_combout\ <= NOT \Mux9~3_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux8~3_combout\ <= NOT \Mux8~3_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_Mux7~3_combout\ <= NOT \Mux7~3_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux6~5_combout\ <= NOT \Mux6~5_combout\;
\ALT_INV_Mux6~4_combout\ <= NOT \Mux6~4_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux5~3_combout\ <= NOT \Mux5~3_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_ALUControl[2]~input_o\ <= NOT \ALUControl[2]~input_o\;
\ALT_INV_ALUControl[3]~input_o\ <= NOT \ALUControl[3]~input_o\;
\ALT_INV_shamt[2]~input_o\ <= NOT \shamt[2]~input_o\;
\ALT_INV_shamt[3]~input_o\ <= NOT \shamt[3]~input_o\;
\ALT_INV_shamt[0]~input_o\ <= NOT \shamt[0]~input_o\;
\ALT_INV_shamt[1]~input_o\ <= NOT \shamt[1]~input_o\;
\ALT_INV_shamt[4]~input_o\ <= NOT \shamt[4]~input_o\;
\ALT_INV_inputA[21]~input_o\ <= NOT \inputA[21]~input_o\;
\ALT_INV_inputB[21]~input_o\ <= NOT \inputB[21]~input_o\;
\ALT_INV_inputA[20]~input_o\ <= NOT \inputA[20]~input_o\;
\ALT_INV_inputB[20]~input_o\ <= NOT \inputB[20]~input_o\;
\ALT_INV_inputA[18]~input_o\ <= NOT \inputA[18]~input_o\;
\ALT_INV_inputB[18]~input_o\ <= NOT \inputB[18]~input_o\;
\ALT_INV_inputA[17]~input_o\ <= NOT \inputA[17]~input_o\;
\ALT_INV_inputB[17]~input_o\ <= NOT \inputB[17]~input_o\;
\ALT_INV_inputA[22]~input_o\ <= NOT \inputA[22]~input_o\;
\ALT_INV_inputB[22]~input_o\ <= NOT \inputB[22]~input_o\;
\ALT_INV_inputA[19]~input_o\ <= NOT \inputA[19]~input_o\;
\ALT_INV_inputB[19]~input_o\ <= NOT \inputB[19]~input_o\;
\ALT_INV_inputA[24]~input_o\ <= NOT \inputA[24]~input_o\;
\ALT_INV_inputB[24]~input_o\ <= NOT \inputB[24]~input_o\;
\ALT_INV_inputA[23]~input_o\ <= NOT \inputA[23]~input_o\;
\ALT_INV_inputB[23]~input_o\ <= NOT \inputB[23]~input_o\;
\ALT_INV_inputA[25]~input_o\ <= NOT \inputA[25]~input_o\;
\ALT_INV_inputB[25]~input_o\ <= NOT \inputB[25]~input_o\;
\ALT_INV_inputA[27]~input_o\ <= NOT \inputA[27]~input_o\;
\ALT_INV_inputB[27]~input_o\ <= NOT \inputB[27]~input_o\;
\ALT_INV_inputA[26]~input_o\ <= NOT \inputA[26]~input_o\;
\ALT_INV_inputB[26]~input_o\ <= NOT \inputB[26]~input_o\;
\ALT_INV_inputA[31]~input_o\ <= NOT \inputA[31]~input_o\;
\ALT_INV_inputB[31]~input_o\ <= NOT \inputB[31]~input_o\;
\ALT_INV_inputA[30]~input_o\ <= NOT \inputA[30]~input_o\;
\ALT_INV_inputB[30]~input_o\ <= NOT \inputB[30]~input_o\;
\ALT_INV_inputA[29]~input_o\ <= NOT \inputA[29]~input_o\;
\ALT_INV_inputB[29]~input_o\ <= NOT \inputB[29]~input_o\;
\ALT_INV_inputA[28]~input_o\ <= NOT \inputA[28]~input_o\;
\ALT_INV_inputB[28]~input_o\ <= NOT \inputB[28]~input_o\;
\ALT_INV_inputA[3]~input_o\ <= NOT \inputA[3]~input_o\;
\ALT_INV_inputB[3]~input_o\ <= NOT \inputB[3]~input_o\;
\ALT_INV_inputA[2]~input_o\ <= NOT \inputA[2]~input_o\;
\ALT_INV_inputB[2]~input_o\ <= NOT \inputB[2]~input_o\;
\ALT_INV_ALUControl[0]~input_o\ <= NOT \ALUControl[0]~input_o\;
\ALT_INV_inputA[1]~input_o\ <= NOT \inputA[1]~input_o\;
\ALT_INV_inputB[1]~input_o\ <= NOT \inputB[1]~input_o\;
\ALT_INV_inputA[0]~input_o\ <= NOT \inputA[0]~input_o\;
\ALT_INV_inputB[0]~input_o\ <= NOT \inputB[0]~input_o\;
\ALT_INV_inputA[7]~input_o\ <= NOT \inputA[7]~input_o\;
\ALT_INV_inputB[7]~input_o\ <= NOT \inputB[7]~input_o\;
\ALT_INV_inputA[6]~input_o\ <= NOT \inputA[6]~input_o\;
\ALT_INV_inputB[6]~input_o\ <= NOT \inputB[6]~input_o\;
\ALT_INV_inputA[5]~input_o\ <= NOT \inputA[5]~input_o\;
\ALT_INV_inputB[5]~input_o\ <= NOT \inputB[5]~input_o\;
\ALT_INV_inputA[4]~input_o\ <= NOT \inputA[4]~input_o\;
\ALT_INV_inputB[4]~input_o\ <= NOT \inputB[4]~input_o\;
\ALT_INV_inputA[9]~input_o\ <= NOT \inputA[9]~input_o\;
\ALT_INV_inputB[9]~input_o\ <= NOT \inputB[9]~input_o\;
\ALT_INV_inputA[8]~input_o\ <= NOT \inputA[8]~input_o\;
\ALT_INV_inputB[8]~input_o\ <= NOT \inputB[8]~input_o\;
\ALT_INV_inputA[13]~input_o\ <= NOT \inputA[13]~input_o\;
\ALT_INV_inputB[13]~input_o\ <= NOT \inputB[13]~input_o\;
\ALT_INV_inputA[12]~input_o\ <= NOT \inputA[12]~input_o\;
\ALT_INV_inputB[12]~input_o\ <= NOT \inputB[12]~input_o\;
\ALT_INV_inputA[11]~input_o\ <= NOT \inputA[11]~input_o\;
\ALT_INV_inputB[11]~input_o\ <= NOT \inputB[11]~input_o\;
\ALT_INV_inputA[10]~input_o\ <= NOT \inputA[10]~input_o\;
\ALT_INV_inputB[10]~input_o\ <= NOT \inputB[10]~input_o\;
\ALT_INV_inputA[15]~input_o\ <= NOT \inputA[15]~input_o\;
\ALT_INV_inputB[15]~input_o\ <= NOT \inputB[15]~input_o\;
\ALT_INV_inputA[14]~input_o\ <= NOT \inputA[14]~input_o\;
\ALT_INV_inputB[14]~input_o\ <= NOT \inputB[14]~input_o\;
\ALT_INV_inputA[16]~input_o\ <= NOT \inputA[16]~input_o\;
\ALT_INV_inputB[16]~input_o\ <= NOT \inputB[16]~input_o\;
\ALT_INV_ALUControl[1]~input_o\ <= NOT \ALUControl[1]~input_o\;
\ALT_INV_ALU_Result[31]$latch~combout\ <= NOT \ALU_Result[31]$latch~combout\;
\ALT_INV_ALU_Result[30]$latch~combout\ <= NOT \ALU_Result[30]$latch~combout\;
\ALT_INV_ALU_Result[29]$latch~combout\ <= NOT \ALU_Result[29]$latch~combout\;
\ALT_INV_ALU_Result[28]$latch~combout\ <= NOT \ALU_Result[28]$latch~combout\;
\ALT_INV_ALU_Result[27]$latch~combout\ <= NOT \ALU_Result[27]$latch~combout\;
\ALT_INV_ALU_Result[26]$latch~combout\ <= NOT \ALU_Result[26]$latch~combout\;
\ALT_INV_ALU_Result[25]$latch~combout\ <= NOT \ALU_Result[25]$latch~combout\;
\ALT_INV_ALU_Result[24]$latch~combout\ <= NOT \ALU_Result[24]$latch~combout\;
\ALT_INV_ALU_Result[23]$latch~combout\ <= NOT \ALU_Result[23]$latch~combout\;
\ALT_INV_ALU_Result[22]$latch~combout\ <= NOT \ALU_Result[22]$latch~combout\;
\ALT_INV_ALU_Result[21]$latch~combout\ <= NOT \ALU_Result[21]$latch~combout\;
\ALT_INV_ALU_Result[20]$latch~combout\ <= NOT \ALU_Result[20]$latch~combout\;
\ALT_INV_ALU_Result[19]$latch~combout\ <= NOT \ALU_Result[19]$latch~combout\;
\ALT_INV_ALU_Result[18]$latch~combout\ <= NOT \ALU_Result[18]$latch~combout\;
\ALT_INV_ALU_Result[17]$latch~combout\ <= NOT \ALU_Result[17]$latch~combout\;
\ALT_INV_ALU_Result[16]$latch~combout\ <= NOT \ALU_Result[16]$latch~combout\;
\ALT_INV_ALU_Result[15]$latch~combout\ <= NOT \ALU_Result[15]$latch~combout\;
\ALT_INV_ALU_Result[14]$latch~combout\ <= NOT \ALU_Result[14]$latch~combout\;

-- Location: IOOBUF_X6_Y0_N19
\Zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Zero$latch~combout\,
	devoe => ww_devoe,
	o => ww_Zero);

-- Location: IOOBUF_X4_Y0_N19
\ALU_Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(0));

-- Location: IOOBUF_X6_Y0_N53
\ALU_Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(1));

-- Location: IOOBUF_X68_Y0_N19
\ALU_Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(2));

-- Location: IOOBUF_X2_Y0_N59
\ALU_Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(3));

-- Location: IOOBUF_X30_Y81_N2
\ALU_Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(4));

-- Location: IOOBUF_X72_Y0_N19
\ALU_Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(5));

-- Location: IOOBUF_X26_Y81_N59
\ALU_Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(6));

-- Location: IOOBUF_X26_Y81_N93
\ALU_Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(7));

-- Location: IOOBUF_X28_Y81_N36
\ALU_Result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(8));

-- Location: IOOBUF_X70_Y0_N2
\ALU_Result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(9));

-- Location: IOOBUF_X64_Y0_N53
\ALU_Result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(10));

-- Location: IOOBUF_X26_Y81_N42
\ALU_Result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(11));

-- Location: IOOBUF_X6_Y0_N36
\ALU_Result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(12));

-- Location: IOOBUF_X4_Y0_N36
\ALU_Result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(13));

-- Location: IOOBUF_X56_Y0_N2
\ALU_Result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(14));

-- Location: IOOBUF_X6_Y0_N2
\ALU_Result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(15));

-- Location: IOOBUF_X26_Y81_N76
\ALU_Result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[16]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(16));

-- Location: IOOBUF_X70_Y0_N53
\ALU_Result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[17]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(17));

-- Location: IOOBUF_X8_Y0_N36
\ALU_Result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[18]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(18));

-- Location: IOOBUF_X32_Y81_N19
\ALU_Result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[19]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(19));

-- Location: IOOBUF_X89_Y4_N62
\ALU_Result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[20]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(20));

-- Location: IOOBUF_X68_Y0_N2
\ALU_Result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[21]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(21));

-- Location: IOOBUF_X4_Y0_N2
\ALU_Result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[22]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(22));

-- Location: IOOBUF_X30_Y81_N36
\ALU_Result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[23]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(23));

-- Location: IOOBUF_X70_Y0_N36
\ALU_Result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[24]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(24));

-- Location: IOOBUF_X89_Y4_N45
\ALU_Result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[25]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(25));

-- Location: IOOBUF_X68_Y0_N53
\ALU_Result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[26]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(26));

-- Location: IOOBUF_X62_Y0_N19
\ALU_Result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[27]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(27));

-- Location: IOOBUF_X68_Y0_N36
\ALU_Result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[28]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(28));

-- Location: IOOBUF_X2_Y0_N93
\ALU_Result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[29]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(29));

-- Location: IOOBUF_X66_Y0_N42
\ALU_Result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[30]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(30));

-- Location: IOOBUF_X64_Y0_N36
\ALU_Result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Result[31]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(31));

-- Location: IOIBUF_X26_Y0_N41
\ALUControl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(0),
	o => \ALUControl[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\ALUControl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(1),
	o => \ALUControl[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\inputB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(2),
	o => \inputB[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\inputB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(0),
	o => \inputB[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\inputB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(1),
	o => \inputB[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\inputB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(3),
	o => \inputB[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\inputB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(4),
	o => \inputB[4]~input_o\);

-- Location: MLABCELL_X25_Y1_N30
\Mux0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~24_combout\ = ( !\inputB[4]~input_o\ & ( (!\inputB[2]~input_o\ & (!\inputB[0]~input_o\ & (!\inputB[1]~input_o\ & !\inputB[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[0]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	combout => \Mux0~24_combout\);

-- Location: IOIBUF_X34_Y0_N41
\inputB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(9),
	o => \inputB[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\inputB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(8),
	o => \inputB[8]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\inputB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(6),
	o => \inputB[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\inputB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(7),
	o => \inputB[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\inputB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(10),
	o => \inputB[10]~input_o\);

-- Location: LABCELL_X33_Y2_N24
\Mux0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~25_combout\ = ( !\inputB[10]~input_o\ & ( (!\inputB[9]~input_o\ & (!\inputB[8]~input_o\ & (!\inputB[6]~input_o\ & !\inputB[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[9]~input_o\,
	datab => \ALT_INV_inputB[8]~input_o\,
	datac => \ALT_INV_inputB[6]~input_o\,
	datad => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \Mux0~25_combout\);

-- Location: IOIBUF_X38_Y0_N52
\inputB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(14),
	o => \inputB[14]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\inputB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(15),
	o => \inputB[15]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\inputB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(12),
	o => \inputB[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\inputB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(13),
	o => \inputB[13]~input_o\);

-- Location: LABCELL_X35_Y2_N24
\Mux0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~23_combout\ = ( !\inputB[13]~input_o\ & ( (!\inputB[14]~input_o\ & (!\inputB[15]~input_o\ & !\inputB[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_inputB[15]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	combout => \Mux0~23_combout\);

-- Location: IOIBUF_X38_Y0_N1
\inputB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(5),
	o => \inputB[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\inputB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(11),
	o => \inputB[11]~input_o\);

-- Location: LABCELL_X35_Y2_N18
\Mux0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~26_combout\ = ( !\inputB[11]~input_o\ & ( (\Mux0~24_combout\ & (\Mux0~25_combout\ & (\Mux0~23_combout\ & !\inputB[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~24_combout\,
	datab => \ALT_INV_Mux0~25_combout\,
	datac => \ALT_INV_Mux0~23_combout\,
	datad => \ALT_INV_inputB[5]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \Mux0~26_combout\);

-- Location: IOIBUF_X2_Y0_N75
\inputA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(14),
	o => \inputA[14]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\inputA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(7),
	o => \inputA[7]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\inputA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(0),
	o => \inputA[0]~input_o\);

-- Location: LABCELL_X23_Y4_N12
\LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = ( \inputA[7]~input_o\ & ( \inputA[0]~input_o\ & ( (\inputA[14]~input_o\) # (\inputB[14]~input_o\) ) ) ) # ( !\inputA[7]~input_o\ & ( \inputA[0]~input_o\ & ( (\inputB[7]~input_o\ & ((\inputA[14]~input_o\) # (\inputB[14]~input_o\))) 
-- ) ) ) # ( \inputA[7]~input_o\ & ( !\inputA[0]~input_o\ & ( (\inputB[0]~input_o\ & ((\inputA[14]~input_o\) # (\inputB[14]~input_o\))) ) ) ) # ( !\inputA[7]~input_o\ & ( !\inputA[0]~input_o\ & ( (\inputB[7]~input_o\ & (\inputB[0]~input_o\ & 
-- ((\inputA[14]~input_o\) # (\inputB[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000110000111100010001010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[7]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_inputA[14]~input_o\,
	datae => \ALT_INV_inputA[7]~input_o\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \LessThan7~0_combout\);

-- Location: IOIBUF_X89_Y4_N95
\inputA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(28),
	o => \inputA[28]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\inputB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(28),
	o => \inputB[28]~input_o\);

-- Location: LABCELL_X23_Y4_N9
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( !\inputB[28]~input_o\ & ( !\inputA[28]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[28]~input_o\,
	datae => \ALT_INV_inputB[28]~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X26_Y0_N92
\inputB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(30),
	o => \inputB[30]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\inputA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(30),
	o => \inputA[30]~input_o\);

-- Location: LABCELL_X23_Y4_N21
\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\inputB[30]~input_o\ & !\inputA[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_inputA[30]~input_o\,
	combout => \process_0~2_combout\);

-- Location: IOIBUF_X58_Y0_N92
\inputB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(25),
	o => \inputB[25]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\inputA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(25),
	o => \inputA[25]~input_o\);

-- Location: LABCELL_X35_Y4_N15
\process_0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = ( !\inputA[25]~input_o\ & ( !\inputB[25]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputA[25]~input_o\,
	combout => \process_0~9_combout\);

-- Location: IOIBUF_X38_Y0_N18
\inputB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(24),
	o => \inputB[24]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\inputA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(24),
	o => \inputA[24]~input_o\);

-- Location: MLABCELL_X34_Y4_N6
\process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = ( !\inputA[24]~input_o\ & ( !\inputB[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_inputA[24]~input_o\,
	combout => \process_0~8_combout\);

-- Location: IOIBUF_X40_Y0_N18
\inputB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(23),
	o => \inputB[23]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\inputA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(23),
	o => \inputA[23]~input_o\);

-- Location: LABCELL_X31_Y4_N36
\process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = ( !\inputA[23]~input_o\ & ( !\inputB[23]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_inputA[23]~input_o\,
	combout => \process_0~7_combout\);

-- Location: IOIBUF_X50_Y0_N58
\inputB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(22),
	o => \inputB[22]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\inputA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(22),
	o => \inputA[22]~input_o\);

-- Location: MLABCELL_X28_Y2_N36
\process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ( !\inputA[22]~input_o\ & ( !\inputB[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[22]~input_o\,
	datae => \ALT_INV_inputA[22]~input_o\,
	combout => \process_0~6_combout\);

-- Location: IOIBUF_X52_Y0_N35
\inputB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(17),
	o => \inputB[17]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\inputA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(17),
	o => \inputA[17]~input_o\);

-- Location: LABCELL_X27_Y4_N24
\process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = ( !\inputA[17]~input_o\ & ( !\inputB[17]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[17]~input_o\,
	combout => \process_0~3_combout\);

-- Location: IOIBUF_X72_Y0_N35
\inputA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(19),
	o => \inputA[19]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\inputB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(19),
	o => \inputB[19]~input_o\);

-- Location: LABCELL_X33_Y4_N39
\process_0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (!\inputA[19]~input_o\ & !\inputB[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[19]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	combout => \process_0~14_combout\);

-- Location: IOIBUF_X56_Y0_N52
\inputB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(16),
	o => \inputB[16]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\inputA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(16),
	o => \inputA[16]~input_o\);

-- Location: LABCELL_X33_Y4_N33
\process_0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (!\inputB[16]~input_o\ & !\inputA[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[16]~input_o\,
	datad => \ALT_INV_inputA[16]~input_o\,
	combout => \process_0~12_combout\);

-- Location: IOIBUF_X62_Y0_N1
\inputA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(18),
	o => \inputA[18]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\inputB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(18),
	o => \inputB[18]~input_o\);

-- Location: LABCELL_X27_Y4_N45
\process_0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (!\inputA[18]~input_o\ & !\inputB[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[18]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	combout => \process_0~13_combout\);

-- Location: IOIBUF_X34_Y0_N92
\inputB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(21),
	o => \inputB[21]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\inputA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(21),
	o => \inputA[21]~input_o\);

-- Location: LABCELL_X23_Y4_N45
\process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ( !\inputA[21]~input_o\ & ( !\inputB[21]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputA[21]~input_o\,
	combout => \process_0~5_combout\);

-- Location: IOIBUF_X50_Y0_N92
\inputB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(20),
	o => \inputB[20]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\inputA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(20),
	o => \inputA[20]~input_o\);

-- Location: MLABCELL_X34_Y4_N39
\process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ( !\inputA[20]~input_o\ & ( !\inputB[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputA[20]~input_o\,
	combout => \process_0~4_combout\);

-- Location: LABCELL_X23_Y4_N30
\LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ( !\process_0~5_combout\ & ( !\process_0~4_combout\ & ( (!\process_0~3_combout\ & (!\process_0~14_combout\ & (!\process_0~12_combout\ & !\process_0~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~3_combout\,
	datab => \ALT_INV_process_0~14_combout\,
	datac => \ALT_INV_process_0~12_combout\,
	datad => \ALT_INV_process_0~13_combout\,
	datae => \ALT_INV_process_0~5_combout\,
	dataf => \ALT_INV_process_0~4_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LABCELL_X23_Y4_N51
\LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = ( \LessThan7~1_combout\ & ( (!\process_0~8_combout\ & (!\process_0~7_combout\ & !\process_0~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~8_combout\,
	datab => \ALT_INV_process_0~7_combout\,
	datac => \ALT_INV_process_0~6_combout\,
	dataf => \ALT_INV_LessThan7~1_combout\,
	combout => \LessThan7~2_combout\);

-- Location: IOIBUF_X56_Y0_N35
\inputA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(27),
	o => \inputA[27]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\inputB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(27),
	o => \inputB[27]~input_o\);

-- Location: MLABCELL_X34_Y4_N3
\process_0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = ( !\inputB[27]~input_o\ & ( !\inputA[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[27]~input_o\,
	dataf => \ALT_INV_inputB[27]~input_o\,
	combout => \process_0~11_combout\);

-- Location: IOIBUF_X62_Y0_N52
\inputA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(26),
	o => \inputA[26]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\inputB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(26),
	o => \inputB[26]~input_o\);

-- Location: LABCELL_X30_Y4_N6
\process_0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = ( !\inputB[26]~input_o\ & ( !\inputA[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputA[26]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	combout => \process_0~10_combout\);

-- Location: LABCELL_X23_Y4_N36
\LessThan7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~3_combout\ = ( !\process_0~10_combout\ & ( (!\process_0~9_combout\ & (\LessThan7~2_combout\ & !\process_0~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~9_combout\,
	datac => \ALT_INV_LessThan7~2_combout\,
	datad => \ALT_INV_process_0~11_combout\,
	dataf => \ALT_INV_process_0~10_combout\,
	combout => \LessThan7~3_combout\);

-- Location: IOIBUF_X40_Y0_N52
\inputB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(29),
	o => \inputB[29]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\inputA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(29),
	o => \inputA[29]~input_o\);

-- Location: LABCELL_X23_Y4_N39
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( !\inputA[29]~input_o\ & ( !\inputB[29]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputA[29]~input_o\,
	combout => \process_0~1_combout\);

-- Location: LABCELL_X23_Y4_N0
\LessThan7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~4_combout\ = ( !\process_0~1_combout\ & ( (\LessThan7~0_combout\ & (!\process_0~0_combout\ & (!\process_0~2_combout\ & \LessThan7~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan7~0_combout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_process_0~2_combout\,
	datad => \ALT_INV_LessThan7~3_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \LessThan7~4_combout\);

-- Location: IOIBUF_X50_Y0_N41
\inputA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(15),
	o => \inputA[15]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\inputA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(13),
	o => \inputA[13]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\inputA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(12),
	o => \inputA[12]~input_o\);

-- Location: LABCELL_X24_Y3_N42
\LessThan7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~6_combout\ = ( \inputA[12]~input_o\ & ( (!\inputB[13]~input_o\ & !\inputA[13]~input_o\) ) ) # ( !\inputA[12]~input_o\ & ( (!\inputB[12]~input_o\) # ((!\inputB[13]~input_o\ & !\inputA[13]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100111111001100110011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputA[13]~input_o\,
	dataf => \ALT_INV_inputA[12]~input_o\,
	combout => \LessThan7~6_combout\);

-- Location: IOIBUF_X32_Y0_N35
\inputB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(31),
	o => \inputB[31]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\inputA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(31),
	o => \inputA[31]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\inputA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(1),
	o => \inputA[1]~input_o\);

-- Location: LABCELL_X24_Y3_N24
\LessThan7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~5_combout\ = ( \inputA[1]~input_o\ & ( (!\inputB[31]~input_o\ & !\inputA[31]~input_o\) ) ) # ( !\inputA[1]~input_o\ & ( (!\inputB[1]~input_o\) # ((!\inputB[31]~input_o\ & !\inputA[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001100111111001100110011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputA[31]~input_o\,
	dataf => \ALT_INV_inputA[1]~input_o\,
	combout => \LessThan7~5_combout\);

-- Location: IOIBUF_X54_Y0_N18
\inputA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(11),
	o => \inputA[11]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\inputA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(8),
	o => \inputA[8]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\inputA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(5),
	o => \inputA[5]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\inputA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(6),
	o => \inputA[6]~input_o\);

-- Location: MLABCELL_X25_Y2_N3
\LessThan7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~9_combout\ = ( \inputA[6]~input_o\ & ( (!\inputA[5]~input_o\ & !\inputB[5]~input_o\) ) ) # ( !\inputA[6]~input_o\ & ( (!\inputB[6]~input_o\) # ((!\inputA[5]~input_o\ & !\inputB[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_inputA[5]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	combout => \LessThan7~9_combout\);

-- Location: IOIBUF_X28_Y0_N18
\inputA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(2),
	o => \inputA[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\inputA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(3),
	o => \inputA[3]~input_o\);

-- Location: MLABCELL_X25_Y1_N15
\LessThan7~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~8_combout\ = ( \inputA[3]~input_o\ & ( (!\inputB[2]~input_o\ & !\inputA[2]~input_o\) ) ) # ( !\inputA[3]~input_o\ & ( (!\inputB[3]~input_o\) # ((!\inputB[2]~input_o\ & !\inputA[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \LessThan7~8_combout\);

-- Location: IOIBUF_X26_Y0_N58
\inputA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(4),
	o => \inputA[4]~input_o\);

-- Location: LABCELL_X24_Y2_N18
\LessThan7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~10_combout\ = ( \inputB[8]~input_o\ & ( \inputA[4]~input_o\ & ( (!\LessThan7~9_combout\ & !\LessThan7~8_combout\) ) ) ) # ( !\inputB[8]~input_o\ & ( \inputA[4]~input_o\ & ( (\inputA[8]~input_o\ & (!\LessThan7~9_combout\ & 
-- !\LessThan7~8_combout\)) ) ) ) # ( \inputB[8]~input_o\ & ( !\inputA[4]~input_o\ & ( (\inputB[4]~input_o\ & (!\LessThan7~9_combout\ & !\LessThan7~8_combout\)) ) ) ) # ( !\inputB[8]~input_o\ & ( !\inputA[4]~input_o\ & ( (\inputB[4]~input_o\ & 
-- (\inputA[8]~input_o\ & (!\LessThan7~9_combout\ & !\LessThan7~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010100000000000000110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputA[8]~input_o\,
	datac => \ALT_INV_LessThan7~9_combout\,
	datad => \ALT_INV_LessThan7~8_combout\,
	datae => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_inputA[4]~input_o\,
	combout => \LessThan7~10_combout\);

-- Location: IOIBUF_X72_Y0_N1
\inputA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(9),
	o => \inputA[9]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\inputA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(10),
	o => \inputA[10]~input_o\);

-- Location: LABCELL_X24_Y2_N0
\LessThan7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~7_combout\ = (!\inputB[9]~input_o\ & ((!\inputA[9]~input_o\) # ((!\inputB[10]~input_o\ & !\inputA[10]~input_o\)))) # (\inputB[9]~input_o\ & (((!\inputB[10]~input_o\ & !\inputA[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010001000111110001000100011111000100010001111100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[9]~input_o\,
	datab => \ALT_INV_inputA[9]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_inputA[10]~input_o\,
	combout => \LessThan7~7_combout\);

-- Location: LABCELL_X24_Y3_N45
\LessThan7~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~11_combout\ = ( !\LessThan7~7_combout\ & ( (\LessThan7~10_combout\ & ((\inputA[11]~input_o\) # (\inputB[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datac => \ALT_INV_inputA[11]~input_o\,
	datad => \ALT_INV_LessThan7~10_combout\,
	dataf => \ALT_INV_LessThan7~7_combout\,
	combout => \LessThan7~11_combout\);

-- Location: LABCELL_X24_Y3_N12
\LessThan7~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan7~12_combout\ = ( \inputB[15]~input_o\ & ( (!\LessThan7~6_combout\ & (!\LessThan7~5_combout\ & \LessThan7~11_combout\)) ) ) # ( !\inputB[15]~input_o\ & ( (\inputA[15]~input_o\ & (!\LessThan7~6_combout\ & (!\LessThan7~5_combout\ & 
-- \LessThan7~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[15]~input_o\,
	datab => \ALT_INV_LessThan7~6_combout\,
	datac => \ALT_INV_LessThan7~5_combout\,
	datad => \ALT_INV_LessThan7~11_combout\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \LessThan7~12_combout\);

-- Location: LABCELL_X24_Y3_N54
\Mux0~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~48_combout\ = ( \LessThan7~12_combout\ & ( (!\ALUControl[1]~input_o\ & ((!\ALUControl[0]~input_o\ & ((\LessThan7~4_combout\))) # (\ALUControl[0]~input_o\ & (\Mux0~26_combout\)))) ) ) # ( !\LessThan7~12_combout\ & ( (\ALUControl[0]~input_o\ & 
-- (!\ALUControl[1]~input_o\ & \Mux0~26_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_Mux0~26_combout\,
	datad => \ALT_INV_LessThan7~4_combout\,
	dataf => \ALT_INV_LessThan7~12_combout\,
	combout => \Mux0~48_combout\);

-- Location: LABCELL_X33_Y4_N57
\LessThan4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~13_combout\ = ( \inputB[21]~input_o\ & ( (\inputA[21]~input_o\ & (!\inputA[20]~input_o\ $ (\inputB[20]~input_o\))) ) ) # ( !\inputB[21]~input_o\ & ( (!\inputA[21]~input_o\ & (!\inputA[20]~input_o\ $ (\inputB[20]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001001000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[21]~input_o\,
	datab => \ALT_INV_inputA[20]~input_o\,
	datad => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputB[21]~input_o\,
	combout => \LessThan4~13_combout\);

-- Location: LABCELL_X33_Y4_N48
\LessThan4~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~14_combout\ = ( \inputA[19]~input_o\ & ( (\inputB[19]~input_o\ & (\LessThan4~13_combout\ & (!\inputA[18]~input_o\ $ (\inputB[18]~input_o\)))) ) ) # ( !\inputA[19]~input_o\ & ( (!\inputB[19]~input_o\ & (\LessThan4~13_combout\ & 
-- (!\inputA[18]~input_o\ $ (\inputB[18]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[18]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_LessThan4~13_combout\,
	dataf => \ALT_INV_inputA[19]~input_o\,
	combout => \LessThan4~14_combout\);

-- Location: LABCELL_X33_Y4_N27
\LessThan4~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~18_combout\ = ( \LessThan4~14_combout\ & ( !\inputB[17]~input_o\ $ (\inputA[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[17]~input_o\,
	datab => \ALT_INV_inputA[17]~input_o\,
	dataf => \ALT_INV_LessThan4~14_combout\,
	combout => \LessThan4~18_combout\);

-- Location: LABCELL_X33_Y4_N30
\LessThan4~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~19_combout\ = ( \inputB[21]~input_o\ & ( (!\inputA[21]~input_o\) # ((!\inputA[20]~input_o\ & \inputB[20]~input_o\)) ) ) # ( !\inputB[21]~input_o\ & ( (!\inputA[21]~input_o\ & (!\inputA[20]~input_o\ & \inputB[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[21]~input_o\,
	datab => \ALT_INV_inputA[20]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputB[21]~input_o\,
	combout => \LessThan4~19_combout\);

-- Location: LABCELL_X33_Y4_N18
\LessThan4~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~20_combout\ = ( \inputB[19]~input_o\ & ( !\LessThan4~19_combout\ & ( (!\LessThan4~13_combout\) # ((\inputA[19]~input_o\ & ((!\inputB[18]~input_o\) # (\inputA[18]~input_o\)))) ) ) ) # ( !\inputB[19]~input_o\ & ( !\LessThan4~19_combout\ & ( 
-- ((!\inputB[18]~input_o\) # ((!\LessThan4~13_combout\) # (\inputA[18]~input_o\))) # (\inputA[19]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111110100010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[19]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_inputA[18]~input_o\,
	datad => \ALT_INV_LessThan4~13_combout\,
	datae => \ALT_INV_inputB[19]~input_o\,
	dataf => \ALT_INV_LessThan4~19_combout\,
	combout => \LessThan4~20_combout\);

-- Location: LABCELL_X33_Y4_N24
\LessThan4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~21_combout\ = ( \LessThan4~14_combout\ & ( (\LessThan4~20_combout\ & ((!\inputB[17]~input_o\) # (\inputA[17]~input_o\))) ) ) # ( !\LessThan4~14_combout\ & ( \LessThan4~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[17]~input_o\,
	datab => \ALT_INV_inputA[17]~input_o\,
	datac => \ALT_INV_LessThan4~20_combout\,
	dataf => \ALT_INV_LessThan4~14_combout\,
	combout => \LessThan4~21_combout\);

-- Location: LABCELL_X33_Y4_N12
\LessThan4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~22_combout\ = ( \LessThan4~18_combout\ & ( \LessThan4~21_combout\ & ( (!\inputA[16]~input_o\ & (!\inputB[16]~input_o\ & ((!\inputB[15]~input_o\) # (\inputA[15]~input_o\)))) # (\inputA[16]~input_o\ & ((!\inputB[16]~input_o\) # 
-- ((!\inputB[15]~input_o\) # (\inputA[15]~input_o\)))) ) ) ) # ( !\LessThan4~18_combout\ & ( \LessThan4~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111101010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[16]~input_o\,
	datab => \ALT_INV_inputB[16]~input_o\,
	datac => \ALT_INV_inputB[15]~input_o\,
	datad => \ALT_INV_inputA[15]~input_o\,
	datae => \ALT_INV_LessThan4~18_combout\,
	dataf => \ALT_INV_LessThan4~21_combout\,
	combout => \LessThan4~22_combout\);

-- Location: LABCELL_X29_Y4_N12
\LessThan4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~29_combout\ = ( \inputB[29]~input_o\ & ( \inputA[31]~input_o\ & ( (\inputA[29]~input_o\ & (\inputB[31]~input_o\ & (!\inputA[30]~input_o\ $ (\inputB[30]~input_o\)))) ) ) ) # ( !\inputB[29]~input_o\ & ( \inputA[31]~input_o\ & ( 
-- (!\inputA[29]~input_o\ & (\inputB[31]~input_o\ & (!\inputA[30]~input_o\ $ (\inputB[30]~input_o\)))) ) ) ) # ( \inputB[29]~input_o\ & ( !\inputA[31]~input_o\ & ( (\inputA[29]~input_o\ & (!\inputB[31]~input_o\ & (!\inputA[30]~input_o\ $ 
-- (\inputB[30]~input_o\)))) ) ) ) # ( !\inputB[29]~input_o\ & ( !\inputA[31]~input_o\ & ( (!\inputA[29]~input_o\ & (!\inputB[31]~input_o\ & (!\inputA[30]~input_o\ $ (\inputB[30]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[30]~input_o\,
	datab => \ALT_INV_inputA[29]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputA[31]~input_o\,
	combout => \LessThan4~29_combout\);

-- Location: LABCELL_X29_Y4_N18
\LessThan4~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~30_combout\ = ( \inputB[29]~input_o\ & ( \inputA[31]~input_o\ & ( (\inputB[31]~input_o\ & ((!\inputA[30]~input_o\ & ((!\inputA[29]~input_o\) # (\inputB[30]~input_o\))) # (\inputA[30]~input_o\ & (!\inputA[29]~input_o\ & \inputB[30]~input_o\)))) 
-- ) ) ) # ( !\inputB[29]~input_o\ & ( \inputA[31]~input_o\ & ( (!\inputA[30]~input_o\ & (\inputB[31]~input_o\ & \inputB[30]~input_o\)) ) ) ) # ( \inputB[29]~input_o\ & ( !\inputA[31]~input_o\ & ( ((!\inputA[30]~input_o\ & ((!\inputA[29]~input_o\) # 
-- (\inputB[30]~input_o\))) # (\inputA[30]~input_o\ & (!\inputA[29]~input_o\ & \inputB[30]~input_o\))) # (\inputB[31]~input_o\) ) ) ) # ( !\inputB[29]~input_o\ & ( !\inputA[31]~input_o\ & ( ((!\inputA[30]~input_o\ & \inputB[30]~input_o\)) # 
-- (\inputB[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111100011111110111100000000000010100000100000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[30]~input_o\,
	datab => \ALT_INV_inputA[29]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputA[31]~input_o\,
	combout => \LessThan4~30_combout\);

-- Location: LABCELL_X37_Y3_N24
\LessThan4~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~23_combout\ = ( \inputB[27]~input_o\ & ( \inputA[28]~input_o\ & ( (\inputA[27]~input_o\ & (\inputB[28]~input_o\ & (!\inputB[26]~input_o\ $ (\inputA[26]~input_o\)))) ) ) ) # ( !\inputB[27]~input_o\ & ( \inputA[28]~input_o\ & ( 
-- (!\inputA[27]~input_o\ & (\inputB[28]~input_o\ & (!\inputB[26]~input_o\ $ (\inputA[26]~input_o\)))) ) ) ) # ( \inputB[27]~input_o\ & ( !\inputA[28]~input_o\ & ( (\inputA[27]~input_o\ & (!\inputB[28]~input_o\ & (!\inputB[26]~input_o\ $ 
-- (\inputA[26]~input_o\)))) ) ) ) # ( !\inputB[27]~input_o\ & ( !\inputA[28]~input_o\ & ( (!\inputA[27]~input_o\ & (!\inputB[28]~input_o\ & (!\inputB[26]~input_o\ $ (\inputA[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[27]~input_o\,
	datab => \ALT_INV_inputB[26]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	datad => \ALT_INV_inputA[26]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputA[28]~input_o\,
	combout => \LessThan4~23_combout\);

-- Location: LABCELL_X37_Y3_N18
\LessThan4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~26_combout\ = ( \inputB[27]~input_o\ & ( \inputA[28]~input_o\ & ( (\inputB[28]~input_o\ & ((!\inputA[27]~input_o\) # ((\inputB[26]~input_o\ & !\inputA[26]~input_o\)))) ) ) ) # ( !\inputB[27]~input_o\ & ( \inputA[28]~input_o\ & ( 
-- (!\inputA[27]~input_o\ & (\inputB[26]~input_o\ & (\inputB[28]~input_o\ & !\inputA[26]~input_o\))) ) ) ) # ( \inputB[27]~input_o\ & ( !\inputA[28]~input_o\ & ( (!\inputA[27]~input_o\) # (((\inputB[26]~input_o\ & !\inputA[26]~input_o\)) # 
-- (\inputB[28]~input_o\)) ) ) ) # ( !\inputB[27]~input_o\ & ( !\inputA[28]~input_o\ & ( ((!\inputA[27]~input_o\ & (\inputB[26]~input_o\ & !\inputA[26]~input_o\))) # (\inputB[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111101111111010111100000010000000000000101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[27]~input_o\,
	datab => \ALT_INV_inputB[26]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	datad => \ALT_INV_inputA[26]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputA[28]~input_o\,
	combout => \LessThan4~26_combout\);

-- Location: LABCELL_X35_Y4_N24
\LessThan4~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~27_combout\ = ( \inputB[25]~input_o\ & ( \inputA[25]~input_o\ & ( (!\LessThan4~26_combout\ & ((!\inputB[24]~input_o\) # ((!\LessThan4~23_combout\) # (\inputA[24]~input_o\)))) ) ) ) # ( !\inputB[25]~input_o\ & ( \inputA[25]~input_o\ & ( 
-- !\LessThan4~26_combout\ ) ) ) # ( \inputB[25]~input_o\ & ( !\inputA[25]~input_o\ & ( (!\LessThan4~23_combout\ & !\LessThan4~26_combout\) ) ) ) # ( !\inputB[25]~input_o\ & ( !\inputA[25]~input_o\ & ( (!\LessThan4~26_combout\ & ((!\inputB[24]~input_o\) # 
-- ((!\LessThan4~23_combout\) # (\inputA[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011110000110000001100000011110000111100001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[24]~input_o\,
	datab => \ALT_INV_LessThan4~23_combout\,
	datac => \ALT_INV_LessThan4~26_combout\,
	datad => \ALT_INV_inputA[24]~input_o\,
	datae => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputA[25]~input_o\,
	combout => \LessThan4~27_combout\);

-- Location: LABCELL_X35_Y4_N54
\LessThan4~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~24_combout\ = ( \inputA[24]~input_o\ & ( (\inputB[24]~input_o\ & (\LessThan4~23_combout\ & (!\inputA[25]~input_o\ $ (\inputB[25]~input_o\)))) ) ) # ( !\inputA[24]~input_o\ & ( (!\inputB[24]~input_o\ & (\LessThan4~23_combout\ & 
-- (!\inputA[25]~input_o\ $ (\inputB[25]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[25]~input_o\,
	datab => \ALT_INV_inputB[25]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_LessThan4~23_combout\,
	dataf => \ALT_INV_inputA[24]~input_o\,
	combout => \LessThan4~24_combout\);

-- Location: LABCELL_X35_Y4_N30
\LessThan4~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~28_combout\ = ( \LessThan4~24_combout\ & ( \inputB[22]~input_o\ & ( (\LessThan4~27_combout\ & ((!\inputB[23]~input_o\ & ((\inputA[23]~input_o\) # (\inputA[22]~input_o\))) # (\inputB[23]~input_o\ & (\inputA[22]~input_o\ & 
-- \inputA[23]~input_o\)))) ) ) ) # ( !\LessThan4~24_combout\ & ( \inputB[22]~input_o\ & ( \LessThan4~27_combout\ ) ) ) # ( \LessThan4~24_combout\ & ( !\inputB[22]~input_o\ & ( (\LessThan4~27_combout\ & ((!\inputB[23]~input_o\) # (\inputA[23]~input_o\))) ) ) 
-- ) # ( !\LessThan4~24_combout\ & ( !\inputB[22]~input_o\ & ( \LessThan4~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100000111100001111000011110000001000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_inputA[22]~input_o\,
	datac => \ALT_INV_LessThan4~27_combout\,
	datad => \ALT_INV_inputA[23]~input_o\,
	datae => \ALT_INV_LessThan4~24_combout\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \LessThan4~28_combout\);

-- Location: LABCELL_X35_Y4_N36
\LessThan4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~25_combout\ = ( \inputA[22]~input_o\ & ( (\inputB[22]~input_o\ & (\LessThan4~24_combout\ & (!\inputB[23]~input_o\ $ (\inputA[23]~input_o\)))) ) ) # ( !\inputA[22]~input_o\ & ( (!\inputB[22]~input_o\ & (\LessThan4~24_combout\ & 
-- (!\inputB[23]~input_o\ $ (\inputA[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010000000000001001000000000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_inputA[23]~input_o\,
	datac => \ALT_INV_inputB[22]~input_o\,
	datad => \ALT_INV_LessThan4~24_combout\,
	dataf => \ALT_INV_inputA[22]~input_o\,
	combout => \LessThan4~25_combout\);

-- Location: MLABCELL_X25_Y2_N54
\LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~3_combout\ = ( \inputA[7]~input_o\ & ( \inputA[6]~input_o\ & ( (\inputB[6]~input_o\ & (!\inputA[5]~input_o\ & (\inputB[7]~input_o\ & \inputB[5]~input_o\))) ) ) ) # ( !\inputA[7]~input_o\ & ( \inputA[6]~input_o\ & ( ((\inputB[6]~input_o\ & 
-- (!\inputA[5]~input_o\ & \inputB[5]~input_o\))) # (\inputB[7]~input_o\) ) ) ) # ( \inputA[7]~input_o\ & ( !\inputA[6]~input_o\ & ( (\inputB[7]~input_o\ & (((!\inputA[5]~input_o\ & \inputB[5]~input_o\)) # (\inputB[6]~input_o\))) ) ) ) # ( 
-- !\inputA[7]~input_o\ & ( !\inputA[6]~input_o\ & ( (((!\inputA[5]~input_o\ & \inputB[5]~input_o\)) # (\inputB[7]~input_o\)) # (\inputB[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111011111000001010000110100001111010011110000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputA[5]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputA[7]~input_o\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	combout => \LessThan4~3_combout\);

-- Location: LABCELL_X24_Y3_N9
\LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = ( \inputA[0]~input_o\ & ( (!\inputA[1]~input_o\ & \inputB[1]~input_o\) ) ) # ( !\inputA[0]~input_o\ & ( (!\inputA[1]~input_o\ & ((\inputB[0]~input_o\) # (\inputB[1]~input_o\))) # (\inputA[1]~input_o\ & (\inputB[1]~input_o\ & 
-- \inputB[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[1]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_inputA[0]~input_o\,
	combout => \LessThan4~1_combout\);

-- Location: MLABCELL_X25_Y1_N0
\LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = ( \inputA[3]~input_o\ & ( (\inputB[3]~input_o\ & ((!\inputB[2]~input_o\ & (!\inputA[2]~input_o\ & \LessThan4~1_combout\)) # (\inputB[2]~input_o\ & ((!\inputA[2]~input_o\) # (\LessThan4~1_combout\))))) ) ) # ( !\inputA[3]~input_o\ & 
-- ( ((!\inputB[2]~input_o\ & (!\inputA[2]~input_o\ & \LessThan4~1_combout\)) # (\inputB[2]~input_o\ & ((!\inputA[2]~input_o\) # (\LessThan4~1_combout\)))) # (\inputB[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111111111010011011111111100000000010011010000000001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_LessThan4~1_combout\,
	datad => \ALT_INV_inputB[3]~input_o\,
	dataf => \ALT_INV_inputA[3]~input_o\,
	combout => \LessThan4~2_combout\);

-- Location: MLABCELL_X25_Y2_N48
\LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ( \inputA[7]~input_o\ & ( \inputA[6]~input_o\ & ( (\inputB[6]~input_o\ & (\inputB[7]~input_o\ & (!\inputA[5]~input_o\ $ (\inputB[5]~input_o\)))) ) ) ) # ( !\inputA[7]~input_o\ & ( \inputA[6]~input_o\ & ( (\inputB[6]~input_o\ & 
-- (!\inputB[7]~input_o\ & (!\inputA[5]~input_o\ $ (\inputB[5]~input_o\)))) ) ) ) # ( \inputA[7]~input_o\ & ( !\inputA[6]~input_o\ & ( (!\inputB[6]~input_o\ & (\inputB[7]~input_o\ & (!\inputA[5]~input_o\ $ (\inputB[5]~input_o\)))) ) ) ) # ( 
-- !\inputA[7]~input_o\ & ( !\inputA[6]~input_o\ & ( (!\inputB[6]~input_o\ & (!\inputB[7]~input_o\ & (!\inputA[5]~input_o\ $ (\inputB[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputA[5]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputA[7]~input_o\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	combout => \LessThan4~0_combout\);

-- Location: LABCELL_X24_Y2_N30
\LessThan4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~4_combout\ = ( \inputB[4]~input_o\ & ( (!\LessThan4~3_combout\ & ((!\LessThan4~0_combout\) # ((\inputA[4]~input_o\ & !\LessThan4~2_combout\)))) ) ) # ( !\inputB[4]~input_o\ & ( (!\LessThan4~3_combout\ & (((!\LessThan4~2_combout\) # 
-- (!\LessThan4~0_combout\)) # (\inputA[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100010101010101010001010101010001000001010101000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~3_combout\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_LessThan4~2_combout\,
	datad => \ALT_INV_LessThan4~0_combout\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	combout => \LessThan4~4_combout\);

-- Location: LABCELL_X35_Y2_N21
\LessThan4~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~15_combout\ = ( \inputA[15]~input_o\ & ( !\inputB[15]~input_o\ ) ) # ( !\inputA[15]~input_o\ & ( \inputB[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputA[15]~input_o\,
	combout => \LessThan4~15_combout\);

-- Location: LABCELL_X33_Y4_N6
\LessThan4~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~16_combout\ = ( \inputB[16]~input_o\ & ( \LessThan4~14_combout\ & ( (\inputA[16]~input_o\ & (!\LessThan4~15_combout\ & (!\inputB[17]~input_o\ $ (\inputA[17]~input_o\)))) ) ) ) # ( !\inputB[16]~input_o\ & ( \LessThan4~14_combout\ & ( 
-- (!\inputA[16]~input_o\ & (!\LessThan4~15_combout\ & (!\inputB[17]~input_o\ $ (\inputA[17]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010010000000000000000100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[17]~input_o\,
	datab => \ALT_INV_inputA[17]~input_o\,
	datac => \ALT_INV_inputA[16]~input_o\,
	datad => \ALT_INV_LessThan4~15_combout\,
	datae => \ALT_INV_inputB[16]~input_o\,
	dataf => \ALT_INV_LessThan4~14_combout\,
	combout => \LessThan4~16_combout\);

-- Location: LABCELL_X22_Y4_N54
\LessThan4~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~10_combout\ = ( \inputB[14]~input_o\ & ( \inputA[14]~input_o\ & ( (!\inputB[13]~input_o\ & (\inputB[12]~input_o\ & (!\inputA[12]~input_o\ & !\inputA[13]~input_o\))) # (\inputB[13]~input_o\ & ((!\inputA[13]~input_o\) # ((\inputB[12]~input_o\ & 
-- !\inputA[12]~input_o\)))) ) ) ) # ( \inputB[14]~input_o\ & ( !\inputA[14]~input_o\ ) ) # ( !\inputB[14]~input_o\ & ( !\inputA[14]~input_o\ & ( (!\inputB[13]~input_o\ & (\inputB[12]~input_o\ & (!\inputA[12]~input_o\ & !\inputA[13]~input_o\))) # 
-- (\inputB[13]~input_o\ & ((!\inputA[13]~input_o\) # ((\inputB[12]~input_o\ & !\inputA[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100000100111111111111111100000000000000000100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[12]~input_o\,
	datab => \ALT_INV_inputA[12]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputA[13]~input_o\,
	datae => \ALT_INV_inputB[14]~input_o\,
	dataf => \ALT_INV_inputA[14]~input_o\,
	combout => \LessThan4~10_combout\);

-- Location: LABCELL_X22_Y4_N36
\LessThan4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~5_combout\ = ( \inputB[14]~input_o\ & ( (\inputA[14]~input_o\ & (!\inputB[13]~input_o\ $ (\inputA[13]~input_o\))) ) ) # ( !\inputB[14]~input_o\ & ( (!\inputA[14]~input_o\ & (!\inputB[13]~input_o\ $ (\inputA[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[14]~input_o\,
	datac => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputA[13]~input_o\,
	dataf => \ALT_INV_inputB[14]~input_o\,
	combout => \LessThan4~5_combout\);

-- Location: LABCELL_X24_Y2_N39
\LessThan4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~9_combout\ = ( \inputB[12]~input_o\ & ( (\LessThan4~5_combout\ & \inputA[12]~input_o\) ) ) # ( !\inputB[12]~input_o\ & ( (\LessThan4~5_combout\ & !\inputA[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan4~5_combout\,
	datad => \ALT_INV_inputA[12]~input_o\,
	dataf => \ALT_INV_inputB[12]~input_o\,
	combout => \LessThan4~9_combout\);

-- Location: LABCELL_X24_Y2_N54
\LessThan4~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~11_combout\ = ( \inputA[10]~input_o\ & ( \inputB[11]~input_o\ & ( (!\LessThan4~10_combout\ & ((!\LessThan4~9_combout\) # (\inputA[11]~input_o\))) ) ) ) # ( !\inputA[10]~input_o\ & ( \inputB[11]~input_o\ & ( (!\LessThan4~10_combout\ & 
-- ((!\LessThan4~9_combout\) # ((\inputA[11]~input_o\ & !\inputB[10]~input_o\)))) ) ) ) # ( \inputA[10]~input_o\ & ( !\inputB[11]~input_o\ & ( !\LessThan4~10_combout\ ) ) ) # ( !\inputA[10]~input_o\ & ( !\inputB[11]~input_o\ & ( (!\LessThan4~10_combout\ & 
-- (((!\inputB[10]~input_o\) # (!\LessThan4~9_combout\)) # (\inputA[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000100110011001100110011001100010000001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[11]~input_o\,
	datab => \ALT_INV_LessThan4~10_combout\,
	datac => \ALT_INV_inputB[10]~input_o\,
	datad => \ALT_INV_LessThan4~9_combout\,
	datae => \ALT_INV_inputA[10]~input_o\,
	dataf => \ALT_INV_inputB[11]~input_o\,
	combout => \LessThan4~11_combout\);

-- Location: LABCELL_X24_Y2_N15
\LessThan4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~6_combout\ = !\inputA[10]~input_o\ $ (!\inputB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[10]~input_o\,
	datad => \ALT_INV_inputB[10]~input_o\,
	combout => \LessThan4~6_combout\);

-- Location: LABCELL_X24_Y2_N6
\LessThan4~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~7_combout\ = ( \inputA[12]~input_o\ & ( \inputB[12]~input_o\ & ( (\LessThan4~5_combout\ & (!\LessThan4~6_combout\ & (!\inputB[11]~input_o\ $ (\inputA[11]~input_o\)))) ) ) ) # ( !\inputA[12]~input_o\ & ( !\inputB[12]~input_o\ & ( 
-- (\LessThan4~5_combout\ & (!\LessThan4~6_combout\ & (!\inputB[11]~input_o\ $ (\inputA[11]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000000000000000000000000000000000000010000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datab => \ALT_INV_LessThan4~5_combout\,
	datac => \ALT_INV_inputA[11]~input_o\,
	datad => \ALT_INV_LessThan4~6_combout\,
	datae => \ALT_INV_inputA[12]~input_o\,
	dataf => \ALT_INV_inputB[12]~input_o\,
	combout => \LessThan4~7_combout\);

-- Location: LABCELL_X24_Y2_N3
\LessThan4~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~12_combout\ = ( \LessThan4~7_combout\ & ( (!\inputB[9]~input_o\ & (!\inputA[9]~input_o\ & (!\inputA[8]~input_o\ & \inputB[8]~input_o\))) # (\inputB[9]~input_o\ & ((!\inputA[9]~input_o\) # ((!\inputA[8]~input_o\ & \inputB[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100110101000100010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[9]~input_o\,
	datab => \ALT_INV_inputA[9]~input_o\,
	datac => \ALT_INV_inputA[8]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_LessThan4~7_combout\,
	combout => \LessThan4~12_combout\);

-- Location: LABCELL_X24_Y2_N51
\LessThan4~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~8_combout\ = ( \LessThan4~7_combout\ & ( (!\inputA[9]~input_o\ & (!\inputB[9]~input_o\ & (!\inputA[8]~input_o\ $ (\inputB[8]~input_o\)))) # (\inputA[9]~input_o\ & (\inputB[9]~input_o\ & (!\inputA[8]~input_o\ $ (\inputB[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[9]~input_o\,
	datab => \ALT_INV_inputA[8]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	dataf => \ALT_INV_LessThan4~7_combout\,
	combout => \LessThan4~8_combout\);

-- Location: LABCELL_X24_Y2_N36
\LessThan4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~17_combout\ = ( \LessThan4~8_combout\ & ( (\LessThan4~16_combout\ & ((!\LessThan4~4_combout\) # ((!\LessThan4~11_combout\) # (\LessThan4~12_combout\)))) ) ) # ( !\LessThan4~8_combout\ & ( (\LessThan4~16_combout\ & ((!\LessThan4~11_combout\) # 
-- (\LessThan4~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100110010001100110011001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~4_combout\,
	datab => \ALT_INV_LessThan4~16_combout\,
	datac => \ALT_INV_LessThan4~11_combout\,
	datad => \ALT_INV_LessThan4~12_combout\,
	dataf => \ALT_INV_LessThan4~8_combout\,
	combout => \LessThan4~17_combout\);

-- Location: MLABCELL_X34_Y4_N57
\LessThan4~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan4~31_combout\ = ( \LessThan4~25_combout\ & ( \LessThan4~17_combout\ & ( (!\LessThan4~29_combout\ & !\LessThan4~30_combout\) ) ) ) # ( !\LessThan4~25_combout\ & ( \LessThan4~17_combout\ & ( (!\LessThan4~30_combout\ & ((!\LessThan4~29_combout\) # 
-- (\LessThan4~28_combout\))) ) ) ) # ( \LessThan4~25_combout\ & ( !\LessThan4~17_combout\ & ( (!\LessThan4~30_combout\ & ((!\LessThan4~29_combout\) # ((\LessThan4~22_combout\ & \LessThan4~28_combout\)))) ) ) ) # ( !\LessThan4~25_combout\ & ( 
-- !\LessThan4~17_combout\ & ( (!\LessThan4~30_combout\ & ((!\LessThan4~29_combout\) # (\LessThan4~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001101000011000000111100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan4~22_combout\,
	datab => \ALT_INV_LessThan4~29_combout\,
	datac => \ALT_INV_LessThan4~30_combout\,
	datad => \ALT_INV_LessThan4~28_combout\,
	datae => \ALT_INV_LessThan4~25_combout\,
	dataf => \ALT_INV_LessThan4~17_combout\,
	combout => \LessThan4~31_combout\);

-- Location: LABCELL_X27_Y3_N0
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( !\inputA[0]~input_o\ $ (!\inputB[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~122\ = CARRY(( !\inputA[0]~input_o\ $ (!\inputB[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add1~123\ = SHARE((!\inputB[0]~input_o\) # (\inputA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\,
	shareout => \Add1~123\);

-- Location: LABCELL_X27_Y3_N3
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( !\inputB[1]~input_o\ $ (\inputA[1]~input_o\) ) + ( \Add1~123\ ) + ( \Add1~122\ ))
-- \Add1~126\ = CARRY(( !\inputB[1]~input_o\ $ (\inputA[1]~input_o\) ) + ( \Add1~123\ ) + ( \Add1~122\ ))
-- \Add1~127\ = SHARE((!\inputB[1]~input_o\ & \inputA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_inputA[1]~input_o\,
	cin => \Add1~122\,
	sharein => \Add1~123\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\,
	shareout => \Add1~127\);

-- Location: LABCELL_X27_Y3_N6
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( !\inputA[2]~input_o\ $ (\inputB[2]~input_o\) ) + ( \Add1~127\ ) + ( \Add1~126\ ))
-- \Add1~102\ = CARRY(( !\inputA[2]~input_o\ $ (\inputB[2]~input_o\) ) + ( \Add1~127\ ) + ( \Add1~126\ ))
-- \Add1~103\ = SHARE((\inputA[2]~input_o\ & !\inputB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	cin => \Add1~126\,
	sharein => \Add1~127\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\,
	shareout => \Add1~103\);

-- Location: LABCELL_X27_Y3_N9
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( !\inputA[3]~input_o\ $ (\inputB[3]~input_o\) ) + ( \Add1~103\ ) + ( \Add1~102\ ))
-- \Add1~106\ = CARRY(( !\inputA[3]~input_o\ $ (\inputB[3]~input_o\) ) + ( \Add1~103\ ) + ( \Add1~102\ ))
-- \Add1~107\ = SHARE((\inputA[3]~input_o\ & !\inputB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	cin => \Add1~102\,
	sharein => \Add1~103\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\,
	shareout => \Add1~107\);

-- Location: LABCELL_X27_Y3_N12
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( !\inputB[4]~input_o\ $ (\inputA[4]~input_o\) ) + ( \Add1~107\ ) + ( \Add1~106\ ))
-- \Add1~110\ = CARRY(( !\inputB[4]~input_o\ $ (\inputA[4]~input_o\) ) + ( \Add1~107\ ) + ( \Add1~106\ ))
-- \Add1~111\ = SHARE((!\inputB[4]~input_o\ & \inputA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	cin => \Add1~106\,
	sharein => \Add1~107\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\,
	shareout => \Add1~111\);

-- Location: LABCELL_X27_Y3_N15
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\inputA[5]~input_o\ $ (\inputB[5]~input_o\) ) + ( \Add1~111\ ) + ( \Add1~110\ ))
-- \Add1~42\ = CARRY(( !\inputA[5]~input_o\ $ (\inputB[5]~input_o\) ) + ( \Add1~111\ ) + ( \Add1~110\ ))
-- \Add1~43\ = SHARE((\inputA[5]~input_o\ & !\inputB[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[5]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	cin => \Add1~110\,
	sharein => \Add1~111\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\,
	shareout => \Add1~43\);

-- Location: LABCELL_X27_Y3_N18
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\inputB[6]~input_o\ $ (\inputA[6]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\inputB[6]~input_o\ $ (\inputA[6]~input_o\) ) + ( \Add1~43\ ) + ( \Add1~42\ ))
-- \Add1~47\ = SHARE((!\inputB[6]~input_o\ & \inputA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_inputA[6]~input_o\,
	cin => \Add1~42\,
	sharein => \Add1~43\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\,
	shareout => \Add1~47\);

-- Location: LABCELL_X27_Y3_N21
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !\inputA[7]~input_o\ $ (\inputB[7]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !\inputA[7]~input_o\ $ (\inputB[7]~input_o\) ) + ( \Add1~47\ ) + ( \Add1~46\ ))
-- \Add1~51\ = SHARE((\inputA[7]~input_o\ & !\inputB[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[7]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	cin => \Add1~46\,
	sharein => \Add1~47\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\,
	shareout => \Add1~51\);

-- Location: LABCELL_X27_Y3_N24
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !\inputA[8]~input_o\ $ (\inputB[8]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !\inputA[8]~input_o\ $ (\inputB[8]~input_o\) ) + ( \Add1~51\ ) + ( \Add1~50\ ))
-- \Add1~55\ = SHARE((\inputA[8]~input_o\ & !\inputB[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[8]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	cin => \Add1~50\,
	sharein => \Add1~51\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\,
	shareout => \Add1~55\);

-- Location: LABCELL_X27_Y3_N27
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !\inputA[9]~input_o\ $ (\inputB[9]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( !\inputA[9]~input_o\ $ (\inputB[9]~input_o\) ) + ( \Add1~55\ ) + ( \Add1~54\ ))
-- \Add1~59\ = SHARE((\inputA[9]~input_o\ & !\inputB[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[9]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	cin => \Add1~54\,
	sharein => \Add1~55\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\,
	shareout => \Add1~59\);

-- Location: LABCELL_X27_Y3_N30
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( !\inputA[10]~input_o\ $ (\inputB[10]~input_o\) ) + ( \Add1~59\ ) + ( \Add1~58\ ))
-- \Add1~114\ = CARRY(( !\inputA[10]~input_o\ $ (\inputB[10]~input_o\) ) + ( \Add1~59\ ) + ( \Add1~58\ ))
-- \Add1~115\ = SHARE((\inputA[10]~input_o\ & !\inputB[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[10]~input_o\,
	datad => \ALT_INV_inputB[10]~input_o\,
	cin => \Add1~58\,
	sharein => \Add1~59\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\,
	shareout => \Add1~115\);

-- Location: LABCELL_X27_Y3_N33
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( !\inputA[11]~input_o\ $ (\inputB[11]~input_o\) ) + ( \Add1~115\ ) + ( \Add1~114\ ))
-- \Add1~118\ = CARRY(( !\inputA[11]~input_o\ $ (\inputB[11]~input_o\) ) + ( \Add1~115\ ) + ( \Add1~114\ ))
-- \Add1~119\ = SHARE((\inputA[11]~input_o\ & !\inputB[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[11]~input_o\,
	datad => \ALT_INV_inputB[11]~input_o\,
	cin => \Add1~114\,
	sharein => \Add1~115\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\,
	shareout => \Add1~119\);

-- Location: LABCELL_X27_Y3_N36
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( !\inputB[12]~input_o\ $ (\inputA[12]~input_o\) ) + ( \Add1~119\ ) + ( \Add1~118\ ))
-- \Add1~82\ = CARRY(( !\inputB[12]~input_o\ $ (\inputA[12]~input_o\) ) + ( \Add1~119\ ) + ( \Add1~118\ ))
-- \Add1~83\ = SHARE((!\inputB[12]~input_o\ & \inputA[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[12]~input_o\,
	datad => \ALT_INV_inputA[12]~input_o\,
	cin => \Add1~118\,
	sharein => \Add1~119\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\,
	shareout => \Add1~83\);

-- Location: LABCELL_X27_Y3_N39
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( !\inputB[13]~input_o\ $ (\inputA[13]~input_o\) ) + ( \Add1~83\ ) + ( \Add1~82\ ))
-- \Add1~86\ = CARRY(( !\inputB[13]~input_o\ $ (\inputA[13]~input_o\) ) + ( \Add1~83\ ) + ( \Add1~82\ ))
-- \Add1~87\ = SHARE((!\inputB[13]~input_o\ & \inputA[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[13]~input_o\,
	datad => \ALT_INV_inputA[13]~input_o\,
	cin => \Add1~82\,
	sharein => \Add1~83\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\,
	shareout => \Add1~87\);

-- Location: LABCELL_X27_Y3_N42
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\inputB[14]~input_o\ $ (\inputA[14]~input_o\) ) + ( \Add1~87\ ) + ( \Add1~86\ ))
-- \Add1~22\ = CARRY(( !\inputB[14]~input_o\ $ (\inputA[14]~input_o\) ) + ( \Add1~87\ ) + ( \Add1~86\ ))
-- \Add1~23\ = SHARE((!\inputB[14]~input_o\ & \inputA[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[14]~input_o\,
	datad => \ALT_INV_inputA[14]~input_o\,
	cin => \Add1~86\,
	sharein => \Add1~87\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\,
	shareout => \Add1~23\);

-- Location: LABCELL_X27_Y3_N45
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( !\inputB[15]~input_o\ $ (\inputA[15]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~90\ = CARRY(( !\inputB[15]~input_o\ $ (\inputA[15]~input_o\) ) + ( \Add1~23\ ) + ( \Add1~22\ ))
-- \Add1~91\ = SHARE((!\inputB[15]~input_o\ & \inputA[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[15]~input_o\,
	datad => \ALT_INV_inputA[15]~input_o\,
	cin => \Add1~22\,
	sharein => \Add1~23\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\,
	shareout => \Add1~91\);

-- Location: LABCELL_X27_Y3_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\inputB[16]~input_o\ $ (\inputA[16]~input_o\) ) + ( \Add1~91\ ) + ( \Add1~90\ ))
-- \Add1~26\ = CARRY(( !\inputB[16]~input_o\ $ (\inputA[16]~input_o\) ) + ( \Add1~91\ ) + ( \Add1~90\ ))
-- \Add1~27\ = SHARE((!\inputB[16]~input_o\ & \inputA[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[16]~input_o\,
	datac => \ALT_INV_inputA[16]~input_o\,
	cin => \Add1~90\,
	sharein => \Add1~91\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\,
	shareout => \Add1~27\);

-- Location: LABCELL_X27_Y3_N51
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\inputA[17]~input_o\ $ (\inputB[17]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\inputA[17]~input_o\ $ (\inputB[17]~input_o\) ) + ( \Add1~27\ ) + ( \Add1~26\ ))
-- \Add1~31\ = SHARE((\inputA[17]~input_o\ & !\inputB[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[17]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	cin => \Add1~26\,
	sharein => \Add1~27\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\,
	shareout => \Add1~31\);

-- Location: LABCELL_X27_Y3_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\inputA[18]~input_o\ $ (\inputB[18]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\inputA[18]~input_o\ $ (\inputB[18]~input_o\) ) + ( \Add1~31\ ) + ( \Add1~30\ ))
-- \Add1~35\ = SHARE((\inputA[18]~input_o\ & !\inputB[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[18]~input_o\,
	datac => \ALT_INV_inputB[18]~input_o\,
	cin => \Add1~30\,
	sharein => \Add1~31\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\,
	shareout => \Add1~35\);

-- Location: MLABCELL_X25_Y5_N30
\Mux0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~40_combout\ = ( !\Add1~53_sumout\ & ( (!\Add1~41_sumout\ & (!\Add1~45_sumout\ & (!\Add1~49_sumout\ & !\Add1~57_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~41_sumout\,
	datab => \ALT_INV_Add1~45_sumout\,
	datac => \ALT_INV_Add1~49_sumout\,
	datad => \ALT_INV_Add1~57_sumout\,
	dataf => \ALT_INV_Add1~53_sumout\,
	combout => \Mux0~40_combout\);

-- Location: LABCELL_X27_Y3_N57
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\inputA[19]~input_o\ $ (\inputB[19]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\inputA[19]~input_o\ $ (\inputB[19]~input_o\) ) + ( \Add1~35\ ) + ( \Add1~34\ ))
-- \Add1~39\ = SHARE((\inputA[19]~input_o\ & !\inputB[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[19]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	cin => \Add1~34\,
	sharein => \Add1~35\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\,
	shareout => \Add1~39\);

-- Location: LABCELL_X27_Y4_N54
\Mux0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~41_combout\ = ( !\Add1~37_sumout\ & ( !\Add1~21_sumout\ & ( (!\Add1~33_sumout\ & (\Mux0~40_combout\ & (!\Add1~29_sumout\ & !\Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~33_sumout\,
	datab => \ALT_INV_Mux0~40_combout\,
	datac => \ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_Add1~25_sumout\,
	datae => \ALT_INV_Add1~37_sumout\,
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \Mux0~41_combout\);

-- Location: LABCELL_X27_Y2_N0
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( !\inputA[20]~input_o\ $ (\inputB[20]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~94\ = CARRY(( !\inputA[20]~input_o\ $ (\inputB[20]~input_o\) ) + ( \Add1~39\ ) + ( \Add1~38\ ))
-- \Add1~95\ = SHARE((\inputA[20]~input_o\ & !\inputB[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[20]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	cin => \Add1~38\,
	sharein => \Add1~39\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\,
	shareout => \Add1~95\);

-- Location: LABCELL_X27_Y2_N3
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( !\inputB[21]~input_o\ $ (\inputA[21]~input_o\) ) + ( \Add1~95\ ) + ( \Add1~94\ ))
-- \Add1~98\ = CARRY(( !\inputB[21]~input_o\ $ (\inputA[21]~input_o\) ) + ( \Add1~95\ ) + ( \Add1~94\ ))
-- \Add1~99\ = SHARE((!\inputB[21]~input_o\ & \inputA[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datac => \ALT_INV_inputA[21]~input_o\,
	cin => \Add1~94\,
	sharein => \Add1~95\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\,
	shareout => \Add1~99\);

-- Location: LABCELL_X27_Y2_N6
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( !\inputA[22]~input_o\ $ (\inputB[22]~input_o\) ) + ( \Add1~99\ ) + ( \Add1~98\ ))
-- \Add1~62\ = CARRY(( !\inputA[22]~input_o\ $ (\inputB[22]~input_o\) ) + ( \Add1~99\ ) + ( \Add1~98\ ))
-- \Add1~63\ = SHARE((\inputA[22]~input_o\ & !\inputB[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[22]~input_o\,
	datac => \ALT_INV_inputB[22]~input_o\,
	cin => \Add1~98\,
	sharein => \Add1~99\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\,
	shareout => \Add1~63\);

-- Location: LABCELL_X27_Y2_N9
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( !\inputB[23]~input_o\ $ (\inputA[23]~input_o\) ) + ( \Add1~63\ ) + ( \Add1~62\ ))
-- \Add1~66\ = CARRY(( !\inputB[23]~input_o\ $ (\inputA[23]~input_o\) ) + ( \Add1~63\ ) + ( \Add1~62\ ))
-- \Add1~67\ = SHARE((!\inputB[23]~input_o\ & \inputA[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[23]~input_o\,
	datad => \ALT_INV_inputA[23]~input_o\,
	cin => \Add1~62\,
	sharein => \Add1~63\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\,
	shareout => \Add1~67\);

-- Location: LABCELL_X27_Y2_N12
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\inputA[24]~input_o\ $ (\inputB[24]~input_o\) ) + ( \Add1~67\ ) + ( \Add1~66\ ))
-- \Add1~2\ = CARRY(( !\inputA[24]~input_o\ $ (\inputB[24]~input_o\) ) + ( \Add1~67\ ) + ( \Add1~66\ ))
-- \Add1~3\ = SHARE((\inputA[24]~input_o\ & !\inputB[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[24]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	cin => \Add1~66\,
	sharein => \Add1~67\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\,
	shareout => \Add1~3\);

-- Location: LABCELL_X27_Y2_N15
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( !\inputB[25]~input_o\ $ (\inputA[25]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~70\ = CARRY(( !\inputB[25]~input_o\ $ (\inputA[25]~input_o\) ) + ( \Add1~3\ ) + ( \Add1~2\ ))
-- \Add1~71\ = SHARE((!\inputB[25]~input_o\ & \inputA[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[25]~input_o\,
	datac => \ALT_INV_inputA[25]~input_o\,
	cin => \Add1~2\,
	sharein => \Add1~3\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\,
	shareout => \Add1~71\);

-- Location: LABCELL_X27_Y2_N18
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\inputA[26]~input_o\ $ (\inputB[26]~input_o\) ) + ( \Add1~71\ ) + ( \Add1~70\ ))
-- \Add1~6\ = CARRY(( !\inputA[26]~input_o\ $ (\inputB[26]~input_o\) ) + ( \Add1~71\ ) + ( \Add1~70\ ))
-- \Add1~7\ = SHARE((\inputA[26]~input_o\ & !\inputB[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[26]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	cin => \Add1~70\,
	sharein => \Add1~71\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\,
	shareout => \Add1~7\);

-- Location: LABCELL_X27_Y2_N21
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\inputA[27]~input_o\ $ (\inputB[27]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\inputA[27]~input_o\ $ (\inputB[27]~input_o\) ) + ( \Add1~7\ ) + ( \Add1~6\ ))
-- \Add1~11\ = SHARE((\inputA[27]~input_o\ & !\inputB[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[27]~input_o\,
	datac => \ALT_INV_inputB[27]~input_o\,
	cin => \Add1~6\,
	sharein => \Add1~7\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\,
	shareout => \Add1~11\);

-- Location: LABCELL_X27_Y2_N24
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\inputB[28]~input_o\ $ (\inputA[28]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\inputB[28]~input_o\ $ (\inputA[28]~input_o\) ) + ( \Add1~11\ ) + ( \Add1~10\ ))
-- \Add1~15\ = SHARE((!\inputB[28]~input_o\ & \inputA[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[28]~input_o\,
	datad => \ALT_INV_inputA[28]~input_o\,
	cin => \Add1~10\,
	sharein => \Add1~11\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\,
	shareout => \Add1~15\);

-- Location: LABCELL_X27_Y2_N27
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\inputA[29]~input_o\ $ (\inputB[29]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\inputA[29]~input_o\ $ (\inputB[29]~input_o\) ) + ( \Add1~15\ ) + ( \Add1~14\ ))
-- \Add1~19\ = SHARE((\inputA[29]~input_o\ & !\inputB[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[29]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	cin => \Add1~14\,
	sharein => \Add1~15\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\,
	shareout => \Add1~19\);

-- Location: LABCELL_X30_Y4_N42
\Mux0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~42_combout\ = ( !\Add1~13_sumout\ & ( !\Add1~5_sumout\ & ( (\Mux0~41_combout\ & (!\Add1~1_sumout\ & (!\Add1~17_sumout\ & !\Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~41_combout\,
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_Add1~9_sumout\,
	datae => \ALT_INV_Add1~13_sumout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \Mux0~42_combout\);

-- Location: LABCELL_X27_Y2_N30
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( !\inputB[30]~input_o\ $ (\inputA[30]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~74\ = CARRY(( !\inputB[30]~input_o\ $ (\inputA[30]~input_o\) ) + ( \Add1~19\ ) + ( \Add1~18\ ))
-- \Add1~75\ = SHARE((!\inputB[30]~input_o\ & \inputA[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[30]~input_o\,
	datac => \ALT_INV_inputA[30]~input_o\,
	cin => \Add1~18\,
	sharein => \Add1~19\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\,
	shareout => \Add1~75\);

-- Location: LABCELL_X27_Y2_N33
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( !\inputB[31]~input_o\ $ (\inputA[31]~input_o\) ) + ( \Add1~75\ ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputA[31]~input_o\,
	cin => \Add1~74\,
	sharein => \Add1~75\,
	sumout => \Add1~77_sumout\);

-- Location: LABCELL_X27_Y2_N36
\Mux0~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~43_combout\ = ( !\Add1~125_sumout\ & ( !\ALUControl[0]~input_o\ & ( (\ALUControl[1]~input_o\ & !\Add1~121_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_Add1~121_sumout\,
	datae => \ALT_INV_Add1~125_sumout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux0~43_combout\);

-- Location: LABCELL_X27_Y2_N48
\Mux0~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~44_combout\ = ( \Mux0~43_combout\ & ( !\Add1~113_sumout\ & ( (!\Add1~105_sumout\ & (!\Add1~117_sumout\ & (!\Add1~101_sumout\ & !\Add1~109_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~105_sumout\,
	datab => \ALT_INV_Add1~117_sumout\,
	datac => \ALT_INV_Add1~101_sumout\,
	datad => \ALT_INV_Add1~109_sumout\,
	datae => \ALT_INV_Mux0~43_combout\,
	dataf => \ALT_INV_Add1~113_sumout\,
	combout => \Mux0~44_combout\);

-- Location: LABCELL_X27_Y2_N42
\Mux0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~45_combout\ = ( !\Add1~93_sumout\ & ( \Mux0~44_combout\ & ( (!\Add1~81_sumout\ & (!\Add1~89_sumout\ & (!\Add1~85_sumout\ & !\Add1~97_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~81_sumout\,
	datab => \ALT_INV_Add1~89_sumout\,
	datac => \ALT_INV_Add1~85_sumout\,
	datad => \ALT_INV_Add1~97_sumout\,
	datae => \ALT_INV_Add1~93_sumout\,
	dataf => \ALT_INV_Mux0~44_combout\,
	combout => \Mux0~45_combout\);

-- Location: LABCELL_X27_Y2_N54
\Mux0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~46_combout\ = ( !\Add1~69_sumout\ & ( \Mux0~45_combout\ & ( (!\Add1~65_sumout\ & (!\Add1~73_sumout\ & (!\Add1~77_sumout\ & !\Add1~61_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~65_sumout\,
	datab => \ALT_INV_Add1~73_sumout\,
	datac => \ALT_INV_Add1~77_sumout\,
	datad => \ALT_INV_Add1~61_sumout\,
	datae => \ALT_INV_Add1~69_sumout\,
	dataf => \ALT_INV_Mux0~45_combout\,
	combout => \Mux0~46_combout\);

-- Location: MLABCELL_X25_Y4_N6
\Mux0~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~47_combout\ = ( \Mux0~46_combout\ & ( ((\ALUControl[0]~input_o\ & (\ALUControl[1]~input_o\ & \LessThan4~31_combout\))) # (\Mux0~42_combout\) ) ) # ( !\Mux0~46_combout\ & ( (\ALUControl[0]~input_o\ & (\ALUControl[1]~input_o\ & 
-- \LessThan4~31_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_LessThan4~31_combout\,
	datad => \ALT_INV_Mux0~42_combout\,
	dataf => \ALT_INV_Mux0~46_combout\,
	combout => \Mux0~47_combout\);

-- Location: IOIBUF_X30_Y0_N1
\ALUControl[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(3),
	o => \ALUControl[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\ALUControl[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(2),
	o => \ALUControl[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\shamt[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(3),
	o => \shamt[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\shamt[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(0),
	o => \shamt[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\shamt[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(1),
	o => \shamt[1]~input_o\);

-- Location: LABCELL_X37_Y3_N12
\ShiftRight0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = ( \inputB[24]~input_o\ & ( \inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\inputB[23]~input_o\))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\) # (\inputB[26]~input_o\)))) ) ) ) # ( 
-- !\inputB[24]~input_o\ & ( \inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\inputB[23]~input_o\))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\ & \inputB[26]~input_o\)))) ) ) ) # ( \inputB[24]~input_o\ & ( !\inputB[25]~input_o\ 
-- & ( (!\shamt[0]~input_o\ & (\inputB[23]~input_o\ & (!\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\) # (\inputB[26]~input_o\)))) ) ) ) # ( !\inputB[24]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (\inputB[23]~input_o\ & (!\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\ & \inputB[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \ShiftRight0~34_combout\);

-- Location: MLABCELL_X34_Y3_N36
\ShiftRight0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = ( \inputB[30]~input_o\ & ( \inputB[27]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[28]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[29]~input_o\))) ) ) ) # ( 
-- !\inputB[30]~input_o\ & ( \inputB[27]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[28]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[29]~input_o\ & ((!\shamt[0]~input_o\)))) ) ) ) # ( \inputB[30]~input_o\ & ( 
-- !\inputB[27]~input_o\ & ( (!\shamt[1]~input_o\ & (((\inputB[28]~input_o\ & \shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[29]~input_o\))) ) ) ) # ( !\inputB[30]~input_o\ & ( !\inputB[27]~input_o\ & ( (!\shamt[1]~input_o\ 
-- & (((\inputB[28]~input_o\ & \shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[29]~input_o\ & ((!\shamt[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[29]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_inputB[27]~input_o\,
	combout => \ShiftRight0~31_combout\);

-- Location: IOIBUF_X36_Y0_N1
\shamt[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(2),
	o => \shamt[2]~input_o\);

-- Location: LABCELL_X33_Y3_N54
\ShiftRight0~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\ShiftRight0~31_combout\))) # (\shamt[3]~input_o\ & (\inputB[31]~input_o\)) ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\ShiftRight0~34_combout\))) # 
-- (\shamt[3]~input_o\ & (\inputB[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~34_combout\,
	datad => \ALT_INV_ShiftRight0~31_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftRight0~55_combout\);

-- Location: IOIBUF_X40_Y0_N1
\shamt[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(4),
	o => \shamt[4]~input_o\);

-- Location: MLABCELL_X34_Y3_N15
\ShiftRight0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = ( \shamt[0]~input_o\ & ( \inputB[31]~input_o\ ) ) # ( !\shamt[0]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[30]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_shamt[0]~input_o\,
	combout => \ShiftRight0~22_combout\);

-- Location: LABCELL_X35_Y4_N18
\ShiftRight0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = ( \shamt[1]~input_o\ & ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[24]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[25]~input_o\))) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\) 
-- # (\inputB[23]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[24]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[25]~input_o\))) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[22]~input_o\ & ( 
-- (\inputB[23]~input_o\ & \shamt[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_inputB[25]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \ShiftRight0~27_combout\);

-- Location: LABCELL_X37_Y3_N54
\ShiftRight0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = ( \inputB[27]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[29]~input_o\)) ) ) ) # ( !\inputB[27]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- ((\inputB[28]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[29]~input_o\)) ) ) ) # ( \inputB[27]~input_o\ & ( !\shamt[1]~input_o\ & ( (\inputB[26]~input_o\) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[27]~input_o\ & ( !\shamt[1]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & \inputB[26]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[29]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftRight0~23_combout\);

-- Location: LABCELL_X31_Y3_N0
\ShiftRight0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = ( \ShiftRight0~27_combout\ & ( \ShiftRight0~23_combout\ & ( (!\shamt[3]~input_o\) # ((!\shamt[2]~input_o\ & ((\ShiftRight0~22_combout\))) # (\shamt[2]~input_o\ & (\inputB[31]~input_o\))) ) ) ) # ( !\ShiftRight0~27_combout\ & ( 
-- \ShiftRight0~23_combout\ & ( (!\shamt[3]~input_o\ & (((\shamt[2]~input_o\)))) # (\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & ((\ShiftRight0~22_combout\))) # (\shamt[2]~input_o\ & (\inputB[31]~input_o\)))) ) ) ) # ( \ShiftRight0~27_combout\ & ( 
-- !\ShiftRight0~23_combout\ & ( (!\shamt[3]~input_o\ & (((!\shamt[2]~input_o\)))) # (\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & ((\ShiftRight0~22_combout\))) # (\shamt[2]~input_o\ & (\inputB[31]~input_o\)))) ) ) ) # ( !\ShiftRight0~27_combout\ & ( 
-- !\ShiftRight0~23_combout\ & ( (\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & ((\ShiftRight0~22_combout\))) # (\shamt[2]~input_o\ & (\inputB[31]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_ShiftRight0~22_combout\,
	datae => \ALT_INV_ShiftRight0~27_combout\,
	dataf => \ALT_INV_ShiftRight0~23_combout\,
	combout => \ShiftRight0~65_combout\);

-- Location: MLABCELL_X34_Y3_N48
\ShiftRight0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = ( \shamt[1]~input_o\ & ( \inputB[28]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[30]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[31]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[28]~input_o\ & ( (!\shamt[0]~input_o\) # 
-- (\inputB[29]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[28]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[30]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[31]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[28]~input_o\ & ( 
-- (\inputB[29]~input_o\ & \shamt[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[29]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[28]~input_o\,
	combout => \ShiftRight0~3_combout\);

-- Location: LABCELL_X35_Y3_N36
\ShiftRight0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = ( \inputB[23]~input_o\ & ( \inputB[20]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\inputB[21]~input_o\))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\) # (\inputB[22]~input_o\)))) ) ) ) # ( 
-- !\inputB[23]~input_o\ & ( \inputB[20]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\inputB[21]~input_o\))) # (\shamt[1]~input_o\ & (((\inputB[22]~input_o\ & !\shamt[0]~input_o\)))) ) ) ) # ( \inputB[23]~input_o\ & ( 
-- !\inputB[20]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[21]~input_o\ & ((\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\) # (\inputB[22]~input_o\)))) ) ) ) # ( !\inputB[23]~input_o\ & ( !\inputB[20]~input_o\ & ( (!\shamt[1]~input_o\ 
-- & (\inputB[21]~input_o\ & ((\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((\inputB[22]~input_o\ & !\shamt[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[21]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[22]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_inputB[23]~input_o\,
	dataf => \ALT_INV_inputB[20]~input_o\,
	combout => \ShiftRight0~5_combout\);

-- Location: LABCELL_X37_Y3_N42
\ShiftRight0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = ( \inputB[27]~input_o\ & ( \inputB[25]~input_o\ & ( ((!\shamt[1]~input_o\ & (\inputB[24]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[26]~input_o\)))) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[27]~input_o\ & ( 
-- \inputB[25]~input_o\ & ( (!\shamt[1]~input_o\ & (((\inputB[24]~input_o\)) # (\shamt[0]~input_o\))) # (\shamt[1]~input_o\ & (!\shamt[0]~input_o\ & ((\inputB[26]~input_o\)))) ) ) ) # ( \inputB[27]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\shamt[1]~input_o\ 
-- & (!\shamt[0]~input_o\ & (\inputB[24]~input_o\))) # (\shamt[1]~input_o\ & (((\inputB[26]~input_o\)) # (\shamt[0]~input_o\))) ) ) ) # ( !\inputB[27]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & 
-- (\inputB[24]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[26]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \ShiftRight0~2_combout\);

-- Location: MLABCELL_X34_Y3_N24
\ShiftRight0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = ( \shamt[3]~input_o\ & ( \ShiftRight0~2_combout\ & ( (!\shamt[2]~input_o\ & (\ShiftRight0~3_combout\)) # (\shamt[2]~input_o\ & ((\inputB[31]~input_o\))) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftRight0~2_combout\ & ( 
-- (\ShiftRight0~5_combout\) # (\shamt[2]~input_o\) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftRight0~2_combout\ & ( (!\shamt[2]~input_o\ & (\ShiftRight0~3_combout\)) # (\shamt[2]~input_o\ & ((\inputB[31]~input_o\))) ) ) ) # ( !\shamt[3]~input_o\ & ( 
-- !\ShiftRight0~2_combout\ & ( (!\shamt[2]~input_o\ & \ShiftRight0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_ShiftRight0~3_combout\,
	datac => \ALT_INV_ShiftRight0~5_combout\,
	datad => \ALT_INV_inputB[31]~input_o\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftRight0~2_combout\,
	combout => \ShiftRight0~10_combout\);

-- Location: LABCELL_X35_Y3_N18
\ShiftRight0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = ( \shamt[0]~input_o\ & ( \inputB[18]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[19]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[21]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[18]~input_o\ & ( (!\shamt[1]~input_o\) 
-- # (\inputB[20]~input_o\) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[18]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[19]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[21]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[18]~input_o\ & ( 
-- (\inputB[20]~input_o\ & \shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000111100111111011101110111010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[20]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[21]~input_o\,
	datad => \ALT_INV_inputB[19]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \ShiftRight0~28_combout\);

-- Location: LABCELL_X31_Y3_N42
\ShiftRight0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = ( \shamt[3]~input_o\ & ( \ShiftRight0~23_combout\ & ( (!\shamt[2]~input_o\) # (\ShiftRight0~22_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftRight0~23_combout\ & ( (!\shamt[2]~input_o\ & ((\ShiftRight0~28_combout\))) # 
-- (\shamt[2]~input_o\ & (\ShiftRight0~27_combout\)) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftRight0~23_combout\ & ( (\shamt[2]~input_o\ & \ShiftRight0~22_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( !\ShiftRight0~23_combout\ & ( (!\shamt[2]~input_o\ & 
-- ((\ShiftRight0~28_combout\))) # (\shamt[2]~input_o\ & (\ShiftRight0~27_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000101010100011011000110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_ShiftRight0~27_combout\,
	datac => \ALT_INV_ShiftRight0~28_combout\,
	datad => \ALT_INV_ShiftRight0~22_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftRight0~23_combout\,
	combout => \ShiftRight0~46_combout\);

-- Location: LABCELL_X35_Y3_N6
\ShiftRight0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = ( \shamt[0]~input_o\ & ( \inputB[19]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[20]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[22]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[19]~input_o\ & ( (!\shamt[1]~input_o\) 
-- # (\inputB[21]~input_o\) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[19]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[20]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[22]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[19]~input_o\ & ( 
-- (\shamt[1]~input_o\ & \inputB[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[22]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[21]~input_o\,
	datad => \ALT_INV_inputB[20]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \ShiftRight0~33_combout\);

-- Location: LABCELL_X36_Y3_N30
\ShiftRight0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = ( \shamt[3]~input_o\ & ( \ShiftRight0~34_combout\ & ( (!\shamt[2]~input_o\ & ((\ShiftRight0~31_combout\))) # (\shamt[2]~input_o\ & (\inputB[31]~input_o\)) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftRight0~34_combout\ & ( 
-- (\ShiftRight0~33_combout\) # (\shamt[2]~input_o\) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftRight0~34_combout\ & ( (!\shamt[2]~input_o\ & ((\ShiftRight0~31_combout\))) # (\shamt[2]~input_o\ & (\inputB[31]~input_o\)) ) ) ) # ( !\shamt[3]~input_o\ & ( 
-- !\ShiftRight0~34_combout\ & ( (!\shamt[2]~input_o\ & \ShiftRight0~33_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_ShiftRight0~33_combout\,
	datad => \ALT_INV_ShiftRight0~31_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftRight0~34_combout\,
	combout => \ShiftRight0~41_combout\);

-- Location: MLABCELL_X28_Y3_N45
\LessThan6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~7_combout\ = ( !\ShiftRight0~46_combout\ & ( !\ShiftRight0~41_combout\ & ( !\ShiftRight0~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~10_combout\,
	datae => \ALT_INV_ShiftRight0~46_combout\,
	dataf => \ALT_INV_ShiftRight0~41_combout\,
	combout => \LessThan6~7_combout\);

-- Location: LABCELL_X33_Y2_N27
\ShiftLeft0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = ( !\shamt[2]~input_o\ & ( !\shamt[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~12_combout\);

-- Location: MLABCELL_X34_Y3_N12
\ShiftRight0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = ( \inputB[29]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[30]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[31]~input_o\)) ) ) # ( !\inputB[29]~input_o\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\ 
-- & \inputB[30]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101110110001101110111011000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \ShiftRight0~15_combout\);

-- Location: LABCELL_X33_Y3_N21
\LessThan6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~5_combout\ = ( \ShiftRight0~15_combout\ & ( \ShiftLeft0~12_combout\ ) ) # ( !\ShiftRight0~15_combout\ & ( (\ShiftLeft0~12_combout\ & (((\ShiftRight0~3_combout\) # (\ShiftRight0~31_combout\)) # (\ShiftRight0~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~22_combout\,
	datab => \ALT_INV_ShiftLeft0~12_combout\,
	datac => \ALT_INV_ShiftRight0~31_combout\,
	datad => \ALT_INV_ShiftRight0~3_combout\,
	dataf => \ALT_INV_ShiftRight0~15_combout\,
	combout => \LessThan6~5_combout\);

-- Location: LABCELL_X33_Y3_N45
\ShiftRight0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = ( \ShiftRight0~23_combout\ & ( (!\shamt[3]~input_o\ & (((!\shamt[2]~input_o\) # (\ShiftRight0~22_combout\)))) # (\shamt[3]~input_o\ & (\inputB[31]~input_o\)) ) ) # ( !\ShiftRight0~23_combout\ & ( (!\shamt[3]~input_o\ & 
-- (((\shamt[2]~input_o\ & \ShiftRight0~22_combout\)))) # (\shamt[3]~input_o\ & (\inputB[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110111010001110111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_ShiftRight0~22_combout\,
	dataf => \ALT_INV_ShiftRight0~23_combout\,
	combout => \ShiftRight0~24_combout\);

-- Location: MLABCELL_X34_Y3_N42
\ShiftRight0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = ( \ShiftRight0~2_combout\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\) # ((\ShiftRight0~3_combout\)))) # (\shamt[3]~input_o\ & (((\inputB[31]~input_o\)))) ) ) # ( !\ShiftRight0~2_combout\ & ( (!\shamt[3]~input_o\ & 
-- (\shamt[2]~input_o\ & (\ShiftRight0~3_combout\))) # (\shamt[3]~input_o\ & (((\inputB[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~3_combout\,
	datad => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_ShiftRight0~2_combout\,
	combout => \ShiftRight0~4_combout\);

-- Location: LABCELL_X37_Y3_N36
\ShiftRight0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = ( \inputB[27]~input_o\ & ( \inputB[25]~input_o\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & ((\inputB[26]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[28]~input_o\))) ) ) ) # ( !\inputB[27]~input_o\ & ( 
-- \inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[26]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[28]~input_o\)))) ) ) ) # ( \inputB[27]~input_o\ & ( !\inputB[25]~input_o\ 
-- & ( (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[26]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[28]~input_o\)))) ) ) ) # ( !\inputB[27]~input_o\ & ( !\inputB[25]~input_o\ & ( 
-- (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[26]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[28]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[28]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \ShiftRight0~16_combout\);

-- Location: LABCELL_X30_Y3_N57
\ShiftRight0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = ( \ShiftRight0~16_combout\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\) # ((\ShiftRight0~15_combout\)))) # (\shamt[3]~input_o\ & (((\inputB[31]~input_o\)))) ) ) # ( !\ShiftRight0~16_combout\ & ( (!\shamt[3]~input_o\ & 
-- (\shamt[2]~input_o\ & ((\ShiftRight0~15_combout\)))) # (\shamt[3]~input_o\ & (((\inputB[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_ShiftRight0~15_combout\,
	dataf => \ALT_INV_ShiftRight0~16_combout\,
	combout => \ShiftRight0~37_combout\);

-- Location: LABCELL_X35_Y4_N48
\ShiftRight0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = ( \shamt[1]~input_o\ & ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[23]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[24]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[22]~input_o\ & ( (\inputB[21]~input_o\) 
-- # (\shamt[0]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[23]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[24]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[22]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & \inputB[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[24]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[23]~input_o\,
	datad => \ALT_INV_inputB[21]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \ShiftRight0~17_combout\);

-- Location: LABCELL_X30_Y3_N12
\ShiftRight0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = ( \shamt[3]~input_o\ & ( \ShiftRight0~16_combout\ & ( (!\shamt[2]~input_o\ & (\ShiftRight0~15_combout\)) # (\shamt[2]~input_o\ & ((\inputB[31]~input_o\))) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftRight0~16_combout\ & ( 
-- (\ShiftRight0~17_combout\) # (\shamt[2]~input_o\) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftRight0~16_combout\ & ( (!\shamt[2]~input_o\ & (\ShiftRight0~15_combout\)) # (\shamt[2]~input_o\ & ((\inputB[31]~input_o\))) ) ) ) # ( !\shamt[3]~input_o\ & ( 
-- !\ShiftRight0~16_combout\ & ( (!\shamt[2]~input_o\ & \ShiftRight0~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~15_combout\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_ShiftRight0~17_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftRight0~16_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: LABCELL_X33_Y3_N15
\LessThan6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~6_combout\ = ( !\ShiftRight0~66_combout\ & ( (!\LessThan6~5_combout\ & (!\ShiftRight0~24_combout\ & (!\ShiftRight0~4_combout\ & !\ShiftRight0~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~5_combout\,
	datab => \ALT_INV_ShiftRight0~24_combout\,
	datac => \ALT_INV_ShiftRight0~4_combout\,
	datad => \ALT_INV_ShiftRight0~37_combout\,
	dataf => \ALT_INV_ShiftRight0~66_combout\,
	combout => \LessThan6~6_combout\);

-- Location: LABCELL_X33_Y3_N39
\LessThan6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~8_combout\ = ( \LessThan6~6_combout\ & ( (!\shamt[4]~input_o\ & (((!\LessThan6~7_combout\) # (\ShiftRight0~65_combout\)) # (\ShiftRight0~55_combout\))) ) ) # ( !\LessThan6~6_combout\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100010011001100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~55_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~65_combout\,
	datad => \ALT_INV_LessThan6~7_combout\,
	dataf => \ALT_INV_LessThan6~6_combout\,
	combout => \LessThan6~8_combout\);

-- Location: LABCELL_X29_Y3_N3
\ShiftRight0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = ( \ShiftLeft0~12_combout\ & ( \ShiftRight0~22_combout\ ) ) # ( !\ShiftLeft0~12_combout\ & ( \inputB[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~22_combout\,
	datad => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~12_combout\,
	combout => \ShiftRight0~74_combout\);

-- Location: MLABCELL_X34_Y2_N27
\ShiftLeft0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = ( \shamt[2]~input_o\ & ( !\shamt[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LABCELL_X31_Y3_N18
\ShiftRight0~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = ( \ShiftLeft0~11_combout\ & ( (!\shamt[4]~input_o\ & (\ShiftRight0~28_combout\)) # (\shamt[4]~input_o\ & ((\ShiftRight0~74_combout\))) ) ) # ( !\ShiftLeft0~11_combout\ & ( (\shamt[4]~input_o\ & \ShiftRight0~74_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~28_combout\,
	datad => \ALT_INV_ShiftRight0~74_combout\,
	dataf => \ALT_INV_ShiftLeft0~11_combout\,
	combout => \ShiftRight0~75_combout\);

-- Location: LABCELL_X31_Y3_N33
\ShiftLeft0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (!\shamt[4]~input_o\ & (\shamt[3]~input_o\ & \shamt[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~13_combout\);

-- Location: LABCELL_X35_Y3_N24
\ShiftRight0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = ( \shamt[0]~input_o\ & ( \inputB[16]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[15]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[17]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[16]~input_o\ & ( (\shamt[1]~input_o\) # 
-- (\inputB[14]~input_o\) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[16]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[15]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[17]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[16]~input_o\ & ( 
-- (\inputB[14]~input_o\ & !\shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[14]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[17]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \ShiftRight0~26_combout\);

-- Location: LABCELL_X36_Y3_N9
\ShiftRight0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = ( !\shamt[2]~input_o\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~20_combout\);

-- Location: LABCELL_X31_Y3_N27
\ShiftRight0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = ( \ShiftRight0~20_combout\ & ( (!\shamt[3]~input_o\ & ((\ShiftRight0~26_combout\))) # (\shamt[3]~input_o\ & (\ShiftRight0~27_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~27_combout\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_ShiftRight0~26_combout\,
	dataf => \ALT_INV_ShiftRight0~20_combout\,
	combout => \ShiftRight0~73_combout\);

-- Location: LABCELL_X31_Y3_N24
\ShiftRight0~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = ( \ShiftRight0~23_combout\ & ( (!\ShiftRight0~75_combout\ & (!\ShiftLeft0~13_combout\ & !\ShiftRight0~73_combout\)) ) ) # ( !\ShiftRight0~23_combout\ & ( (!\ShiftRight0~75_combout\ & !\ShiftRight0~73_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~75_combout\,
	datac => \ALT_INV_ShiftLeft0~13_combout\,
	datad => \ALT_INV_ShiftRight0~73_combout\,
	dataf => \ALT_INV_ShiftRight0~23_combout\,
	combout => \ShiftRight0~76_combout\);

-- Location: LABCELL_X29_Y2_N30
\ShiftRight0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = ( \inputB[6]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[7]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[8]~input_o\)) ) ) ) # ( !\inputB[6]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- ((\inputB[7]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[8]~input_o\)) ) ) ) # ( \inputB[6]~input_o\ & ( !\shamt[1]~input_o\ & ( (\inputB[5]~input_o\) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[6]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ 
-- & \inputB[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftRight0~61_combout\);

-- Location: LABCELL_X35_Y2_N36
\ShiftRight0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = ( \shamt[1]~input_o\ & ( \inputB[16]~input_o\ & ( (\shamt[0]~input_o\) # (\inputB[15]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[16]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[13]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[14]~input_o\)) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[16]~input_o\ & ( (\inputB[15]~input_o\ & !\shamt[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[16]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[13]~input_o\))) # 
-- (\shamt[0]~input_o\ & (\inputB[14]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[15]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[13]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \ShiftRight0~18_combout\);

-- Location: LABCELL_X35_Y3_N54
\ShiftRight0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = ( \inputB[17]~input_o\ & ( \inputB[18]~input_o\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[20]~input_o\)))) ) ) ) # ( !\inputB[17]~input_o\ & ( 
-- \inputB[18]~input_o\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[20]~input_o\))))) ) ) ) # ( \inputB[17]~input_o\ & ( !\inputB[18]~input_o\ 
-- & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[20]~input_o\))))) ) ) ) # ( !\inputB[17]~input_o\ & ( !\inputB[18]~input_o\ & ( 
-- (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[20]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \ShiftRight0~14_combout\);

-- Location: LABCELL_X30_Y3_N18
\ShiftRight0~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = ( \ShiftRight0~14_combout\ & ( ((!\shamt[3]~input_o\ & (\ShiftRight0~61_combout\)) # (\shamt[3]~input_o\ & ((\ShiftRight0~18_combout\)))) # (\shamt[2]~input_o\) ) ) # ( !\ShiftRight0~14_combout\ & ( (!\shamt[2]~input_o\ & 
-- ((!\shamt[3]~input_o\ & (\ShiftRight0~61_combout\)) # (\shamt[3]~input_o\ & ((\ShiftRight0~18_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~61_combout\,
	datad => \ALT_INV_ShiftRight0~18_combout\,
	dataf => \ALT_INV_ShiftRight0~14_combout\,
	combout => \ShiftRight0~67_combout\);

-- Location: LABCELL_X33_Y2_N18
\ShiftRight0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = ( \inputB[11]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\) # (\inputB[9]~input_o\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\inputB[12]~input_o\))) ) ) ) # ( 
-- !\inputB[11]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\) # (\inputB[9]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[12]~input_o\ & ((\shamt[0]~input_o\)))) ) ) ) # ( \inputB[11]~input_o\ & ( !\inputB[10]~input_o\ & 
-- ( (!\shamt[1]~input_o\ & (((\inputB[9]~input_o\ & !\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)) # (\inputB[12]~input_o\))) ) ) ) # ( !\inputB[11]~input_o\ & ( !\inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- (((\inputB[9]~input_o\ & !\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (\inputB[12]~input_o\ & ((\shamt[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[12]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_inputB[11]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \ShiftRight0~38_combout\);

-- Location: LABCELL_X30_Y3_N6
\ShiftRight0~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = ( \ShiftLeft0~11_combout\ & ( (!\shamt[4]~input_o\ & ((\ShiftRight0~38_combout\))) # (\shamt[4]~input_o\ & (\ShiftRight0~66_combout\)) ) ) # ( !\ShiftLeft0~11_combout\ & ( (!\shamt[4]~input_o\ & ((\ShiftRight0~67_combout\))) # 
-- (\shamt[4]~input_o\ & (\ShiftRight0~66_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~66_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~67_combout\,
	datad => \ALT_INV_ShiftRight0~38_combout\,
	dataf => \ALT_INV_ShiftLeft0~11_combout\,
	combout => \ShiftRight0~68_combout\);

-- Location: LABCELL_X35_Y2_N54
\ShiftRight0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = ( \shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[11]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[13]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\) 
-- # (\inputB[12]~input_o\) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[11]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[13]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( 
-- (\shamt[1]~input_o\ & \inputB[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000110110001101110101010111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[13]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \ShiftRight0~25_combout\);

-- Location: LABCELL_X33_Y2_N42
\ShiftRight0~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = ( \inputB[9]~input_o\ & ( \inputB[8]~input_o\ & ( ((!\shamt[0]~input_o\ & (\inputB[6]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[7]~input_o\)))) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[9]~input_o\ & ( \inputB[8]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\inputB[6]~input_o\))) # (\shamt[0]~input_o\ & (((\inputB[7]~input_o\ & !\shamt[1]~input_o\)))) ) ) ) # ( \inputB[9]~input_o\ & ( !\inputB[8]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[6]~input_o\ & 
-- ((!\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\) # (\inputB[7]~input_o\)))) ) ) ) # ( !\inputB[9]~input_o\ & ( !\inputB[8]~input_o\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[6]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputB[8]~input_o\,
	combout => \ShiftRight0~47_combout\);

-- Location: LABCELL_X33_Y3_N33
\ShiftRight0~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = ( \ShiftRight0~47_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[3]~input_o\)) # (\ShiftRight0~26_combout\))) # (\shamt[2]~input_o\ & (((\ShiftRight0~28_combout\)))) ) ) # ( !\ShiftRight0~47_combout\ & ( (!\shamt[2]~input_o\ & 
-- (\ShiftRight0~26_combout\ & ((\shamt[3]~input_o\)))) # (\shamt[2]~input_o\ & (((\ShiftRight0~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000000110101001111110011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~26_combout\,
	datab => \ALT_INV_ShiftRight0~28_combout\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftRight0~47_combout\,
	combout => \ShiftRight0~71_combout\);

-- Location: LABCELL_X33_Y3_N9
\ShiftRight0~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = ( \ShiftRight0~71_combout\ & ( (!\shamt[4]~input_o\ & (((!\ShiftLeft0~11_combout\)) # (\ShiftRight0~25_combout\))) # (\shamt[4]~input_o\ & (((\ShiftRight0~65_combout\)))) ) ) # ( !\ShiftRight0~71_combout\ & ( 
-- (!\shamt[4]~input_o\ & (\ShiftRight0~25_combout\ & ((\ShiftLeft0~11_combout\)))) # (\shamt[4]~input_o\ & (((\ShiftRight0~65_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011111001111010001111100111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~25_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~65_combout\,
	datad => \ALT_INV_ShiftLeft0~11_combout\,
	dataf => \ALT_INV_ShiftRight0~71_combout\,
	combout => \ShiftRight0~72_combout\);

-- Location: LABCELL_X35_Y3_N48
\ShiftRight0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = ( \shamt[0]~input_o\ & ( \inputB[16]~input_o\ & ( (!\shamt[1]~input_o\) # (\inputB[18]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[16]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[15]~input_o\))) # (\shamt[1]~input_o\ & 
-- (\inputB[17]~input_o\)) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[16]~input_o\ & ( (\inputB[18]~input_o\ & \shamt[1]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[16]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[15]~input_o\))) # 
-- (\shamt[1]~input_o\ & (\inputB[17]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[18]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[17]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \ShiftRight0~32_combout\);

-- Location: LABCELL_X36_Y3_N42
\ShiftRight0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = ( \shamt[3]~input_o\ & ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) ) # ( !\shamt[3]~input_o\ & ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) ) # ( \shamt[3]~input_o\ & ( !\shamt[4]~input_o\ & ( (\shamt[2]~input_o\ & 
-- \ShiftRight0~31_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( !\shamt[4]~input_o\ & ( (\shamt[2]~input_o\ & \ShiftRight0~33_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_ShiftRight0~33_combout\,
	datad => \ALT_INV_ShiftRight0~31_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~69_combout\);

-- Location: LABCELL_X36_Y3_N3
\ShiftRight0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = ( \shamt[3]~input_o\ & ( \ShiftRight0~34_combout\ & ( (!\ShiftRight0~20_combout\ & !\ShiftRight0~69_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftRight0~34_combout\ & ( (!\ShiftRight0~69_combout\ & 
-- ((!\ShiftRight0~32_combout\) # (!\ShiftRight0~20_combout\))) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftRight0~34_combout\ & ( !\ShiftRight0~69_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( !\ShiftRight0~34_combout\ & ( (!\ShiftRight0~69_combout\ & 
-- ((!\ShiftRight0~32_combout\) # (!\ShiftRight0~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111100001111000011100000111000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~32_combout\,
	datab => \ALT_INV_ShiftRight0~20_combout\,
	datac => \ALT_INV_ShiftRight0~69_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftRight0~34_combout\,
	combout => \ShiftRight0~70_combout\);

-- Location: MLABCELL_X28_Y3_N24
\LessThan6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~9_combout\ = ( \ShiftRight0~70_combout\ & ( (!\LessThan6~8_combout\ & (\ShiftRight0~76_combout\ & (!\ShiftRight0~68_combout\ & !\ShiftRight0~72_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~8_combout\,
	datab => \ALT_INV_ShiftRight0~76_combout\,
	datac => \ALT_INV_ShiftRight0~68_combout\,
	datad => \ALT_INV_ShiftRight0~72_combout\,
	dataf => \ALT_INV_ShiftRight0~70_combout\,
	combout => \LessThan6~9_combout\);

-- Location: LABCELL_X30_Y3_N54
\ShiftRight0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = ( \ShiftRight0~17_combout\ & ( (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & (\ShiftRight0~38_combout\))) # (\shamt[2]~input_o\ & (((\ShiftRight0~18_combout\)) # (\shamt[3]~input_o\))) ) ) # ( !\ShiftRight0~17_combout\ & ( 
-- (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & (\ShiftRight0~38_combout\)) # (\shamt[2]~input_o\ & ((\ShiftRight0~18_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~38_combout\,
	datad => \ALT_INV_ShiftRight0~18_combout\,
	dataf => \ALT_INV_ShiftRight0~17_combout\,
	combout => \ShiftRight0~39_combout\);

-- Location: LABCELL_X30_Y3_N45
\ShiftRight0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\shamt[3]~input_o\ & !\shamt[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftRight0~1_combout\);

-- Location: LABCELL_X30_Y3_N42
\ShiftRight0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = ( \ShiftRight0~37_combout\ & ( (!\ShiftRight0~39_combout\ & (!\shamt[4]~input_o\ & ((!\ShiftRight0~1_combout\) # (!\ShiftRight0~14_combout\)))) ) ) # ( !\ShiftRight0~37_combout\ & ( ((!\ShiftRight0~39_combout\ & 
-- ((!\ShiftRight0~1_combout\) # (!\ShiftRight0~14_combout\)))) # (\shamt[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100011111111101010001111111110101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~39_combout\,
	datab => \ALT_INV_ShiftRight0~1_combout\,
	datac => \ALT_INV_ShiftRight0~14_combout\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_ShiftRight0~37_combout\,
	combout => \ShiftRight0~40_combout\);

-- Location: LABCELL_X35_Y2_N0
\ShiftRight0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = ( \shamt[0]~input_o\ & ( \inputB[13]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[12]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[14]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[13]~input_o\ & ( (\inputB[11]~input_o\) 
-- # (\shamt[1]~input_o\) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[13]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[12]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[14]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[13]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & \inputB[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	combout => \ShiftRight0~35_combout\);

-- Location: LABCELL_X29_Y2_N48
\ShiftRight0~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = ( \inputB[6]~input_o\ & ( \shamt[1]~input_o\ & ( (\inputB[5]~input_o\) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[6]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & \inputB[5]~input_o\) ) ) ) # ( \inputB[6]~input_o\ & 
-- ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[4]~input_o\)) ) ) ) # ( !\inputB[6]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftRight0~43_combout\);

-- Location: LABCELL_X36_Y3_N12
\ShiftRight0~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = ( \shamt[3]~input_o\ & ( \ShiftRight0~43_combout\ & ( (!\shamt[2]~input_o\ & (\ShiftRight0~35_combout\)) # (\shamt[2]~input_o\ & ((\ShiftRight0~32_combout\))) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftRight0~43_combout\ & ( 
-- (!\shamt[2]~input_o\) # (\ShiftRight0~32_combout\) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftRight0~43_combout\ & ( (!\shamt[2]~input_o\ & (\ShiftRight0~35_combout\)) # (\shamt[2]~input_o\ & ((\ShiftRight0~32_combout\))) ) ) ) # ( !\shamt[3]~input_o\ & ( 
-- !\ShiftRight0~43_combout\ & ( (\ShiftRight0~32_combout\ & \shamt[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100110101001111110011111100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~35_combout\,
	datab => \ALT_INV_ShiftRight0~32_combout\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftRight0~43_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: LABCELL_X33_Y2_N0
\ShiftRight0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = ( \shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (\shamt[1]~input_o\) # (\inputB[8]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[7]~input_o\)) # (\shamt[1]~input_o\ & 
-- ((\inputB[9]~input_o\))) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( (\inputB[8]~input_o\ & !\shamt[1]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[7]~input_o\)) # (\shamt[1]~input_o\ 
-- & ((\inputB[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[7]~input_o\,
	datab => \ALT_INV_inputB[8]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \ShiftRight0~42_combout\);

-- Location: LABCELL_X36_Y3_N18
\ShiftRight0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = ( \ShiftLeft0~11_combout\ & ( (!\shamt[4]~input_o\ & ((\ShiftRight0~42_combout\))) # (\shamt[4]~input_o\ & (\ShiftRight0~41_combout\)) ) ) # ( !\ShiftLeft0~11_combout\ & ( (!\shamt[4]~input_o\ & (\ShiftRight0~44_combout\)) # 
-- (\shamt[4]~input_o\ & ((\ShiftRight0~41_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ShiftRight0~44_combout\,
	datac => \ALT_INV_ShiftRight0~41_combout\,
	datad => \ALT_INV_ShiftRight0~42_combout\,
	dataf => \ALT_INV_ShiftLeft0~11_combout\,
	combout => \ShiftRight0~45_combout\);

-- Location: MLABCELL_X28_Y5_N3
\LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = ( !\ShiftRight0~45_combout\ & ( \ShiftRight0~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~40_combout\,
	dataf => \ALT_INV_ShiftRight0~45_combout\,
	combout => \LessThan6~2_combout\);

-- Location: LABCELL_X35_Y3_N42
\ShiftRight0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = ( \inputB[17]~input_o\ & ( \inputB[16]~input_o\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & ((\inputB[18]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[19]~input_o\))) ) ) ) # ( !\inputB[17]~input_o\ & ( 
-- \inputB[16]~input_o\ & ( (!\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[18]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[19]~input_o\)))) ) ) ) # ( \inputB[17]~input_o\ & ( !\inputB[16]~input_o\ 
-- & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[18]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[19]~input_o\)))) ) ) ) # ( !\inputB[17]~input_o\ & ( !\inputB[16]~input_o\ & ( 
-- (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[18]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[18]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \ShiftRight0~0_combout\);

-- Location: MLABCELL_X34_Y3_N18
\ShiftRight0~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = ( \shamt[3]~input_o\ & ( \ShiftRight0~2_combout\ & ( (!\shamt[2]~input_o\) # (\ShiftRight0~3_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftRight0~2_combout\ & ( (!\shamt[2]~input_o\ & ((\ShiftRight0~0_combout\))) # 
-- (\shamt[2]~input_o\ & (\ShiftRight0~5_combout\)) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftRight0~2_combout\ & ( (\shamt[2]~input_o\ & \ShiftRight0~3_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( !\ShiftRight0~2_combout\ & ( (!\shamt[2]~input_o\ & 
-- ((\ShiftRight0~0_combout\))) # (\shamt[2]~input_o\ & (\ShiftRight0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000000000111100110101001101011111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~5_combout\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_ShiftRight0~3_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftRight0~2_combout\,
	combout => \ShiftRight0~51_combout\);

-- Location: MLABCELL_X28_Y3_N9
\ShiftRight0~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = ( \inputB[31]~input_o\ & ( \shamt[4]~input_o\ ) ) # ( \inputB[31]~input_o\ & ( !\shamt[4]~input_o\ & ( \ShiftRight0~51_combout\ ) ) ) # ( !\inputB[31]~input_o\ & ( !\shamt[4]~input_o\ & ( \ShiftRight0~51_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~51_combout\,
	datae => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~52_combout\);

-- Location: LABCELL_X36_Y3_N27
\ShiftRight0~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = ( \ShiftRight0~33_combout\ & ( \shamt[2]~input_o\ & ( (\shamt[3]~input_o\) # (\ShiftRight0~35_combout\) ) ) ) # ( !\ShiftRight0~33_combout\ & ( \shamt[2]~input_o\ & ( (\ShiftRight0~35_combout\ & !\shamt[3]~input_o\) ) ) ) # ( 
-- \ShiftRight0~33_combout\ & ( !\shamt[2]~input_o\ & ( (\ShiftRight0~42_combout\ & !\shamt[3]~input_o\) ) ) ) # ( !\ShiftRight0~33_combout\ & ( !\shamt[2]~input_o\ & ( (\ShiftRight0~42_combout\ & !\shamt[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000001010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~35_combout\,
	datab => \ALT_INV_ShiftRight0~42_combout\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_ShiftRight0~33_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftRight0~56_combout\);

-- Location: LABCELL_X33_Y3_N36
\ShiftRight0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = ( \ShiftRight0~56_combout\ & ( (!\ShiftRight0~55_combout\ & \shamt[4]~input_o\) ) ) # ( !\ShiftRight0~56_combout\ & ( (!\shamt[4]~input_o\ & (((!\ShiftRight0~32_combout\) # (!\ShiftRight0~1_combout\)))) # (\shamt[4]~input_o\ & 
-- (!\ShiftRight0~55_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100010111011101110001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~55_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~32_combout\,
	datad => \ALT_INV_ShiftRight0~1_combout\,
	dataf => \ALT_INV_ShiftRight0~56_combout\,
	combout => \ShiftRight0~57_combout\);

-- Location: MLABCELL_X25_Y1_N54
\ShiftRight0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = ( \shamt[1]~input_o\ & ( \inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[4]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[1]~input_o\ & ( (!\shamt[0]~input_o\) # 
-- (\inputB[2]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[4]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[1]~input_o\ & ( (\shamt[0]~input_o\ & 
-- \inputB[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	combout => \ShiftRight0~62_combout\);

-- Location: LABCELL_X30_Y3_N21
\ShiftRight0~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = ( \ShiftRight0~38_combout\ & ( (!\shamt[2]~input_o\ & (((\ShiftRight0~62_combout\)) # (\shamt[3]~input_o\))) # (\shamt[2]~input_o\ & (((\ShiftRight0~18_combout\)))) ) ) # ( !\ShiftRight0~38_combout\ & ( (!\shamt[2]~input_o\ & 
-- (!\shamt[3]~input_o\ & (\ShiftRight0~62_combout\))) # (\shamt[2]~input_o\ & (((\ShiftRight0~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~62_combout\,
	datad => \ALT_INV_ShiftRight0~18_combout\,
	dataf => \ALT_INV_ShiftRight0~38_combout\,
	combout => \ShiftRight0~63_combout\);

-- Location: LABCELL_X30_Y3_N48
\ShiftRight0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = ( \ShiftRight0~15_combout\ & ( \ShiftRight0~16_combout\ & ( ((!\shamt[2]~input_o\ & ((\ShiftRight0~14_combout\))) # (\shamt[2]~input_o\ & (\ShiftRight0~17_combout\))) # (\shamt[3]~input_o\) ) ) ) # ( !\ShiftRight0~15_combout\ & 
-- ( \ShiftRight0~16_combout\ & ( (!\shamt[2]~input_o\ & (((\shamt[3]~input_o\) # (\ShiftRight0~14_combout\)))) # (\shamt[2]~input_o\ & (\ShiftRight0~17_combout\ & ((!\shamt[3]~input_o\)))) ) ) ) # ( \ShiftRight0~15_combout\ & ( !\ShiftRight0~16_combout\ & ( 
-- (!\shamt[2]~input_o\ & (((\ShiftRight0~14_combout\ & !\shamt[3]~input_o\)))) # (\shamt[2]~input_o\ & (((\shamt[3]~input_o\)) # (\ShiftRight0~17_combout\))) ) ) ) # ( !\ShiftRight0~15_combout\ & ( !\ShiftRight0~16_combout\ & ( (!\shamt[3]~input_o\ & 
-- ((!\shamt[2]~input_o\ & ((\ShiftRight0~14_combout\))) # (\shamt[2]~input_o\ & (\ShiftRight0~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110101010100011011101010100001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_ShiftRight0~17_combout\,
	datac => \ALT_INV_ShiftRight0~14_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_ShiftRight0~15_combout\,
	dataf => \ALT_INV_ShiftRight0~16_combout\,
	combout => \ShiftRight0~53_combout\);

-- Location: LABCELL_X30_Y3_N0
\ShiftRight0~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = ( \ShiftRight0~53_combout\ & ( ((!\ShiftLeft0~11_combout\ & ((\ShiftRight0~63_combout\))) # (\ShiftLeft0~11_combout\ & (\ShiftRight0~61_combout\))) # (\shamt[4]~input_o\) ) ) # ( !\ShiftRight0~53_combout\ & ( 
-- (!\shamt[4]~input_o\ & ((!\ShiftLeft0~11_combout\ & ((\ShiftRight0~63_combout\))) # (\ShiftLeft0~11_combout\ & (\ShiftRight0~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~11_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~61_combout\,
	datad => \ALT_INV_ShiftRight0~63_combout\,
	dataf => \ALT_INV_ShiftRight0~53_combout\,
	combout => \ShiftRight0~64_combout\);

-- Location: LABCELL_X29_Y2_N54
\ShiftRight0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = ( \inputB[4]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[6]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[7]~input_o\))) ) ) ) # ( !\inputB[4]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (\inputB[6]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[7]~input_o\))) ) ) ) # ( \inputB[4]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[5]~input_o\) ) ) ) # ( !\inputB[4]~input_o\ & ( !\shamt[1]~input_o\ & ( (\shamt[0]~input_o\ 
-- & \inputB[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftRight0~11_combout\);

-- Location: LABCELL_X33_Y2_N36
\ShiftRight0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = ( \shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[11]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (\inputB[8]~input_o\) # 
-- (\shamt[1]~input_o\) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[11]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & \inputB[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \ShiftRight0~7_combout\);

-- Location: LABCELL_X35_Y2_N42
\ShiftRight0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = ( \inputB[15]~input_o\ & ( \inputB[13]~input_o\ & ( ((!\shamt[1]~input_o\ & (\inputB[12]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[14]~input_o\)))) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[15]~input_o\ & ( 
-- \inputB[13]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[12]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[14]~input_o\))))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)))) ) ) ) # ( \inputB[15]~input_o\ & ( !\inputB[13]~input_o\ 
-- & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[12]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[14]~input_o\))))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) ) ) ) # ( !\inputB[15]~input_o\ & ( !\inputB[13]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[12]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[14]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	datae => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	combout => \ShiftRight0~6_combout\);

-- Location: MLABCELL_X25_Y1_N24
\ShiftRight0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = ( \shamt[1]~input_o\ & ( \inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[2]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[1]~input_o\ & ( (\inputB[0]~input_o\) # 
-- (\shamt[0]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[2]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- \inputB[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010100101111101110111011101110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[0]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	combout => \ShiftRight0~58_combout\);

-- Location: MLABCELL_X34_Y3_N33
\ShiftRight0~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = ( \ShiftRight0~58_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\) # ((\ShiftRight0~7_combout\)))) # (\shamt[2]~input_o\ & (((\ShiftRight0~6_combout\)))) ) ) # ( !\ShiftRight0~58_combout\ & ( (!\shamt[2]~input_o\ & 
-- (\shamt[3]~input_o\ & (\ShiftRight0~7_combout\))) # (\shamt[2]~input_o\ & (((\ShiftRight0~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~7_combout\,
	datad => \ALT_INV_ShiftRight0~6_combout\,
	dataf => \ALT_INV_ShiftRight0~58_combout\,
	combout => \ShiftRight0~59_combout\);

-- Location: LABCELL_X30_Y3_N3
\ShiftRight0~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = ( \ShiftRight0~59_combout\ & ( (!\shamt[4]~input_o\ & ((!\ShiftLeft0~11_combout\) # ((\ShiftRight0~11_combout\)))) # (\shamt[4]~input_o\ & (((\ShiftRight0~51_combout\)))) ) ) # ( !\ShiftRight0~59_combout\ & ( 
-- (!\shamt[4]~input_o\ & (\ShiftLeft0~11_combout\ & ((\ShiftRight0~11_combout\)))) # (\shamt[4]~input_o\ & (((\ShiftRight0~51_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~11_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~51_combout\,
	datad => \ALT_INV_ShiftRight0~11_combout\,
	dataf => \ALT_INV_ShiftRight0~59_combout\,
	combout => \ShiftRight0~60_combout\);

-- Location: LABCELL_X30_Y3_N33
\ShiftRight0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = ( \ShiftRight0~53_combout\ & ( (!\shamt[4]~input_o\) # (\inputB[31]~input_o\) ) ) # ( !\ShiftRight0~53_combout\ & ( (\shamt[4]~input_o\ & \inputB[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_ShiftRight0~53_combout\,
	combout => \ShiftRight0~54_combout\);

-- Location: LABCELL_X30_Y3_N30
\LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~3_combout\ = ( !\ShiftRight0~54_combout\ & ( (!\ShiftRight0~52_combout\ & (\ShiftRight0~57_combout\ & (!\ShiftRight0~64_combout\ & !\ShiftRight0~60_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~52_combout\,
	datab => \ALT_INV_ShiftRight0~57_combout\,
	datac => \ALT_INV_ShiftRight0~64_combout\,
	datad => \ALT_INV_ShiftRight0~60_combout\,
	dataf => \ALT_INV_ShiftRight0~54_combout\,
	combout => \LessThan6~3_combout\);

-- Location: MLABCELL_X34_Y3_N45
\ShiftRight0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = ( \ShiftRight0~5_combout\ & ( (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & (\ShiftRight0~7_combout\))) # (\shamt[2]~input_o\ & (((\ShiftRight0~6_combout\)) # (\shamt[3]~input_o\))) ) ) # ( !\ShiftRight0~5_combout\ & ( 
-- (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & (\ShiftRight0~7_combout\)) # (\shamt[2]~input_o\ & ((\ShiftRight0~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~7_combout\,
	datad => \ALT_INV_ShiftRight0~6_combout\,
	dataf => \ALT_INV_ShiftRight0~5_combout\,
	combout => \ShiftRight0~8_combout\);

-- Location: LABCELL_X33_Y3_N3
\ShiftRight0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = ( !\ShiftRight0~4_combout\ & ( \shamt[4]~input_o\ ) ) # ( \ShiftRight0~4_combout\ & ( !\shamt[4]~input_o\ & ( (!\ShiftRight0~8_combout\ & ((!\ShiftRight0~1_combout\) # (!\ShiftRight0~0_combout\))) ) ) ) # ( 
-- !\ShiftRight0~4_combout\ & ( !\shamt[4]~input_o\ & ( (!\ShiftRight0~8_combout\ & ((!\ShiftRight0~1_combout\) # (!\ShiftRight0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~8_combout\,
	datab => \ALT_INV_ShiftRight0~1_combout\,
	datac => \ALT_INV_ShiftRight0~0_combout\,
	datae => \ALT_INV_ShiftRight0~4_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~9_combout\);

-- Location: MLABCELL_X25_Y1_N18
\ShiftRight0~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = ( \shamt[1]~input_o\ & ( \inputB[5]~input_o\ & ( (\inputB[4]~input_o\) # (\shamt[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[5]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[2]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[3]~input_o\))) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[5]~input_o\ & ( (!\shamt[0]~input_o\ & \inputB[4]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[5]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[2]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111001000100010001000001010010111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \ShiftRight0~48_combout\);

-- Location: LABCELL_X33_Y3_N48
\ShiftRight0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = ( \shamt[2]~input_o\ & ( \ShiftRight0~26_combout\ ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\ShiftRight0~48_combout\))) # (\shamt[3]~input_o\ & (\ShiftRight0~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~26_combout\,
	datab => \ALT_INV_ShiftRight0~25_combout\,
	datac => \ALT_INV_ShiftRight0~48_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftRight0~49_combout\);

-- Location: MLABCELL_X28_Y3_N0
\ShiftRight0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = ( \shamt[4]~input_o\ & ( \ShiftRight0~46_combout\ ) ) # ( !\shamt[4]~input_o\ & ( (!\ShiftLeft0~11_combout\ & (\ShiftRight0~49_combout\)) # (\ShiftLeft0~11_combout\ & ((\ShiftRight0~47_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~49_combout\,
	datab => \ALT_INV_ShiftRight0~47_combout\,
	datac => \ALT_INV_ShiftLeft0~11_combout\,
	datad => \ALT_INV_ShiftRight0~46_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~50_combout\);

-- Location: MLABCELL_X34_Y3_N30
\ShiftRight0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = ( \ShiftRight0~11_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\) # ((\ShiftRight0~6_combout\)))) # (\shamt[2]~input_o\ & (((\ShiftRight0~0_combout\)))) ) ) # ( !\ShiftRight0~11_combout\ & ( (!\shamt[2]~input_o\ & 
-- (\shamt[3]~input_o\ & (\ShiftRight0~6_combout\))) # (\shamt[2]~input_o\ & (((\ShiftRight0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~6_combout\,
	datad => \ALT_INV_ShiftRight0~0_combout\,
	dataf => \ALT_INV_ShiftRight0~11_combout\,
	combout => \ShiftRight0~12_combout\);

-- Location: MLABCELL_X28_Y3_N30
\ShiftRight0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = ( \shamt[4]~input_o\ & ( \ShiftRight0~10_combout\ ) ) # ( !\shamt[4]~input_o\ & ( (!\ShiftLeft0~11_combout\ & (\ShiftRight0~12_combout\)) # (\ShiftLeft0~11_combout\ & ((\ShiftRight0~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~12_combout\,
	datab => \ALT_INV_ShiftRight0~7_combout\,
	datac => \ALT_INV_ShiftRight0~10_combout\,
	datad => \ALT_INV_ShiftLeft0~11_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~13_combout\);

-- Location: LABCELL_X30_Y3_N24
\ShiftRight0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = ( !\shamt[4]~input_o\ & ( \ShiftRight0~18_combout\ & ( (!\shamt[3]~input_o\ & (((!\shamt[2]~input_o\)))) # (\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & ((\ShiftRight0~17_combout\))) # (\shamt[2]~input_o\ & 
-- (\ShiftRight0~16_combout\)))) ) ) ) # ( !\shamt[4]~input_o\ & ( !\ShiftRight0~18_combout\ & ( (\shamt[3]~input_o\ & ((!\shamt[2]~input_o\ & ((\ShiftRight0~17_combout\))) # (\shamt[2]~input_o\ & (\ShiftRight0~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000000000000000011000001111100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~16_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_ShiftRight0~17_combout\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_ShiftRight0~18_combout\,
	combout => \ShiftRight0~19_combout\);

-- Location: LABCELL_X30_Y3_N36
\ShiftRight0~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~98_combout\ = ( !\shamt[2]~input_o\ & ( ((\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & (\ShiftRight0~15_combout\)) # (\shamt[3]~input_o\ & ((\inputB[31]~input_o\)))))) # (\ShiftRight0~19_combout\) ) ) # ( \shamt[2]~input_o\ & ( 
-- ((!\shamt[4]~input_o\ & (\ShiftRight0~14_combout\ & ((!\shamt[3]~input_o\)))) # (\shamt[4]~input_o\ & (((\inputB[31]~input_o\))))) # (\ShiftRight0~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101011101010111010111010111111101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~19_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~14_combout\,
	datad => \ALT_INV_inputB[31]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_shamt[3]~input_o\,
	datag => \ALT_INV_ShiftRight0~15_combout\,
	combout => \ShiftRight0~98_combout\);

-- Location: MLABCELL_X28_Y3_N3
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( !\ShiftRight0~98_combout\ & ( !\ShiftRight0~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~13_combout\,
	dataf => \ALT_INV_ShiftRight0~98_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X33_Y3_N24
\ShiftRight0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = ( \shamt[3]~input_o\ & ( !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & ((\ShiftRight0~28_combout\))) # (\shamt[2]~input_o\ & (\ShiftRight0~27_combout\)) ) ) ) # ( !\shamt[3]~input_o\ & ( !\shamt[4]~input_o\ & ( 
-- (\shamt[2]~input_o\ & \ShiftRight0~26_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~27_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_ShiftRight0~26_combout\,
	datad => \ALT_INV_ShiftRight0~28_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~29_combout\);

-- Location: LABCELL_X33_Y3_N6
\ShiftRight0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = ( \ShiftRight0~24_combout\ & ( (!\shamt[4]~input_o\ & (!\ShiftRight0~29_combout\ & ((!\ShiftRight0~25_combout\) # (!\ShiftLeft0~12_combout\)))) ) ) # ( !\ShiftRight0~24_combout\ & ( (!\ShiftRight0~29_combout\ & 
-- ((!\ShiftRight0~25_combout\) # ((!\ShiftLeft0~12_combout\) # (\shamt[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010110000111100001011000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~25_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~29_combout\,
	datad => \ALT_INV_ShiftLeft0~12_combout\,
	dataf => \ALT_INV_ShiftRight0~24_combout\,
	combout => \ShiftRight0~30_combout\);

-- Location: MLABCELL_X34_Y3_N6
\ShiftRight0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = ( \shamt[3]~input_o\ & ( \ShiftRight0~2_combout\ & ( (!\shamt[4]~input_o\ & (\shamt[2]~input_o\)) # (\shamt[4]~input_o\ & ((\inputB[31]~input_o\))) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftRight0~2_combout\ & ( 
-- (\shamt[2]~input_o\ & ((!\shamt[4]~input_o\ & (\ShiftRight0~0_combout\)) # (\shamt[4]~input_o\ & ((\inputB[31]~input_o\))))) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftRight0~2_combout\ & ( (\shamt[4]~input_o\ & \inputB[31]~input_o\) ) ) ) # ( 
-- !\shamt[3]~input_o\ & ( !\ShiftRight0~2_combout\ & ( (\shamt[2]~input_o\ & ((!\shamt[4]~input_o\ & (\ShiftRight0~0_combout\)) # (\shamt[4]~input_o\ & ((\inputB[31]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000000101010100000010000001110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_inputB[31]~input_o\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftRight0~2_combout\,
	combout => \ShiftRight0~21_combout\);

-- Location: MLABCELL_X34_Y3_N0
\ShiftRight0~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~94_combout\ = ( !\shamt[3]~input_o\ & ( ((!\shamt[2]~input_o\ & ((!\shamt[4]~input_o\ & ((\ShiftRight0~6_combout\))) # (\shamt[4]~input_o\ & (\ShiftRight0~3_combout\))))) # (\ShiftRight0~21_combout\) ) ) # ( \shamt[3]~input_o\ & ( 
-- (((!\shamt[2]~input_o\ & (\ShiftRight0~5_combout\ & !\shamt[4]~input_o\))) # (\ShiftRight0~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101011111111000010101111111100100010111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_ShiftRight0~3_combout\,
	datac => \ALT_INV_ShiftRight0~5_combout\,
	datad => \ALT_INV_ShiftRight0~21_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	datag => \ALT_INV_ShiftRight0~6_combout\,
	combout => \ShiftRight0~94_combout\);

-- Location: LABCELL_X36_Y3_N36
\ShiftRight0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = ( \ShiftRight0~33_combout\ & ( !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & (((\ShiftRight0~35_combout\)) # (\shamt[3]~input_o\))) # (\shamt[2]~input_o\ & (\shamt[3]~input_o\ & ((\ShiftRight0~34_combout\)))) ) ) ) # ( 
-- !\ShiftRight0~33_combout\ & ( !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & (\ShiftRight0~35_combout\))) # (\shamt[2]~input_o\ & (\shamt[3]~input_o\ & ((\ShiftRight0~34_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~35_combout\,
	datad => \ALT_INV_ShiftRight0~34_combout\,
	datae => \ALT_INV_ShiftRight0~33_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~36_combout\);

-- Location: LABCELL_X36_Y3_N48
\ShiftRight0~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~90_combout\ = ( !\shamt[2]~input_o\ & ( ((\shamt[4]~input_o\ & ((!\shamt[3]~input_o\ & (\ShiftRight0~31_combout\)) # (\shamt[3]~input_o\ & ((\inputB[31]~input_o\)))))) # (\ShiftRight0~36_combout\) ) ) # ( \shamt[2]~input_o\ & ( 
-- ((!\shamt[4]~input_o\ & (!\shamt[3]~input_o\ & (\ShiftRight0~32_combout\))) # (\shamt[4]~input_o\ & (((\inputB[31]~input_o\))))) # (\ShiftRight0~36_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010111010101110101011101011111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~36_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~32_combout\,
	datad => \ALT_INV_inputB[31]~input_o\,
	datae => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	datag => \ALT_INV_ShiftRight0~31_combout\,
	combout => \ShiftRight0~90_combout\);

-- Location: MLABCELL_X28_Y3_N33
\LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ( !\ShiftRight0~90_combout\ & ( (\ShiftRight0~30_combout\ & !\ShiftRight0~94_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~30_combout\,
	datad => \ALT_INV_ShiftRight0~94_combout\,
	dataf => \ALT_INV_ShiftRight0~90_combout\,
	combout => \LessThan6~1_combout\);

-- Location: MLABCELL_X28_Y3_N48
\LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~4_combout\ = ( \LessThan6~0_combout\ & ( \LessThan6~1_combout\ & ( (\LessThan6~2_combout\ & (\LessThan6~3_combout\ & (\ShiftRight0~9_combout\ & !\ShiftRight0~50_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~2_combout\,
	datab => \ALT_INV_LessThan6~3_combout\,
	datac => \ALT_INV_ShiftRight0~9_combout\,
	datad => \ALT_INV_ShiftRight0~50_combout\,
	datae => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_LessThan6~1_combout\,
	combout => \LessThan6~4_combout\);

-- Location: MLABCELL_X25_Y1_N48
\ShiftLeft0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = ( \shamt[1]~input_o\ & ( \inputB[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[2]~input_o\)) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[1]~input_o\ & ( (\shamt[0]~input_o\ & \inputB[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000100010001000100000101101011111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[0]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	combout => \ShiftLeft0~3_combout\);

-- Location: LABCELL_X35_Y2_N12
\ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = ( \inputB[15]~input_o\ & ( \inputB[13]~input_o\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & ((\inputB[14]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[12]~input_o\))) ) ) ) # ( !\inputB[15]~input_o\ & ( 
-- \inputB[13]~input_o\ & ( (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[14]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[12]~input_o\)))) ) ) ) # ( \inputB[15]~input_o\ & ( !\inputB[13]~input_o\ 
-- & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[14]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[12]~input_o\)))) ) ) ) # ( !\inputB[15]~input_o\ & ( !\inputB[13]~input_o\ & ( 
-- (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & ((\inputB[14]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001101000011111000100001011010110111010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	datae => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: LABCELL_X33_Y2_N6
\ShiftLeft0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = ( \shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\) # (\inputB[8]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[11]~input_o\)) # (\shamt[1]~input_o\ & 
-- ((\inputB[9]~input_o\))) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( (\shamt[1]~input_o\ & \inputB[8]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[11]~input_o\)) # (\shamt[1]~input_o\ 
-- & ((\inputB[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000011001101000111010001111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_inputB[8]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LABCELL_X29_Y2_N24
\ShiftLeft0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = ( \inputB[4]~input_o\ & ( \shamt[1]~input_o\ & ( (\inputB[5]~input_o\) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[4]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & \inputB[5]~input_o\) ) ) ) # ( \inputB[4]~input_o\ & ( 
-- !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[7]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[6]~input_o\)) ) ) ) # ( !\inputB[4]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[7]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputB[4]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftLeft0~1_combout\);

-- Location: LABCELL_X31_Y2_N12
\ShiftLeft0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = ( \shamt[3]~input_o\ & ( \ShiftLeft0~1_combout\ & ( (!\shamt[2]~input_o\) # (\ShiftLeft0~3_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftLeft0~1_combout\ & ( (!\shamt[2]~input_o\ & (\ShiftLeft0~0_combout\)) # 
-- (\shamt[2]~input_o\ & ((\ShiftLeft0~2_combout\))) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftLeft0~1_combout\ & ( (\ShiftLeft0~3_combout\ & \shamt[2]~input_o\) ) ) ) # ( !\shamt[3]~input_o\ & ( !\ShiftLeft0~1_combout\ & ( (!\shamt[2]~input_o\ & 
-- (\ShiftLeft0~0_combout\)) # (\shamt[2]~input_o\ & ((\ShiftLeft0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~3_combout\,
	datab => \ALT_INV_ShiftLeft0~0_combout\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_ShiftLeft0~2_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~1_combout\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LABCELL_X35_Y3_N12
\ShiftLeft0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = ( \inputB[17]~input_o\ & ( \inputB[16]~input_o\ & ( ((!\shamt[0]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[18]~input_o\)))) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[17]~input_o\ & ( \inputB[16]~input_o\ 
-- & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[18]~input_o\))))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)))) ) ) ) # ( \inputB[17]~input_o\ & ( !\inputB[16]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[18]~input_o\))))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)))) ) ) ) # ( !\inputB[17]~input_o\ & ( !\inputB[16]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & (\inputB[19]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[18]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[18]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LABCELL_X35_Y4_N6
\ShiftLeft0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = ( \shamt[1]~input_o\ & ( \inputB[23]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[21]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[20]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[23]~input_o\ & ( (!\shamt[0]~input_o\) # 
-- (\inputB[22]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[23]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[21]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[20]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[23]~input_o\ & ( 
-- (\shamt[0]~input_o\ & \inputB[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110111001111110011110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[20]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[22]~input_o\,
	datad => \ALT_INV_inputB[21]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[23]~input_o\,
	combout => \ShiftLeft0~6_combout\);

-- Location: MLABCELL_X34_Y3_N54
\ShiftLeft0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = ( \shamt[1]~input_o\ & ( \inputB[28]~input_o\ & ( (\shamt[0]~input_o\) # (\inputB[29]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[28]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[31]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[30]~input_o\))) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[28]~input_o\ & ( (\inputB[29]~input_o\ & !\shamt[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[28]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[31]~input_o\)) # 
-- (\shamt[0]~input_o\ & ((\inputB[30]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000000000110011000011110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[29]~input_o\,
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_inputB[30]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[28]~input_o\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LABCELL_X37_Y3_N0
\ShiftLeft0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = ( \inputB[27]~input_o\ & ( \inputB[25]~input_o\ & ( (!\shamt[0]~input_o\) # ((!\shamt[1]~input_o\ & ((\inputB[26]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[24]~input_o\))) ) ) ) # ( !\inputB[27]~input_o\ & ( 
-- \inputB[25]~input_o\ & ( (!\shamt[1]~input_o\ & (\shamt[0]~input_o\ & ((\inputB[26]~input_o\)))) # (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\) # ((\inputB[24]~input_o\)))) ) ) ) # ( \inputB[27]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\shamt[1]~input_o\ 
-- & ((!\shamt[0]~input_o\) # ((\inputB[26]~input_o\)))) # (\shamt[1]~input_o\ & (\shamt[0]~input_o\ & (\inputB[24]~input_o\))) ) ) ) # ( !\inputB[27]~input_o\ & ( !\inputB[25]~input_o\ & ( (\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & 
-- ((\inputB[26]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[24]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011100010011010101101000101011001111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LABCELL_X31_Y3_N48
\ShiftLeft0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = ( \shamt[3]~input_o\ & ( \ShiftLeft0~7_combout\ & ( (!\shamt[2]~input_o\ & ((\ShiftLeft0~6_combout\))) # (\shamt[2]~input_o\ & (\ShiftLeft0~5_combout\)) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftLeft0~7_combout\ & ( 
-- (\ShiftLeft0~8_combout\) # (\shamt[2]~input_o\) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftLeft0~7_combout\ & ( (!\shamt[2]~input_o\ & ((\ShiftLeft0~6_combout\))) # (\shamt[2]~input_o\ & (\ShiftLeft0~5_combout\)) ) ) ) # ( !\shamt[3]~input_o\ & ( 
-- !\ShiftLeft0~7_combout\ & ( (!\shamt[2]~input_o\ & \ShiftLeft0~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000110110001101101010101111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_ShiftLeft0~5_combout\,
	datac => \ALT_INV_ShiftLeft0~6_combout\,
	datad => \ALT_INV_ShiftLeft0~8_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~7_combout\,
	combout => \ShiftLeft0~9_combout\);

-- Location: MLABCELL_X28_Y3_N27
\ShiftLeft0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = ( \ShiftLeft0~9_combout\ & ( (!\shamt[4]~input_o\) # (\ShiftLeft0~4_combout\) ) ) # ( !\ShiftLeft0~9_combout\ & ( (\shamt[4]~input_o\ & \ShiftLeft0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_ShiftLeft0~4_combout\,
	dataf => \ALT_INV_ShiftLeft0~9_combout\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LABCELL_X35_Y4_N0
\ShiftLeft0~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = ( \shamt[1]~input_o\ & ( \inputB[22]~input_o\ & ( (\shamt[0]~input_o\) # (\inputB[23]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[25]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[24]~input_o\)) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[22]~input_o\ & ( (\inputB[23]~input_o\ & !\shamt[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[25]~input_o\))) # 
-- (\shamt[0]~input_o\ & (\inputB[24]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	datad => \ALT_INV_inputB[25]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \ShiftLeft0~56_combout\);

-- Location: LABCELL_X33_Y2_N48
\ShiftLeft0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = ( \inputB[9]~input_o\ & ( \inputB[8]~input_o\ & ( (!\shamt[1]~input_o\) # ((!\shamt[0]~input_o\ & ((\inputB[7]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[6]~input_o\))) ) ) ) # ( !\inputB[9]~input_o\ & ( \inputB[8]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & (((\inputB[7]~input_o\ & \shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)) # (\inputB[6]~input_o\))) ) ) ) # ( \inputB[9]~input_o\ & ( !\inputB[8]~input_o\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\) # 
-- (\inputB[7]~input_o\)))) # (\shamt[0]~input_o\ & (\inputB[6]~input_o\ & ((\shamt[1]~input_o\)))) ) ) ) # ( !\inputB[9]~input_o\ & ( !\inputB[8]~input_o\ & ( (\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[7]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputB[8]~input_o\,
	combout => \ShiftLeft0~26_combout\);

-- Location: MLABCELL_X25_Y1_N36
\ShiftLeft0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = ( \shamt[1]~input_o\ & ( \inputB[5]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[2]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[5]~input_o\ & ( (!\shamt[0]~input_o\) # 
-- (\inputB[4]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[5]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[2]~input_o\)) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[5]~input_o\ & ( (\shamt[0]~input_o\ & 
-- \inputB[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[5]~input_o\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LABCELL_X33_Y2_N12
\ShiftLeft0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[1]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftLeft0~22_combout\);

-- Location: LABCELL_X35_Y2_N48
\ShiftLeft0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = ( \shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (\inputB[12]~input_o\) # (\shamt[1]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[13]~input_o\)) # (\shamt[1]~input_o\ & 
-- ((\inputB[11]~input_o\))) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & \inputB[12]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[13]~input_o\)) # 
-- (\shamt[1]~input_o\ & ((\inputB[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[13]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \ShiftLeft0~30_combout\);

-- Location: LABCELL_X31_Y2_N36
\ShiftLeft0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = ( \shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \ShiftLeft0~22_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \ShiftLeft0~26_combout\ ) ) ) # ( \shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( 
-- \ShiftLeft0~15_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \ShiftLeft0~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~26_combout\,
	datab => \ALT_INV_ShiftLeft0~15_combout\,
	datac => \ALT_INV_ShiftLeft0~22_combout\,
	datad => \ALT_INV_ShiftLeft0~30_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~31_combout\);

-- Location: LABCELL_X31_Y2_N54
\ShiftLeft0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = ( \inputB[21]~input_o\ & ( \inputB[18]~input_o\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\) # ((\inputB[20]~input_o\)))) # (\shamt[1]~input_o\ & (((\inputB[19]~input_o\)) # (\shamt[0]~input_o\))) ) ) ) # ( 
-- !\inputB[21]~input_o\ & ( \inputB[18]~input_o\ & ( (!\shamt[1]~input_o\ & (\shamt[0]~input_o\ & ((\inputB[20]~input_o\)))) # (\shamt[1]~input_o\ & (((\inputB[19]~input_o\)) # (\shamt[0]~input_o\))) ) ) ) # ( \inputB[21]~input_o\ & ( !\inputB[18]~input_o\ 
-- & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\) # ((\inputB[20]~input_o\)))) # (\shamt[1]~input_o\ & (!\shamt[0]~input_o\ & (\inputB[19]~input_o\))) ) ) ) # ( !\inputB[21]~input_o\ & ( !\inputB[18]~input_o\ & ( (!\shamt[1]~input_o\ & (\shamt[0]~input_o\ 
-- & ((\inputB[20]~input_o\)))) # (\shamt[1]~input_o\ & (!\shamt[0]~input_o\ & (\inputB[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[19]~input_o\,
	datad => \ALT_INV_inputB[20]~input_o\,
	datae => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \ShiftLeft0~38_combout\);

-- Location: LABCELL_X35_Y3_N0
\ShiftLeft0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = ( \shamt[0]~input_o\ & ( \inputB[16]~input_o\ & ( (!\shamt[1]~input_o\) # (\inputB[14]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[16]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[17]~input_o\)) # (\shamt[1]~input_o\ & 
-- ((\inputB[15]~input_o\))) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[16]~input_o\ & ( (\inputB[14]~input_o\ & \shamt[1]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[16]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[17]~input_o\)) # 
-- (\shamt[1]~input_o\ & ((\inputB[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000100010001000100001100001111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[14]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[17]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \ShiftLeft0~34_combout\);

-- Location: LABCELL_X37_Y3_N6
\ShiftLeft0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = ( \inputB[27]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[26]~input_o\) ) ) ) # ( !\inputB[27]~input_o\ & ( \shamt[1]~input_o\ & ( (\shamt[0]~input_o\ & \inputB[26]~input_o\) ) ) ) # ( 
-- \inputB[27]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[29]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) ) ) ) # ( !\inputB[27]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[29]~input_o\)) # 
-- (\shamt[0]~input_o\ & ((\inputB[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[29]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[28]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LABCELL_X31_Y2_N30
\ShiftLeft0~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = ( \ShiftLeft0~57_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[3]~input_o\)) # (\ShiftLeft0~38_combout\))) # (\shamt[2]~input_o\ & (((\ShiftLeft0~34_combout\)))) ) ) # ( !\ShiftLeft0~57_combout\ & ( (!\shamt[2]~input_o\ & 
-- (\ShiftLeft0~38_combout\ & (\shamt[3]~input_o\))) # (\shamt[2]~input_o\ & (((\ShiftLeft0~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111111011101000011111101110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~38_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~34_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~57_combout\,
	combout => \ShiftLeft0~58_combout\);

-- Location: LABCELL_X29_Y3_N21
\ShiftLeft0~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = ( \ShiftLeft0~58_combout\ & ( (!\shamt[4]~input_o\ & (((!\ShiftLeft0~11_combout\)) # (\ShiftLeft0~56_combout\))) # (\shamt[4]~input_o\ & (((\ShiftLeft0~31_combout\)))) ) ) # ( !\ShiftLeft0~58_combout\ & ( (!\shamt[4]~input_o\ & 
-- (\ShiftLeft0~56_combout\ & (\ShiftLeft0~11_combout\))) # (\shamt[4]~input_o\ & (((\ShiftLeft0~31_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110100010111101111010001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ShiftLeft0~56_combout\,
	datac => \ALT_INV_ShiftLeft0~11_combout\,
	datad => \ALT_INV_ShiftLeft0~31_combout\,
	dataf => \ALT_INV_ShiftLeft0~58_combout\,
	combout => \ShiftLeft0~59_combout\);

-- Location: LABCELL_X31_Y3_N57
\ShiftLeft0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = ( \ShiftLeft0~6_combout\ & ( (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & (\ShiftLeft0~7_combout\))) # (\shamt[2]~input_o\ & ((!\shamt[3]~input_o\) # ((\ShiftLeft0~0_combout\)))) ) ) # ( !\ShiftLeft0~6_combout\ & ( 
-- (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & (\ShiftLeft0~7_combout\))) # (\shamt[2]~input_o\ & (\shamt[3]~input_o\ & ((\ShiftLeft0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~7_combout\,
	datad => \ALT_INV_ShiftLeft0~0_combout\,
	dataf => \ALT_INV_ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~54_combout\);

-- Location: LABCELL_X31_Y3_N36
\ShiftLeft0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = ( \ShiftLeft0~1_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & (\ShiftLeft0~2_combout\)) # (\shamt[3]~input_o\ & ((\ShiftLeft0~3_combout\))))) # (\shamt[2]~input_o\ & (!\shamt[3]~input_o\)) ) ) # ( 
-- !\ShiftLeft0~1_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & (\ShiftLeft0~2_combout\)) # (\shamt[3]~input_o\ & ((\ShiftLeft0~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~2_combout\,
	datad => \ALT_INV_ShiftLeft0~3_combout\,
	dataf => \ALT_INV_ShiftLeft0~1_combout\,
	combout => \ShiftLeft0~23_combout\);

-- Location: LABCELL_X29_Y3_N51
\ShiftLeft0~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = ( \ShiftLeft0~23_combout\ & ( (!\shamt[4]~input_o\ & (!\ShiftLeft0~54_combout\ & ((!\ShiftRight0~1_combout\) # (!\ShiftLeft0~5_combout\)))) ) ) # ( !\ShiftLeft0~23_combout\ & ( ((!\ShiftLeft0~54_combout\ & 
-- ((!\ShiftRight0~1_combout\) # (!\ShiftLeft0~5_combout\)))) # (\shamt[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111010101111101011101010110100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ShiftRight0~1_combout\,
	datac => \ALT_INV_ShiftLeft0~54_combout\,
	datad => \ALT_INV_ShiftLeft0~5_combout\,
	dataf => \ALT_INV_ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~55_combout\);

-- Location: LABCELL_X29_Y3_N18
\LessThan5~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~8_combout\ = ( \ShiftLeft0~55_combout\ & ( !\ShiftLeft0~59_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftLeft0~59_combout\,
	dataf => \ALT_INV_ShiftLeft0~55_combout\,
	combout => \LessThan5~8_combout\);

-- Location: MLABCELL_X34_Y2_N18
\ShiftLeft0~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = ( \inputB[15]~input_o\ & ( \inputB[16]~input_o\ & ( ((!\shamt[0]~input_o\ & (\inputB[18]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[17]~input_o\)))) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[15]~input_o\ & ( 
-- \inputB[16]~input_o\ & ( (!\shamt[0]~input_o\ & (((\shamt[1]~input_o\)) # (\inputB[18]~input_o\))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\ & \inputB[17]~input_o\)))) ) ) ) # ( \inputB[15]~input_o\ & ( !\inputB[16]~input_o\ & ( (!\shamt[0]~input_o\ 
-- & (\inputB[18]~input_o\ & (!\shamt[1]~input_o\))) # (\shamt[0]~input_o\ & (((\inputB[17]~input_o\) # (\shamt[1]~input_o\)))) ) ) ) # ( !\inputB[15]~input_o\ & ( !\inputB[16]~input_o\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & 
-- (\inputB[18]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[17]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[18]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	datae => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \ShiftLeft0~42_combout\);

-- Location: MLABCELL_X34_Y2_N0
\ShiftLeft0~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = ( \inputB[19]~input_o\ & ( \inputB[21]~input_o\ & ( ((!\shamt[1]~input_o\ & (\inputB[22]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[20]~input_o\)))) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[19]~input_o\ & ( 
-- \inputB[21]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[22]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[20]~input_o\))))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)))) ) ) ) # ( \inputB[19]~input_o\ & ( !\inputB[21]~input_o\ 
-- & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[22]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[20]~input_o\))))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) ) ) ) # ( !\inputB[19]~input_o\ & ( !\inputB[21]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[22]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[20]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[22]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[20]~input_o\,
	datae => \ALT_INV_inputB[19]~input_o\,
	dataf => \ALT_INV_inputB[21]~input_o\,
	combout => \ShiftLeft0~43_combout\);

-- Location: MLABCELL_X34_Y2_N6
\ShiftLeft0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = ( \shamt[1]~input_o\ & ( \inputB[27]~input_o\ & ( (\shamt[0]~input_o\) # (\inputB[28]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[27]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[30]~input_o\))) # (\shamt[0]~input_o\ & 
-- (\inputB[29]~input_o\)) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[27]~input_o\ & ( (\inputB[28]~input_o\ & !\shamt[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[27]~input_o\ & ( (!\shamt[0]~input_o\ & ((\inputB[30]~input_o\))) # 
-- (\shamt[0]~input_o\ & (\inputB[29]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[28]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[27]~input_o\,
	combout => \ShiftLeft0~61_combout\);

-- Location: MLABCELL_X34_Y2_N24
\ShiftLeft0~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = ( \ShiftLeft0~61_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[3]~input_o\) # ((\ShiftLeft0~43_combout\)))) # (\shamt[2]~input_o\ & (((\ShiftLeft0~42_combout\)))) ) ) # ( !\ShiftLeft0~61_combout\ & ( (!\shamt[2]~input_o\ & 
-- (\shamt[3]~input_o\ & ((\ShiftLeft0~43_combout\)))) # (\shamt[2]~input_o\ & (((\ShiftLeft0~42_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[3]~input_o\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~42_combout\,
	datad => \ALT_INV_ShiftLeft0~43_combout\,
	dataf => \ALT_INV_ShiftLeft0~61_combout\,
	combout => \ShiftLeft0~62_combout\);

-- Location: LABCELL_X33_Y2_N30
\ShiftLeft0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = ( \shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[7]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\) # 
-- (\inputB[8]~input_o\) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & ((\inputB[9]~input_o\))) # (\shamt[1]~input_o\ & (\inputB[7]~input_o\)) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[10]~input_o\ & ( 
-- (\inputB[8]~input_o\ & \shamt[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[7]~input_o\,
	datab => \ALT_INV_inputB[8]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_shamt[1]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LABCELL_X29_Y2_N12
\ShiftLeft0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = ( \inputB[6]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[4]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) ) ) ) # ( !\inputB[6]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (\inputB[4]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[3]~input_o\))) ) ) ) # ( \inputB[6]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[5]~input_o\) ) ) ) # ( !\inputB[6]~input_o\ & ( !\shamt[1]~input_o\ & ( (\shamt[0]~input_o\ 
-- & \inputB[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LABCELL_X35_Y2_N6
\ShiftLeft0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = ( \shamt[0]~input_o\ & ( \inputB[13]~input_o\ & ( (!\shamt[1]~input_o\) # (\inputB[11]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( \inputB[13]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[14]~input_o\)) # (\shamt[1]~input_o\ & 
-- ((\inputB[12]~input_o\))) ) ) ) # ( \shamt[0]~input_o\ & ( !\inputB[13]~input_o\ & ( (\shamt[1]~input_o\ & \inputB[11]~input_o\) ) ) ) # ( !\shamt[0]~input_o\ & ( !\inputB[13]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[14]~input_o\)) # 
-- (\shamt[1]~input_o\ & ((\inputB[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000001010000010100100010011101111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[1]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	combout => \ShiftLeft0~28_combout\);

-- Location: MLABCELL_X25_Y1_N33
\ShiftLeft0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = ( \inputB[1]~input_o\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[2]~input_o\))) # (\shamt[1]~input_o\ & (((\inputB[0]~input_o\ & !\shamt[0]~input_o\)))) ) ) # ( !\inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- ((!\shamt[1]~input_o\ & (\inputB[2]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001010011111100000101001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputB[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	combout => \ShiftLeft0~18_combout\);

-- Location: MLABCELL_X34_Y2_N36
\ShiftLeft0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = ( \shamt[3]~input_o\ & ( \ShiftLeft0~18_combout\ & ( (\shamt[2]~input_o\) # (\ShiftLeft0~14_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftLeft0~18_combout\ & ( (!\shamt[2]~input_o\ & ((\ShiftLeft0~28_combout\))) # 
-- (\shamt[2]~input_o\ & (\ShiftLeft0~17_combout\)) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftLeft0~18_combout\ & ( (\ShiftLeft0~14_combout\ & !\shamt[2]~input_o\) ) ) ) # ( !\shamt[3]~input_o\ & ( !\ShiftLeft0~18_combout\ & ( (!\shamt[2]~input_o\ & 
-- ((\ShiftLeft0~28_combout\))) # (\shamt[2]~input_o\ & (\ShiftLeft0~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~17_combout\,
	datab => \ALT_INV_ShiftLeft0~14_combout\,
	datac => \ALT_INV_ShiftLeft0~28_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~18_combout\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LABCELL_X37_Y3_N48
\ShiftLeft0~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = ( \inputB[24]~input_o\ & ( \inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & (((\inputB[26]~input_o\) # (\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)) # (\inputB[23]~input_o\))) ) ) ) # ( 
-- !\inputB[24]~input_o\ & ( \inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & (((!\shamt[1]~input_o\ & \inputB[26]~input_o\)))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)) # (\inputB[23]~input_o\))) ) ) ) # ( \inputB[24]~input_o\ & ( 
-- !\inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & (((\inputB[26]~input_o\) # (\shamt[1]~input_o\)))) # (\shamt[0]~input_o\ & (\inputB[23]~input_o\ & (\shamt[1]~input_o\))) ) ) ) # ( !\inputB[24]~input_o\ & ( !\inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & 
-- (((!\shamt[1]~input_o\ & \inputB[26]~input_o\)))) # (\shamt[0]~input_o\ & (\inputB[23]~input_o\ & (\shamt[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001000011011100110100110001111100010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \ShiftLeft0~60_combout\);

-- Location: LABCELL_X29_Y3_N30
\ShiftLeft0~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = ( \shamt[4]~input_o\ & ( \ShiftLeft0~29_combout\ ) ) # ( !\shamt[4]~input_o\ & ( (!\ShiftLeft0~11_combout\ & (\ShiftLeft0~62_combout\)) # (\ShiftLeft0~11_combout\ & ((\ShiftLeft0~60_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~62_combout\,
	datab => \ALT_INV_ShiftLeft0~11_combout\,
	datac => \ALT_INV_ShiftLeft0~29_combout\,
	datad => \ALT_INV_ShiftLeft0~60_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftLeft0~63_combout\);

-- Location: MLABCELL_X34_Y2_N54
\ShiftLeft0~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = ( \ShiftLeft0~28_combout\ & ( !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & (((\shamt[3]~input_o\)) # (\ShiftLeft0~43_combout\))) # (\shamt[2]~input_o\ & (((\ShiftLeft0~17_combout\ & \shamt[3]~input_o\)))) ) ) ) # ( 
-- !\ShiftLeft0~28_combout\ & ( !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & (\ShiftLeft0~43_combout\ & ((!\shamt[3]~input_o\)))) # (\shamt[2]~input_o\ & (((\ShiftLeft0~17_combout\ & \shamt[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~43_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~17_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_ShiftLeft0~28_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftLeft0~44_combout\);

-- Location: MLABCELL_X34_Y2_N42
\ShiftLeft0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = ( \shamt[2]~input_o\ & ( (\ShiftLeft0~18_combout\ & !\shamt[3]~input_o\) ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \ShiftLeft0~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~18_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~14_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~41_combout\);

-- Location: MLABCELL_X34_Y2_N12
\ShiftLeft0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = ( \ShiftLeft0~41_combout\ & ( (!\shamt[4]~input_o\ & (!\ShiftLeft0~44_combout\ & ((!\ShiftLeft0~11_combout\) # (!\ShiftLeft0~42_combout\)))) ) ) # ( !\ShiftLeft0~41_combout\ & ( (!\ShiftLeft0~44_combout\ & 
-- (((!\ShiftLeft0~11_combout\) # (!\ShiftLeft0~42_combout\)) # (\shamt[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110100000000111111010000000010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ShiftLeft0~11_combout\,
	datac => \ALT_INV_ShiftLeft0~42_combout\,
	datad => \ALT_INV_ShiftLeft0~44_combout\,
	dataf => \ALT_INV_ShiftLeft0~41_combout\,
	combout => \ShiftLeft0~45_combout\);

-- Location: LABCELL_X31_Y2_N48
\ShiftLeft0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = ( !\shamt[4]~input_o\ & ( \ShiftLeft0~30_combout\ & ( (!\shamt[3]~input_o\ & (\ShiftLeft0~34_combout\ & ((\shamt[2]~input_o\)))) # (\shamt[3]~input_o\ & (((!\shamt[2]~input_o\) # (\ShiftLeft0~26_combout\)))) ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\ShiftLeft0~30_combout\ & ( (\shamt[2]~input_o\ & ((!\shamt[3]~input_o\ & (\ShiftLeft0~34_combout\)) # (\shamt[3]~input_o\ & ((\ShiftLeft0~26_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000000000000110011010001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~34_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~26_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~30_combout\,
	combout => \ShiftLeft0~39_combout\);

-- Location: LABCELL_X31_Y2_N0
\ShiftLeft0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = ( \shamt[2]~input_o\ & ( (\ShiftLeft0~22_combout\ & !\shamt[3]~input_o\) ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \ShiftLeft0~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~22_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_ShiftLeft0~15_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~37_combout\);

-- Location: LABCELL_X31_Y2_N42
\ShiftLeft0~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = ( \ShiftLeft0~12_combout\ & ( (!\ShiftLeft0~39_combout\ & ((!\shamt[4]~input_o\ & (!\ShiftLeft0~38_combout\)) # (\shamt[4]~input_o\ & ((!\ShiftLeft0~37_combout\))))) ) ) # ( !\ShiftLeft0~12_combout\ & ( (!\ShiftLeft0~39_combout\ 
-- & ((!\shamt[4]~input_o\) # (!\ShiftLeft0~37_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000010110000100000001011000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~38_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftLeft0~39_combout\,
	datad => \ALT_INV_ShiftLeft0~37_combout\,
	dataf => \ALT_INV_ShiftLeft0~12_combout\,
	combout => \ShiftLeft0~40_combout\);

-- Location: LABCELL_X31_Y2_N6
\ShiftLeft0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = ( \shamt[4]~input_o\ & ( \ShiftLeft0~30_combout\ & ( (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & \ShiftLeft0~22_combout\)) ) ) ) # ( !\shamt[4]~input_o\ & ( \ShiftLeft0~30_combout\ & ( (\shamt[2]~input_o\ & 
-- ((!\shamt[3]~input_o\) # (\ShiftLeft0~15_combout\))) ) ) ) # ( \shamt[4]~input_o\ & ( !\ShiftLeft0~30_combout\ & ( (!\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & \ShiftLeft0~22_combout\)) ) ) ) # ( !\shamt[4]~input_o\ & ( !\ShiftLeft0~30_combout\ & ( 
-- (\shamt[2]~input_o\ & (\shamt[3]~input_o\ & \ShiftLeft0~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000010000000100001000100010101010000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~22_combout\,
	datad => \ALT_INV_ShiftLeft0~15_combout\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~30_combout\,
	combout => \ShiftLeft0~35_combout\);

-- Location: LABCELL_X31_Y2_N27
\ShiftLeft0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = ( \ShiftRight0~20_combout\ & ( (!\ShiftLeft0~35_combout\ & ((!\shamt[3]~input_o\ & (!\ShiftLeft0~34_combout\)) # (\shamt[3]~input_o\ & ((!\ShiftLeft0~26_combout\))))) ) ) # ( !\ShiftRight0~20_combout\ & ( !\ShiftLeft0~35_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010110000100000001011000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~34_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~35_combout\,
	datad => \ALT_INV_ShiftLeft0~26_combout\,
	dataf => \ALT_INV_ShiftRight0~20_combout\,
	combout => \ShiftLeft0~36_combout\);

-- Location: LABCELL_X29_Y3_N33
\LessThan5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~6_combout\ = ( \ShiftLeft0~36_combout\ & ( (\ShiftLeft0~45_combout\ & \ShiftLeft0~40_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftLeft0~45_combout\,
	datad => \ALT_INV_ShiftLeft0~40_combout\,
	dataf => \ALT_INV_ShiftLeft0~36_combout\,
	combout => \LessThan5~6_combout\);

-- Location: LABCELL_X33_Y2_N15
\ShiftLeft0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & \inputB[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftLeft0~16_combout\);

-- Location: MLABCELL_X34_Y2_N45
\ShiftLeft0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = ( \ShiftLeft0~17_combout\ & ( (!\shamt[3]~input_o\ & (((!\shamt[2]~input_o\) # (\ShiftLeft0~14_combout\)))) # (\shamt[3]~input_o\ & (\ShiftLeft0~18_combout\ & (!\shamt[2]~input_o\))) ) ) # ( !\ShiftLeft0~17_combout\ & ( 
-- (!\shamt[3]~input_o\ & (((\shamt[2]~input_o\ & \ShiftLeft0~14_combout\)))) # (\shamt[3]~input_o\ & (\ShiftLeft0~18_combout\ & (!\shamt[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100000001110011010000110111001101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~18_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_ShiftLeft0~14_combout\,
	dataf => \ALT_INV_ShiftLeft0~17_combout\,
	combout => \ShiftLeft0~19_combout\);

-- Location: LABCELL_X30_Y2_N36
\LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ( !\ShiftLeft0~19_combout\ & ( (!\ShiftLeft0~16_combout\) # (!\ShiftLeft0~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftLeft0~16_combout\,
	datad => \ALT_INV_ShiftLeft0~12_combout\,
	dataf => \ALT_INV_ShiftLeft0~19_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LABCELL_X31_Y2_N33
\LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = ( \ShiftLeft0~18_combout\ & ( !\shamt[3]~input_o\ ) ) # ( !\ShiftLeft0~18_combout\ & ( (!\shamt[3]~input_o\ & ((\ShiftLeft0~22_combout\) # (\ShiftLeft0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~3_combout\,
	datad => \ALT_INV_ShiftLeft0~22_combout\,
	dataf => \ALT_INV_ShiftLeft0~18_combout\,
	combout => \LessThan5~2_combout\);

-- Location: MLABCELL_X25_Y1_N6
\ShiftLeft0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = ( \shamt[1]~input_o\ & ( \inputB[1]~input_o\ & ( (\inputB[2]~input_o\) # (\shamt[0]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[4]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[3]~input_o\))) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & \inputB[2]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[4]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[0]~input_o\,
	datab => \ALT_INV_inputB[4]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	combout => \ShiftLeft0~20_combout\);

-- Location: LABCELL_X30_Y2_N9
\ShiftLeft0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = ( !\shamt[3]~input_o\ & ( \ShiftLeft0~20_combout\ & ( (!\shamt[2]~input_o\) # (\ShiftLeft0~16_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( !\ShiftLeft0~20_combout\ & ( (\shamt[2]~input_o\ & \ShiftLeft0~16_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000011001111110011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~16_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~21_combout\);

-- Location: LABCELL_X31_Y2_N3
\ShiftLeft0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & \ShiftLeft0~15_combout\) ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\ShiftLeft0~26_combout\))) # (\shamt[3]~input_o\ & (\ShiftLeft0~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~22_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~15_combout\,
	datad => \ALT_INV_ShiftLeft0~26_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~27_combout\);

-- Location: LABCELL_X29_Y2_N6
\ShiftLeft0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = ( \inputB[6]~input_o\ & ( \shamt[1]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[5]~input_o\) ) ) ) # ( !\inputB[6]~input_o\ & ( \shamt[1]~input_o\ & ( (\shamt[0]~input_o\ & \inputB[5]~input_o\) ) ) ) # ( \inputB[6]~input_o\ & ( 
-- !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[8]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[7]~input_o\))) ) ) ) # ( !\inputB[6]~input_o\ & ( !\shamt[1]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[8]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_shamt[1]~input_o\,
	combout => \ShiftLeft0~24_combout\);

-- Location: LABCELL_X30_Y2_N39
\ShiftLeft0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = ( \shamt[2]~input_o\ & ( (\ShiftLeft0~20_combout\ & !\shamt[3]~input_o\) ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & ((\ShiftLeft0~24_combout\))) # (\shamt[3]~input_o\ & (\ShiftLeft0~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~20_combout\,
	datab => \ALT_INV_ShiftLeft0~16_combout\,
	datac => \ALT_INV_shamt[3]~input_o\,
	datad => \ALT_INV_ShiftLeft0~24_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~25_combout\);

-- Location: LABCELL_X31_Y2_N18
\LessThan5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = ( !\ShiftLeft0~27_combout\ & ( !\ShiftLeft0~25_combout\ & ( (!\LessThan5~2_combout\ & (!\ShiftLeft0~4_combout\ & (!\ShiftLeft0~23_combout\ & !\ShiftLeft0~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan5~2_combout\,
	datab => \ALT_INV_ShiftLeft0~4_combout\,
	datac => \ALT_INV_ShiftLeft0~23_combout\,
	datad => \ALT_INV_ShiftLeft0~21_combout\,
	datae => \ALT_INV_ShiftLeft0~27_combout\,
	dataf => \ALT_INV_ShiftLeft0~25_combout\,
	combout => \LessThan5~3_combout\);

-- Location: LABCELL_X29_Y3_N57
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ( \ShiftLeft0~12_combout\ & ( ((\ShiftLeft0~15_combout\) # (\ShiftLeft0~14_combout\)) # (\ShiftLeft0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~1_combout\,
	datab => \ALT_INV_ShiftLeft0~14_combout\,
	datac => \ALT_INV_ShiftLeft0~15_combout\,
	dataf => \ALT_INV_ShiftLeft0~12_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LABCELL_X33_Y2_N54
\ShiftLeft0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = ( \inputB[11]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[12]~input_o\))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[9]~input_o\)))) ) ) ) # ( 
-- !\inputB[11]~input_o\ & ( \inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & (\inputB[12]~input_o\ & ((!\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\) # (\inputB[9]~input_o\)))) ) ) ) # ( \inputB[11]~input_o\ & ( !\inputB[10]~input_o\ 
-- & ( (!\shamt[1]~input_o\ & (((\shamt[0]~input_o\)) # (\inputB[12]~input_o\))) # (\shamt[1]~input_o\ & (((\inputB[9]~input_o\ & \shamt[0]~input_o\)))) ) ) ) # ( !\inputB[11]~input_o\ & ( !\inputB[10]~input_o\ & ( (!\shamt[1]~input_o\ & 
-- (\inputB[12]~input_o\ & ((!\shamt[0]~input_o\)))) # (\shamt[1]~input_o\ & (((\inputB[9]~input_o\ & \shamt[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[12]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_inputB[11]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LABCELL_X30_Y2_N48
\ShiftLeft0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = ( \ShiftLeft0~32_combout\ & ( \shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\ShiftLeft0~24_combout\)) # (\shamt[3]~input_o\ & ((\ShiftLeft0~16_combout\))) ) ) ) # ( !\ShiftLeft0~32_combout\ & ( \shamt[2]~input_o\ & ( 
-- (!\shamt[3]~input_o\ & (\ShiftLeft0~24_combout\)) # (\shamt[3]~input_o\ & ((\ShiftLeft0~16_combout\))) ) ) ) # ( \ShiftLeft0~32_combout\ & ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\) # (\ShiftLeft0~20_combout\) ) ) ) # ( !\ShiftLeft0~32_combout\ & ( 
-- !\shamt[2]~input_o\ & ( (\ShiftLeft0~20_combout\ & \shamt[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~20_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~24_combout\,
	datad => \ALT_INV_ShiftLeft0~16_combout\,
	datae => \ALT_INV_ShiftLeft0~32_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~33_combout\);

-- Location: LABCELL_X29_Y3_N15
\LessThan5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = ( !\ShiftLeft0~29_combout\ & ( (!\ShiftLeft0~33_combout\ & !\ShiftLeft0~31_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftLeft0~33_combout\,
	datad => \ALT_INV_ShiftLeft0~31_combout\,
	dataf => \ALT_INV_ShiftLeft0~29_combout\,
	combout => \LessThan5~4_combout\);

-- Location: LABCELL_X29_Y3_N12
\LessThan5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~5_combout\ = ( \LessThan5~4_combout\ & ( (!\shamt[4]~input_o\ & ((!\LessThan5~1_combout\) # ((!\LessThan5~3_combout\) # (\LessThan5~0_combout\)))) ) ) # ( !\LessThan5~4_combout\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000111100001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan5~1_combout\,
	datab => \ALT_INV_LessThan5~3_combout\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_LessThan5~0_combout\,
	dataf => \ALT_INV_LessThan5~4_combout\,
	combout => \LessThan5~5_combout\);

-- Location: LABCELL_X35_Y2_N30
\ShiftLeft0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = ( \shamt[1]~input_o\ & ( \inputB[16]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[14]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[13]~input_o\))) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[16]~input_o\ & ( (!\shamt[0]~input_o\) # 
-- (\inputB[15]~input_o\) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[16]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[14]~input_o\)) # (\shamt[0]~input_o\ & ((\inputB[13]~input_o\))) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[16]~input_o\ & ( 
-- (\inputB[15]~input_o\ & \shamt[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001100000011111111110101111101010011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[15]~input_o\,
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_shamt[0]~input_o\,
	datad => \ALT_INV_inputB[13]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	combout => \ShiftLeft0~49_combout\);

-- Location: LABCELL_X30_Y2_N18
\ShiftLeft0~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = ( \shamt[3]~input_o\ & ( !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & ((\ShiftLeft0~32_combout\))) # (\shamt[2]~input_o\ & (\ShiftLeft0~24_combout\)) ) ) ) # ( !\shamt[3]~input_o\ & ( !\shamt[4]~input_o\ & ( (\shamt[2]~input_o\ 
-- & \ShiftLeft0~49_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000100011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~24_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~49_combout\,
	datad => \ALT_INV_ShiftLeft0~32_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftLeft0~50_combout\);

-- Location: LABCELL_X35_Y3_N30
\ShiftLeft0~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = ( \inputB[17]~input_o\ & ( \inputB[18]~input_o\ & ( ((!\shamt[0]~input_o\ & ((\inputB[20]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[19]~input_o\))) # (\shamt[1]~input_o\) ) ) ) # ( !\inputB[17]~input_o\ & ( 
-- \inputB[18]~input_o\ & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[20]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[19]~input_o\)))) # (\shamt[1]~input_o\ & (((!\shamt[0]~input_o\)))) ) ) ) # ( \inputB[17]~input_o\ & ( !\inputB[18]~input_o\ 
-- & ( (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[20]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[19]~input_o\)))) # (\shamt[1]~input_o\ & (((\shamt[0]~input_o\)))) ) ) ) # ( !\inputB[17]~input_o\ & ( !\inputB[18]~input_o\ & ( 
-- (!\shamt[1]~input_o\ & ((!\shamt[0]~input_o\ & ((\inputB[20]~input_o\))) # (\shamt[0]~input_o\ & (\inputB[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datab => \ALT_INV_shamt[1]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	datad => \ALT_INV_shamt[0]~input_o\,
	datae => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputB[18]~input_o\,
	combout => \ShiftLeft0~48_combout\);

-- Location: LABCELL_X30_Y2_N24
\ShiftLeft0~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = ( \shamt[4]~input_o\ & ( (!\ShiftLeft0~50_combout\ & !\ShiftLeft0~21_combout\) ) ) # ( !\shamt[4]~input_o\ & ( (!\ShiftLeft0~50_combout\ & ((!\ShiftLeft0~12_combout\) # (!\ShiftLeft0~48_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101000101010001010100010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~50_combout\,
	datab => \ALT_INV_ShiftLeft0~12_combout\,
	datac => \ALT_INV_ShiftLeft0~48_combout\,
	datad => \ALT_INV_ShiftLeft0~21_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftLeft0~51_combout\);

-- Location: LABCELL_X30_Y2_N54
\ShiftLeft0~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = ( \shamt[3]~input_o\ & ( \ShiftLeft0~20_combout\ & ( (\ShiftLeft0~24_combout\) # (\shamt[2]~input_o\) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftLeft0~20_combout\ & ( (\shamt[2]~input_o\) # (\ShiftLeft0~49_combout\) ) ) ) # ( 
-- \shamt[3]~input_o\ & ( !\ShiftLeft0~20_combout\ & ( (!\shamt[2]~input_o\ & \ShiftLeft0~24_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( !\ShiftLeft0~20_combout\ & ( (\ShiftLeft0~49_combout\ & !\shamt[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011000000110001110111011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~49_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~24_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~52_combout\);

-- Location: LABCELL_X30_Y2_N0
\ShiftLeft0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = ( \shamt[3]~input_o\ & ( \ShiftLeft0~16_combout\ & ( (\ShiftLeft0~52_combout\ & !\shamt[4]~input_o\) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftLeft0~16_combout\ & ( (!\shamt[4]~input_o\ & ((!\shamt[2]~input_o\ & 
-- (\ShiftLeft0~52_combout\)) # (\shamt[2]~input_o\ & ((\ShiftLeft0~32_combout\))))) # (\shamt[4]~input_o\ & (((!\shamt[2]~input_o\)))) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftLeft0~16_combout\ & ( (\ShiftLeft0~52_combout\ & !\shamt[4]~input_o\) ) ) ) # ( 
-- !\shamt[3]~input_o\ & ( !\ShiftLeft0~16_combout\ & ( (!\shamt[4]~input_o\ & ((!\shamt[2]~input_o\ & (\ShiftLeft0~52_combout\)) # (\shamt[2]~input_o\ & ((\ShiftLeft0~32_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000101000001011111001100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~52_combout\,
	datab => \ALT_INV_ShiftLeft0~32_combout\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_shamt[2]~input_o\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~16_combout\,
	combout => \ShiftLeft0~53_combout\);

-- Location: MLABCELL_X34_Y2_N30
\ShiftLeft0~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = ( \shamt[2]~input_o\ & ( \ShiftLeft0~14_combout\ ) ) # ( !\shamt[2]~input_o\ & ( (!\shamt[3]~input_o\ & (\ShiftLeft0~42_combout\)) # (\shamt[3]~input_o\ & ((\ShiftLeft0~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~42_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~17_combout\,
	datad => \ALT_INV_ShiftLeft0~14_combout\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~46_combout\);

-- Location: MLABCELL_X34_Y2_N48
\ShiftLeft0~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = ( !\shamt[3]~input_o\ & ( \shamt[4]~input_o\ & ( (\ShiftLeft0~18_combout\ & !\shamt[2]~input_o\) ) ) ) # ( \shamt[3]~input_o\ & ( !\shamt[4]~input_o\ & ( \ShiftLeft0~46_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( 
-- !\shamt[4]~input_o\ & ( (!\shamt[2]~input_o\ & ((\ShiftLeft0~46_combout\))) # (\shamt[2]~input_o\ & (\ShiftLeft0~28_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000001111111101000100010001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~18_combout\,
	datab => \ALT_INV_shamt[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~28_combout\,
	datad => \ALT_INV_ShiftLeft0~46_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LABCELL_X30_Y2_N27
\LessThan5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~7_combout\ = ( !\ShiftLeft0~47_combout\ & ( (\ShiftLeft0~51_combout\ & !\ShiftLeft0~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftLeft0~51_combout\,
	datad => \ALT_INV_ShiftLeft0~53_combout\,
	dataf => \ALT_INV_ShiftLeft0~47_combout\,
	combout => \LessThan5~7_combout\);

-- Location: LABCELL_X31_Y3_N54
\ShiftLeft0~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = ( \ShiftLeft0~1_combout\ & ( (!\shamt[3]~input_o\ & ((!\shamt[2]~input_o\) # (\ShiftLeft0~3_combout\))) ) ) # ( !\ShiftLeft0~1_combout\ & ( (\shamt[2]~input_o\ & (!\shamt[3]~input_o\ & \ShiftLeft0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~3_combout\,
	dataf => \ALT_INV_ShiftLeft0~1_combout\,
	combout => \ShiftLeft0~70_combout\);

-- Location: LABCELL_X31_Y3_N12
\ShiftLeft0~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = ( !\shamt[4]~input_o\ & ( \ShiftLeft0~6_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[3]~input_o\) # (\ShiftLeft0~0_combout\)))) # (\shamt[2]~input_o\ & (\ShiftLeft0~5_combout\ & ((!\shamt[3]~input_o\)))) ) ) ) # ( 
-- !\shamt[4]~input_o\ & ( !\ShiftLeft0~6_combout\ & ( (!\shamt[2]~input_o\ & (((\ShiftLeft0~0_combout\ & \shamt[3]~input_o\)))) # (\shamt[2]~input_o\ & (\ShiftLeft0~5_combout\ & ((!\shamt[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000000000000000010111011000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_ShiftLeft0~5_combout\,
	datac => \ALT_INV_ShiftLeft0~0_combout\,
	datad => \ALT_INV_shamt[3]~input_o\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~6_combout\,
	combout => \ShiftLeft0~71_combout\);

-- Location: LABCELL_X31_Y3_N30
\ShiftLeft0~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = ( !\ShiftLeft0~71_combout\ & ( (!\ShiftLeft0~13_combout\ & ((!\shamt[4]~input_o\) # ((!\ShiftLeft0~70_combout\)))) # (\ShiftLeft0~13_combout\ & (!\ShiftLeft0~2_combout\ & ((!\shamt[4]~input_o\) # (!\ShiftLeft0~70_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~13_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftLeft0~2_combout\,
	datad => \ALT_INV_ShiftLeft0~70_combout\,
	dataf => \ALT_INV_ShiftLeft0~71_combout\,
	combout => \ShiftLeft0~72_combout\);

-- Location: LABCELL_X37_Y3_N30
\ShiftLeft0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = ( \inputB[27]~input_o\ & ( \inputB[25]~input_o\ & ( ((!\shamt[1]~input_o\ & (\inputB[28]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[26]~input_o\)))) # (\shamt[0]~input_o\) ) ) ) # ( !\inputB[27]~input_o\ & ( 
-- \inputB[25]~input_o\ & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[28]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[26]~input_o\))))) # (\shamt[0]~input_o\ & (((\shamt[1]~input_o\)))) ) ) ) # ( \inputB[27]~input_o\ & ( !\inputB[25]~input_o\ 
-- & ( (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[28]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[26]~input_o\))))) # (\shamt[0]~input_o\ & (((!\shamt[1]~input_o\)))) ) ) ) # ( !\inputB[27]~input_o\ & ( !\inputB[25]~input_o\ & ( 
-- (!\shamt[0]~input_o\ & ((!\shamt[1]~input_o\ & (\inputB[28]~input_o\)) # (\shamt[1]~input_o\ & ((\inputB[26]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100011100000111110001000011010011110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[28]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_shamt[1]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputB[25]~input_o\,
	combout => \ShiftLeft0~65_combout\);

-- Location: LABCELL_X36_Y3_N54
\ShiftLeft0~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = ( \shamt[3]~input_o\ & ( \ShiftLeft0~65_combout\ & ( (!\shamt[2]~input_o\ & ((\ShiftLeft0~48_combout\))) # (\shamt[2]~input_o\ & (\ShiftLeft0~49_combout\)) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftLeft0~65_combout\ & ( 
-- (!\shamt[2]~input_o\) # (\ShiftLeft0~49_combout\) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftLeft0~65_combout\ & ( (!\shamt[2]~input_o\ & ((\ShiftLeft0~48_combout\))) # (\shamt[2]~input_o\ & (\ShiftLeft0~49_combout\)) ) ) ) # ( !\shamt[3]~input_o\ & ( 
-- !\ShiftLeft0~65_combout\ & ( (\shamt[2]~input_o\ & \ShiftLeft0~49_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000110110001101110111011101110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_ShiftLeft0~49_combout\,
	datac => \ALT_INV_ShiftLeft0~48_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~65_combout\,
	combout => \ShiftLeft0~66_combout\);

-- Location: LABCELL_X35_Y4_N42
\ShiftLeft0~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = ( \shamt[1]~input_o\ & ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\) # (\inputB[21]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( \inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[24]~input_o\)) # (\shamt[0]~input_o\ & 
-- ((\inputB[23]~input_o\))) ) ) ) # ( \shamt[1]~input_o\ & ( !\inputB[22]~input_o\ & ( (\shamt[0]~input_o\ & \inputB[21]~input_o\) ) ) ) # ( !\shamt[1]~input_o\ & ( !\inputB[22]~input_o\ & ( (!\shamt[0]~input_o\ & (\inputB[24]~input_o\)) # 
-- (\shamt[0]~input_o\ & ((\inputB[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000011001101000111010001111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[24]~input_o\,
	datab => \ALT_INV_shamt[0]~input_o\,
	datac => \ALT_INV_inputB[23]~input_o\,
	datad => \ALT_INV_inputB[21]~input_o\,
	datae => \ALT_INV_shamt[1]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \ShiftLeft0~64_combout\);

-- Location: LABCELL_X30_Y2_N42
\ShiftLeft0~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = ( \ShiftLeft0~11_combout\ & ( \shamt[4]~input_o\ & ( \ShiftLeft0~33_combout\ ) ) ) # ( !\ShiftLeft0~11_combout\ & ( \shamt[4]~input_o\ & ( \ShiftLeft0~33_combout\ ) ) ) # ( \ShiftLeft0~11_combout\ & ( !\shamt[4]~input_o\ & ( 
-- \ShiftLeft0~64_combout\ ) ) ) # ( !\ShiftLeft0~11_combout\ & ( !\shamt[4]~input_o\ & ( \ShiftLeft0~66_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~33_combout\,
	datab => \ALT_INV_ShiftLeft0~66_combout\,
	datac => \ALT_INV_ShiftLeft0~64_combout\,
	datae => \ALT_INV_ShiftLeft0~11_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftLeft0~67_combout\);

-- Location: LABCELL_X31_Y2_N24
\ShiftLeft0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = ( \ShiftLeft0~30_combout\ & ( ((!\shamt[3]~input_o\ & ((\ShiftLeft0~56_combout\))) # (\shamt[3]~input_o\ & (\ShiftLeft0~34_combout\))) # (\shamt[2]~input_o\) ) ) # ( !\ShiftLeft0~30_combout\ & ( (!\shamt[2]~input_o\ & 
-- ((!\shamt[3]~input_o\ & ((\ShiftLeft0~56_combout\))) # (\shamt[3]~input_o\ & (\ShiftLeft0~34_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~34_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~56_combout\,
	datad => \ALT_INV_shamt[2]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~30_combout\,
	combout => \ShiftLeft0~77_combout\);

-- Location: LABCELL_X31_Y2_N45
\ShiftLeft0~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = ( \ShiftLeft0~77_combout\ & ( (!\shamt[4]~input_o\ & (((!\ShiftLeft0~11_combout\)) # (\ShiftLeft0~38_combout\))) # (\shamt[4]~input_o\ & (((\ShiftLeft0~27_combout\)))) ) ) # ( !\ShiftLeft0~77_combout\ & ( (!\shamt[4]~input_o\ & 
-- (\ShiftLeft0~38_combout\ & (\ShiftLeft0~11_combout\))) # (\shamt[4]~input_o\ & (((\ShiftLeft0~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011111000100111101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~38_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftLeft0~11_combout\,
	datad => \ALT_INV_ShiftLeft0~27_combout\,
	dataf => \ALT_INV_ShiftLeft0~77_combout\,
	combout => \ShiftLeft0~78_combout\);

-- Location: LABCELL_X30_Y2_N12
\ShiftLeft0~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = ( \shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \ShiftLeft0~32_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( \shamt[2]~input_o\ & ( \ShiftLeft0~32_combout\ ) ) ) # ( \shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( 
-- \ShiftLeft0~49_combout\ ) ) ) # ( !\shamt[3]~input_o\ & ( !\shamt[2]~input_o\ & ( \ShiftLeft0~64_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~64_combout\,
	datab => \ALT_INV_ShiftLeft0~32_combout\,
	datac => \ALT_INV_ShiftLeft0~49_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_shamt[2]~input_o\,
	combout => \ShiftLeft0~75_combout\);

-- Location: LABCELL_X30_Y2_N33
\ShiftLeft0~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = ( \ShiftLeft0~48_combout\ & ( \ShiftLeft0~25_combout\ & ( ((\ShiftLeft0~11_combout\) # (\ShiftLeft0~75_combout\)) # (\shamt[4]~input_o\) ) ) ) # ( !\ShiftLeft0~48_combout\ & ( \ShiftLeft0~25_combout\ & ( ((\ShiftLeft0~75_combout\ 
-- & !\ShiftLeft0~11_combout\)) # (\shamt[4]~input_o\) ) ) ) # ( \ShiftLeft0~48_combout\ & ( !\ShiftLeft0~25_combout\ & ( (!\shamt[4]~input_o\ & ((\ShiftLeft0~11_combout\) # (\ShiftLeft0~75_combout\))) ) ) ) # ( !\ShiftLeft0~48_combout\ & ( 
-- !\ShiftLeft0~25_combout\ & ( (!\shamt[4]~input_o\ & (\ShiftLeft0~75_combout\ & !\ShiftLeft0~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000101010101001110111010101010111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ShiftLeft0~75_combout\,
	datad => \ALT_INV_ShiftLeft0~11_combout\,
	datae => \ALT_INV_ShiftLeft0~48_combout\,
	dataf => \ALT_INV_ShiftLeft0~25_combout\,
	combout => \ShiftLeft0~76_combout\);

-- Location: LABCELL_X31_Y3_N39
\ShiftLeft0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = ( \ShiftLeft0~1_combout\ & ( ((!\shamt[3]~input_o\ & (\ShiftLeft0~5_combout\)) # (\shamt[3]~input_o\ & ((\ShiftLeft0~2_combout\)))) # (\shamt[2]~input_o\) ) ) # ( !\ShiftLeft0~1_combout\ & ( (!\shamt[2]~input_o\ & 
-- ((!\shamt[3]~input_o\ & (\ShiftLeft0~5_combout\)) # (\shamt[3]~input_o\ & ((\ShiftLeft0~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_ShiftLeft0~5_combout\,
	datad => \ALT_INV_ShiftLeft0~2_combout\,
	dataf => \ALT_INV_ShiftLeft0~1_combout\,
	combout => \ShiftLeft0~73_combout\);

-- Location: LABCELL_X31_Y3_N6
\ShiftLeft0~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = ( \shamt[3]~input_o\ & ( \ShiftLeft0~0_combout\ & ( (!\shamt[4]~input_o\ & \ShiftLeft0~73_combout\) ) ) ) # ( !\shamt[3]~input_o\ & ( \ShiftLeft0~0_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[4]~input_o\ & 
-- (\ShiftLeft0~73_combout\)) # (\shamt[4]~input_o\ & ((\ShiftLeft0~3_combout\))))) # (\shamt[2]~input_o\ & (!\shamt[4]~input_o\)) ) ) ) # ( \shamt[3]~input_o\ & ( !\ShiftLeft0~0_combout\ & ( (!\shamt[4]~input_o\ & \ShiftLeft0~73_combout\) ) ) ) # ( 
-- !\shamt[3]~input_o\ & ( !\ShiftLeft0~0_combout\ & ( (!\shamt[2]~input_o\ & ((!\shamt[4]~input_o\ & (\ShiftLeft0~73_combout\)) # (\shamt[4]~input_o\ & ((\ShiftLeft0~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000011000000110001001100011011100000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[2]~input_o\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftLeft0~73_combout\,
	datad => \ALT_INV_ShiftLeft0~3_combout\,
	datae => \ALT_INV_shamt[3]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~74_combout\);

-- Location: MLABCELL_X34_Y2_N33
\ShiftLeft0~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = ( \ShiftLeft0~60_combout\ & ( (!\shamt[2]~input_o\ & (((!\shamt[3]~input_o\)) # (\ShiftLeft0~42_combout\))) # (\shamt[2]~input_o\ & (((\ShiftLeft0~28_combout\)))) ) ) # ( !\ShiftLeft0~60_combout\ & ( (!\shamt[2]~input_o\ & 
-- (\ShiftLeft0~42_combout\ & (\shamt[3]~input_o\))) # (\shamt[2]~input_o\ & (((\ShiftLeft0~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111111010000110111111101000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~42_combout\,
	datab => \ALT_INV_shamt[3]~input_o\,
	datac => \ALT_INV_shamt[2]~input_o\,
	datad => \ALT_INV_ShiftLeft0~28_combout\,
	dataf => \ALT_INV_ShiftLeft0~60_combout\,
	combout => \ShiftLeft0~68_combout\);

-- Location: MLABCELL_X34_Y2_N15
\ShiftLeft0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = ( \ShiftLeft0~68_combout\ & ( (!\shamt[4]~input_o\ & ((!\ShiftLeft0~11_combout\) # ((\ShiftLeft0~43_combout\)))) # (\shamt[4]~input_o\ & (((\ShiftLeft0~19_combout\)))) ) ) # ( !\ShiftLeft0~68_combout\ & ( (!\shamt[4]~input_o\ & 
-- (\ShiftLeft0~11_combout\ & ((\ShiftLeft0~43_combout\)))) # (\shamt[4]~input_o\ & (((\ShiftLeft0~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ShiftLeft0~11_combout\,
	datac => \ALT_INV_ShiftLeft0~19_combout\,
	datad => \ALT_INV_ShiftLeft0~43_combout\,
	dataf => \ALT_INV_ShiftLeft0~68_combout\,
	combout => \ShiftLeft0~69_combout\);

-- Location: LABCELL_X31_Y4_N42
\LessThan5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~9_combout\ = ( !\ShiftLeft0~74_combout\ & ( !\ShiftLeft0~69_combout\ & ( (\ShiftLeft0~72_combout\ & (!\ShiftLeft0~67_combout\ & (!\ShiftLeft0~78_combout\ & !\ShiftLeft0~76_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~72_combout\,
	datab => \ALT_INV_ShiftLeft0~67_combout\,
	datac => \ALT_INV_ShiftLeft0~78_combout\,
	datad => \ALT_INV_ShiftLeft0~76_combout\,
	datae => \ALT_INV_ShiftLeft0~74_combout\,
	dataf => \ALT_INV_ShiftLeft0~69_combout\,
	combout => \LessThan5~9_combout\);

-- Location: LABCELL_X29_Y3_N24
\LessThan5~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~10_combout\ = ( \LessThan5~7_combout\ & ( \LessThan5~9_combout\ & ( (\LessThan5~8_combout\ & (!\ShiftLeft0~63_combout\ & (\LessThan5~6_combout\ & !\LessThan5~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan5~8_combout\,
	datab => \ALT_INV_ShiftLeft0~63_combout\,
	datac => \ALT_INV_LessThan5~6_combout\,
	datad => \ALT_INV_LessThan5~5_combout\,
	datae => \ALT_INV_LessThan5~7_combout\,
	dataf => \ALT_INV_LessThan5~9_combout\,
	combout => \LessThan5~10_combout\);

-- Location: MLABCELL_X28_Y3_N12
\Mux0~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~39_combout\ = ( !\inputB[31]~input_o\ & ( \LessThan5~10_combout\ & ( (\ALUControl[0]~input_o\ & ((!\LessThan6~9_combout\) # (!\LessThan6~4_combout\))) ) ) ) # ( \inputB[31]~input_o\ & ( !\LessThan5~10_combout\ & ( (!\ALUControl[0]~input_o\ & 
-- !\ShiftLeft0~10_combout\) ) ) ) # ( !\inputB[31]~input_o\ & ( !\LessThan5~10_combout\ & ( (!\ALUControl[0]~input_o\ & (((!\ShiftLeft0~10_combout\)))) # (\ALUControl[0]~input_o\ & ((!\LessThan6~9_combout\) # ((!\LessThan6~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000110010110011000000000000110010001100100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~9_combout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_LessThan6~4_combout\,
	datad => \ALT_INV_ShiftLeft0~10_combout\,
	datae => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_LessThan5~10_combout\,
	combout => \Mux0~39_combout\);

-- Location: LABCELL_X24_Y5_N0
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \inputA[0]~input_o\ ) + ( \inputB[0]~input_o\ ) + ( !VCC ))
-- \Add0~122\ = CARRY(( \inputA[0]~input_o\ ) + ( \inputB[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[0]~input_o\,
	dataf => \ALT_INV_inputB[0]~input_o\,
	cin => GND,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: LABCELL_X24_Y5_N3
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( \inputB[1]~input_o\ ) + ( \inputA[1]~input_o\ ) + ( \Add0~122\ ))
-- \Add0~126\ = CARRY(( \inputB[1]~input_o\ ) + ( \inputA[1]~input_o\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datac => \ALT_INV_inputA[1]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\,
	cout => \Add0~126\);

-- Location: LABCELL_X24_Y5_N6
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( \inputB[2]~input_o\ ) + ( \inputA[2]~input_o\ ) + ( \Add0~126\ ))
-- \Add0~110\ = CARRY(( \inputB[2]~input_o\ ) + ( \inputA[2]~input_o\ ) + ( \Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_inputB[2]~input_o\,
	cin => \Add0~126\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X24_Y5_N9
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \inputA[3]~input_o\ ) + ( \inputB[3]~input_o\ ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( \inputA[3]~input_o\ ) + ( \inputB[3]~input_o\ ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputB[3]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X24_Y5_N12
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \inputA[4]~input_o\ ) + ( \inputB[4]~input_o\ ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \inputA[4]~input_o\ ) + ( \inputB[4]~input_o\ ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[4]~input_o\,
	datad => \ALT_INV_inputA[4]~input_o\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: LABCELL_X24_Y5_N15
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \inputB[5]~input_o\ ) + ( \inputA[5]~input_o\ ) + ( \Add0~118\ ))
-- \Add0~50\ = CARRY(( \inputB[5]~input_o\ ) + ( \inputA[5]~input_o\ ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[5]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X24_Y5_N18
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \inputB[6]~input_o\ ) + ( \inputA[6]~input_o\ ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \inputB[6]~input_o\ ) + ( \inputA[6]~input_o\ ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[6]~input_o\,
	datac => \ALT_INV_inputA[6]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X24_Y5_N21
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \inputB[7]~input_o\ ) + ( \inputA[7]~input_o\ ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \inputB[7]~input_o\ ) + ( \inputA[7]~input_o\ ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_inputA[7]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X24_Y5_N24
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \inputB[8]~input_o\ ) + ( \inputA[8]~input_o\ ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \inputB[8]~input_o\ ) + ( \inputA[8]~input_o\ ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[8]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X24_Y5_N27
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \inputB[9]~input_o\ ) + ( \inputA[9]~input_o\ ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \inputB[9]~input_o\ ) + ( \inputA[9]~input_o\ ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[9]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X24_Y5_N30
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \inputB[10]~input_o\ ) + ( \inputA[10]~input_o\ ) + ( \Add0~66\ ))
-- \Add0~90\ = CARRY(( \inputB[10]~input_o\ ) + ( \inputA[10]~input_o\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[10]~input_o\,
	datac => \ALT_INV_inputA[10]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X24_Y5_N33
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \inputB[11]~input_o\ ) + ( \inputA[11]~input_o\ ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \inputB[11]~input_o\ ) + ( \inputA[11]~input_o\ ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[11]~input_o\,
	datac => \ALT_INV_inputB[11]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X24_Y5_N36
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \inputB[12]~input_o\ ) + ( \inputA[12]~input_o\ ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( \inputB[12]~input_o\ ) + ( \inputA[12]~input_o\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_inputA[12]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X24_Y5_N39
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \inputA[13]~input_o\ ) + ( \inputB[13]~input_o\ ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( \inputA[13]~input_o\ ) + ( \inputB[13]~input_o\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[13]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: LABCELL_X24_Y5_N42
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \inputB[14]~input_o\ ) + ( \inputA[14]~input_o\ ) + ( \Add0~102\ ))
-- \Add0~34\ = CARRY(( \inputB[14]~input_o\ ) + ( \inputA[14]~input_o\ ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_inputA[14]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X24_Y5_N45
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \inputB[15]~input_o\ ) + ( \inputA[15]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~106\ = CARRY(( \inputB[15]~input_o\ ) + ( \inputA[15]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[15]~input_o\,
	datac => \ALT_INV_inputA[15]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X24_Y5_N48
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \inputB[16]~input_o\ ) + ( \inputA[16]~input_o\ ) + ( \Add0~106\ ))
-- \Add0~38\ = CARRY(( \inputB[16]~input_o\ ) + ( \inputA[16]~input_o\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[16]~input_o\,
	datac => \ALT_INV_inputB[16]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X24_Y5_N51
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \inputB[17]~input_o\ ) + ( \inputA[17]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \inputB[17]~input_o\ ) + ( \inputA[17]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[17]~input_o\,
	datac => \ALT_INV_inputA[17]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X24_Y5_N54
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \inputB[18]~input_o\ ) + ( \inputA[18]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \inputB[18]~input_o\ ) + ( \inputA[18]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[18]~input_o\,
	datac => \ALT_INV_inputB[18]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X24_Y5_N57
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \inputB[19]~input_o\ ) + ( \inputA[19]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~14\ = CARRY(( \inputB[19]~input_o\ ) + ( \inputA[19]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[19]~input_o\,
	datac => \ALT_INV_inputA[19]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X24_Y4_N0
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \inputB[20]~input_o\ ) + ( \inputA[20]~input_o\ ) + ( \Add0~14\ ))
-- \Add0~70\ = CARRY(( \inputB[20]~input_o\ ) + ( \inputA[20]~input_o\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[20]~input_o\,
	datad => \ALT_INV_inputB[20]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X24_Y4_N3
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \inputA[21]~input_o\ ) + ( \inputB[21]~input_o\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \inputA[21]~input_o\ ) + ( \inputB[21]~input_o\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[21]~input_o\,
	datad => \ALT_INV_inputA[21]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X24_Y4_N6
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \inputB[22]~input_o\ ) + ( \inputA[22]~input_o\ ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \inputB[22]~input_o\ ) + ( \inputA[22]~input_o\ ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[22]~input_o\,
	datac => \ALT_INV_inputB[22]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X24_Y4_N9
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \inputB[23]~input_o\ ) + ( \inputA[23]~input_o\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( \inputB[23]~input_o\ ) + ( \inputA[23]~input_o\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datac => \ALT_INV_inputA[23]~input_o\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X24_Y4_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \inputB[24]~input_o\ ) + ( \inputA[24]~input_o\ ) + ( \Add0~82\ ))
-- \Add0~18\ = CARRY(( \inputB[24]~input_o\ ) + ( \inputA[24]~input_o\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[24]~input_o\,
	datad => \ALT_INV_inputB[24]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X24_Y4_N15
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \inputA[25]~input_o\ ) + ( \inputB[25]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~86\ = CARRY(( \inputA[25]~input_o\ ) + ( \inputB[25]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[25]~input_o\,
	datad => \ALT_INV_inputA[25]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X24_Y4_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \inputB[26]~input_o\ ) + ( \inputA[26]~input_o\ ) + ( \Add0~86\ ))
-- \Add0~22\ = CARRY(( \inputB[26]~input_o\ ) + ( \inputA[26]~input_o\ ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[26]~input_o\,
	dataf => \ALT_INV_inputA[26]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X24_Y4_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \inputB[27]~input_o\ ) + ( \inputA[27]~input_o\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \inputB[27]~input_o\ ) + ( \inputA[27]~input_o\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[27]~input_o\,
	datac => \ALT_INV_inputA[27]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X24_Y4_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \inputB[28]~input_o\ ) + ( \inputA[28]~input_o\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \inputB[28]~input_o\ ) + ( \inputA[28]~input_o\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[28]~input_o\,
	datac => \ALT_INV_inputA[28]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X24_Y4_N27
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \inputB[29]~input_o\ ) + ( \inputA[29]~input_o\ ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( \inputB[29]~input_o\ ) + ( \inputA[29]~input_o\ ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[29]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X24_Y4_N30
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \inputA[30]~input_o\ ) + ( \inputB[30]~input_o\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \inputA[30]~input_o\ ) + ( \inputB[30]~input_o\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputA[30]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X24_Y4_N33
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \inputB[31]~input_o\ ) + ( \inputA[31]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_inputA[31]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\);

-- Location: MLABCELL_X25_Y2_N6
\Mux0~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~31_combout\ = ( !\Add0~65_sumout\ & ( (!\Add0~49_sumout\ & (!\Add0~57_sumout\ & (!\Add0~53_sumout\ & !\Add0~61_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~49_sumout\,
	datab => \ALT_INV_Add0~57_sumout\,
	datac => \ALT_INV_Add0~53_sumout\,
	datad => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_Add0~65_sumout\,
	combout => \Mux0~31_combout\);

-- Location: LABCELL_X27_Y4_N48
\Mux0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~32_combout\ = ( !\Add0~41_sumout\ & ( (\Mux0~31_combout\ & (!\Add0~33_sumout\ & (!\Add0~37_sumout\ & !\Add0~45_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~31_combout\,
	datab => \ALT_INV_Add0~33_sumout\,
	datac => \ALT_INV_Add0~37_sumout\,
	datad => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \Mux0~32_combout\);

-- Location: LABCELL_X30_Y4_N36
\Mux0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~33_combout\ = ( \Mux0~32_combout\ & ( !\Add0~13_sumout\ & ( (!\Add0~25_sumout\ & (!\Add0~17_sumout\ & (!\Add0~29_sumout\ & !\Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~25_sumout\,
	datab => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Add0~29_sumout\,
	datad => \ALT_INV_Add0~21_sumout\,
	datae => \ALT_INV_Mux0~32_combout\,
	dataf => \ALT_INV_Add0~13_sumout\,
	combout => \Mux0~33_combout\);

-- Location: MLABCELL_X25_Y4_N30
\Mux0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~34_combout\ = ( !\ALUControl[0]~input_o\ & ( (\ALUControl[1]~input_o\ & (!\Add0~121_sumout\ & !\Add0~125_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_Add0~121_sumout\,
	datad => \ALT_INV_Add0~125_sumout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux0~34_combout\);

-- Location: MLABCELL_X25_Y4_N18
\Mux0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~35_combout\ = ( \Mux0~34_combout\ & ( (!\Add0~109_sumout\ & (!\Add0~113_sumout\ & !\Add0~117_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~109_sumout\,
	datac => \ALT_INV_Add0~113_sumout\,
	datad => \ALT_INV_Add0~117_sumout\,
	dataf => \ALT_INV_Mux0~34_combout\,
	combout => \Mux0~35_combout\);

-- Location: MLABCELL_X25_Y4_N36
\Mux0~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~36_combout\ = ( !\Add0~97_sumout\ & ( \Mux0~35_combout\ & ( (!\Add0~89_sumout\ & (!\Add0~101_sumout\ & (!\Add0~105_sumout\ & !\Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~89_sumout\,
	datab => \ALT_INV_Add0~101_sumout\,
	datac => \ALT_INV_Add0~105_sumout\,
	datad => \ALT_INV_Add0~93_sumout\,
	datae => \ALT_INV_Add0~97_sumout\,
	dataf => \ALT_INV_Mux0~35_combout\,
	combout => \Mux0~36_combout\);

-- Location: LABCELL_X24_Y4_N54
\Mux0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~37_combout\ = ( !\Add0~81_sumout\ & ( \Mux0~36_combout\ & ( (!\Add0~69_sumout\ & (!\Add0~77_sumout\ & (!\Add0~73_sumout\ & !\Add0~85_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~69_sumout\,
	datab => \ALT_INV_Add0~77_sumout\,
	datac => \ALT_INV_Add0~73_sumout\,
	datad => \ALT_INV_Add0~85_sumout\,
	datae => \ALT_INV_Add0~81_sumout\,
	dataf => \ALT_INV_Mux0~36_combout\,
	combout => \Mux0~37_combout\);

-- Location: LABCELL_X22_Y4_N30
\Mux0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~28_combout\ = ( !\inputA[14]~input_o\ & ( (\process_0~14_combout\ & (!\inputA[13]~input_o\ & (!\inputA[11]~input_o\ & !\inputA[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~14_combout\,
	datab => \ALT_INV_inputA[13]~input_o\,
	datac => \ALT_INV_inputA[11]~input_o\,
	datad => \ALT_INV_inputA[12]~input_o\,
	dataf => \ALT_INV_inputA[14]~input_o\,
	combout => \Mux0~28_combout\);

-- Location: LABCELL_X24_Y2_N48
\Mux0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~27_combout\ = ( \process_0~13_combout\ & ( (!\inputA[9]~input_o\ & (!\inputA[8]~input_o\ & (!\inputA[7]~input_o\ & !\inputA[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[9]~input_o\,
	datab => \ALT_INV_inputA[8]~input_o\,
	datac => \ALT_INV_inputA[7]~input_o\,
	datad => \ALT_INV_inputA[10]~input_o\,
	dataf => \ALT_INV_process_0~13_combout\,
	combout => \Mux0~27_combout\);

-- Location: LABCELL_X24_Y3_N36
\Mux0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~29_combout\ = ( !\inputB[31]~input_o\ & ( (!\inputA[31]~input_o\ & (\Mux0~28_combout\ & (\Mux0~26_combout\ & \Mux0~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[31]~input_o\,
	datab => \ALT_INV_Mux0~28_combout\,
	datac => \ALT_INV_Mux0~26_combout\,
	datad => \ALT_INV_Mux0~27_combout\,
	dataf => \ALT_INV_inputB[31]~input_o\,
	combout => \Mux0~29_combout\);

-- Location: LABCELL_X35_Y4_N39
\Mux0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = ( \inputB[24]~input_o\ & ( ((\inputB[23]~input_o\ & \inputA[23]~input_o\)) # (\inputA[24]~input_o\) ) ) # ( !\inputB[24]~input_o\ & ( (\inputB[23]~input_o\ & \inputA[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[23]~input_o\,
	datab => \ALT_INV_inputA[23]~input_o\,
	datac => \ALT_INV_inputA[24]~input_o\,
	dataf => \ALT_INV_inputB[24]~input_o\,
	combout => \Mux0~11_combout\);

-- Location: LABCELL_X33_Y4_N51
\Mux0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = ( \inputA[17]~input_o\ & ( ((\inputA[18]~input_o\ & \inputB[18]~input_o\)) # (\inputB[17]~input_o\) ) ) # ( !\inputA[17]~input_o\ & ( (\inputA[18]~input_o\ & \inputB[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[18]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datad => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[17]~input_o\,
	combout => \Mux0~12_combout\);

-- Location: LABCELL_X33_Y4_N54
\Mux0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = ( \inputB[21]~input_o\ & ( ((\inputA[20]~input_o\ & \inputB[20]~input_o\)) # (\inputA[21]~input_o\) ) ) # ( !\inputB[21]~input_o\ & ( (\inputA[20]~input_o\ & \inputB[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101010111010101110101011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[21]~input_o\,
	datab => \ALT_INV_inputA[20]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputB[21]~input_o\,
	combout => \Mux0~13_combout\);

-- Location: LABCELL_X33_Y4_N0
\Mux0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~14_combout\ = ( !\inputB[19]~input_o\ & ( \inputA[19]~input_o\ & ( (!\Mux0~12_combout\ & (!\Mux0~13_combout\ & ((!\inputB[22]~input_o\) # (!\inputA[22]~input_o\)))) ) ) ) # ( \inputB[19]~input_o\ & ( !\inputA[19]~input_o\ & ( (!\Mux0~12_combout\ & 
-- (!\Mux0~13_combout\ & ((!\inputB[22]~input_o\) # (!\inputA[22]~input_o\)))) ) ) ) # ( !\inputB[19]~input_o\ & ( !\inputA[19]~input_o\ & ( (!\Mux0~12_combout\ & (!\Mux0~13_combout\ & ((!\inputB[22]~input_o\) # (!\inputA[22]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000010100000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~12_combout\,
	datab => \ALT_INV_inputB[22]~input_o\,
	datac => \ALT_INV_Mux0~13_combout\,
	datad => \ALT_INV_inputA[22]~input_o\,
	datae => \ALT_INV_inputB[19]~input_o\,
	dataf => \ALT_INV_inputA[19]~input_o\,
	combout => \Mux0~14_combout\);

-- Location: LABCELL_X35_Y4_N57
\Mux0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~15_combout\ = ( \Mux0~14_combout\ & ( (!\Mux0~11_combout\ & ((!\inputA[25]~input_o\) # (!\inputB[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[25]~input_o\,
	datab => \ALT_INV_inputB[25]~input_o\,
	datac => \ALT_INV_Mux0~11_combout\,
	dataf => \ALT_INV_Mux0~14_combout\,
	combout => \Mux0~15_combout\);

-- Location: LABCELL_X29_Y4_N54
\Mux0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = ( \inputB[29]~input_o\ & ( \inputA[31]~input_o\ & ( (!\inputA[29]~input_o\ & (!\inputB[31]~input_o\ & ((!\inputA[30]~input_o\) # (!\inputB[30]~input_o\)))) ) ) ) # ( !\inputB[29]~input_o\ & ( \inputA[31]~input_o\ & ( 
-- (!\inputB[31]~input_o\ & ((!\inputA[30]~input_o\) # (!\inputB[30]~input_o\))) ) ) ) # ( \inputB[29]~input_o\ & ( !\inputA[31]~input_o\ & ( (!\inputA[29]~input_o\ & ((!\inputA[30]~input_o\) # (!\inputB[30]~input_o\))) ) ) ) # ( !\inputB[29]~input_o\ & ( 
-- !\inputA[31]~input_o\ & ( (!\inputA[30]~input_o\) # (!\inputB[30]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010110011001000100011110000101000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[30]~input_o\,
	datab => \ALT_INV_inputA[29]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputB[30]~input_o\,
	datae => \ALT_INV_inputB[29]~input_o\,
	dataf => \ALT_INV_inputA[31]~input_o\,
	combout => \Mux0~9_combout\);

-- Location: LABCELL_X24_Y4_N51
\Mux0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = ( \inputB[27]~input_o\ & ( ((\inputA[26]~input_o\ & \inputB[26]~input_o\)) # (\inputA[27]~input_o\) ) ) # ( !\inputB[27]~input_o\ & ( (\inputA[26]~input_o\ & \inputB[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[26]~input_o\,
	datac => \ALT_INV_inputA[27]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	dataf => \ALT_INV_inputB[27]~input_o\,
	combout => \Mux0~10_combout\);

-- Location: LABCELL_X35_Y4_N12
\Mux0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~16_combout\ = ( \inputA[28]~input_o\ & ( (!\inputB[28]~input_o\ & (\Mux0~15_combout\ & (\Mux0~9_combout\ & !\Mux0~10_combout\))) ) ) # ( !\inputA[28]~input_o\ & ( (\Mux0~15_combout\ & (\Mux0~9_combout\ & !\Mux0~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[28]~input_o\,
	datab => \ALT_INV_Mux0~15_combout\,
	datac => \ALT_INV_Mux0~9_combout\,
	datad => \ALT_INV_Mux0~10_combout\,
	dataf => \ALT_INV_inputA[28]~input_o\,
	combout => \Mux0~16_combout\);

-- Location: MLABCELL_X21_Y4_N24
\Mux0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~17_combout\ = ( !\inputA[4]~input_o\ & ( !\inputA[6]~input_o\ & ( (!\inputA[3]~input_o\ & (\process_0~3_combout\ & !\inputA[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_process_0~3_combout\,
	datac => \ALT_INV_inputA[5]~input_o\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	combout => \Mux0~17_combout\);

-- Location: LABCELL_X23_Y4_N27
\Mux0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~18_combout\ = ( \process_0~4_combout\ & ( (\process_0~5_combout\ & !\inputA[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~5_combout\,
	datad => \ALT_INV_inputA[15]~input_o\,
	dataf => \ALT_INV_process_0~4_combout\,
	combout => \Mux0~18_combout\);

-- Location: LABCELL_X23_Y4_N3
\Mux0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~19_combout\ = ( \process_0~9_combout\ & ( (\process_0~10_combout\ & \process_0~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_0~10_combout\,
	datad => \ALT_INV_process_0~11_combout\,
	dataf => \ALT_INV_process_0~9_combout\,
	combout => \Mux0~19_combout\);

-- Location: LABCELL_X23_Y4_N24
\Mux0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~20_combout\ = ( \ALUControl[0]~input_o\ & ( (!\inputA[2]~input_o\ & (!\inputA[0]~input_o\ & (\process_0~12_combout\ & !\inputA[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[2]~input_o\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_process_0~12_combout\,
	datad => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux0~20_combout\);

-- Location: LABCELL_X23_Y4_N48
\Mux0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~21_combout\ = ( \Mux0~20_combout\ & ( (\process_0~8_combout\ & (\process_0~7_combout\ & (\Mux0~19_combout\ & \process_0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~8_combout\,
	datab => \ALT_INV_process_0~7_combout\,
	datac => \ALT_INV_Mux0~19_combout\,
	datad => \ALT_INV_process_0~6_combout\,
	dataf => \ALT_INV_Mux0~20_combout\,
	combout => \Mux0~21_combout\);

-- Location: LABCELL_X23_Y4_N54
\Mux0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~22_combout\ = ( \process_0~2_combout\ & ( \Mux0~21_combout\ & ( (\Mux0~17_combout\ & (\process_0~0_combout\ & (\Mux0~18_combout\ & \process_0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~17_combout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_Mux0~18_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	datae => \ALT_INV_process_0~2_combout\,
	dataf => \ALT_INV_Mux0~21_combout\,
	combout => \Mux0~22_combout\);

-- Location: LABCELL_X23_Y4_N42
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \inputA[14]~input_o\ & ( ((\inputA[15]~input_o\ & \inputB[15]~input_o\)) # (\inputB[14]~input_o\) ) ) # ( !\inputA[14]~input_o\ & ( (\inputA[15]~input_o\ & \inputB[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[14]~input_o\,
	datac => \ALT_INV_inputA[15]~input_o\,
	datad => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_inputA[14]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X25_Y5_N24
\Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \inputA[8]~input_o\ & ( ((\inputB[9]~input_o\ & \inputA[9]~input_o\)) # (\inputB[8]~input_o\) ) ) # ( !\inputA[8]~input_o\ & ( (\inputB[9]~input_o\ & \inputA[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	datac => \ALT_INV_inputB[9]~input_o\,
	datad => \ALT_INV_inputA[9]~input_o\,
	dataf => \ALT_INV_inputA[8]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LABCELL_X22_Y4_N24
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \inputB[11]~input_o\ & ( \inputB[12]~input_o\ & ( (!\inputA[12]~input_o\ & (!\inputA[11]~input_o\ & ((!\inputB[13]~input_o\) # (!\inputA[13]~input_o\)))) ) ) ) # ( !\inputB[11]~input_o\ & ( \inputB[12]~input_o\ & ( 
-- (!\inputA[12]~input_o\ & ((!\inputB[13]~input_o\) # (!\inputA[13]~input_o\))) ) ) ) # ( \inputB[11]~input_o\ & ( !\inputB[12]~input_o\ & ( (!\inputA[11]~input_o\ & ((!\inputB[13]~input_o\) # (!\inputA[13]~input_o\))) ) ) ) # ( !\inputB[11]~input_o\ & ( 
-- !\inputB[12]~input_o\ & ( (!\inputB[13]~input_o\) # (!\inputA[13]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111100001010000011001100100010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[13]~input_o\,
	datab => \ALT_INV_inputA[12]~input_o\,
	datac => \ALT_INV_inputA[11]~input_o\,
	datad => \ALT_INV_inputA[13]~input_o\,
	datae => \ALT_INV_inputB[11]~input_o\,
	dataf => \ALT_INV_inputB[12]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: MLABCELL_X25_Y2_N36
\Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = ( \inputA[7]~input_o\ & ( \inputA[6]~input_o\ & ( (!\inputB[6]~input_o\ & (!\inputB[7]~input_o\ & ((!\inputA[5]~input_o\) # (!\inputB[5]~input_o\)))) ) ) ) # ( !\inputA[7]~input_o\ & ( \inputA[6]~input_o\ & ( (!\inputB[6]~input_o\ & 
-- ((!\inputA[5]~input_o\) # (!\inputB[5]~input_o\))) ) ) ) # ( \inputA[7]~input_o\ & ( !\inputA[6]~input_o\ & ( (!\inputB[7]~input_o\ & ((!\inputA[5]~input_o\) # (!\inputB[5]~input_o\))) ) ) ) # ( !\inputA[7]~input_o\ & ( !\inputA[6]~input_o\ & ( 
-- (!\inputA[5]~input_o\) # (!\inputB[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111100001100000010101010100010001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputA[5]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputB[5]~input_o\,
	datae => \ALT_INV_inputA[7]~input_o\,
	dataf => \ALT_INV_inputA[6]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: MLABCELL_X25_Y1_N12
\Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = ( \inputA[2]~input_o\ & ( ((\inputB[3]~input_o\ & \inputA[3]~input_o\)) # (\inputB[2]~input_o\) ) ) # ( !\inputA[2]~input_o\ & ( (\inputB[3]~input_o\ & \inputA[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: MLABCELL_X25_Y4_N51
\Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( !\ALUControl[0]~input_o\ & ( (!\inputB[1]~input_o\ & ((!\inputA[0]~input_o\) # ((!\inputB[0]~input_o\)))) # (\inputB[1]~input_o\ & (!\inputA[1]~input_o\ & ((!\inputA[0]~input_o\) # (!\inputB[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011001000111110101100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: MLABCELL_X25_Y4_N12
\Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = ( \inputA[4]~input_o\ & ( \Mux0~4_combout\ & ( (!\inputB[4]~input_o\ & (\Mux0~3_combout\ & !\Mux0~5_combout\)) ) ) ) # ( !\inputA[4]~input_o\ & ( \Mux0~4_combout\ & ( (\Mux0~3_combout\ & !\Mux0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_Mux0~5_combout\,
	datae => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_Mux0~4_combout\,
	combout => \Mux0~6_combout\);

-- Location: MLABCELL_X25_Y4_N42
\Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = ( \Mux0~6_combout\ & ( (!\Mux0~2_combout\ & (\Mux0~1_combout\ & ((!\inputB[10]~input_o\) # (!\inputA[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[10]~input_o\,
	datab => \ALT_INV_inputA[10]~input_o\,
	datac => \ALT_INV_Mux0~2_combout\,
	datad => \ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_Mux0~6_combout\,
	combout => \Mux0~7_combout\);

-- Location: MLABCELL_X25_Y4_N21
\Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = ( \Mux0~7_combout\ & ( (!\Mux0~0_combout\ & ((!\inputA[16]~input_o\) # (!\inputB[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101000001010101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_inputA[16]~input_o\,
	datad => \ALT_INV_inputB[16]~input_o\,
	dataf => \ALT_INV_Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: LABCELL_X23_Y4_N18
\Mux0~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~30_combout\ = ( \Mux0~8_combout\ & ( (!\ALUControl[1]~input_o\ & (((\Mux0~29_combout\ & \Mux0~22_combout\)) # (\Mux0~16_combout\))) ) ) # ( !\Mux0~8_combout\ & ( (\Mux0~29_combout\ & (!\ALUControl[1]~input_o\ & \Mux0~22_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000001100010011000000110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~29_combout\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_Mux0~16_combout\,
	datad => \ALT_INV_Mux0~22_combout\,
	dataf => \ALT_INV_Mux0~8_combout\,
	combout => \Mux0~30_combout\);

-- Location: LABCELL_X24_Y4_N36
\Mux0~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~38_combout\ = ( \Mux0~37_combout\ & ( !\Mux0~30_combout\ & ( (((!\Mux0~33_combout\) # (\Add0~9_sumout\)) # (\Add0~5_sumout\)) # (\Add0~1_sumout\) ) ) ) # ( !\Mux0~37_combout\ & ( !\Mux0~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_Add0~5_sumout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Mux0~33_combout\,
	datae => \ALT_INV_Mux0~37_combout\,
	dataf => \ALT_INV_Mux0~30_combout\,
	combout => \Mux0~38_combout\);

-- Location: LABCELL_X24_Y4_N42
\Mux0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~49_combout\ = ( \Mux0~39_combout\ & ( \Mux0~38_combout\ & ( (\ALUControl[2]~input_o\ & ((!\ALUControl[3]~input_o\ & ((\Mux0~47_combout\))) # (\ALUControl[3]~input_o\ & (\Mux0~48_combout\)))) ) ) ) # ( !\Mux0~39_combout\ & ( \Mux0~38_combout\ & ( 
-- (!\ALUControl[3]~input_o\ & (((\Mux0~47_combout\ & \ALUControl[2]~input_o\)))) # (\ALUControl[3]~input_o\ & (((!\ALUControl[2]~input_o\)) # (\Mux0~48_combout\))) ) ) ) # ( \Mux0~39_combout\ & ( !\Mux0~38_combout\ & ( (!\ALUControl[3]~input_o\ & 
-- (((!\ALUControl[2]~input_o\) # (\Mux0~47_combout\)))) # (\ALUControl[3]~input_o\ & (\Mux0~48_combout\ & ((\ALUControl[2]~input_o\)))) ) ) ) # ( !\Mux0~39_combout\ & ( !\Mux0~38_combout\ & ( (!\ALUControl[2]~input_o\) # ((!\ALUControl[3]~input_o\ & 
-- ((\Mux0~47_combout\))) # (\ALUControl[3]~input_o\ & (\Mux0~48_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110101111100000011010100001111001101010000000000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~48_combout\,
	datab => \ALT_INV_Mux0~47_combout\,
	datac => \ALT_INV_ALUControl[3]~input_o\,
	datad => \ALT_INV_ALUControl[2]~input_o\,
	datae => \ALT_INV_Mux0~39_combout\,
	dataf => \ALT_INV_Mux0~38_combout\,
	combout => \Mux0~49_combout\);

-- Location: MLABCELL_X25_Y4_N3
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[3]~input_o\ & (!\ALUControl[2]~input_o\ $ (!\ALUControl[1]~input_o\))) # (\ALUControl[3]~input_o\ & (\ALUControl[2]~input_o\ & \ALUControl[1]~input_o\)) ) ) # ( !\ALUControl[0]~input_o\ & ( 
-- (\ALUControl[2]~input_o\ & (!\ALUControl[3]~input_o\ $ (\ALUControl[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datac => \ALT_INV_ALUControl[2]~input_o\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X24_Y4_N48
\Zero$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Zero$latch~combout\ = (!\Mux1~0_combout\ & (\Mux0~49_combout\)) # (\Mux1~0_combout\ & ((\Zero$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux0~49_combout\,
	datac => \ALT_INV_Zero$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	combout => \Zero$latch~combout\);

-- Location: MLABCELL_X25_Y4_N54
\Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \Add1~121_sumout\ & ( (!\ALUControl[3]~input_o\ & (((\ALUControl[1]~input_o\)))) # (\ALUControl[3]~input_o\ & (!\inputA[0]~input_o\ & (!\inputB[0]~input_o\ & !\ALUControl[1]~input_o\))) ) ) # ( !\Add1~121_sumout\ & ( 
-- (\ALUControl[3]~input_o\ & (!\inputA[0]~input_o\ & (!\inputB[0]~input_o\ & !\ALUControl[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000101010100100000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_Add1~121_sumout\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X25_Y4_N48
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \Add0~121_sumout\ & ( ((\inputA[0]~input_o\ & \inputB[0]~input_o\)) # (\ALUControl[1]~input_o\) ) ) # ( !\Add0~121_sumout\ & ( (\inputA[0]~input_o\ & (\inputB[0]~input_o\ & !\ALUControl[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_Add0~121_sumout\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X25_Y4_N0
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Mux2~0_combout\ & ( (!\ALUControl[3]~input_o\) # ((\ShiftLeft0~16_combout\ & (!\shamt[4]~input_o\ & \ShiftLeft0~12_combout\))) ) ) # ( !\Mux2~0_combout\ & ( (\ALUControl[3]~input_o\ & (\ShiftLeft0~16_combout\ & (!\shamt[4]~input_o\ & 
-- \ShiftLeft0~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000010101010101110101010101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_ShiftLeft0~16_combout\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_ShiftLeft0~12_combout\,
	dataf => \ALT_INV_Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: MLABCELL_X25_Y4_N57
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \inputB[0]~input_o\ & ( (!\ALUControl[3]~input_o\ & ((!\ALUControl[1]~input_o\))) # (\ALUControl[3]~input_o\ & (\ShiftRight0~60_combout\)) ) ) # ( !\inputB[0]~input_o\ & ( (!\ALUControl[3]~input_o\ & (\inputA[0]~input_o\ & 
-- ((!\ALUControl[1]~input_o\)))) # (\ALUControl[3]~input_o\ & (((\ShiftRight0~60_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000101001001110000010110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_inputA[0]~input_o\,
	datac => \ALT_INV_ShiftRight0~60_combout\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_inputB[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X25_Y4_N33
\Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( !\LessThan4~31_combout\ & ( (!\ALUControl[3]~input_o\ & \ALUControl[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_LessThan4~31_combout\,
	combout => \Mux2~4_combout\);

-- Location: MLABCELL_X25_Y4_N24
\Mux2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = ( \Mux2~2_combout\ & ( \Mux2~4_combout\ & ( ((!\ALUControl[2]~input_o\ & ((\Mux2~1_combout\))) # (\ALUControl[2]~input_o\ & (\Mux2~3_combout\))) # (\ALUControl[0]~input_o\) ) ) ) # ( !\Mux2~2_combout\ & ( \Mux2~4_combout\ & ( 
-- (!\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\ & ((\Mux2~1_combout\))) # (\ALUControl[2]~input_o\ & (\Mux2~3_combout\)))) # (\ALUControl[0]~input_o\ & (((\ALUControl[2]~input_o\)))) ) ) ) # ( \Mux2~2_combout\ & ( !\Mux2~4_combout\ & ( 
-- (!\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\ & ((\Mux2~1_combout\))) # (\ALUControl[2]~input_o\ & (\Mux2~3_combout\)))) # (\ALUControl[0]~input_o\ & (((!\ALUControl[2]~input_o\)))) ) ) ) # ( !\Mux2~2_combout\ & ( !\Mux2~4_combout\ & ( 
-- (!\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\ & ((\Mux2~1_combout\))) # (\ALUControl[2]~input_o\ & (\Mux2~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_Mux2~1_combout\,
	datad => \ALT_INV_ALUControl[2]~input_o\,
	datae => \ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: MLABCELL_X25_Y4_N45
\ALU_Result[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[0]$latch~combout\ = ( \Mux2~5_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[0]$latch~combout\) ) ) # ( !\Mux2~5_combout\ & ( (\ALU_Result[0]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[0]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux2~5_combout\,
	combout => \ALU_Result[0]$latch~combout\);

-- Location: MLABCELL_X25_Y3_N48
\Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \ALUControl[0]~input_o\ & ( \ALUControl[2]~input_o\ ) ) # ( !\ALUControl[0]~input_o\ & ( (\ALUControl[2]~input_o\ & !\ALUControl[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUControl[2]~input_o\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X25_Y4_N9
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \inputB[1]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[1]~input_o\)) # (\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~125_sumout\)))) ) ) # ( !\inputB[1]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ & ((\inputA[1]~input_o\)))) # (\ALUControl[1]~input_o\ & (((\Add0~125_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_Add0~125_sumout\,
	datad => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X25_Y3_N51
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \shamt[4]~input_o\ & ( (\ShiftRight0~64_combout\ & \ALUControl[0]~input_o\) ) ) # ( !\shamt[4]~input_o\ & ( (!\ALUControl[0]~input_o\ & (((\ShiftLeft0~12_combout\ & \ShiftLeft0~22_combout\)))) # (\ALUControl[0]~input_o\ & 
-- (\ShiftRight0~64_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001110100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~64_combout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ShiftLeft0~12_combout\,
	datad => \ALT_INV_ShiftLeft0~22_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X25_Y3_N30
\Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \Mux3~1_combout\ & ( (!\Mux6~1_combout\ & (((\Mux3~0_combout\)) # (\ALUControl[3]~input_o\))) # (\Mux6~1_combout\ & (((\Add1~125_sumout\)))) ) ) # ( !\Mux3~1_combout\ & ( (!\Mux6~1_combout\ & (!\ALUControl[3]~input_o\ & 
-- (\Mux3~0_combout\))) # (\Mux6~1_combout\ & (((\Add1~125_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_ALUControl[3]~input_o\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_Add1~125_sumout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X25_Y2_N33
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \ALUControl[0]~input_o\ & ( \ALUControl[2]~input_o\ ) ) # ( !\ALUControl[0]~input_o\ & ( (\ALUControl[3]~input_o\ & \ALUControl[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUControl[3]~input_o\,
	datad => \ALT_INV_ALUControl[2]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X24_Y3_N3
\Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \inputB[1]~input_o\ & ( \Mux6~1_combout\ & ( (\Mux3~2_combout\ & !\Mux6~0_combout\) ) ) ) # ( !\inputB[1]~input_o\ & ( \Mux6~1_combout\ & ( (\Mux3~2_combout\ & !\Mux6~0_combout\) ) ) ) # ( \inputB[1]~input_o\ & ( !\Mux6~1_combout\ & ( 
-- (\Mux3~2_combout\ & !\Mux6~0_combout\) ) ) ) # ( !\inputB[1]~input_o\ & ( !\Mux6~1_combout\ & ( (!\Mux6~0_combout\ & (\Mux3~2_combout\)) # (\Mux6~0_combout\ & ((!\inputA[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~2_combout\,
	datac => \ALT_INV_inputA[1]~input_o\,
	datad => \ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_inputB[1]~input_o\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux3~3_combout\);

-- Location: LABCELL_X24_Y3_N15
\ALU_Result[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[1]$latch~combout\ = ( \Mux3~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[1]$latch~combout\) ) ) # ( !\Mux3~3_combout\ & ( (\ALU_Result[1]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[1]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux3~3_combout\,
	combout => \ALU_Result[1]$latch~combout\);

-- Location: MLABCELL_X25_Y3_N27
\Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \ShiftLeft0~18_combout\ & ( (!\ALUControl[0]~input_o\ & (!\shamt[4]~input_o\ & (\ShiftLeft0~12_combout\))) # (\ALUControl[0]~input_o\ & (((\ShiftRight0~50_combout\)))) ) ) # ( !\ShiftLeft0~18_combout\ & ( (\ALUControl[0]~input_o\ & 
-- \ShiftRight0~50_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100100000001011110010000000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ShiftLeft0~12_combout\,
	datac => \ALT_INV_ALUControl[0]~input_o\,
	datad => \ALT_INV_ShiftRight0~50_combout\,
	dataf => \ALT_INV_ShiftLeft0~18_combout\,
	combout => \Mux4~1_combout\);

-- Location: MLABCELL_X25_Y1_N3
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[2]~input_o\)) # (\inputB[2]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~109_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[2]~input_o\ & (\inputA[2]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~109_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[2]~input_o\,
	datab => \ALT_INV_inputA[2]~input_o\,
	datac => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_Add0~109_sumout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X25_Y3_N45
\Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Add1~101_sumout\ & ( ((!\ALUControl[3]~input_o\ & ((\Mux4~0_combout\))) # (\ALUControl[3]~input_o\ & (\Mux4~1_combout\))) # (\Mux6~1_combout\) ) ) # ( !\Add1~101_sumout\ & ( (!\Mux6~1_combout\ & ((!\ALUControl[3]~input_o\ & 
-- ((\Mux4~0_combout\))) # (\ALUControl[3]~input_o\ & (\Mux4~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001001011111011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_Mux4~1_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Add1~101_sumout\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X25_Y3_N39
\Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \inputA[2]~input_o\ & ( (!\Mux6~0_combout\ & \Mux4~2_combout\) ) ) # ( !\inputA[2]~input_o\ & ( (!\Mux6~0_combout\ & (((\Mux4~2_combout\)))) # (\Mux6~0_combout\ & (!\Mux6~1_combout\ & (!\inputB[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101100001000001110110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_inputB[2]~input_o\,
	datad => \ALT_INV_Mux4~2_combout\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: MLABCELL_X25_Y3_N3
\ALU_Result[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[2]$latch~combout\ = ( \Mux4~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[2]$latch~combout\) ) ) # ( !\Mux4~3_combout\ & ( (\Mux1~0_combout\ & \ALU_Result[2]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_ALU_Result[2]$latch~combout\,
	dataf => \ALT_INV_Mux4~3_combout\,
	combout => \ALU_Result[2]$latch~combout\);

-- Location: MLABCELL_X25_Y3_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \ALUControl[1]~input_o\ & ( \Add0~113_sumout\ ) ) # ( !\ALUControl[1]~input_o\ & ( (!\inputA[3]~input_o\ & (\inputB[3]~input_o\ & \ALUControl[0]~input_o\)) # (\inputA[3]~input_o\ & ((\ALUControl[0]~input_o\) # (\inputB[3]~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_ALUControl[0]~input_o\,
	datad => \ALT_INV_Add0~113_sumout\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X25_Y3_N24
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \ALUControl[0]~input_o\ & ( \ShiftRight0~45_combout\ ) ) # ( !\ALUControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & (\ShiftLeft0~12_combout\ & \ShiftLeft0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ShiftLeft0~12_combout\,
	datac => \ALT_INV_ShiftRight0~45_combout\,
	datad => \ALT_INV_ShiftLeft0~3_combout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: MLABCELL_X25_Y3_N33
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Mux5~1_combout\ & ( (!\Mux6~1_combout\ & (((\Mux5~0_combout\)) # (\ALUControl[3]~input_o\))) # (\Mux6~1_combout\ & (((\Add1~105_sumout\)))) ) ) # ( !\Mux5~1_combout\ & ( (!\Mux6~1_combout\ & (!\ALUControl[3]~input_o\ & 
-- (\Mux5~0_combout\))) # (\Mux6~1_combout\ & (((\Add1~105_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_ALUControl[3]~input_o\,
	datac => \ALT_INV_Mux5~0_combout\,
	datad => \ALT_INV_Add1~105_sumout\,
	dataf => \ALT_INV_Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: MLABCELL_X25_Y3_N6
\Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \Mux6~1_combout\ & ( (\Mux5~2_combout\ & !\Mux6~0_combout\) ) ) # ( !\Mux6~1_combout\ & ( (!\Mux6~0_combout\ & (((\Mux5~2_combout\)))) # (\Mux6~0_combout\ & (!\inputA[3]~input_o\ & (!\inputB[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001000000011111000100000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[3]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux5~3_combout\);

-- Location: LABCELL_X24_Y3_N57
\ALU_Result[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[3]$latch~combout\ = ( \Mux1~0_combout\ & ( \ALU_Result[3]$latch~combout\ ) ) # ( !\Mux1~0_combout\ & ( \Mux5~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux5~3_combout\,
	datad => \ALT_INV_ALU_Result[3]$latch~combout\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \ALU_Result[3]$latch~combout\);

-- Location: MLABCELL_X25_Y3_N12
\Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[4]~input_o\)) # (\inputB[4]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~117_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[4]~input_o\ & (\inputA[4]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~117_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_Add0~117_sumout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: MLABCELL_X25_Y3_N54
\Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \ShiftRight0~13_combout\ & ( ((!\shamt[4]~input_o\ & \ShiftLeft0~21_combout\)) # (\ALUControl[0]~input_o\) ) ) # ( !\ShiftRight0~13_combout\ & ( (!\shamt[4]~input_o\ & (!\ALUControl[0]~input_o\ & \ShiftLeft0~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000111011001110110011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ShiftLeft0~21_combout\,
	dataf => \ALT_INV_ShiftRight0~13_combout\,
	combout => \Mux6~3_combout\);

-- Location: MLABCELL_X25_Y3_N0
\Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \Add1~109_sumout\ & ( ((!\ALUControl[3]~input_o\ & (\Mux6~2_combout\)) # (\ALUControl[3]~input_o\ & ((\Mux6~3_combout\)))) # (\Mux6~1_combout\) ) ) # ( !\Add1~109_sumout\ & ( (!\Mux6~1_combout\ & ((!\ALUControl[3]~input_o\ & 
-- (\Mux6~2_combout\)) # (\ALUControl[3]~input_o\ & ((\Mux6~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000100000101001110111010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_Mux6~2_combout\,
	datac => \ALT_INV_Mux6~3_combout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Add1~109_sumout\,
	combout => \Mux6~4_combout\);

-- Location: MLABCELL_X25_Y3_N15
\Mux6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = ( \Mux6~1_combout\ & ( (\Mux6~4_combout\ & !\Mux6~0_combout\) ) ) # ( !\Mux6~1_combout\ & ( (!\Mux6~0_combout\ & (((\Mux6~4_combout\)))) # (\Mux6~0_combout\ & (!\inputB[4]~input_o\ & (!\inputA[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001000000011111000100000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[4]~input_o\,
	datab => \ALT_INV_inputA[4]~input_o\,
	datac => \ALT_INV_Mux6~4_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux6~5_combout\);

-- Location: LABCELL_X24_Y3_N6
\ALU_Result[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[4]$latch~combout\ = ( \ALU_Result[4]$latch~combout\ & ( (\Mux1~0_combout\) # (\Mux6~5_combout\) ) ) # ( !\ALU_Result[4]$latch~combout\ & ( (\Mux6~5_combout\ & !\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~5_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_ALU_Result[4]$latch~combout\,
	combout => \ALU_Result[4]$latch~combout\);

-- Location: MLABCELL_X25_Y2_N0
\Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \ALUControl[0]~input_o\ & ( \ShiftRight0~68_combout\ ) ) # ( !\ALUControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & \ShiftLeft0~37_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~68_combout\,
	datad => \ALT_INV_ShiftLeft0~37_combout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X25_Y2_N24
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[5]~input_o\)) # (\inputB[5]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~49_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[5]~input_o\ & (\inputA[5]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~49_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputA[5]~input_o\,
	datac => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_Add0~49_sumout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X25_Y2_N30
\Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \Mux6~1_combout\ & ( \Add1~41_sumout\ ) ) # ( !\Mux6~1_combout\ & ( (!\ALUControl[3]~input_o\ & ((\Mux7~0_combout\))) # (\ALUControl[3]~input_o\ & (\Mux7~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~1_combout\,
	datab => \ALT_INV_ALUControl[3]~input_o\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_Add1~41_sumout\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: MLABCELL_X25_Y2_N27
\Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( \Mux6~0_combout\ & ( (!\inputB[5]~input_o\ & (!\inputA[5]~input_o\ & !\Mux6~1_combout\)) ) ) # ( !\Mux6~0_combout\ & ( \Mux7~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_inputA[5]~input_o\,
	datac => \ALT_INV_Mux7~2_combout\,
	datad => \ALT_INV_Mux6~1_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux7~3_combout\);

-- Location: MLABCELL_X25_Y2_N9
\ALU_Result[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[5]$latch~combout\ = ( \Mux1~0_combout\ & ( \ALU_Result[5]$latch~combout\ ) ) # ( !\Mux1~0_combout\ & ( \Mux7~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux7~3_combout\,
	datad => \ALT_INV_ALU_Result[5]$latch~combout\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \ALU_Result[5]$latch~combout\);

-- Location: MLABCELL_X25_Y2_N18
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[6]~input_o\)) # (\inputB[6]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~53_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[6]~input_o\ & (\inputA[6]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~53_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputA[6]~input_o\,
	datac => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_Add0~53_sumout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X25_Y2_N12
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \shamt[4]~input_o\ & ( (\ALUControl[0]~input_o\ & \ShiftRight0~72_combout\) ) ) # ( !\shamt[4]~input_o\ & ( (!\ALUControl[0]~input_o\ & (\ShiftLeft0~41_combout\)) # (\ALUControl[0]~input_o\ & ((\ShiftRight0~72_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ShiftLeft0~41_combout\,
	datad => \ALT_INV_ShiftRight0~72_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X25_Y2_N42
\Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \Mux8~1_combout\ & ( (!\Mux6~1_combout\ & (((\ALUControl[3]~input_o\) # (\Mux8~0_combout\)))) # (\Mux6~1_combout\ & (\Add1~45_sumout\)) ) ) # ( !\Mux8~1_combout\ & ( (!\Mux6~1_combout\ & (((\Mux8~0_combout\ & 
-- !\ALUControl[3]~input_o\)))) # (\Mux6~1_combout\ & (\Add1~45_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000101001101010000010100110101111101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~45_sumout\,
	datab => \ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: MLABCELL_X25_Y2_N21
\Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( \Mux6~0_combout\ & ( (!\inputB[6]~input_o\ & (!\inputA[6]~input_o\ & !\Mux6~1_combout\)) ) ) # ( !\Mux6~0_combout\ & ( \Mux8~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[6]~input_o\,
	datab => \ALT_INV_inputA[6]~input_o\,
	datac => \ALT_INV_Mux8~2_combout\,
	datad => \ALT_INV_Mux6~1_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux8~3_combout\);

-- Location: MLABCELL_X25_Y2_N45
\ALU_Result[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[6]$latch~combout\ = ( \Mux8~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[6]$latch~combout\) ) ) # ( !\Mux8~3_combout\ & ( (\Mux1~0_combout\ & \ALU_Result[6]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_ALU_Result[6]$latch~combout\,
	dataf => \ALT_INV_Mux8~3_combout\,
	combout => \ALU_Result[6]$latch~combout\);

-- Location: MLABCELL_X25_Y5_N48
\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \shamt[4]~input_o\ & ( \ALUControl[0]~input_o\ & ( !\ShiftRight0~57_combout\ ) ) ) # ( !\shamt[4]~input_o\ & ( \ALUControl[0]~input_o\ & ( !\ShiftRight0~57_combout\ ) ) ) # ( !\shamt[4]~input_o\ & ( !\ALUControl[0]~input_o\ & ( 
-- \ShiftLeft0~70_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~57_combout\,
	datac => \ALT_INV_ShiftLeft0~70_combout\,
	datae => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: MLABCELL_X25_Y2_N15
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Add0~57_sumout\ & ( ((!\ALUControl[0]~input_o\ & (\inputA[7]~input_o\ & \inputB[7]~input_o\)) # (\ALUControl[0]~input_o\ & ((\inputB[7]~input_o\) # (\inputA[7]~input_o\)))) # (\ALUControl[1]~input_o\) ) ) # ( !\Add0~57_sumout\ & ( 
-- (!\ALUControl[1]~input_o\ & ((!\ALUControl[0]~input_o\ & (\inputA[7]~input_o\ & \inputB[7]~input_o\)) # (\ALUControl[0]~input_o\ & ((\inputB[7]~input_o\) # (\inputA[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101001010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[1]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_inputA[7]~input_o\,
	datad => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X25_Y5_N6
\Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \Mux9~0_combout\ & ( (!\Mux6~1_combout\ & ((!\ALUControl[3]~input_o\) # ((\Mux9~1_combout\)))) # (\Mux6~1_combout\ & (((\Add1~49_sumout\)))) ) ) # ( !\Mux9~0_combout\ & ( (!\Mux6~1_combout\ & (\ALUControl[3]~input_o\ & 
-- (\Mux9~1_combout\))) # (\Mux6~1_combout\ & (((\Add1~49_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \ALT_INV_Add1~49_sumout\,
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \Mux9~2_combout\);

-- Location: MLABCELL_X25_Y5_N3
\Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( !\inputB[7]~input_o\ & ( \Mux6~0_combout\ & ( (!\Mux6~1_combout\ & !\inputA[7]~input_o\) ) ) ) # ( \inputB[7]~input_o\ & ( !\Mux6~0_combout\ & ( \Mux9~2_combout\ ) ) ) # ( !\inputB[7]~input_o\ & ( !\Mux6~0_combout\ & ( 
-- \Mux9~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001110100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_Mux9~2_combout\,
	datac => \ALT_INV_inputA[7]~input_o\,
	datae => \ALT_INV_inputB[7]~input_o\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: MLABCELL_X25_Y5_N33
\ALU_Result[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[7]$latch~combout\ = ( \Mux9~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[7]$latch~combout\) ) ) # ( !\Mux9~3_combout\ & ( (\ALU_Result[7]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[7]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux9~3_combout\,
	combout => \ALU_Result[7]$latch~combout\);

-- Location: MLABCELL_X25_Y5_N36
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \ALUControl[0]~input_o\ & ( !\ShiftRight0~9_combout\ ) ) # ( !\ALUControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & \ShiftLeft0~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~9_combout\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_ShiftLeft0~25_combout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: MLABCELL_X25_Y5_N42
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputB[8]~input_o\)) # (\inputA[8]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~61_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputA[8]~input_o\ & (\inputB[8]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~61_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[1]~input_o\,
	datab => \ALT_INV_inputA[8]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X25_Y5_N21
\Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \ALUControl[3]~input_o\ & ( \Mux6~1_combout\ & ( \Add1~53_sumout\ ) ) ) # ( !\ALUControl[3]~input_o\ & ( \Mux6~1_combout\ & ( \Add1~53_sumout\ ) ) ) # ( \ALUControl[3]~input_o\ & ( !\Mux6~1_combout\ & ( \Mux10~1_combout\ ) ) ) # ( 
-- !\ALUControl[3]~input_o\ & ( !\Mux6~1_combout\ & ( \Mux10~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~1_combout\,
	datab => \ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_Add1~53_sumout\,
	datae => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: MLABCELL_X25_Y5_N27
\Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \inputA[8]~input_o\ & ( (\Mux10~2_combout\ & !\Mux6~0_combout\) ) ) # ( !\inputA[8]~input_o\ & ( (!\Mux6~0_combout\ & (((\Mux10~2_combout\)))) # (\Mux6~0_combout\ & (!\inputB[8]~input_o\ & ((!\Mux6~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110100000001100111010000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[8]~input_o\,
	datab => \ALT_INV_Mux10~2_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_inputA[8]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: MLABCELL_X25_Y5_N45
\ALU_Result[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[8]$latch~combout\ = ( \Mux10~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[8]$latch~combout\) ) ) # ( !\Mux10~3_combout\ & ( (\ALU_Result[8]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[8]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux10~3_combout\,
	combout => \ALU_Result[8]$latch~combout\);

-- Location: MLABCELL_X25_Y5_N15
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[9]~input_o\)) # (\inputB[9]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~65_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[9]~input_o\ & (\inputA[9]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~65_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[9]~input_o\,
	datab => \ALT_INV_inputA[9]~input_o\,
	datac => \ALT_INV_Add0~65_sumout\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X25_Y5_N54
\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \ShiftLeft0~27_combout\ & ( \ALUControl[0]~input_o\ & ( !\ShiftRight0~40_combout\ ) ) ) # ( !\ShiftLeft0~27_combout\ & ( \ALUControl[0]~input_o\ & ( !\ShiftRight0~40_combout\ ) ) ) # ( \ShiftLeft0~27_combout\ & ( 
-- !\ALUControl[0]~input_o\ & ( !\shamt[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~40_combout\,
	datae => \ALT_INV_ShiftLeft0~27_combout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X25_Y5_N9
\Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \Mux11~1_combout\ & ( (!\Mux6~1_combout\ & (((\Mux11~0_combout\)) # (\ALUControl[3]~input_o\))) # (\Mux6~1_combout\ & (((\Add1~57_sumout\)))) ) ) # ( !\Mux11~1_combout\ & ( (!\Mux6~1_combout\ & (!\ALUControl[3]~input_o\ & 
-- (\Mux11~0_combout\))) # (\Mux6~1_combout\ & (((\Add1~57_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_Add1~57_sumout\,
	dataf => \ALT_INV_Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: MLABCELL_X25_Y5_N12
\Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \Mux11~2_combout\ & ( (!\Mux6~0_combout\) # ((!\inputB[9]~input_o\ & (!\inputA[9]~input_o\ & !\Mux6~1_combout\))) ) ) # ( !\Mux11~2_combout\ & ( (!\inputB[9]~input_o\ & (!\inputA[9]~input_o\ & (!\Mux6~1_combout\ & \Mux6~0_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000011111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[9]~input_o\,
	datab => \ALT_INV_inputA[9]~input_o\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: MLABCELL_X25_Y5_N39
\ALU_Result[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[9]$latch~combout\ = ( \ALU_Result[9]$latch~combout\ & ( (\Mux1~0_combout\) # (\Mux11~3_combout\) ) ) # ( !\ALU_Result[9]$latch~combout\ & ( (\Mux11~3_combout\ & !\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux11~3_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_ALU_Result[9]$latch~combout\,
	combout => \ALU_Result[9]$latch~combout\);

-- Location: LABCELL_X24_Y2_N45
\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \ShiftRight0~30_combout\ & ( \ShiftLeft0~19_combout\ & ( (!\ALUControl[0]~input_o\ & !\shamt[4]~input_o\) ) ) ) # ( !\ShiftRight0~30_combout\ & ( \ShiftLeft0~19_combout\ & ( (!\shamt[4]~input_o\) # (\ALUControl[0]~input_o\) ) ) ) # ( 
-- !\ShiftRight0~30_combout\ & ( !\ShiftLeft0~19_combout\ & ( \ALUControl[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000011110011111100111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datae => \ALT_INV_ShiftRight0~30_combout\,
	dataf => \ALT_INV_ShiftLeft0~19_combout\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X24_Y2_N24
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[10]~input_o\)) # (\inputB[10]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~89_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[10]~input_o\ & (\inputA[10]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~89_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111101110000011111110111000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[10]~input_o\,
	datab => \ALT_INV_inputA[10]~input_o\,
	datac => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_Add0~89_sumout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X24_Y2_N12
\Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Mux6~1_combout\ & ( \Add1~113_sumout\ ) ) # ( !\Mux6~1_combout\ & ( (!\ALUControl[3]~input_o\ & ((\Mux12~0_combout\))) # (\ALUControl[3]~input_o\ & (\Mux12~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~1_combout\,
	datab => \ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_ALUControl[3]~input_o\,
	datad => \ALT_INV_Add1~113_sumout\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LABCELL_X24_Y2_N27
\Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \Mux6~0_combout\ & ( (!\inputB[10]~input_o\ & (!\inputA[10]~input_o\ & !\Mux6~1_combout\)) ) ) # ( !\Mux6~0_combout\ & ( \Mux12~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[10]~input_o\,
	datab => \ALT_INV_inputA[10]~input_o\,
	datac => \ALT_INV_Mux12~2_combout\,
	datad => \ALT_INV_Mux6~1_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux12~3_combout\);

-- Location: LABCELL_X24_Y2_N33
\ALU_Result[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[10]$latch~combout\ = ( \ALU_Result[10]$latch~combout\ & ( (\Mux1~0_combout\) # (\Mux12~3_combout\) ) ) # ( !\ALU_Result[10]$latch~combout\ & ( (\Mux12~3_combout\ & !\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux12~3_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_ALU_Result[10]$latch~combout\,
	combout => \ALU_Result[10]$latch~combout\);

-- Location: LABCELL_X29_Y3_N0
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \ShiftLeft0~23_combout\ & ( (!\ALUControl[0]~input_o\ & (!\shamt[4]~input_o\)) # (\ALUControl[0]~input_o\ & ((\ShiftRight0~90_combout\))) ) ) # ( !\ShiftLeft0~23_combout\ & ( (\ALUControl[0]~input_o\ & \ShiftRight0~90_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110100000111101011010000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_ShiftRight0~90_combout\,
	dataf => \ALT_INV_ShiftLeft0~23_combout\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X24_Y3_N33
\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[11]~input_o\)) # (\inputB[11]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~93_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[11]~input_o\ & (\inputA[11]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~93_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datab => \ALT_INV_inputA[11]~input_o\,
	datac => \ALT_INV_Add0~93_sumout\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X24_Y3_N51
\Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Mux13~1_combout\ & ( (!\Mux6~1_combout\ & ((!\ALUControl[3]~input_o\) # ((\Mux13~0_combout\)))) # (\Mux6~1_combout\ & (((\Add1~117_sumout\)))) ) ) # ( !\Mux13~1_combout\ & ( (!\Mux6~1_combout\ & (\ALUControl[3]~input_o\ & 
-- (\Mux13~0_combout\))) # (\Mux6~1_combout\ & (((\Add1~117_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_Add1~117_sumout\,
	dataf => \ALT_INV_Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LABCELL_X24_Y3_N30
\Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \Mux13~2_combout\ & ( (!\Mux6~0_combout\) # ((!\inputB[11]~input_o\ & (!\inputA[11]~input_o\ & !\Mux6~1_combout\))) ) ) # ( !\Mux13~2_combout\ & ( (!\inputB[11]~input_o\ & (!\inputA[11]~input_o\ & (!\Mux6~1_combout\ & 
-- \Mux6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000011111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datab => \ALT_INV_inputA[11]~input_o\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X24_Y3_N27
\ALU_Result[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[11]$latch~combout\ = ( \Mux13~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[11]$latch~combout\) ) ) # ( !\Mux13~3_combout\ & ( (\Mux1~0_combout\ & \ALU_Result[11]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_ALU_Result[11]$latch~combout\,
	dataf => \ALT_INV_Mux13~3_combout\,
	combout => \ALU_Result[11]$latch~combout\);

-- Location: LABCELL_X24_Y3_N21
\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputB[12]~input_o\)) # (\inputA[12]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~97_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputA[12]~input_o\ & (\inputB[12]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~97_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[12]~input_o\,
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_Add0~97_sumout\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X29_Y3_N45
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \shamt[4]~input_o\ & ( (\ALUControl[0]~input_o\ & \ShiftRight0~94_combout\) ) ) # ( !\shamt[4]~input_o\ & ( (!\ALUControl[0]~input_o\ & (\ShiftLeft0~33_combout\)) # (\ALUControl[0]~input_o\ & ((\ShiftRight0~94_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ShiftLeft0~33_combout\,
	datad => \ALT_INV_ShiftRight0~94_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X24_Y3_N48
\Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \Mux14~0_combout\ & ( (!\Mux6~1_combout\ & (((\Mux14~1_combout\)) # (\ALUControl[3]~input_o\))) # (\Mux6~1_combout\ & (((\Add1~81_sumout\)))) ) ) # ( !\Mux14~0_combout\ & ( (!\Mux6~1_combout\ & (!\ALUControl[3]~input_o\ & 
-- (\Mux14~1_combout\))) # (\Mux6~1_combout\ & (((\Add1~81_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_Mux14~1_combout\,
	datad => \ALT_INV_Add1~81_sumout\,
	dataf => \ALT_INV_Mux14~0_combout\,
	combout => \Mux14~2_combout\);

-- Location: LABCELL_X24_Y3_N18
\Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \Mux14~2_combout\ & ( (!\Mux6~0_combout\) # ((!\inputA[12]~input_o\ & (!\inputB[12]~input_o\ & !\Mux6~1_combout\))) ) ) # ( !\Mux14~2_combout\ & ( (!\inputA[12]~input_o\ & (!\inputB[12]~input_o\ & (!\Mux6~1_combout\ & 
-- \Mux6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000011111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[12]~input_o\,
	datab => \ALT_INV_inputB[12]~input_o\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LABCELL_X24_Y3_N39
\ALU_Result[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[12]$latch~combout\ = ( \Mux14~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[12]$latch~combout\) ) ) # ( !\Mux14~3_combout\ & ( (\ALU_Result[12]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[12]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux14~3_combout\,
	combout => \ALU_Result[12]$latch~combout\);

-- Location: LABCELL_X22_Y4_N39
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \ALUControl[0]~input_o\ & ( \ShiftRight0~98_combout\ ) ) # ( !\ALUControl[0]~input_o\ & ( (\ShiftLeft0~31_combout\ & !\shamt[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~31_combout\,
	datac => \ALT_INV_ShiftRight0~98_combout\,
	datad => \ALT_INV_shamt[4]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X22_Y4_N48
\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[13]~input_o\)) # (\inputB[13]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~101_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[13]~input_o\ & (\inputA[13]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~101_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[13]~input_o\,
	datab => \ALT_INV_inputA[13]~input_o\,
	datac => \ALT_INV_Add0~101_sumout\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LABCELL_X22_Y4_N9
\Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \Add1~85_sumout\ & ( \Mux15~1_combout\ & ( (!\ALUControl[3]~input_o\) # ((\Mux6~1_combout\) # (\Mux15~0_combout\)) ) ) ) # ( !\Add1~85_sumout\ & ( \Mux15~1_combout\ & ( (!\Mux6~1_combout\ & ((!\ALUControl[3]~input_o\) # 
-- (\Mux15~0_combout\))) ) ) ) # ( \Add1~85_sumout\ & ( !\Mux15~1_combout\ & ( ((\ALUControl[3]~input_o\ & \Mux15~0_combout\)) # (\Mux6~1_combout\) ) ) ) # ( !\Add1~85_sumout\ & ( !\Mux15~1_combout\ & ( (\ALUControl[3]~input_o\ & (\Mux15~0_combout\ & 
-- !\Mux6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111110001111110110000101100001011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_Mux15~0_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	datae => \ALT_INV_Add1~85_sumout\,
	dataf => \ALT_INV_Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LABCELL_X22_Y4_N51
\Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = ( \Mux15~2_combout\ & ( (!\Mux6~0_combout\) # ((!\inputB[13]~input_o\ & (!\inputA[13]~input_o\ & !\Mux6~1_combout\))) ) ) # ( !\Mux15~2_combout\ & ( (!\inputB[13]~input_o\ & (!\inputA[13]~input_o\ & (!\Mux6~1_combout\ & 
-- \Mux6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000011111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[13]~input_o\,
	datab => \ALT_INV_inputA[13]~input_o\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_Mux15~2_combout\,
	combout => \Mux15~3_combout\);

-- Location: LABCELL_X22_Y4_N45
\ALU_Result[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[13]$latch~combout\ = ( \Mux15~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[13]$latch~combout\) ) ) # ( !\Mux15~3_combout\ & ( (\ALU_Result[13]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[13]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux15~3_combout\,
	combout => \ALU_Result[13]$latch~combout\);

-- Location: LABCELL_X22_Y4_N3
\Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[14]~input_o\)) # (\inputB[14]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~33_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[14]~input_o\ & (\inputA[14]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~33_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[14]~input_o\,
	datab => \ALT_INV_inputA[14]~input_o\,
	datac => \ALT_INV_Add0~33_sumout\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: MLABCELL_X28_Y3_N18
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( !\ShiftRight0~76_combout\ & ( \ALUControl[0]~input_o\ ) ) # ( \ShiftRight0~76_combout\ & ( !\ALUControl[0]~input_o\ & ( (!\shamt[4]~input_o\ & \ShiftLeft0~29_combout\) ) ) ) # ( !\ShiftRight0~76_combout\ & ( !\ALUControl[0]~input_o\ 
-- & ( (!\shamt[4]~input_o\ & \ShiftLeft0~29_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftLeft0~29_combout\,
	datae => \ALT_INV_ShiftRight0~76_combout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X22_Y4_N18
\Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = ( \ALUControl[2]~input_o\ & ( \Mux16~0_combout\ & ( (!\ALUControl[0]~input_o\ & (\Add1~21_sumout\ & !\ALUControl[3]~input_o\)) ) ) ) # ( !\ALUControl[2]~input_o\ & ( \Mux16~0_combout\ & ( (\ALUControl[3]~input_o\) # (\Mux16~1_combout\) 
-- ) ) ) # ( \ALUControl[2]~input_o\ & ( !\Mux16~0_combout\ & ( (!\ALUControl[0]~input_o\ & (\Add1~21_sumout\ & !\ALUControl[3]~input_o\)) ) ) ) # ( !\ALUControl[2]~input_o\ & ( !\Mux16~0_combout\ & ( (\Mux16~1_combout\ & !\ALUControl[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011000000000001010101111111110000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux16~1_combout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_Add1~21_sumout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	datae => \ALT_INV_ALUControl[2]~input_o\,
	dataf => \ALT_INV_Mux16~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: LABCELL_X22_Y4_N0
\Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = ( \Mux16~2_combout\ ) # ( !\Mux16~2_combout\ & ( (!\inputB[14]~input_o\ & (!\inputA[14]~input_o\ & (\Mux6~0_combout\ & !\Mux6~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[14]~input_o\,
	datab => \ALT_INV_inputA[14]~input_o\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_Mux6~1_combout\,
	dataf => \ALT_INV_Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LABCELL_X22_Y4_N33
\ALU_Result[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[14]$latch~combout\ = ( \Mux16~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[14]$latch~combout\) ) ) # ( !\Mux16~3_combout\ & ( (\ALU_Result[14]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[14]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux16~3_combout\,
	combout => \ALU_Result[14]$latch~combout\);

-- Location: MLABCELL_X25_Y3_N57
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \ShiftRight0~70_combout\ & ( (!\shamt[4]~input_o\ & (!\ALUControl[0]~input_o\ & \ShiftLeft0~4_combout\)) ) ) # ( !\ShiftRight0~70_combout\ & ( ((!\shamt[4]~input_o\ & \ShiftLeft0~4_combout\)) # (\ALUControl[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100111011101100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datad => \ALT_INV_ShiftLeft0~4_combout\,
	dataf => \ALT_INV_ShiftRight0~70_combout\,
	combout => \Mux17~0_combout\);

-- Location: MLABCELL_X25_Y1_N42
\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[15]~input_o\)) # (\inputB[15]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~105_sumout\)))) ) ) # ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputB[15]~input_o\ & (\inputA[15]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~105_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[15]~input_o\,
	datab => \ALT_INV_inputA[15]~input_o\,
	datac => \ALT_INV_Add0~105_sumout\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: MLABCELL_X25_Y3_N18
\Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \Mux17~1_combout\ & ( (!\Mux6~1_combout\ & ((!\ALUControl[3]~input_o\) # ((\Mux17~0_combout\)))) # (\Mux6~1_combout\ & (((\Add1~89_sumout\)))) ) ) # ( !\Mux17~1_combout\ & ( (!\Mux6~1_combout\ & (\ALUControl[3]~input_o\ & 
-- (\Mux17~0_combout\))) # (\Mux6~1_combout\ & (((\Add1~89_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_ALUControl[3]~input_o\,
	datac => \ALT_INV_Mux17~0_combout\,
	datad => \ALT_INV_Add1~89_sumout\,
	dataf => \ALT_INV_Mux17~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: MLABCELL_X25_Y3_N36
\Mux17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = ( \inputB[15]~input_o\ & ( (!\Mux6~0_combout\ & \Mux17~2_combout\) ) ) # ( !\inputB[15]~input_o\ & ( (!\Mux6~0_combout\ & (((\Mux17~2_combout\)))) # (\Mux6~0_combout\ & (!\Mux6~1_combout\ & ((!\inputA[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000001100001011100000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux17~2_combout\,
	datad => \ALT_INV_inputA[15]~input_o\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux17~3_combout\);

-- Location: MLABCELL_X25_Y3_N21
\ALU_Result[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[15]$latch~combout\ = ( \Mux17~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[15]$latch~combout\) ) ) # ( !\Mux17~3_combout\ & ( (\Mux1~0_combout\ & \ALU_Result[15]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_ALU_Result[15]$latch~combout\,
	dataf => \ALT_INV_Mux17~3_combout\,
	combout => \ALU_Result[15]$latch~combout\);

-- Location: LABCELL_X27_Y4_N0
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \ShiftRight0~52_combout\ & ( \ALUControl[0]~input_o\ & ( (!\ALUControl[2]~input_o\) # (\inputB[0]~input_o\) ) ) ) # ( !\ShiftRight0~52_combout\ & ( \ALUControl[0]~input_o\ & ( (\ALUControl[2]~input_o\ & \inputB[0]~input_o\) ) ) ) # ( 
-- \ShiftRight0~52_combout\ & ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[2]~input_o\ & ((\ShiftLeft0~53_combout\))) # (\ALUControl[2]~input_o\ & (\process_0~12_combout\)) ) ) ) # ( !\ShiftRight0~52_combout\ & ( !\ALUControl[0]~input_o\ & ( 
-- (!\ALUControl[2]~input_o\ & ((\ShiftLeft0~53_combout\))) # (\ALUControl[2]~input_o\ & (\process_0~12_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~12_combout\,
	datab => \ALT_INV_ShiftLeft0~53_combout\,
	datac => \ALT_INV_ALUControl[2]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	datae => \ALT_INV_ShiftRight0~52_combout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X27_Y4_N15
\Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \ALUControl[0]~input_o\ & ( \ALUControl[2]~input_o\ ) ) # ( !\ALUControl[0]~input_o\ & ( !\ALUControl[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[2]~input_o\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: MLABCELL_X25_Y3_N42
\Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = ( \ALUControl[1]~input_o\ & ( !\ALUControl[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUControl[2]~input_o\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LABCELL_X29_Y4_N24
\Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \ALUControl[0]~input_o\ & ( !\Mux33~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux33~0_combout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LABCELL_X22_Y4_N12
\Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \Mux20~2_combout\ & ( (!\Mux20~1_combout\ & ((\inputA[16]~input_o\) # (\inputB[16]~input_o\))) ) ) # ( !\Mux20~2_combout\ & ( (!\Mux20~1_combout\ & (((\Add0~37_sumout\)))) # (\Mux20~1_combout\ & (\inputB[16]~input_o\ & 
-- (\inputA[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110101001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[16]~input_o\,
	datab => \ALT_INV_Mux20~1_combout\,
	datac => \ALT_INV_inputA[16]~input_o\,
	datad => \ALT_INV_Add0~37_sumout\,
	dataf => \ALT_INV_Mux20~2_combout\,
	combout => \Mux18~1_combout\);

-- Location: LABCELL_X27_Y4_N30
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \ALUControl[0]~input_o\ ) # ( !\ALUControl[0]~input_o\ & ( !\ALUControl[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUControl[2]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X22_Y4_N42
\Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \Add1~25_sumout\ & ( (!\ALUControl[3]~input_o\ & (((!\Mux20~0_combout\) # (\Mux18~1_combout\)))) # (\ALUControl[3]~input_o\ & (\Mux18~0_combout\)) ) ) # ( !\Add1~25_sumout\ & ( (!\ALUControl[3]~input_o\ & (((\Mux18~1_combout\ & 
-- \Mux20~0_combout\)))) # (\ALUControl[3]~input_o\ & (\Mux18~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010111110011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~0_combout\,
	datab => \ALT_INV_Mux18~1_combout\,
	datac => \ALT_INV_Mux20~0_combout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \Mux18~2_combout\);

-- Location: LABCELL_X22_Y4_N15
\ALU_Result[16]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[16]$latch~combout\ = ( \ALU_Result[16]$latch~combout\ & ( (\Mux1~0_combout\) # (\Mux18~2_combout\) ) ) # ( !\ALU_Result[16]$latch~combout\ & ( (\Mux18~2_combout\ & !\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux18~2_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_ALU_Result[16]$latch~combout\,
	combout => \ALU_Result[16]$latch~combout\);

-- Location: LABCELL_X27_Y4_N27
\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \Mux20~1_combout\ & ( (\inputA[17]~input_o\ & (!\Mux20~2_combout\ & \inputB[17]~input_o\)) ) ) # ( !\Mux20~1_combout\ & ( (!\Mux20~2_combout\ & (((\Add0~41_sumout\)))) # (\Mux20~2_combout\ & (((\inputB[17]~input_o\)) # 
-- (\inputA[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100111111001101010011111100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[17]~input_o\,
	datab => \ALT_INV_Add0~41_sumout\,
	datac => \ALT_INV_Mux20~2_combout\,
	datad => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_Mux20~1_combout\,
	combout => \Mux19~1_combout\);

-- Location: LABCELL_X27_Y4_N6
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( \ShiftLeft0~36_combout\ & ( \process_0~3_combout\ & ( (!\ALUControl[0]~input_o\ & (((\ALUControl[2]~input_o\)))) # (\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\ & ((\ShiftRight0~54_combout\))) # (\ALUControl[2]~input_o\ & 
-- (\inputB[1]~input_o\)))) ) ) ) # ( !\ShiftLeft0~36_combout\ & ( \process_0~3_combout\ & ( (!\ALUControl[0]~input_o\) # ((!\ALUControl[2]~input_o\ & ((\ShiftRight0~54_combout\))) # (\ALUControl[2]~input_o\ & (\inputB[1]~input_o\))) ) ) ) # ( 
-- \ShiftLeft0~36_combout\ & ( !\process_0~3_combout\ & ( (\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\ & ((\ShiftRight0~54_combout\))) # (\ALUControl[2]~input_o\ & (\inputB[1]~input_o\)))) ) ) ) # ( !\ShiftLeft0~36_combout\ & ( 
-- !\process_0~3_combout\ & ( (!\ALUControl[0]~input_o\ & (((!\ALUControl[2]~input_o\)))) # (\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\ & ((\ShiftRight0~54_combout\))) # (\ALUControl[2]~input_o\ & (\inputB[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111110001000000010011000111001101111111010000110100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[1]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ALUControl[2]~input_o\,
	datad => \ALT_INV_ShiftRight0~54_combout\,
	datae => \ALT_INV_ShiftLeft0~36_combout\,
	dataf => \ALT_INV_process_0~3_combout\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X27_Y4_N39
\Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \Mux19~0_combout\ & ( \Mux20~0_combout\ & ( (\Mux19~1_combout\) # (\ALUControl[3]~input_o\) ) ) ) # ( !\Mux19~0_combout\ & ( \Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & \Mux19~1_combout\) ) ) ) # ( \Mux19~0_combout\ & ( 
-- !\Mux20~0_combout\ & ( (\Add1~29_sumout\) # (\ALUControl[3]~input_o\) ) ) ) # ( !\Mux19~0_combout\ & ( !\Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & \Add1~29_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_Mux19~1_combout\,
	datad => \ALT_INV_Add1~29_sumout\,
	datae => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \Mux19~2_combout\);

-- Location: LABCELL_X27_Y4_N51
\ALU_Result[17]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[17]$latch~combout\ = ( \Mux19~2_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[17]$latch~combout\) ) ) # ( !\Mux19~2_combout\ & ( (\Mux1~0_combout\ & \ALU_Result[17]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_ALU_Result[17]$latch~combout\,
	dataf => \ALT_INV_Mux19~2_combout\,
	combout => \ALU_Result[17]$latch~combout\);

-- Location: MLABCELL_X28_Y3_N36
\ShiftRight0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = ( \ShiftRight0~46_combout\ & ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) ) # ( !\ShiftRight0~46_combout\ & ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) ) # ( \ShiftRight0~46_combout\ & ( !\shamt[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[31]~input_o\,
	datae => \ALT_INV_ShiftRight0~46_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~77_combout\);

-- Location: LABCELL_X27_Y4_N18
\Mux20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = ( \ShiftRight0~77_combout\ & ( \inputB[2]~input_o\ & ( ((!\ALUControl[2]~input_o\ & (\ShiftLeft0~47_combout\)) # (\ALUControl[2]~input_o\ & ((\process_0~13_combout\)))) # (\ALUControl[0]~input_o\) ) ) ) # ( !\ShiftRight0~77_combout\ & 
-- ( \inputB[2]~input_o\ & ( (!\ALUControl[2]~input_o\ & (!\ALUControl[0]~input_o\ & (\ShiftLeft0~47_combout\))) # (\ALUControl[2]~input_o\ & (((\process_0~13_combout\)) # (\ALUControl[0]~input_o\))) ) ) ) # ( \ShiftRight0~77_combout\ & ( 
-- !\inputB[2]~input_o\ & ( (!\ALUControl[2]~input_o\ & (((\ShiftLeft0~47_combout\)) # (\ALUControl[0]~input_o\))) # (\ALUControl[2]~input_o\ & (!\ALUControl[0]~input_o\ & ((\process_0~13_combout\)))) ) ) ) # ( !\ShiftRight0~77_combout\ & ( 
-- !\inputB[2]~input_o\ & ( (!\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\ & (\ShiftLeft0~47_combout\)) # (\ALUControl[2]~input_o\ & ((\process_0~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[2]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ShiftLeft0~47_combout\,
	datad => \ALT_INV_process_0~13_combout\,
	datae => \ALT_INV_ShiftRight0~77_combout\,
	dataf => \ALT_INV_inputB[2]~input_o\,
	combout => \Mux20~3_combout\);

-- Location: LABCELL_X27_Y4_N42
\Mux20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = ( \Mux20~1_combout\ & ( (\inputA[18]~input_o\ & (\inputB[18]~input_o\ & !\Mux20~2_combout\)) ) ) # ( !\Mux20~1_combout\ & ( (!\Mux20~2_combout\ & (((\Add0~45_sumout\)))) # (\Mux20~2_combout\ & (((\inputB[18]~input_o\)) # 
-- (\inputA[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000001111111011100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[18]~input_o\,
	datab => \ALT_INV_inputB[18]~input_o\,
	datac => \ALT_INV_Mux20~2_combout\,
	datad => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_Mux20~1_combout\,
	combout => \Mux20~4_combout\);

-- Location: LABCELL_X27_Y4_N33
\Mux20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = ( \Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & ((\Mux20~4_combout\))) # (\ALUControl[3]~input_o\ & (\Mux20~3_combout\)) ) ) # ( !\Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & (\Add1~33_sumout\)) # (\ALUControl[3]~input_o\ & 
-- ((\Mux20~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~33_sumout\,
	datab => \ALT_INV_Mux20~3_combout\,
	datac => \ALT_INV_Mux20~4_combout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \Mux20~5_combout\);

-- Location: LABCELL_X27_Y4_N12
\ALU_Result[18]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[18]$latch~combout\ = ( \Mux20~5_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[18]$latch~combout\) ) ) # ( !\Mux20~5_combout\ & ( (\ALU_Result[18]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALU_Result[18]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux20~5_combout\,
	combout => \ALU_Result[18]$latch~combout\);

-- Location: LABCELL_X33_Y4_N36
\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \Mux20~1_combout\ & ( (\inputA[19]~input_o\ & (\inputB[19]~input_o\ & !\Mux20~2_combout\)) ) ) # ( !\Mux20~1_combout\ & ( (!\Mux20~2_combout\ & (((\Add0~13_sumout\)))) # (\Mux20~2_combout\ & (((\inputB[19]~input_o\)) # 
-- (\inputA[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000001111111011100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[19]~input_o\,
	datab => \ALT_INV_inputB[19]~input_o\,
	datac => \ALT_INV_Mux20~2_combout\,
	datad => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Mux20~1_combout\,
	combout => \Mux21~1_combout\);

-- Location: LABCELL_X35_Y2_N27
\ShiftRight0~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~78_combout\ = ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) # ( !\shamt[4]~input_o\ & ( \ShiftRight0~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_ShiftRight0~41_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~78_combout\);

-- Location: LABCELL_X31_Y4_N24
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \process_0~14_combout\ & ( \ALUControl[2]~input_o\ & ( (!\ALUControl[0]~input_o\) # (\inputB[3]~input_o\) ) ) ) # ( !\process_0~14_combout\ & ( \ALUControl[2]~input_o\ & ( (\ALUControl[0]~input_o\ & \inputB[3]~input_o\) ) ) ) # ( 
-- \process_0~14_combout\ & ( !\ALUControl[2]~input_o\ & ( (!\ALUControl[0]~input_o\ & ((\ShiftLeft0~74_combout\))) # (\ALUControl[0]~input_o\ & (\ShiftRight0~78_combout\)) ) ) ) # ( !\process_0~14_combout\ & ( !\ALUControl[2]~input_o\ & ( 
-- (!\ALUControl[0]~input_o\ & ((\ShiftLeft0~74_combout\))) # (\ALUControl[0]~input_o\ & (\ShiftRight0~78_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_inputB[3]~input_o\,
	datac => \ALT_INV_ShiftRight0~78_combout\,
	datad => \ALT_INV_ShiftLeft0~74_combout\,
	datae => \ALT_INV_process_0~14_combout\,
	dataf => \ALT_INV_ALUControl[2]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X31_Y4_N39
\Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \Mux21~0_combout\ & ( ((!\Mux20~0_combout\ & ((\Add1~37_sumout\))) # (\Mux20~0_combout\ & (\Mux21~1_combout\))) # (\ALUControl[3]~input_o\) ) ) # ( !\Mux21~0_combout\ & ( (!\ALUControl[3]~input_o\ & ((!\Mux20~0_combout\ & 
-- ((\Add1~37_sumout\))) # (\Mux20~0_combout\ & (\Mux21~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_Mux21~1_combout\,
	datac => \ALT_INV_Mux20~0_combout\,
	datad => \ALT_INV_Add1~37_sumout\,
	dataf => \ALT_INV_Mux21~0_combout\,
	combout => \Mux21~2_combout\);

-- Location: LABCELL_X31_Y4_N9
\ALU_Result[19]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[19]$latch~combout\ = ( \ALU_Result[19]$latch~combout\ & ( (\Mux1~0_combout\) # (\Mux21~2_combout\) ) ) # ( !\ALU_Result[19]$latch~combout\ & ( (\Mux21~2_combout\ & !\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux21~2_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_ALU_Result[19]$latch~combout\,
	combout => \ALU_Result[19]$latch~combout\);

-- Location: MLABCELL_X28_Y4_N54
\Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \inputB[20]~input_o\ & ( (!\Mux20~1_combout\ & (((\Mux20~2_combout\) # (\Add0~69_sumout\)))) # (\Mux20~1_combout\ & (\inputA[20]~input_o\ & ((!\Mux20~2_combout\)))) ) ) # ( !\inputB[20]~input_o\ & ( (!\Mux20~1_combout\ & 
-- ((!\Mux20~2_combout\ & ((\Add0~69_sumout\))) # (\Mux20~2_combout\ & (\inputA[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001000011011101010100001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_inputA[20]~input_o\,
	datac => \ALT_INV_Add0~69_sumout\,
	datad => \ALT_INV_Mux20~2_combout\,
	dataf => \ALT_INV_inputB[20]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: MLABCELL_X28_Y3_N54
\ShiftRight0~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~79_combout\ = ( \inputB[31]~input_o\ & ( \shamt[4]~input_o\ ) ) # ( \inputB[31]~input_o\ & ( !\shamt[4]~input_o\ & ( \ShiftRight0~10_combout\ ) ) ) # ( !\inputB[31]~input_o\ & ( !\shamt[4]~input_o\ & ( \ShiftRight0~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~10_combout\,
	datae => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~79_combout\);

-- Location: MLABCELL_X28_Y4_N24
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \ALUControl[2]~input_o\ & ( \ALUControl[0]~input_o\ & ( \inputB[4]~input_o\ ) ) ) # ( !\ALUControl[2]~input_o\ & ( \ALUControl[0]~input_o\ & ( \ShiftRight0~79_combout\ ) ) ) # ( \ALUControl[2]~input_o\ & ( !\ALUControl[0]~input_o\ & 
-- ( \process_0~4_combout\ ) ) ) # ( !\ALUControl[2]~input_o\ & ( !\ALUControl[0]~input_o\ & ( !\ShiftLeft0~51_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~4_combout\,
	datab => \ALT_INV_ShiftRight0~79_combout\,
	datac => \ALT_INV_ShiftLeft0~51_combout\,
	datad => \ALT_INV_inputB[4]~input_o\,
	datae => \ALT_INV_ALUControl[2]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: MLABCELL_X28_Y4_N0
\Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \Add1~93_sumout\ & ( (!\ALUControl[3]~input_o\ & (((!\Mux20~0_combout\)) # (\Mux22~1_combout\))) # (\ALUControl[3]~input_o\ & (((\Mux22~0_combout\)))) ) ) # ( !\Add1~93_sumout\ & ( (!\ALUControl[3]~input_o\ & (\Mux22~1_combout\ & 
-- (\Mux20~0_combout\))) # (\ALUControl[3]~input_o\ & (((\Mux22~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001111000100010000111111011101000011111101110100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux22~1_combout\,
	datab => \ALT_INV_Mux20~0_combout\,
	datac => \ALT_INV_Mux22~0_combout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Add1~93_sumout\,
	combout => \Mux22~2_combout\);

-- Location: MLABCELL_X28_Y4_N57
\ALU_Result[20]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[20]$latch~combout\ = ( \Mux1~0_combout\ & ( \ALU_Result[20]$latch~combout\ ) ) # ( !\Mux1~0_combout\ & ( \Mux22~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux22~2_combout\,
	datad => \ALT_INV_ALU_Result[20]$latch~combout\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \ALU_Result[20]$latch~combout\);

-- Location: MLABCELL_X28_Y4_N33
\Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \inputA[21]~input_o\ & ( (!\Mux20~1_combout\ & (((\Add0~73_sumout\)) # (\Mux20~2_combout\))) # (\Mux20~1_combout\ & (!\Mux20~2_combout\ & (\inputB[21]~input_o\))) ) ) # ( !\inputA[21]~input_o\ & ( (!\Mux20~1_combout\ & 
-- ((!\Mux20~2_combout\ & ((\Add0~73_sumout\))) # (\Mux20~2_combout\ & (\inputB[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_inputB[21]~input_o\,
	datad => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_inputA[21]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LABCELL_X30_Y3_N9
\ShiftRight0~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~80_combout\ = (!\shamt[4]~input_o\ & (\ShiftRight0~66_combout\)) # (\shamt[4]~input_o\ & ((\inputB[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~66_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	combout => \ShiftRight0~80_combout\);

-- Location: LABCELL_X29_Y2_N0
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \inputB[5]~input_o\ & ( \ALUControl[0]~input_o\ & ( (\ShiftRight0~80_combout\) # (\ALUControl[2]~input_o\) ) ) ) # ( !\inputB[5]~input_o\ & ( \ALUControl[0]~input_o\ & ( (!\ALUControl[2]~input_o\ & \ShiftRight0~80_combout\) ) ) ) # ( 
-- \inputB[5]~input_o\ & ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[2]~input_o\ & (!\ShiftLeft0~40_combout\)) # (\ALUControl[2]~input_o\ & ((\process_0~5_combout\))) ) ) ) # ( !\inputB[5]~input_o\ & ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[2]~input_o\ 
-- & (!\ShiftLeft0~40_combout\)) # (\ALUControl[2]~input_o\ & ((\process_0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010111011100010001011101100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~40_combout\,
	datab => \ALT_INV_ALUControl[2]~input_o\,
	datac => \ALT_INV_ShiftRight0~80_combout\,
	datad => \ALT_INV_process_0~5_combout\,
	datae => \ALT_INV_inputB[5]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: MLABCELL_X28_Y4_N36
\Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \Mux23~0_combout\ & ( ((!\Mux20~0_combout\ & ((\Add1~97_sumout\))) # (\Mux20~0_combout\ & (\Mux23~1_combout\))) # (\ALUControl[3]~input_o\) ) ) # ( !\Mux23~0_combout\ & ( (!\ALUControl[3]~input_o\ & ((!\Mux20~0_combout\ & 
-- ((\Add1~97_sumout\))) # (\Mux20~0_combout\ & (\Mux23~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux23~1_combout\,
	datab => \ALT_INV_Mux20~0_combout\,
	datac => \ALT_INV_Add1~97_sumout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Mux23~0_combout\,
	combout => \Mux23~2_combout\);

-- Location: MLABCELL_X28_Y4_N39
\ALU_Result[21]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[21]$latch~combout\ = ( \Mux1~0_combout\ & ( \ALU_Result[21]$latch~combout\ ) ) # ( !\Mux1~0_combout\ & ( \Mux23~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[21]$latch~combout\,
	datad => \ALT_INV_Mux23~2_combout\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \ALU_Result[21]$latch~combout\);

-- Location: MLABCELL_X28_Y4_N30
\Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( \inputB[22]~input_o\ & ( (!\Mux20~1_combout\ & (((\Add0~77_sumout\)) # (\Mux20~2_combout\))) # (\Mux20~1_combout\ & (!\Mux20~2_combout\ & (\inputA[22]~input_o\))) ) ) # ( !\inputB[22]~input_o\ & ( (!\Mux20~1_combout\ & 
-- ((!\Mux20~2_combout\ & ((\Add0~77_sumout\))) # (\Mux20~2_combout\ & (\inputA[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_inputA[22]~input_o\,
	datad => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LABCELL_X33_Y3_N51
\ShiftRight0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~81_combout\ = ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) # ( !\shamt[4]~input_o\ & ( \ShiftRight0~65_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftRight0~65_combout\,
	datad => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~81_combout\);

-- Location: LABCELL_X30_Y4_N48
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \inputB[6]~input_o\ & ( \process_0~6_combout\ & ( ((!\ALUControl[0]~input_o\ & ((!\ShiftLeft0~45_combout\))) # (\ALUControl[0]~input_o\ & (\ShiftRight0~81_combout\))) # (\ALUControl[2]~input_o\) ) ) ) # ( !\inputB[6]~input_o\ & ( 
-- \process_0~6_combout\ & ( (!\ALUControl[0]~input_o\ & (((!\ShiftLeft0~45_combout\)) # (\ALUControl[2]~input_o\))) # (\ALUControl[0]~input_o\ & (!\ALUControl[2]~input_o\ & (\ShiftRight0~81_combout\))) ) ) ) # ( \inputB[6]~input_o\ & ( 
-- !\process_0~6_combout\ & ( (!\ALUControl[0]~input_o\ & (!\ALUControl[2]~input_o\ & ((!\ShiftLeft0~45_combout\)))) # (\ALUControl[0]~input_o\ & (((\ShiftRight0~81_combout\)) # (\ALUControl[2]~input_o\))) ) ) ) # ( !\inputB[6]~input_o\ & ( 
-- !\process_0~6_combout\ & ( (!\ALUControl[2]~input_o\ & ((!\ALUControl[0]~input_o\ & ((!\ShiftLeft0~45_combout\))) # (\ALUControl[0]~input_o\ & (\ShiftRight0~81_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000000100100111010001010110101110001001101011111100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[2]~input_o\,
	datac => \ALT_INV_ShiftRight0~81_combout\,
	datad => \ALT_INV_ShiftLeft0~45_combout\,
	datae => \ALT_INV_inputB[6]~input_o\,
	dataf => \ALT_INV_process_0~6_combout\,
	combout => \Mux24~0_combout\);

-- Location: MLABCELL_X28_Y4_N45
\Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \ALUControl[3]~input_o\ & ( \Mux24~0_combout\ ) ) # ( !\ALUControl[3]~input_o\ & ( \Mux24~0_combout\ & ( (!\Mux20~0_combout\ & (\Add1~61_sumout\)) # (\Mux20~0_combout\ & ((\Mux24~1_combout\))) ) ) ) # ( !\ALUControl[3]~input_o\ & ( 
-- !\Mux24~0_combout\ & ( (!\Mux20~0_combout\ & (\Add1~61_sumout\)) # (\Mux20~0_combout\ & ((\Mux24~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000000001010011010100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~61_sumout\,
	datab => \ALT_INV_Mux24~1_combout\,
	datac => \ALT_INV_Mux20~0_combout\,
	datae => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Mux24~0_combout\,
	combout => \Mux24~2_combout\);

-- Location: MLABCELL_X28_Y4_N18
\ALU_Result[22]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[22]$latch~combout\ = ( \Mux1~0_combout\ & ( \ALU_Result[22]$latch~combout\ ) ) # ( !\Mux1~0_combout\ & ( \Mux24~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[22]$latch~combout\,
	datad => \ALT_INV_Mux24~2_combout\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \ALU_Result[22]$latch~combout\);

-- Location: MLABCELL_X28_Y4_N48
\Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \Add0~81_sumout\ & ( (!\Mux20~1_combout\ & (((!\Mux20~2_combout\) # (\inputB[23]~input_o\)) # (\inputA[23]~input_o\))) # (\Mux20~1_combout\ & (\inputA[23]~input_o\ & (\inputB[23]~input_o\ & !\Mux20~2_combout\))) ) ) # ( 
-- !\Add0~81_sumout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\ & ((\inputB[23]~input_o\) # (\inputA[23]~input_o\)))) # (\Mux20~1_combout\ & (\inputA[23]~input_o\ & (\inputB[23]~input_o\ & !\Mux20~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100101010000000010010101010101011001010101010101100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_inputA[23]~input_o\,
	datac => \ALT_INV_inputB[23]~input_o\,
	datad => \ALT_INV_Mux20~2_combout\,
	dataf => \ALT_INV_Add0~81_sumout\,
	combout => \Mux25~1_combout\);

-- Location: LABCELL_X33_Y3_N57
\ShiftRight0~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~82_combout\ = ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) # ( !\shamt[4]~input_o\ & ( \ShiftRight0~55_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_ShiftRight0~55_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~82_combout\);

-- Location: LABCELL_X31_Y4_N30
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \process_0~7_combout\ & ( \ALUControl[2]~input_o\ & ( (!\ALUControl[0]~input_o\) # (\inputB[7]~input_o\) ) ) ) # ( !\process_0~7_combout\ & ( \ALUControl[2]~input_o\ & ( (\ALUControl[0]~input_o\ & \inputB[7]~input_o\) ) ) ) # ( 
-- \process_0~7_combout\ & ( !\ALUControl[2]~input_o\ & ( (!\ALUControl[0]~input_o\ & ((!\ShiftLeft0~72_combout\))) # (\ALUControl[0]~input_o\ & (\ShiftRight0~82_combout\)) ) ) ) # ( !\process_0~7_combout\ & ( !\ALUControl[2]~input_o\ & ( 
-- (!\ALUControl[0]~input_o\ & ((!\ShiftLeft0~72_combout\))) # (\ALUControl[0]~input_o\ & (\ShiftRight0~82_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111010001110100011101000100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~82_combout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ShiftLeft0~72_combout\,
	datad => \ALT_INV_inputB[7]~input_o\,
	datae => \ALT_INV_process_0~7_combout\,
	dataf => \ALT_INV_ALUControl[2]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: MLABCELL_X28_Y4_N6
\Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \Mux25~0_combout\ & ( ((!\Mux20~0_combout\ & ((\Add1~65_sumout\))) # (\Mux20~0_combout\ & (\Mux25~1_combout\))) # (\ALUControl[3]~input_o\) ) ) # ( !\Mux25~0_combout\ & ( (!\ALUControl[3]~input_o\ & ((!\Mux20~0_combout\ & 
-- ((\Add1~65_sumout\))) # (\Mux20~0_combout\ & (\Mux25~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~0_combout\,
	datab => \ALT_INV_ALUControl[3]~input_o\,
	datac => \ALT_INV_Mux25~1_combout\,
	datad => \ALT_INV_Add1~65_sumout\,
	dataf => \ALT_INV_Mux25~0_combout\,
	combout => \Mux25~2_combout\);

-- Location: MLABCELL_X28_Y4_N51
\ALU_Result[23]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[23]$latch~combout\ = ( \Mux25~2_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[23]$latch~combout\) ) ) # ( !\Mux25~2_combout\ & ( (\Mux1~0_combout\ & \ALU_Result[23]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_ALU_Result[23]$latch~combout\,
	dataf => \ALT_INV_Mux25~2_combout\,
	combout => \ALU_Result[23]$latch~combout\);

-- Location: MLABCELL_X28_Y4_N21
\Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \inputB[24]~input_o\ & ( (!\Mux20~1_combout\ & (((\Add0~17_sumout\)) # (\Mux20~2_combout\))) # (\Mux20~1_combout\ & (!\Mux20~2_combout\ & (\inputA[24]~input_o\))) ) ) # ( !\inputB[24]~input_o\ & ( (!\Mux20~1_combout\ & 
-- ((!\Mux20~2_combout\ & ((\Add0~17_sumout\))) # (\Mux20~2_combout\ & (\inputA[24]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_inputA[24]~input_o\,
	datad => \ALT_INV_Add0~17_sumout\,
	dataf => \ALT_INV_inputB[24]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: LABCELL_X33_Y3_N30
\ShiftRight0~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~83_combout\ = ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) # ( !\shamt[4]~input_o\ & ( \ShiftRight0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_ShiftRight0~4_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~83_combout\);

-- Location: MLABCELL_X28_Y4_N12
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \ALUControl[2]~input_o\ & ( \ALUControl[0]~input_o\ & ( \inputB[8]~input_o\ ) ) ) # ( !\ALUControl[2]~input_o\ & ( \ALUControl[0]~input_o\ & ( \ShiftRight0~83_combout\ ) ) ) # ( \ALUControl[2]~input_o\ & ( !\ALUControl[0]~input_o\ & 
-- ( \process_0~8_combout\ ) ) ) # ( !\ALUControl[2]~input_o\ & ( !\ALUControl[0]~input_o\ & ( \ShiftLeft0~76_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~8_combout\,
	datab => \ALT_INV_ShiftLeft0~76_combout\,
	datac => \ALT_INV_ShiftRight0~83_combout\,
	datad => \ALT_INV_inputB[8]~input_o\,
	datae => \ALT_INV_ALUControl[2]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: MLABCELL_X28_Y4_N9
\Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( \Mux26~0_combout\ & ( ((!\Mux20~0_combout\ & (\Add1~1_sumout\)) # (\Mux20~0_combout\ & ((\Mux26~1_combout\)))) # (\ALUControl[3]~input_o\) ) ) # ( !\Mux26~0_combout\ & ( (!\ALUControl[3]~input_o\ & ((!\Mux20~0_combout\ & 
-- (\Add1~1_sumout\)) # (\Mux20~0_combout\ & ((\Mux26~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~0_combout\,
	datab => \ALT_INV_ALUControl[3]~input_o\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_Mux26~1_combout\,
	dataf => \ALT_INV_Mux26~0_combout\,
	combout => \Mux26~2_combout\);

-- Location: MLABCELL_X28_Y4_N3
\ALU_Result[24]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[24]$latch~combout\ = ( \Mux26~2_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[24]$latch~combout\) ) ) # ( !\Mux26~2_combout\ & ( (\Mux1~0_combout\ & \ALU_Result[24]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_ALU_Result[24]$latch~combout\,
	dataf => \ALT_INV_Mux26~2_combout\,
	combout => \ALU_Result[24]$latch~combout\);

-- Location: LABCELL_X31_Y4_N6
\Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \inputA[25]~input_o\ & ( (!\Mux20~2_combout\ & ((!\Mux20~1_combout\ & ((\Add0~85_sumout\))) # (\Mux20~1_combout\ & (\inputB[25]~input_o\)))) # (\Mux20~2_combout\ & (!\Mux20~1_combout\)) ) ) # ( !\inputA[25]~input_o\ & ( 
-- (!\Mux20~1_combout\ & ((!\Mux20~2_combout\ & ((\Add0~85_sumout\))) # (\Mux20~2_combout\ & (\inputB[25]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~2_combout\,
	datab => \ALT_INV_Mux20~1_combout\,
	datac => \ALT_INV_inputB[25]~input_o\,
	datad => \ALT_INV_Add0~85_sumout\,
	dataf => \ALT_INV_inputA[25]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LABCELL_X33_Y3_N42
\ShiftRight0~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~84_combout\ = ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) # ( !\shamt[4]~input_o\ & ( \ShiftRight0~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_ShiftRight0~37_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~84_combout\);

-- Location: LABCELL_X31_Y4_N12
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \ShiftRight0~84_combout\ & ( \process_0~9_combout\ & ( (!\ALUControl[0]~input_o\ & (((\ALUControl[2]~input_o\)) # (\ShiftLeft0~78_combout\))) # (\ALUControl[0]~input_o\ & (((!\ALUControl[2]~input_o\) # (\inputB[9]~input_o\)))) ) ) ) 
-- # ( !\ShiftRight0~84_combout\ & ( \process_0~9_combout\ & ( (!\ALUControl[0]~input_o\ & (((\ALUControl[2]~input_o\)) # (\ShiftLeft0~78_combout\))) # (\ALUControl[0]~input_o\ & (((\ALUControl[2]~input_o\ & \inputB[9]~input_o\)))) ) ) ) # ( 
-- \ShiftRight0~84_combout\ & ( !\process_0~9_combout\ & ( (!\ALUControl[0]~input_o\ & (\ShiftLeft0~78_combout\ & (!\ALUControl[2]~input_o\))) # (\ALUControl[0]~input_o\ & (((!\ALUControl[2]~input_o\) # (\inputB[9]~input_o\)))) ) ) ) # ( 
-- !\ShiftRight0~84_combout\ & ( !\process_0~9_combout\ & ( (!\ALUControl[0]~input_o\ & (\ShiftLeft0~78_combout\ & (!\ALUControl[2]~input_o\))) # (\ALUControl[0]~input_o\ & (((\ALUControl[2]~input_o\ & \inputB[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftLeft0~78_combout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ALUControl[2]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	datae => \ALT_INV_ShiftRight0~84_combout\,
	dataf => \ALT_INV_process_0~9_combout\,
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X31_Y4_N48
\Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( \Mux27~0_combout\ & ( ((!\Mux20~0_combout\ & ((\Add1~69_sumout\))) # (\Mux20~0_combout\ & (\Mux27~1_combout\))) # (\ALUControl[3]~input_o\) ) ) # ( !\Mux27~0_combout\ & ( (!\ALUControl[3]~input_o\ & ((!\Mux20~0_combout\ & 
-- ((\Add1~69_sumout\))) # (\Mux20~0_combout\ & (\Mux27~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~1_combout\,
	datab => \ALT_INV_Mux20~0_combout\,
	datac => \ALT_INV_Add1~69_sumout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Mux27~0_combout\,
	combout => \Mux27~2_combout\);

-- Location: LABCELL_X31_Y4_N51
\ALU_Result[25]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[25]$latch~combout\ = ( \ALU_Result[25]$latch~combout\ & ( (\Mux1~0_combout\) # (\Mux27~2_combout\) ) ) # ( !\ALU_Result[25]$latch~combout\ & ( (\Mux27~2_combout\ & !\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux27~2_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_ALU_Result[25]$latch~combout\,
	combout => \ALU_Result[25]$latch~combout\);

-- Location: LABCELL_X30_Y4_N30
\Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \ALUControl[1]~input_o\ & ( \ALUControl[2]~input_o\ & ( (!\ALUControl[0]~input_o\ & \Add1~5_sumout\) ) ) ) # ( !\ALUControl[1]~input_o\ & ( \ALUControl[2]~input_o\ & ( (!\ALUControl[0]~input_o\ & \Add1~5_sumout\) ) ) ) # ( 
-- !\ALUControl[1]~input_o\ & ( !\ALUControl[2]~input_o\ & ( (!\ALUControl[0]~input_o\ & (\inputB[26]~input_o\ & \inputA[26]~input_o\)) # (\ALUControl[0]~input_o\ & ((\inputA[26]~input_o\) # (\inputB[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_inputB[26]~input_o\,
	datad => \ALT_INV_inputA[26]~input_o\,
	datae => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_ALUControl[2]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LABCELL_X33_Y3_N12
\ShiftRight0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~85_combout\ = (!\shamt[4]~input_o\ & (\ShiftRight0~24_combout\)) # (\shamt[4]~input_o\ & ((\inputB[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftRight0~24_combout\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~85_combout\);

-- Location: LABCELL_X31_Y4_N54
\Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \ShiftRight0~85_combout\ & ( \inputB[10]~input_o\ & ( ((!\ALUControl[2]~input_o\ & (\ShiftLeft0~69_combout\)) # (\ALUControl[2]~input_o\ & ((\process_0~10_combout\)))) # (\ALUControl[0]~input_o\) ) ) ) # ( !\ShiftRight0~85_combout\ & 
-- ( \inputB[10]~input_o\ & ( (!\ALUControl[2]~input_o\ & (!\ALUControl[0]~input_o\ & (\ShiftLeft0~69_combout\))) # (\ALUControl[2]~input_o\ & (((\process_0~10_combout\)) # (\ALUControl[0]~input_o\))) ) ) ) # ( \ShiftRight0~85_combout\ & ( 
-- !\inputB[10]~input_o\ & ( (!\ALUControl[2]~input_o\ & (((\ShiftLeft0~69_combout\)) # (\ALUControl[0]~input_o\))) # (\ALUControl[2]~input_o\ & (!\ALUControl[0]~input_o\ & ((\process_0~10_combout\)))) ) ) ) # ( !\ShiftRight0~85_combout\ & ( 
-- !\inputB[10]~input_o\ & ( (!\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\ & (\ShiftLeft0~69_combout\)) # (\ALUControl[2]~input_o\ & ((\process_0~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[2]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ShiftLeft0~69_combout\,
	datad => \ALT_INV_process_0~10_combout\,
	datae => \ALT_INV_ShiftRight0~85_combout\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LABCELL_X30_Y4_N27
\Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( \Mux28~0_combout\ & ( (((\Mux33~0_combout\ & \Add0~21_sumout\)) # (\ALUControl[3]~input_o\)) # (\Mux28~1_combout\) ) ) # ( !\Mux28~0_combout\ & ( (!\ALUControl[3]~input_o\ & (((\Mux33~0_combout\ & \Add0~21_sumout\)) # 
-- (\Mux28~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000000010101110000000001010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux28~1_combout\,
	datab => \ALT_INV_Mux33~0_combout\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	dataf => \ALT_INV_Mux28~0_combout\,
	combout => \Mux28~2_combout\);

-- Location: LABCELL_X30_Y4_N24
\ALU_Result[26]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[26]$latch~combout\ = ( \Mux28~2_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[26]$latch~combout\) ) ) # ( !\Mux28~2_combout\ & ( (\ALU_Result[26]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[26]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux28~2_combout\,
	combout => \ALU_Result[26]$latch~combout\);

-- Location: LABCELL_X33_Y3_N18
\ShiftRight0~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~86_combout\ = ( \shamt[4]~input_o\ & ( \inputB[31]~input_o\ ) ) # ( !\shamt[4]~input_o\ & ( (!\ShiftLeft0~12_combout\ & (\inputB[31]~input_o\)) # (\ShiftLeft0~12_combout\ & ((\ShiftRight0~31_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftLeft0~12_combout\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_ShiftRight0~31_combout\,
	dataf => \ALT_INV_shamt[4]~input_o\,
	combout => \ShiftRight0~86_combout\);

-- Location: LABCELL_X31_Y4_N0
\Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \ShiftLeft0~55_combout\ & ( \ALUControl[2]~input_o\ & ( (!\ALUControl[0]~input_o\ & ((\process_0~11_combout\))) # (\ALUControl[0]~input_o\ & (\inputB[11]~input_o\)) ) ) ) # ( !\ShiftLeft0~55_combout\ & ( \ALUControl[2]~input_o\ & ( 
-- (!\ALUControl[0]~input_o\ & ((\process_0~11_combout\))) # (\ALUControl[0]~input_o\ & (\inputB[11]~input_o\)) ) ) ) # ( \ShiftLeft0~55_combout\ & ( !\ALUControl[2]~input_o\ & ( (\ALUControl[0]~input_o\ & \ShiftRight0~86_combout\) ) ) ) # ( 
-- !\ShiftLeft0~55_combout\ & ( !\ALUControl[2]~input_o\ & ( (!\ALUControl[0]~input_o\) # (\ShiftRight0~86_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111000000000011001100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[11]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_process_0~11_combout\,
	datad => \ALT_INV_ShiftRight0~86_combout\,
	datae => \ALT_INV_ShiftLeft0~55_combout\,
	dataf => \ALT_INV_ALUControl[2]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LABCELL_X30_Y4_N54
\Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \inputB[27]~input_o\ & ( \Add1~9_sumout\ & ( (!\ALUControl[2]~input_o\ & (!\ALUControl[1]~input_o\ & ((\inputA[27]~input_o\) # (\ALUControl[0]~input_o\)))) # (\ALUControl[2]~input_o\ & (!\ALUControl[0]~input_o\)) ) ) ) # ( 
-- !\inputB[27]~input_o\ & ( \Add1~9_sumout\ & ( (!\ALUControl[0]~input_o\ & (((\ALUControl[2]~input_o\)))) # (\ALUControl[0]~input_o\ & (!\ALUControl[1]~input_o\ & (\inputA[27]~input_o\ & !\ALUControl[2]~input_o\))) ) ) ) # ( \inputB[27]~input_o\ & ( 
-- !\Add1~9_sumout\ & ( (!\ALUControl[1]~input_o\ & (!\ALUControl[2]~input_o\ & ((\inputA[27]~input_o\) # (\ALUControl[0]~input_o\)))) ) ) ) # ( !\inputB[27]~input_o\ & ( !\Add1~9_sumout\ & ( (\ALUControl[0]~input_o\ & (!\ALUControl[1]~input_o\ & 
-- (\inputA[27]~input_o\ & !\ALUControl[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000010011000000000000000100101010100100110010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[27]~input_o\,
	datad => \ALT_INV_ALUControl[2]~input_o\,
	datae => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \Mux29~1_combout\);

-- Location: LABCELL_X30_Y4_N12
\Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = ( \Mux29~1_combout\ & ( (!\ALUControl[3]~input_o\) # (\Mux29~0_combout\) ) ) # ( !\Mux29~1_combout\ & ( (!\ALUControl[3]~input_o\ & (((\Add0~25_sumout\ & \Mux33~0_combout\)))) # (\ALUControl[3]~input_o\ & (\Mux29~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[3]~input_o\,
	datab => \ALT_INV_Mux29~0_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_Mux33~0_combout\,
	dataf => \ALT_INV_Mux29~1_combout\,
	combout => \Mux29~2_combout\);

-- Location: LABCELL_X29_Y4_N27
\ALU_Result[27]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[27]$latch~combout\ = ( \ALU_Result[27]$latch~combout\ & ( (\Mux1~0_combout\) # (\Mux29~2_combout\) ) ) # ( !\ALU_Result[27]$latch~combout\ & ( (\Mux29~2_combout\ & !\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux29~2_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_ALU_Result[27]$latch~combout\,
	combout => \ALU_Result[27]$latch~combout\);

-- Location: LABCELL_X30_Y4_N9
\Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ( \Mux20~2_combout\ & ( (!\Mux20~1_combout\ & ((\inputB[28]~input_o\) # (\inputA[28]~input_o\))) ) ) # ( !\Mux20~2_combout\ & ( (\inputA[28]~input_o\ & (\inputB[28]~input_o\ & \Mux20~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[28]~input_o\,
	datab => \ALT_INV_inputB[28]~input_o\,
	datac => \ALT_INV_Mux20~1_combout\,
	dataf => \ALT_INV_Mux20~2_combout\,
	combout => \Mux30~1_combout\);

-- Location: LABCELL_X29_Y3_N36
\ShiftRight0~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~87_combout\ = ( \inputB[31]~input_o\ & ( \ShiftLeft0~12_combout\ & ( (\ShiftRight0~3_combout\) # (\shamt[4]~input_o\) ) ) ) # ( !\inputB[31]~input_o\ & ( \ShiftLeft0~12_combout\ & ( (!\shamt[4]~input_o\ & \ShiftRight0~3_combout\) ) ) ) # ( 
-- \inputB[31]~input_o\ & ( !\ShiftLeft0~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~3_combout\,
	datae => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~12_combout\,
	combout => \ShiftRight0~87_combout\);

-- Location: LABCELL_X31_Y4_N18
\Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \ShiftRight0~87_combout\ & ( \ShiftLeft0~67_combout\ & ( (!\ALUControl[2]~input_o\) # ((!\ALUControl[0]~input_o\ & (\process_0~0_combout\)) # (\ALUControl[0]~input_o\ & ((\inputB[12]~input_o\)))) ) ) ) # ( !\ShiftRight0~87_combout\ & 
-- ( \ShiftLeft0~67_combout\ & ( (!\ALUControl[0]~input_o\ & (((!\ALUControl[2]~input_o\)) # (\process_0~0_combout\))) # (\ALUControl[0]~input_o\ & (((\ALUControl[2]~input_o\ & \inputB[12]~input_o\)))) ) ) ) # ( \ShiftRight0~87_combout\ & ( 
-- !\ShiftLeft0~67_combout\ & ( (!\ALUControl[0]~input_o\ & (\process_0~0_combout\ & (\ALUControl[2]~input_o\))) # (\ALUControl[0]~input_o\ & (((!\ALUControl[2]~input_o\) # (\inputB[12]~input_o\)))) ) ) ) # ( !\ShiftRight0~87_combout\ & ( 
-- !\ShiftLeft0~67_combout\ & ( (\ALUControl[2]~input_o\ & ((!\ALUControl[0]~input_o\ & (\process_0~0_combout\)) # (\ALUControl[0]~input_o\ & ((\inputB[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ALUControl[2]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	datae => \ALT_INV_ShiftRight0~87_combout\,
	dataf => \ALT_INV_ShiftLeft0~67_combout\,
	combout => \Mux30~0_combout\);

-- Location: LABCELL_X30_Y4_N0
\Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ( !\Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & (((\Add0~29_sumout\ & (\Mux33~0_combout\))) # (\Add1~13_sumout\))) # (\ALUControl[3]~input_o\ & ((((\Mux30~0_combout\))))) ) ) # ( \Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & 
-- (((\Add0~29_sumout\ & (\Mux33~0_combout\))) # (\Mux30~1_combout\))) # (\ALUControl[3]~input_o\ & ((((\Mux30~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001001100000011000100110000111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_ALUControl[3]~input_o\,
	datac => \ALT_INV_Mux30~1_combout\,
	datad => \ALT_INV_Mux33~0_combout\,
	datae => \ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_Mux30~0_combout\,
	datag => \ALT_INV_Add1~13_sumout\,
	combout => \Mux30~2_combout\);

-- Location: LABCELL_X30_Y4_N15
\ALU_Result[28]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[28]$latch~combout\ = ( \Mux30~2_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[28]$latch~combout\) ) ) # ( !\Mux30~2_combout\ & ( (\ALU_Result[28]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[28]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux30~2_combout\,
	combout => \ALU_Result[28]$latch~combout\);

-- Location: LABCELL_X29_Y3_N48
\ShiftRight0~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~88_combout\ = ( \ShiftLeft0~12_combout\ & ( (!\shamt[4]~input_o\ & (\ShiftRight0~15_combout\)) # (\shamt[4]~input_o\ & ((\inputB[31]~input_o\))) ) ) # ( !\ShiftLeft0~12_combout\ & ( \inputB[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_shamt[4]~input_o\,
	datac => \ALT_INV_ShiftRight0~15_combout\,
	datad => \ALT_INV_inputB[31]~input_o\,
	dataf => \ALT_INV_ShiftLeft0~12_combout\,
	combout => \ShiftRight0~88_combout\);

-- Location: LABCELL_X29_Y3_N6
\Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \inputB[13]~input_o\ & ( \ALUControl[0]~input_o\ & ( (\ALUControl[2]~input_o\) # (\ShiftRight0~88_combout\) ) ) ) # ( !\inputB[13]~input_o\ & ( \ALUControl[0]~input_o\ & ( (\ShiftRight0~88_combout\ & !\ALUControl[2]~input_o\) ) ) ) # 
-- ( \inputB[13]~input_o\ & ( !\ALUControl[0]~input_o\ & ( (!\ALUControl[2]~input_o\ & (\ShiftLeft0~59_combout\)) # (\ALUControl[2]~input_o\ & ((\process_0~1_combout\))) ) ) ) # ( !\inputB[13]~input_o\ & ( !\ALUControl[0]~input_o\ & ( 
-- (!\ALUControl[2]~input_o\ & (\ShiftLeft0~59_combout\)) # (\ALUControl[2]~input_o\ & ((\process_0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~88_combout\,
	datab => \ALT_INV_ALUControl[2]~input_o\,
	datac => \ALT_INV_ShiftLeft0~59_combout\,
	datad => \ALT_INV_process_0~1_combout\,
	datae => \ALT_INV_inputB[13]~input_o\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LABCELL_X29_Y4_N30
\Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = ( \Mux20~2_combout\ & ( (!\Mux20~1_combout\ & ((\inputA[29]~input_o\) # (\inputB[29]~input_o\))) ) ) # ( !\Mux20~2_combout\ & ( (\Mux20~1_combout\ & (\inputB[29]~input_o\ & \inputA[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux20~1_combout\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_inputA[29]~input_o\,
	dataf => \ALT_INV_Mux20~2_combout\,
	combout => \Mux31~1_combout\);

-- Location: LABCELL_X29_Y4_N36
\Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = ( !\Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & ((((\Mux33~0_combout\ & \Add0~1_sumout\)) # (\Add1~17_sumout\)))) # (\ALUControl[3]~input_o\ & (\Mux31~0_combout\)) ) ) # ( \Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & 
-- ((((\Mux33~0_combout\ & \Add0~1_sumout\)) # (\Mux31~1_combout\)))) # (\ALUControl[3]~input_o\ & (\Mux31~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100111111000011110011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux31~0_combout\,
	datab => \ALT_INV_Mux33~0_combout\,
	datac => \ALT_INV_Mux31~1_combout\,
	datad => \ALT_INV_Add0~1_sumout\,
	datae => \ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_ALUControl[3]~input_o\,
	datag => \ALT_INV_Add1~17_sumout\,
	combout => \Mux31~2_combout\);

-- Location: LABCELL_X29_Y4_N42
\ALU_Result[29]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[29]$latch~combout\ = ( \Mux31~2_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[29]$latch~combout\) ) ) # ( !\Mux31~2_combout\ & ( (\Mux1~0_combout\ & \ALU_Result[29]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_ALU_Result[29]$latch~combout\,
	dataf => \ALT_INV_Mux31~2_combout\,
	combout => \ALU_Result[29]$latch~combout\);

-- Location: LABCELL_X31_Y3_N21
\ShiftRight0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ShiftRight0~89_combout\ = (!\shamt[4]~input_o\ & (\ShiftRight0~74_combout\)) # (\shamt[4]~input_o\ & ((\inputB[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftRight0~74_combout\,
	datab => \ALT_INV_shamt[4]~input_o\,
	datad => \ALT_INV_inputB[31]~input_o\,
	combout => \ShiftRight0~89_combout\);

-- Location: LABCELL_X33_Y4_N42
\Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = ( \ShiftRight0~89_combout\ & ( \ShiftLeft0~63_combout\ & ( (!\ALUControl[2]~input_o\) # ((!\ALUControl[0]~input_o\ & (\process_0~2_combout\)) # (\ALUControl[0]~input_o\ & ((\inputB[14]~input_o\)))) ) ) ) # ( !\ShiftRight0~89_combout\ & 
-- ( \ShiftLeft0~63_combout\ & ( (!\ALUControl[0]~input_o\ & (((!\ALUControl[2]~input_o\)) # (\process_0~2_combout\))) # (\ALUControl[0]~input_o\ & (((\ALUControl[2]~input_o\ & \inputB[14]~input_o\)))) ) ) ) # ( \ShiftRight0~89_combout\ & ( 
-- !\ShiftLeft0~63_combout\ & ( (!\ALUControl[0]~input_o\ & (\process_0~2_combout\ & (\ALUControl[2]~input_o\))) # (\ALUControl[0]~input_o\ & (((!\ALUControl[2]~input_o\) # (\inputB[14]~input_o\)))) ) ) ) # ( !\ShiftRight0~89_combout\ & ( 
-- !\ShiftLeft0~63_combout\ & ( (\ALUControl[2]~input_o\ & ((!\ALUControl[0]~input_o\ & (\process_0~2_combout\)) # (\ALUControl[0]~input_o\ & ((\inputB[14]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111001101000011011111000100110001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~2_combout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ALUControl[2]~input_o\,
	datad => \ALT_INV_inputB[14]~input_o\,
	datae => \ALT_INV_ShiftRight0~89_combout\,
	dataf => \ALT_INV_ShiftLeft0~63_combout\,
	combout => \Mux32~0_combout\);

-- Location: LABCELL_X29_Y4_N51
\Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = ( \Mux20~2_combout\ & ( (!\Mux20~1_combout\ & ((\inputB[30]~input_o\) # (\inputA[30]~input_o\))) ) ) # ( !\Mux20~2_combout\ & ( (\inputA[30]~input_o\ & (\Mux20~1_combout\ & \inputB[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[30]~input_o\,
	datab => \ALT_INV_Mux20~1_combout\,
	datac => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_Mux20~2_combout\,
	combout => \Mux32~1_combout\);

-- Location: LABCELL_X29_Y4_N6
\Mux32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = ( !\Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & ((((\Mux33~0_combout\ & \Add0~5_sumout\)) # (\Add1~73_sumout\)))) # (\ALUControl[3]~input_o\ & (\Mux32~0_combout\)) ) ) # ( \Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & 
-- ((((\Mux33~0_combout\ & \Add0~5_sumout\)) # (\Mux32~1_combout\)))) # (\ALUControl[3]~input_o\ & (\Mux32~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100111111000011110011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux32~0_combout\,
	datab => \ALT_INV_Mux33~0_combout\,
	datac => \ALT_INV_Mux32~1_combout\,
	datad => \ALT_INV_Add0~5_sumout\,
	datae => \ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_ALUControl[3]~input_o\,
	datag => \ALT_INV_Add1~73_sumout\,
	combout => \Mux32~2_combout\);

-- Location: LABCELL_X29_Y4_N48
\ALU_Result[30]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[30]$latch~combout\ = ( \Mux32~2_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[30]$latch~combout\) ) ) # ( !\Mux32~2_combout\ & ( (\ALU_Result[30]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALU_Result[30]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux32~2_combout\,
	combout => \ALU_Result[30]$latch~combout\);

-- Location: LABCELL_X29_Y4_N45
\Mux33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = ( \Mux20~2_combout\ & ( (!\Mux20~1_combout\ & ((\inputA[31]~input_o\) # (\inputB[31]~input_o\))) ) ) # ( !\Mux20~2_combout\ & ( (\inputB[31]~input_o\ & (\Mux20~1_combout\ & \inputA[31]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_Mux20~1_combout\,
	datac => \ALT_INV_inputA[31]~input_o\,
	dataf => \ALT_INV_Mux20~2_combout\,
	combout => \Mux33~2_combout\);

-- Location: LABCELL_X30_Y4_N18
\Mux33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = ( \ShiftLeft0~10_combout\ & ( \inputB[15]~input_o\ & ( (!\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\) # ((!\inputB[31]~input_o\ & !\inputA[31]~input_o\)))) # (\ALUControl[0]~input_o\ & (((\inputB[31]~input_o\)) # 
-- (\ALUControl[2]~input_o\))) ) ) ) # ( !\ShiftLeft0~10_combout\ & ( \inputB[15]~input_o\ & ( (!\inputB[31]~input_o\ & (\ALUControl[2]~input_o\ & ((!\inputA[31]~input_o\) # (\ALUControl[0]~input_o\)))) # (\inputB[31]~input_o\ & (\ALUControl[0]~input_o\)) ) 
-- ) ) # ( \ShiftLeft0~10_combout\ & ( !\inputB[15]~input_o\ & ( (!\inputB[31]~input_o\ & (!\ALUControl[0]~input_o\ & ((!\ALUControl[2]~input_o\) # (!\inputA[31]~input_o\)))) # (\inputB[31]~input_o\ & (((!\ALUControl[2]~input_o\)))) ) ) ) # ( 
-- !\ShiftLeft0~10_combout\ & ( !\inputB[15]~input_o\ & ( (!\ALUControl[0]~input_o\ & (\ALUControl[2]~input_o\ & (!\inputB[31]~input_o\ & !\inputA[31]~input_o\))) # (\ALUControl[0]~input_o\ & (!\ALUControl[2]~input_o\ & (\inputB[31]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000000100101011001000110000110101000101011011110110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[2]~input_o\,
	datac => \ALT_INV_inputB[31]~input_o\,
	datad => \ALT_INV_inputA[31]~input_o\,
	datae => \ALT_INV_ShiftLeft0~10_combout\,
	dataf => \ALT_INV_inputB[15]~input_o\,
	combout => \Mux33~1_combout\);

-- Location: LABCELL_X29_Y4_N0
\Mux33~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = ( !\Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & (((\Add0~9_sumout\ & (\Mux33~0_combout\))) # (\Add1~77_sumout\))) # (\ALUControl[3]~input_o\ & ((((\Mux33~1_combout\))))) ) ) # ( \Mux20~0_combout\ & ( (!\ALUControl[3]~input_o\ & 
-- (((\Add0~9_sumout\ & (\Mux33~0_combout\))) # (\Mux33~2_combout\))) # (\ALUControl[3]~input_o\ & ((((\Mux33~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001111100000000000111110000000000011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datab => \ALT_INV_Mux33~0_combout\,
	datac => \ALT_INV_Mux33~2_combout\,
	datad => \ALT_INV_ALUControl[3]~input_o\,
	datae => \ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_Mux33~1_combout\,
	datag => \ALT_INV_Add1~77_sumout\,
	combout => \Mux33~3_combout\);

-- Location: LABCELL_X29_Y4_N33
\ALU_Result[31]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Result[31]$latch~combout\ = ( \Mux33~3_combout\ & ( (!\Mux1~0_combout\) # (\ALU_Result[31]$latch~combout\) ) ) # ( !\Mux33~3_combout\ & ( (\ALU_Result[31]$latch~combout\ & \Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALU_Result[31]$latch~combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux33~3_combout\,
	combout => \ALU_Result[31]$latch~combout\);

-- Location: MLABCELL_X78_Y10_N0
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


