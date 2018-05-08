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

-- DATE "01/26/2017 14:12:48"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	Simple_ALU IS
    PORT (
	ALUControl : IN std_logic_vector(1 DOWNTO 0);
	inputA : IN std_logic_vector(31 DOWNTO 0);
	inputB : IN std_logic_vector(31 DOWNTO 0);
	ALU_Reult : OUT std_logic_vector(31 DOWNTO 0)
	);
END Simple_ALU;

-- Design Ports Information
-- ALU_Reult[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[7]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[8]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[10]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[11]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[12]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[15]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[16]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[17]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[18]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[19]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[20]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[21]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[23]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[24]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[25]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[26]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[27]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[28]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[29]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[30]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Reult[31]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[0]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[0]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[5]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[6]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[8]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[10]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[11]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[12]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[12]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[14]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[15]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[16]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[16]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[17]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[17]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[18]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[18]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[19]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[19]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[20]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[20]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[21]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[21]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[22]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[22]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[23]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[23]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[24]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[24]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[25]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[25]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[26]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[27]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[27]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[28]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[28]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[29]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[29]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[30]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[30]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputA[31]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputB[31]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Simple_ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ALUControl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_inputA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_inputB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALU_Reult : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ALUControl[1]~input_o\ : std_logic;
SIGNAL \ALUControl[0]~input_o\ : std_logic;
SIGNAL \inputA[0]~input_o\ : std_logic;
SIGNAL \inputB[0]~input_o\ : std_logic;
SIGNAL \Add0~130_cout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \ALU_Reult[0]~0_combout\ : std_logic;
SIGNAL \inputA[1]~input_o\ : std_logic;
SIGNAL \inputB[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \ALU_Reult[1]~1_combout\ : std_logic;
SIGNAL \inputB[2]~input_o\ : std_logic;
SIGNAL \inputA[2]~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \ALU_Reult[2]~2_combout\ : std_logic;
SIGNAL \inputA[3]~input_o\ : std_logic;
SIGNAL \inputB[3]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \ALU_Reult[3]~3_combout\ : std_logic;
SIGNAL \inputA[4]~input_o\ : std_logic;
SIGNAL \inputB[4]~input_o\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \ALU_Reult[4]~4_combout\ : std_logic;
SIGNAL \inputB[5]~input_o\ : std_logic;
SIGNAL \inputA[5]~input_o\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \ALU_Reult[5]~5_combout\ : std_logic;
SIGNAL \inputA[6]~input_o\ : std_logic;
SIGNAL \inputB[6]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \ALU_Reult[6]~6_combout\ : std_logic;
SIGNAL \inputB[7]~input_o\ : std_logic;
SIGNAL \inputA[7]~input_o\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \ALU_Reult[7]~7_combout\ : std_logic;
SIGNAL \inputB[8]~input_o\ : std_logic;
SIGNAL \inputA[8]~input_o\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \ALU_Reult[8]~8_combout\ : std_logic;
SIGNAL \inputA[9]~input_o\ : std_logic;
SIGNAL \inputB[9]~input_o\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \ALU_Reult[9]~9_combout\ : std_logic;
SIGNAL \inputB[10]~input_o\ : std_logic;
SIGNAL \inputA[10]~input_o\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \ALU_Reult[10]~10_combout\ : std_logic;
SIGNAL \inputB[11]~input_o\ : std_logic;
SIGNAL \inputA[11]~input_o\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \ALU_Reult[11]~11_combout\ : std_logic;
SIGNAL \inputA[12]~input_o\ : std_logic;
SIGNAL \inputB[12]~input_o\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \ALU_Reult[12]~12_combout\ : std_logic;
SIGNAL \inputA[13]~input_o\ : std_logic;
SIGNAL \inputB[13]~input_o\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \ALU_Reult[13]~13_combout\ : std_logic;
SIGNAL \inputB[14]~input_o\ : std_logic;
SIGNAL \inputA[14]~input_o\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \ALU_Reult[14]~14_combout\ : std_logic;
SIGNAL \inputA[15]~input_o\ : std_logic;
SIGNAL \inputB[15]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \ALU_Reult[15]~15_combout\ : std_logic;
SIGNAL \inputA[16]~input_o\ : std_logic;
SIGNAL \inputB[16]~input_o\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \ALU_Reult[16]~16_combout\ : std_logic;
SIGNAL \inputB[17]~input_o\ : std_logic;
SIGNAL \inputA[17]~input_o\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \ALU_Reult[17]~17_combout\ : std_logic;
SIGNAL \inputB[18]~input_o\ : std_logic;
SIGNAL \inputA[18]~input_o\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \ALU_Reult[18]~18_combout\ : std_logic;
SIGNAL \inputA[19]~input_o\ : std_logic;
SIGNAL \inputB[19]~input_o\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \ALU_Reult[19]~19_combout\ : std_logic;
SIGNAL \inputA[20]~input_o\ : std_logic;
SIGNAL \inputB[20]~input_o\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \ALU_Reult[20]~20_combout\ : std_logic;
SIGNAL \inputB[21]~input_o\ : std_logic;
SIGNAL \inputA[21]~input_o\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \ALU_Reult[21]~21_combout\ : std_logic;
SIGNAL \inputA[22]~input_o\ : std_logic;
SIGNAL \inputB[22]~input_o\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \ALU_Reult[22]~22_combout\ : std_logic;
SIGNAL \inputA[23]~input_o\ : std_logic;
SIGNAL \inputB[23]~input_o\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \ALU_Reult[23]~23_combout\ : std_logic;
SIGNAL \inputA[24]~input_o\ : std_logic;
SIGNAL \inputB[24]~input_o\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \ALU_Reult[24]~24_combout\ : std_logic;
SIGNAL \inputA[25]~input_o\ : std_logic;
SIGNAL \inputB[25]~input_o\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \ALU_Reult[25]~25_combout\ : std_logic;
SIGNAL \inputA[26]~input_o\ : std_logic;
SIGNAL \inputB[26]~input_o\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \ALU_Reult[26]~26_combout\ : std_logic;
SIGNAL \inputB[27]~input_o\ : std_logic;
SIGNAL \inputA[27]~input_o\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \ALU_Reult[27]~27_combout\ : std_logic;
SIGNAL \inputA[28]~input_o\ : std_logic;
SIGNAL \inputB[28]~input_o\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \ALU_Reult[28]~28_combout\ : std_logic;
SIGNAL \inputB[29]~input_o\ : std_logic;
SIGNAL \inputA[29]~input_o\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \ALU_Reult[29]~29_combout\ : std_logic;
SIGNAL \inputA[30]~input_o\ : std_logic;
SIGNAL \inputB[30]~input_o\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \ALU_Reult[30]~30_combout\ : std_logic;
SIGNAL \inputB[31]~input_o\ : std_logic;
SIGNAL \inputA[31]~input_o\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~125_sumout\ : std_logic;
SIGNAL \ALU_Reult[31]~31_combout\ : std_logic;
SIGNAL \ALT_INV_inputB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUControl[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUControl[0]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_inputB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_inputA[23]~input_o\ : std_logic;

BEGIN

ww_ALUControl <= ALUControl;
ww_inputA <= inputA;
ww_inputB <= inputB;
ALU_Reult <= ww_ALU_Reult;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inputB[22]~input_o\ <= NOT \inputB[22]~input_o\;
\ALT_INV_inputA[22]~input_o\ <= NOT \inputA[22]~input_o\;
\ALT_INV_inputB[21]~input_o\ <= NOT \inputB[21]~input_o\;
\ALT_INV_inputA[21]~input_o\ <= NOT \inputA[21]~input_o\;
\ALT_INV_inputB[20]~input_o\ <= NOT \inputB[20]~input_o\;
\ALT_INV_inputA[20]~input_o\ <= NOT \inputA[20]~input_o\;
\ALT_INV_inputB[19]~input_o\ <= NOT \inputB[19]~input_o\;
\ALT_INV_inputA[19]~input_o\ <= NOT \inputA[19]~input_o\;
\ALT_INV_inputB[18]~input_o\ <= NOT \inputB[18]~input_o\;
\ALT_INV_inputA[18]~input_o\ <= NOT \inputA[18]~input_o\;
\ALT_INV_inputB[17]~input_o\ <= NOT \inputB[17]~input_o\;
\ALT_INV_inputA[17]~input_o\ <= NOT \inputA[17]~input_o\;
\ALT_INV_inputB[16]~input_o\ <= NOT \inputB[16]~input_o\;
\ALT_INV_inputA[16]~input_o\ <= NOT \inputA[16]~input_o\;
\ALT_INV_inputB[15]~input_o\ <= NOT \inputB[15]~input_o\;
\ALT_INV_inputA[15]~input_o\ <= NOT \inputA[15]~input_o\;
\ALT_INV_inputB[14]~input_o\ <= NOT \inputB[14]~input_o\;
\ALT_INV_inputA[14]~input_o\ <= NOT \inputA[14]~input_o\;
\ALT_INV_inputB[13]~input_o\ <= NOT \inputB[13]~input_o\;
\ALT_INV_inputA[13]~input_o\ <= NOT \inputA[13]~input_o\;
\ALT_INV_inputB[12]~input_o\ <= NOT \inputB[12]~input_o\;
\ALT_INV_inputA[12]~input_o\ <= NOT \inputA[12]~input_o\;
\ALT_INV_inputB[11]~input_o\ <= NOT \inputB[11]~input_o\;
\ALT_INV_inputA[11]~input_o\ <= NOT \inputA[11]~input_o\;
\ALT_INV_inputB[10]~input_o\ <= NOT \inputB[10]~input_o\;
\ALT_INV_inputA[10]~input_o\ <= NOT \inputA[10]~input_o\;
\ALT_INV_inputB[9]~input_o\ <= NOT \inputB[9]~input_o\;
\ALT_INV_inputA[9]~input_o\ <= NOT \inputA[9]~input_o\;
\ALT_INV_inputB[8]~input_o\ <= NOT \inputB[8]~input_o\;
\ALT_INV_inputA[8]~input_o\ <= NOT \inputA[8]~input_o\;
\ALT_INV_inputB[7]~input_o\ <= NOT \inputB[7]~input_o\;
\ALT_INV_inputA[7]~input_o\ <= NOT \inputA[7]~input_o\;
\ALT_INV_inputB[6]~input_o\ <= NOT \inputB[6]~input_o\;
\ALT_INV_inputA[6]~input_o\ <= NOT \inputA[6]~input_o\;
\ALT_INV_inputB[5]~input_o\ <= NOT \inputB[5]~input_o\;
\ALT_INV_inputA[5]~input_o\ <= NOT \inputA[5]~input_o\;
\ALT_INV_inputB[4]~input_o\ <= NOT \inputB[4]~input_o\;
\ALT_INV_inputA[4]~input_o\ <= NOT \inputA[4]~input_o\;
\ALT_INV_inputB[3]~input_o\ <= NOT \inputB[3]~input_o\;
\ALT_INV_inputA[3]~input_o\ <= NOT \inputA[3]~input_o\;
\ALT_INV_inputB[2]~input_o\ <= NOT \inputB[2]~input_o\;
\ALT_INV_inputA[2]~input_o\ <= NOT \inputA[2]~input_o\;
\ALT_INV_inputB[1]~input_o\ <= NOT \inputB[1]~input_o\;
\ALT_INV_inputA[1]~input_o\ <= NOT \inputA[1]~input_o\;
\ALT_INV_inputB[0]~input_o\ <= NOT \inputB[0]~input_o\;
\ALT_INV_inputA[0]~input_o\ <= NOT \inputA[0]~input_o\;
\ALT_INV_ALUControl[1]~input_o\ <= NOT \ALUControl[1]~input_o\;
\ALT_INV_ALUControl[0]~input_o\ <= NOT \ALUControl[0]~input_o\;
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
\ALT_INV_inputB[31]~input_o\ <= NOT \inputB[31]~input_o\;
\ALT_INV_inputA[31]~input_o\ <= NOT \inputA[31]~input_o\;
\ALT_INV_inputB[30]~input_o\ <= NOT \inputB[30]~input_o\;
\ALT_INV_inputA[30]~input_o\ <= NOT \inputA[30]~input_o\;
\ALT_INV_inputB[29]~input_o\ <= NOT \inputB[29]~input_o\;
\ALT_INV_inputA[29]~input_o\ <= NOT \inputA[29]~input_o\;
\ALT_INV_inputB[28]~input_o\ <= NOT \inputB[28]~input_o\;
\ALT_INV_inputA[28]~input_o\ <= NOT \inputA[28]~input_o\;
\ALT_INV_inputB[27]~input_o\ <= NOT \inputB[27]~input_o\;
\ALT_INV_inputA[27]~input_o\ <= NOT \inputA[27]~input_o\;
\ALT_INV_inputB[26]~input_o\ <= NOT \inputB[26]~input_o\;
\ALT_INV_inputA[26]~input_o\ <= NOT \inputA[26]~input_o\;
\ALT_INV_inputB[25]~input_o\ <= NOT \inputB[25]~input_o\;
\ALT_INV_inputA[25]~input_o\ <= NOT \inputA[25]~input_o\;
\ALT_INV_inputB[24]~input_o\ <= NOT \inputB[24]~input_o\;
\ALT_INV_inputA[24]~input_o\ <= NOT \inputA[24]~input_o\;
\ALT_INV_inputB[23]~input_o\ <= NOT \inputB[23]~input_o\;
\ALT_INV_inputA[23]~input_o\ <= NOT \inputA[23]~input_o\;

-- Location: IOOBUF_X0_Y18_N79
\ALU_Reult[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(0));

-- Location: IOOBUF_X10_Y0_N59
\ALU_Reult[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(1));

-- Location: IOOBUF_X16_Y0_N59
\ALU_Reult[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(2));

-- Location: IOOBUF_X46_Y0_N2
\ALU_Reult[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(3));

-- Location: IOOBUF_X14_Y0_N53
\ALU_Reult[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(4));

-- Location: IOOBUF_X14_Y0_N36
\ALU_Reult[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(5));

-- Location: IOOBUF_X40_Y0_N93
\ALU_Reult[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(6));

-- Location: IOOBUF_X52_Y0_N36
\ALU_Reult[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(7));

-- Location: IOOBUF_X38_Y0_N19
\ALU_Reult[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(8));

-- Location: IOOBUF_X12_Y0_N19
\ALU_Reult[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(9));

-- Location: IOOBUF_X46_Y0_N36
\ALU_Reult[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(10));

-- Location: IOOBUF_X50_Y0_N36
\ALU_Reult[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(11));

-- Location: IOOBUF_X46_Y0_N19
\ALU_Reult[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(12));

-- Location: IOOBUF_X12_Y0_N2
\ALU_Reult[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(13));

-- Location: IOOBUF_X11_Y0_N2
\ALU_Reult[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(14));

-- Location: IOOBUF_X46_Y0_N53
\ALU_Reult[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(15));

-- Location: IOOBUF_X11_Y0_N36
\ALU_Reult[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(16));

-- Location: IOOBUF_X50_Y0_N2
\ALU_Reult[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(17));

-- Location: IOOBUF_X38_Y0_N53
\ALU_Reult[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(18));

-- Location: IOOBUF_X33_Y0_N76
\ALU_Reult[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(19));

-- Location: IOOBUF_X0_Y18_N62
\ALU_Reult[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(20));

-- Location: IOOBUF_X18_Y0_N19
\ALU_Reult[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(21));

-- Location: IOOBUF_X40_Y0_N42
\ALU_Reult[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(22));

-- Location: IOOBUF_X12_Y0_N36
\ALU_Reult[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(23));

-- Location: IOOBUF_X36_Y0_N53
\ALU_Reult[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(24));

-- Location: IOOBUF_X51_Y0_N2
\ALU_Reult[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(25));

-- Location: IOOBUF_X12_Y0_N53
\ALU_Reult[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(26));

-- Location: IOOBUF_X43_Y0_N19
\ALU_Reult[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(27));

-- Location: IOOBUF_X40_Y0_N76
\ALU_Reult[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(28));

-- Location: IOOBUF_X52_Y0_N2
\ALU_Reult[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(29));

-- Location: IOOBUF_X18_Y0_N53
\ALU_Reult[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(30));

-- Location: IOOBUF_X16_Y0_N76
\ALU_Reult[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU_Reult[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Reult(31));

-- Location: IOIBUF_X29_Y0_N52
\ALUControl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(1),
	o => \ALUControl[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\ALUControl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUControl(0),
	o => \ALUControl[0]~input_o\);

-- Location: IOIBUF_X54_Y14_N61
\inputA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(0),
	o => \inputA[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N52
\inputB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(0),
	o => \inputB[0]~input_o\);

-- Location: LABCELL_X25_Y2_N0
\Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~130_cout\ = CARRY(( (!\ALUControl[1]~input_o\) # (\ALUControl[0]~input_o\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	cin => GND,
	cout => \Add0~130_cout\);

-- Location: LABCELL_X25_Y2_N3
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\inputB[0]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[0]~input_o\ ) + ( \Add0~130_cout\ ))
-- \Add0~2\ = CARRY(( !\inputB[0]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[0]~input_o\ ) + ( \Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[0]~input_o\,
	datad => \ALT_INV_inputB[0]~input_o\,
	cin => \Add0~130_cout\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X34_Y2_N30
\ALU_Reult[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[0]~0_combout\ = ( \inputA[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\) # (\inputB[0]~input_o\)))) # (\ALUControl[1]~input_o\ & (\Add0~1_sumout\)) ) ) # ( !\inputA[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (((\inputB[0]~input_o\ & \ALUControl[0]~input_o\)))) # (\ALUControl[1]~input_o\ & (\Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000110111011101100010001000110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[1]~input_o\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_inputB[0]~input_o\,
	datad => \ALT_INV_ALUControl[0]~input_o\,
	datae => \ALT_INV_inputA[0]~input_o\,
	combout => \ALU_Reult[0]~0_combout\);

-- Location: IOIBUF_X24_Y0_N18
\inputA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(1),
	o => \inputA[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N58
\inputB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(1),
	o => \inputB[1]~input_o\);

-- Location: LABCELL_X25_Y2_N6
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \inputA[1]~input_o\ ) + ( !\inputB[1]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \inputA[1]~input_o\ ) + ( !\inputB[1]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[1]~input_o\,
	dataf => \ALT_INV_inputB[1]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X24_Y2_N30
\ALU_Reult[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[1]~1_combout\ = ( \inputA[1]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputB[1]~input_o\) # (\ALUControl[0]~input_o\)))) # (\ALUControl[1]~input_o\ & (\Add0~5_sumout\)) ) ) # ( !\inputA[1]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (((\ALUControl[0]~input_o\ & \inputB[1]~input_o\)))) # (\ALUControl[1]~input_o\ & (\Add0~5_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101001111110101010100000011010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_inputB[1]~input_o\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	datae => \ALT_INV_inputA[1]~input_o\,
	combout => \ALU_Reult[1]~1_combout\);

-- Location: IOIBUF_X10_Y0_N75
\inputB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(2),
	o => \inputB[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\inputA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(2),
	o => \inputA[2]~input_o\);

-- Location: LABCELL_X25_Y2_N9
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\inputB[2]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[2]~input_o\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\inputB[2]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[2]~input_o\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[2]~input_o\,
	dataf => \ALT_INV_inputA[2]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X24_Y2_N6
\ALU_Reult[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[2]~2_combout\ = ( \ALUControl[1]~input_o\ & ( \Add0~9_sumout\ ) ) # ( !\ALUControl[1]~input_o\ & ( (!\inputB[2]~input_o\ & (\inputA[2]~input_o\ & \ALUControl[0]~input_o\)) # (\inputB[2]~input_o\ & ((\ALUControl[0]~input_o\) # 
-- (\inputA[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111010101010101010100000011001111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datab => \ALT_INV_inputB[2]~input_o\,
	datac => \ALT_INV_inputA[2]~input_o\,
	datad => \ALT_INV_ALUControl[0]~input_o\,
	datae => \ALT_INV_ALUControl[1]~input_o\,
	combout => \ALU_Reult[2]~2_combout\);

-- Location: IOIBUF_X22_Y0_N18
\inputA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(3),
	o => \inputA[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N18
\inputB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(3),
	o => \inputB[3]~input_o\);

-- Location: LABCELL_X25_Y2_N12
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\inputB[3]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[3]~input_o\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\inputB[3]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[3]~input_o\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[3]~input_o\,
	datad => \ALT_INV_inputB[3]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X26_Y2_N3
\ALU_Reult[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[3]~3_combout\ = ( \inputA[3]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~13_sumout\ ) ) ) # ( !\inputA[3]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~13_sumout\ ) ) ) # ( \inputA[3]~input_o\ & ( !\ALUControl[1]~input_o\ & ( 
-- (\inputB[3]~input_o\) # (\ALUControl[0]~input_o\) ) ) ) # ( !\inputA[3]~input_o\ & ( !\ALUControl[1]~input_o\ & ( (\ALUControl[0]~input_o\ & \inputB[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111110011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_inputB[3]~input_o\,
	datae => \ALT_INV_inputA[3]~input_o\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \ALU_Reult[3]~3_combout\);

-- Location: IOIBUF_X19_Y0_N52
\inputA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(4),
	o => \inputA[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N92
\inputB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(4),
	o => \inputB[4]~input_o\);

-- Location: LABCELL_X25_Y2_N15
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \inputA[4]~input_o\ ) + ( !\inputB[4]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \inputA[4]~input_o\ ) + ( !\inputB[4]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[4]~input_o\,
	dataf => \ALT_INV_inputB[4]~input_o\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X24_Y2_N15
\ALU_Reult[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[4]~4_combout\ = ( \inputB[4]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)) # (\inputA[4]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~17_sumout\)))) ) ) # ( !\inputB[4]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputA[4]~input_o\ & (\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~17_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111010011000111111100000100001101110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[4]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_ALUControl[0]~input_o\,
	datad => \ALT_INV_Add0~17_sumout\,
	datae => \ALT_INV_inputB[4]~input_o\,
	combout => \ALU_Reult[4]~4_combout\);

-- Location: IOIBUF_X38_Y0_N35
\inputB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(5),
	o => \inputB[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\inputA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(5),
	o => \inputA[5]~input_o\);

-- Location: LABCELL_X25_Y2_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\inputB[5]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[5]~input_o\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\inputB[5]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[5]~input_o\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[5]~input_o\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X34_Y2_N36
\ALU_Reult[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[5]~5_combout\ = ( \Add0~21_sumout\ & ( \inputA[5]~input_o\ & ( ((\ALUControl[1]~input_o\) # (\ALUControl[0]~input_o\)) # (\inputB[5]~input_o\) ) ) ) # ( !\Add0~21_sumout\ & ( \inputA[5]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- ((\ALUControl[0]~input_o\) # (\inputB[5]~input_o\))) ) ) ) # ( \Add0~21_sumout\ & ( !\inputA[5]~input_o\ & ( ((\inputB[5]~input_o\ & \ALUControl[0]~input_o\)) # (\ALUControl[1]~input_o\) ) ) ) # ( !\Add0~21_sumout\ & ( !\inputA[5]~input_o\ & ( 
-- (\inputB[5]~input_o\ & (\ALUControl[0]~input_o\ & !\ALUControl[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111110001111101110000011100000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[5]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_ALUControl[1]~input_o\,
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_inputA[5]~input_o\,
	combout => \ALU_Reult[5]~5_combout\);

-- Location: IOIBUF_X36_Y0_N1
\inputA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(6),
	o => \inputA[6]~input_o\);

-- Location: IOIBUF_X48_Y0_N92
\inputB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(6),
	o => \inputB[6]~input_o\);

-- Location: LABCELL_X25_Y2_N21
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \inputA[6]~input_o\ ) + ( !\inputB[6]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \inputA[6]~input_o\ ) + ( !\inputB[6]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[6]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X34_Y2_N45
\ALU_Reult[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[6]~6_combout\ = ( \ALUControl[1]~input_o\ & ( \inputB[6]~input_o\ & ( \Add0~25_sumout\ ) ) ) # ( !\ALUControl[1]~input_o\ & ( \inputB[6]~input_o\ & ( (\ALUControl[0]~input_o\) # (\inputA[6]~input_o\) ) ) ) # ( \ALUControl[1]~input_o\ & ( 
-- !\inputB[6]~input_o\ & ( \Add0~25_sumout\ ) ) ) # ( !\ALUControl[1]~input_o\ & ( !\inputB[6]~input_o\ & ( (\inputA[6]~input_o\ & \ALUControl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011110000111101110111011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[6]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_inputB[6]~input_o\,
	combout => \ALU_Reult[6]~6_combout\);

-- Location: IOIBUF_X44_Y0_N35
\inputB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(7),
	o => \inputB[7]~input_o\);

-- Location: IOIBUF_X51_Y0_N35
\inputA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(7),
	o => \inputA[7]~input_o\);

-- Location: LABCELL_X25_Y2_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \inputA[7]~input_o\ ) + ( !\inputB[7]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \inputA[7]~input_o\ ) + ( !\inputB[7]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[7]~input_o\,
	datad => \ALT_INV_inputA[7]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X34_Y2_N51
\ALU_Reult[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[7]~7_combout\ = ( \ALUControl[1]~input_o\ & ( \inputA[7]~input_o\ & ( \Add0~29_sumout\ ) ) ) # ( !\ALUControl[1]~input_o\ & ( \inputA[7]~input_o\ & ( (\ALUControl[0]~input_o\) # (\inputB[7]~input_o\) ) ) ) # ( \ALUControl[1]~input_o\ & ( 
-- !\inputA[7]~input_o\ & ( \Add0~29_sumout\ ) ) ) # ( !\ALUControl[1]~input_o\ & ( !\inputA[7]~input_o\ & ( (\inputB[7]~input_o\ & \ALUControl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101010101010100111111001111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_inputB[7]~input_o\,
	datac => \ALT_INV_ALUControl[0]~input_o\,
	datae => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_inputA[7]~input_o\,
	combout => \ALU_Reult[7]~7_combout\);

-- Location: IOIBUF_X44_Y0_N18
\inputB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(8),
	o => \inputB[8]~input_o\);

-- Location: IOIBUF_X44_Y0_N52
\inputA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(8),
	o => \inputA[8]~input_o\);

-- Location: LABCELL_X25_Y2_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \inputA[8]~input_o\ ) + ( !\inputB[8]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \inputA[8]~input_o\ ) + ( !\inputB[8]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_inputA[8]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X26_Y2_N9
\ALU_Reult[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[8]~8_combout\ = ( \Add0~33_sumout\ & ( \inputA[8]~input_o\ & ( ((\ALUControl[1]~input_o\) # (\inputB[8]~input_o\)) # (\ALUControl[0]~input_o\) ) ) ) # ( !\Add0~33_sumout\ & ( \inputA[8]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- ((\inputB[8]~input_o\) # (\ALUControl[0]~input_o\))) ) ) ) # ( \Add0~33_sumout\ & ( !\inputA[8]~input_o\ & ( ((\ALUControl[0]~input_o\ & \inputB[8]~input_o\)) # (\ALUControl[1]~input_o\) ) ) ) # ( !\Add0~33_sumout\ & ( !\inputA[8]~input_o\ & ( 
-- (\ALUControl[0]~input_o\ & (\inputB[8]~input_o\ & !\ALUControl[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000111111111100111111000000000011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_inputB[8]~input_o\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	datae => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_inputA[8]~input_o\,
	combout => \ALU_Reult[8]~8_combout\);

-- Location: IOIBUF_X11_Y0_N18
\inputA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(9),
	o => \inputA[9]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\inputB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(9),
	o => \inputB[9]~input_o\);

-- Location: LABCELL_X25_Y2_N30
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !\inputB[9]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[9]~input_o\ ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !\inputB[9]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[9]~input_o\ ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_inputB[9]~input_o\,
	dataf => \ALT_INV_inputA[9]~input_o\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X24_Y2_N21
\ALU_Reult[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[9]~9_combout\ = ( \inputB[9]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)) # (\inputA[9]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~37_sumout\)))) ) ) # ( !\inputB[9]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputA[9]~input_o\ & (\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~37_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111010011000111111100000100001101110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[9]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_ALUControl[0]~input_o\,
	datad => \ALT_INV_Add0~37_sumout\,
	datae => \ALT_INV_inputB[9]~input_o\,
	combout => \ALU_Reult[9]~9_combout\);

-- Location: IOIBUF_X43_Y0_N52
\inputB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(10),
	o => \inputB[10]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\inputA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(10),
	o => \inputA[10]~input_o\);

-- Location: LABCELL_X25_Y2_N33
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !\inputB[10]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[10]~input_o\ ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !\inputB[10]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[10]~input_o\ ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[10]~input_o\,
	dataf => \ALT_INV_inputA[10]~input_o\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X26_Y2_N45
\ALU_Reult[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[10]~10_combout\ = ( \inputB[10]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[10]~input_o\)) # (\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~41_sumout\)))) ) ) # ( !\inputB[10]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ & ((\inputA[10]~input_o\)))) # (\ALUControl[1]~input_o\ & (((\Add0~41_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[1]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \ALT_INV_inputA[10]~input_o\,
	dataf => \ALT_INV_inputB[10]~input_o\,
	combout => \ALU_Reult[10]~10_combout\);

-- Location: IOIBUF_X34_Y0_N52
\inputB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(11),
	o => \inputB[11]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\inputA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(11),
	o => \inputA[11]~input_o\);

-- Location: LABCELL_X25_Y2_N36
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\inputB[11]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[11]~input_o\ ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !\inputB[11]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[11]~input_o\ ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_inputB[11]~input_o\,
	dataf => \ALT_INV_inputA[11]~input_o\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X26_Y2_N48
\ALU_Reult[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[11]~11_combout\ = ( \inputA[11]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~45_sumout\ ) ) ) # ( !\inputA[11]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~45_sumout\ ) ) ) # ( \inputA[11]~input_o\ & ( !\ALUControl[1]~input_o\ & ( 
-- (\ALUControl[0]~input_o\) # (\inputB[11]~input_o\) ) ) ) # ( !\inputA[11]~input_o\ & ( !\ALUControl[1]~input_o\ & ( (\inputB[11]~input_o\ & \ALUControl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[11]~input_o\,
	datac => \ALT_INV_Add0~45_sumout\,
	datad => \ALT_INV_ALUControl[0]~input_o\,
	datae => \ALT_INV_inputA[11]~input_o\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \ALU_Reult[11]~11_combout\);

-- Location: IOIBUF_X29_Y0_N18
\inputA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(12),
	o => \inputA[12]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\inputB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(12),
	o => \inputB[12]~input_o\);

-- Location: LABCELL_X25_Y2_N39
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\inputB[12]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[12]~input_o\ ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( !\inputB[12]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[12]~input_o\ ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[12]~input_o\,
	datad => \ALT_INV_inputB[12]~input_o\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X26_Y2_N24
\ALU_Reult[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[12]~12_combout\ = ( \inputB[12]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\ALUControl[0]~input_o\)) # (\inputA[12]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~49_sumout\)))) ) ) # ( !\inputB[12]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\inputA[12]~input_o\ & ((\ALUControl[0]~input_o\)))) # (\ALUControl[1]~input_o\ & (((\Add0~49_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[1]~input_o\,
	datab => \ALT_INV_inputA[12]~input_o\,
	datac => \ALT_INV_Add0~49_sumout\,
	datad => \ALT_INV_ALUControl[0]~input_o\,
	dataf => \ALT_INV_inputB[12]~input_o\,
	combout => \ALU_Reult[12]~12_combout\);

-- Location: IOIBUF_X29_Y0_N35
\inputA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(13),
	o => \inputA[13]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\inputB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(13),
	o => \inputB[13]~input_o\);

-- Location: LABCELL_X25_Y2_N42
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \inputA[13]~input_o\ ) + ( !\inputB[13]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \inputA[13]~input_o\ ) + ( !\inputB[13]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[13]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X24_Y2_N27
\ALU_Reult[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[13]~13_combout\ = ( \ALUControl[1]~input_o\ & ( \inputB[13]~input_o\ & ( \Add0~53_sumout\ ) ) ) # ( !\ALUControl[1]~input_o\ & ( \inputB[13]~input_o\ & ( (\ALUControl[0]~input_o\) # (\inputA[13]~input_o\) ) ) ) # ( \ALUControl[1]~input_o\ & ( 
-- !\inputB[13]~input_o\ & ( \Add0~53_sumout\ ) ) ) # ( !\ALUControl[1]~input_o\ & ( !\inputB[13]~input_o\ & ( (\inputA[13]~input_o\ & \ALUControl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011110000111101110111011101110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[13]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_Add0~53_sumout\,
	datae => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_inputB[13]~input_o\,
	combout => \ALU_Reult[13]~13_combout\);

-- Location: IOIBUF_X22_Y0_N52
\inputB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(14),
	o => \inputB[14]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\inputA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(14),
	o => \inputA[14]~input_o\);

-- Location: LABCELL_X25_Y2_N45
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \inputA[14]~input_o\ ) + ( !\inputB[14]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \inputA[14]~input_o\ ) + ( !\inputB[14]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[14]~input_o\,
	datad => \ALT_INV_inputA[14]~input_o\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X24_Y2_N0
\ALU_Reult[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[14]~14_combout\ = ( \ALUControl[1]~input_o\ & ( \inputA[14]~input_o\ & ( \Add0~57_sumout\ ) ) ) # ( !\ALUControl[1]~input_o\ & ( \inputA[14]~input_o\ & ( (\inputB[14]~input_o\) # (\ALUControl[0]~input_o\) ) ) ) # ( \ALUControl[1]~input_o\ & ( 
-- !\inputA[14]~input_o\ & ( \Add0~57_sumout\ ) ) ) # ( !\ALUControl[1]~input_o\ & ( !\inputA[14]~input_o\ & ( (\ALUControl[0]~input_o\ & \inputB[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110000111100110011111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_Add0~57_sumout\,
	datad => \ALT_INV_inputB[14]~input_o\,
	datae => \ALT_INV_ALUControl[1]~input_o\,
	dataf => \ALT_INV_inputA[14]~input_o\,
	combout => \ALU_Reult[14]~14_combout\);

-- Location: IOIBUF_X33_Y0_N58
\inputA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(15),
	o => \inputA[15]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\inputB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(15),
	o => \inputB[15]~input_o\);

-- Location: LABCELL_X25_Y2_N48
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \inputA[15]~input_o\ ) + ( !\inputB[15]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \inputA[15]~input_o\ ) + ( !\inputB[15]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[15]~input_o\,
	datad => \ALT_INV_inputA[15]~input_o\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: LABCELL_X26_Y2_N33
\ALU_Reult[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[15]~15_combout\ = ( \inputB[15]~input_o\ & ( \Add0~61_sumout\ & ( ((\ALUControl[1]~input_o\) # (\ALUControl[0]~input_o\)) # (\inputA[15]~input_o\) ) ) ) # ( !\inputB[15]~input_o\ & ( \Add0~61_sumout\ & ( ((\inputA[15]~input_o\ & 
-- \ALUControl[0]~input_o\)) # (\ALUControl[1]~input_o\) ) ) ) # ( \inputB[15]~input_o\ & ( !\Add0~61_sumout\ & ( (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\) # (\inputA[15]~input_o\))) ) ) ) # ( !\inputB[15]~input_o\ & ( !\Add0~61_sumout\ & ( 
-- (\inputA[15]~input_o\ & (\ALUControl[0]~input_o\ & !\ALUControl[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000010111110000000000000101111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[15]~input_o\,
	datac => \ALT_INV_ALUControl[0]~input_o\,
	datad => \ALT_INV_ALUControl[1]~input_o\,
	datae => \ALT_INV_inputB[15]~input_o\,
	dataf => \ALT_INV_Add0~61_sumout\,
	combout => \ALU_Reult[15]~15_combout\);

-- Location: IOIBUF_X16_Y0_N41
\inputA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(16),
	o => \inputA[16]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\inputB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(16),
	o => \inputB[16]~input_o\);

-- Location: LABCELL_X25_Y2_N51
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \inputA[16]~input_o\ ) + ( !\inputB[16]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \inputA[16]~input_o\ ) + ( !\inputB[16]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[16]~input_o\,
	dataf => \ALT_INV_inputB[16]~input_o\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: LABCELL_X24_Y2_N39
\ALU_Reult[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[16]~16_combout\ = ( \inputB[16]~input_o\ & ( \inputA[16]~input_o\ & ( (!\ALUControl[1]~input_o\) # (\Add0~65_sumout\) ) ) ) # ( !\inputB[16]~input_o\ & ( \inputA[16]~input_o\ & ( (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\))) # 
-- (\ALUControl[1]~input_o\ & (\Add0~65_sumout\)) ) ) ) # ( \inputB[16]~input_o\ & ( !\inputA[16]~input_o\ & ( (!\ALUControl[1]~input_o\ & ((\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (\Add0~65_sumout\)) ) ) ) # ( !\inputB[16]~input_o\ & ( 
-- !\inputA[16]~input_o\ & ( (\Add0~65_sumout\ & \ALUControl[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111010001110100011101000111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~65_sumout\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_ALUControl[0]~input_o\,
	datae => \ALT_INV_inputB[16]~input_o\,
	dataf => \ALT_INV_inputA[16]~input_o\,
	combout => \ALU_Reult[16]~16_combout\);

-- Location: IOIBUF_X34_Y0_N18
\inputB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(17),
	o => \inputB[17]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\inputA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(17),
	o => \inputA[17]~input_o\);

-- Location: LABCELL_X25_Y2_N54
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( !\inputB[17]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[17]~input_o\ ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( !\inputB[17]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[17]~input_o\ ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[17]~input_o\,
	dataf => \ALT_INV_inputA[17]~input_o\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: LABCELL_X26_Y2_N36
\ALU_Reult[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[17]~17_combout\ = ( \inputA[17]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~69_sumout\ ) ) ) # ( !\inputA[17]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~69_sumout\ ) ) ) # ( \inputA[17]~input_o\ & ( !\ALUControl[1]~input_o\ & ( 
-- (\ALUControl[0]~input_o\) # (\inputB[17]~input_o\) ) ) ) # ( !\inputA[17]~input_o\ & ( !\ALUControl[1]~input_o\ & ( (\inputB[17]~input_o\ & \ALUControl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[17]~input_o\,
	datac => \ALT_INV_Add0~69_sumout\,
	datad => \ALT_INV_ALUControl[0]~input_o\,
	datae => \ALT_INV_inputA[17]~input_o\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \ALU_Reult[17]~17_combout\);

-- Location: IOIBUF_X0_Y18_N95
\inputB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(18),
	o => \inputB[18]~input_o\);

-- Location: IOIBUF_X40_Y0_N58
\inputA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(18),
	o => \inputA[18]~input_o\);

-- Location: LABCELL_X25_Y2_N57
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( !\inputB[18]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[18]~input_o\ ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( !\inputB[18]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[18]~input_o\ ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[18]~input_o\,
	dataf => \ALT_INV_inputA[18]~input_o\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: LABCELL_X26_Y2_N42
\ALU_Reult[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[18]~18_combout\ = ( \Add0~73_sumout\ & ( ((!\ALUControl[0]~input_o\ & (\inputB[18]~input_o\ & \inputA[18]~input_o\)) # (\ALUControl[0]~input_o\ & ((\inputA[18]~input_o\) # (\inputB[18]~input_o\)))) # (\ALUControl[1]~input_o\) ) ) # ( 
-- !\Add0~73_sumout\ & ( (!\ALUControl[1]~input_o\ & ((!\ALUControl[0]~input_o\ & (\inputB[18]~input_o\ & \inputA[18]~input_o\)) # (\ALUControl[0]~input_o\ & ((\inputA[18]~input_o\) # (\inputB[18]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101001010111011111110101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[1]~input_o\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_inputB[18]~input_o\,
	datad => \ALT_INV_inputA[18]~input_o\,
	dataf => \ALT_INV_Add0~73_sumout\,
	combout => \ALU_Reult[18]~18_combout\);

-- Location: IOIBUF_X44_Y0_N1
\inputA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(19),
	o => \inputA[19]~input_o\);

-- Location: IOIBUF_X48_Y0_N75
\inputB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(19),
	o => \inputB[19]~input_o\);

-- Location: LABCELL_X25_Y1_N0
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \inputA[19]~input_o\ ) + ( !\inputB[19]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \inputA[19]~input_o\ ) + ( !\inputB[19]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[19]~input_o\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: LABCELL_X25_Y1_N45
\ALU_Reult[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[19]~19_combout\ = ( \inputB[19]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[19]~input_o\)) # (\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~77_sumout\)))) ) ) # ( !\inputB[19]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ & (\inputA[19]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~77_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[19]~input_o\,
	datad => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_inputB[19]~input_o\,
	combout => \ALU_Reult[19]~19_combout\);

-- Location: IOIBUF_X14_Y0_N18
\inputA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(20),
	o => \inputA[20]~input_o\);

-- Location: IOIBUF_X25_Y0_N52
\inputB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(20),
	o => \inputB[20]~input_o\);

-- Location: LABCELL_X25_Y1_N3
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( !\inputB[20]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[20]~input_o\ ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( !\inputB[20]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[20]~input_o\ ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_inputA[20]~input_o\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: LABCELL_X24_Y1_N33
\ALU_Reult[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[20]~20_combout\ = ( \inputB[20]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~81_sumout\ ) ) ) # ( !\inputB[20]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~81_sumout\ ) ) ) # ( \inputB[20]~input_o\ & ( !\ALUControl[1]~input_o\ & ( 
-- (\ALUControl[0]~input_o\) # (\inputA[20]~input_o\) ) ) ) # ( !\inputB[20]~input_o\ & ( !\ALUControl[1]~input_o\ & ( (\inputA[20]~input_o\ & \ALUControl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010111110101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputA[20]~input_o\,
	datac => \ALT_INV_ALUControl[0]~input_o\,
	datad => \ALT_INV_Add0~81_sumout\,
	datae => \ALT_INV_inputB[20]~input_o\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \ALU_Reult[20]~20_combout\);

-- Location: IOIBUF_X22_Y0_N1
\inputB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(21),
	o => \inputB[21]~input_o\);

-- Location: IOIBUF_X19_Y0_N35
\inputA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(21),
	o => \inputA[21]~input_o\);

-- Location: LABCELL_X25_Y1_N6
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( !\inputB[21]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[21]~input_o\ ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( !\inputB[21]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[21]~input_o\ ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_inputB[21]~input_o\,
	dataf => \ALT_INV_inputA[21]~input_o\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: LABCELL_X24_Y1_N39
\ALU_Reult[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[21]~21_combout\ = ( \Add0~85_sumout\ & ( \ALUControl[0]~input_o\ & ( ((\inputA[21]~input_o\) # (\inputB[21]~input_o\)) # (\ALUControl[1]~input_o\) ) ) ) # ( !\Add0~85_sumout\ & ( \ALUControl[0]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- ((\inputA[21]~input_o\) # (\inputB[21]~input_o\))) ) ) ) # ( \Add0~85_sumout\ & ( !\ALUControl[0]~input_o\ & ( ((\inputB[21]~input_o\ & \inputA[21]~input_o\)) # (\ALUControl[1]~input_o\) ) ) ) # ( !\Add0~85_sumout\ & ( !\ALUControl[0]~input_o\ & ( 
-- (!\ALUControl[1]~input_o\ & (\inputB[21]~input_o\ & \inputA[21]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010101110101011100101010001010100111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[1]~input_o\,
	datab => \ALT_INV_inputB[21]~input_o\,
	datac => \ALT_INV_inputA[21]~input_o\,
	datae => \ALT_INV_Add0~85_sumout\,
	dataf => \ALT_INV_ALUControl[0]~input_o\,
	combout => \ALU_Reult[21]~21_combout\);

-- Location: IOIBUF_X23_Y0_N92
\inputA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(22),
	o => \inputA[22]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\inputB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(22),
	o => \inputB[22]~input_o\);

-- Location: LABCELL_X25_Y1_N9
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \inputA[22]~input_o\ ) + ( !\inputB[22]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( \inputA[22]~input_o\ ) + ( !\inputB[22]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[22]~input_o\,
	dataf => \ALT_INV_inputB[22]~input_o\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: LABCELL_X24_Y1_N42
\ALU_Reult[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[22]~22_combout\ = ( \inputB[22]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~89_sumout\ ) ) ) # ( !\inputB[22]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~89_sumout\ ) ) ) # ( \inputB[22]~input_o\ & ( !\ALUControl[1]~input_o\ & ( 
-- (\inputA[22]~input_o\) # (\ALUControl[0]~input_o\) ) ) ) # ( !\inputB[22]~input_o\ & ( !\ALUControl[1]~input_o\ & ( (\ALUControl[0]~input_o\ & \inputA[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111110011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~89_sumout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_inputA[22]~input_o\,
	datae => \ALT_INV_inputB[22]~input_o\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \ALU_Reult[22]~22_combout\);

-- Location: IOIBUF_X25_Y0_N35
\inputA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(23),
	o => \inputA[23]~input_o\);

-- Location: IOIBUF_X11_Y0_N52
\inputB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(23),
	o => \inputB[23]~input_o\);

-- Location: LABCELL_X25_Y1_N12
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \inputA[23]~input_o\ ) + ( !\inputB[23]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \inputA[23]~input_o\ ) + ( !\inputB[23]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_inputA[23]~input_o\,
	dataf => \ALT_INV_inputB[23]~input_o\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: LABCELL_X24_Y1_N18
\ALU_Reult[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[23]~23_combout\ = ( \inputA[23]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~93_sumout\ ) ) ) # ( !\inputA[23]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~93_sumout\ ) ) ) # ( \inputA[23]~input_o\ & ( !\ALUControl[1]~input_o\ & ( 
-- (\ALUControl[0]~input_o\) # (\inputB[23]~input_o\) ) ) ) # ( !\inputA[23]~input_o\ & ( !\ALUControl[1]~input_o\ & ( (\inputB[23]~input_o\ & \ALUControl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~93_sumout\,
	datac => \ALT_INV_inputB[23]~input_o\,
	datad => \ALT_INV_ALUControl[0]~input_o\,
	datae => \ALT_INV_inputA[23]~input_o\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \ALU_Reult[23]~23_combout\);

-- Location: IOIBUF_X36_Y0_N18
\inputA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(24),
	o => \inputA[24]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\inputB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(24),
	o => \inputB[24]~input_o\);

-- Location: LABCELL_X25_Y1_N15
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( !\inputB[24]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[24]~input_o\ ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( !\inputB[24]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[24]~input_o\ ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_inputA[24]~input_o\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: LABCELL_X25_Y1_N42
\ALU_Reult[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[24]~24_combout\ = ( \Add0~97_sumout\ & ( ((!\ALUControl[0]~input_o\ & (\inputA[24]~input_o\ & \inputB[24]~input_o\)) # (\ALUControl[0]~input_o\ & ((\inputB[24]~input_o\) # (\inputA[24]~input_o\)))) # (\ALUControl[1]~input_o\) ) ) # ( 
-- !\Add0~97_sumout\ & ( (!\ALUControl[1]~input_o\ & ((!\ALUControl[0]~input_o\ & (\inputA[24]~input_o\ & \inputB[24]~input_o\)) # (\ALUControl[0]~input_o\ & ((\inputB[24]~input_o\) # (\inputA[24]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000110111011111110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[24]~input_o\,
	datad => \ALT_INV_inputB[24]~input_o\,
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \ALU_Reult[24]~24_combout\);

-- Location: IOIBUF_X43_Y0_N35
\inputA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(25),
	o => \inputA[25]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\inputB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(25),
	o => \inputB[25]~input_o\);

-- Location: LABCELL_X25_Y1_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( !\inputB[25]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[25]~input_o\ ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( !\inputB[25]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[25]~input_o\ ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[25]~input_o\,
	datad => \ALT_INV_inputB[25]~input_o\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: LABCELL_X25_Y1_N48
\ALU_Reult[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[25]~25_combout\ = ( \inputA[25]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputB[25]~input_o\)) # (\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~101_sumout\)))) ) ) # ( !\inputA[25]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ & ((\inputB[25]~input_o\)))) # (\ALUControl[1]~input_o\ & (((\Add0~101_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_Add0~101_sumout\,
	datad => \ALT_INV_inputB[25]~input_o\,
	dataf => \ALT_INV_inputA[25]~input_o\,
	combout => \ALU_Reult[25]~25_combout\);

-- Location: IOIBUF_X24_Y0_N52
\inputA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(26),
	o => \inputA[26]~input_o\);

-- Location: IOIBUF_X18_Y0_N35
\inputB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(26),
	o => \inputB[26]~input_o\);

-- Location: LABCELL_X25_Y1_N21
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( \inputA[26]~input_o\ ) + ( !\inputB[26]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( \inputA[26]~input_o\ ) + ( !\inputB[26]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputA[26]~input_o\,
	dataf => \ALT_INV_inputB[26]~input_o\,
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X24_Y1_N27
\ALU_Reult[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[26]~26_combout\ = ( \ALUControl[1]~input_o\ & ( \Add0~105_sumout\ ) ) # ( !\ALUControl[1]~input_o\ & ( (!\ALUControl[0]~input_o\ & (\inputA[26]~input_o\ & \inputB[26]~input_o\)) # (\ALUControl[0]~input_o\ & ((\inputB[26]~input_o\) # 
-- (\inputA[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~105_sumout\,
	datab => \ALT_INV_ALUControl[0]~input_o\,
	datac => \ALT_INV_inputA[26]~input_o\,
	datad => \ALT_INV_inputB[26]~input_o\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \ALU_Reult[26]~26_combout\);

-- Location: IOIBUF_X33_Y0_N41
\inputB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(27),
	o => \inputB[27]~input_o\);

-- Location: IOIBUF_X23_Y0_N75
\inputA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(27),
	o => \inputA[27]~input_o\);

-- Location: LABCELL_X25_Y1_N24
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( !\inputB[27]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[27]~input_o\ ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( !\inputB[27]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \inputA[27]~input_o\ ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputA[27]~input_o\,
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X25_Y1_N54
\ALU_Reult[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[27]~27_combout\ = ( \inputA[27]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputB[27]~input_o\)) # (\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~109_sumout\)))) ) ) # ( !\inputA[27]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ & ((\inputB[27]~input_o\)))) # (\ALUControl[1]~input_o\ & (((\Add0~109_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_Add0~109_sumout\,
	datad => \ALT_INV_inputB[27]~input_o\,
	dataf => \ALT_INV_inputA[27]~input_o\,
	combout => \ALU_Reult[27]~27_combout\);

-- Location: IOIBUF_X48_Y0_N41
\inputA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(28),
	o => \inputA[28]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\inputB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(28),
	o => \inputB[28]~input_o\);

-- Location: LABCELL_X25_Y1_N27
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \inputA[28]~input_o\ ) + ( !\inputB[28]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( \inputA[28]~input_o\ ) + ( !\inputB[28]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_inputA[28]~input_o\,
	dataf => \ALT_INV_inputB[28]~input_o\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X25_Y1_N57
\ALU_Reult[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[28]~28_combout\ = ( \inputB[28]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[28]~input_o\)) # (\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~113_sumout\)))) ) ) # ( !\inputB[28]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ & ((\inputA[28]~input_o\)))) # (\ALUControl[1]~input_o\ & (((\Add0~113_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_Add0~113_sumout\,
	datad => \ALT_INV_inputA[28]~input_o\,
	dataf => \ALT_INV_inputB[28]~input_o\,
	combout => \ALU_Reult[28]~28_combout\);

-- Location: IOIBUF_X36_Y0_N35
\inputB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(29),
	o => \inputB[29]~input_o\);

-- Location: IOIBUF_X48_Y0_N58
\inputA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(29),
	o => \inputA[29]~input_o\);

-- Location: LABCELL_X25_Y1_N30
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( \inputA[29]~input_o\ ) + ( !\inputB[29]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( \inputA[29]~input_o\ ) + ( !\inputB[29]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011010010110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_inputB[29]~input_o\,
	datad => \ALT_INV_inputA[29]~input_o\,
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: LABCELL_X25_Y1_N51
\ALU_Reult[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[29]~29_combout\ = ( \inputB[29]~input_o\ & ( (!\ALUControl[1]~input_o\ & (((\inputA[29]~input_o\)) # (\ALUControl[0]~input_o\))) # (\ALUControl[1]~input_o\ & (((\Add0~117_sumout\)))) ) ) # ( !\inputB[29]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- (\ALUControl[0]~input_o\ & ((\inputA[29]~input_o\)))) # (\ALUControl[1]~input_o\ & (((\Add0~117_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_Add0~117_sumout\,
	datad => \ALT_INV_inputA[29]~input_o\,
	dataf => \ALT_INV_inputB[29]~input_o\,
	combout => \ALU_Reult[29]~29_combout\);

-- Location: IOIBUF_X24_Y0_N35
\inputA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(30),
	o => \inputA[30]~input_o\);

-- Location: IOIBUF_X23_Y0_N41
\inputB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(30),
	o => \inputB[30]~input_o\);

-- Location: LABCELL_X25_Y1_N33
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \inputA[30]~input_o\ ) + ( !\inputB[30]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( \inputA[30]~input_o\ ) + ( !\inputB[30]~input_o\ $ (((!\ALUControl[0]~input_o\ & \ALUControl[1]~input_o\))) ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000101101110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUControl[0]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_inputA[30]~input_o\,
	dataf => \ALT_INV_inputB[30]~input_o\,
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: LABCELL_X24_Y1_N0
\ALU_Reult[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[30]~30_combout\ = ( \inputB[30]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~121_sumout\ ) ) ) # ( !\inputB[30]~input_o\ & ( \ALUControl[1]~input_o\ & ( \Add0~121_sumout\ ) ) ) # ( \inputB[30]~input_o\ & ( !\ALUControl[1]~input_o\ & ( 
-- (\ALUControl[0]~input_o\) # (\inputA[30]~input_o\) ) ) ) # ( !\inputB[30]~input_o\ & ( !\ALUControl[1]~input_o\ & ( (\inputA[30]~input_o\ & \ALUControl[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputA[30]~input_o\,
	datac => \ALT_INV_Add0~121_sumout\,
	datad => \ALT_INV_ALUControl[0]~input_o\,
	datae => \ALT_INV_inputB[30]~input_o\,
	dataf => \ALT_INV_ALUControl[1]~input_o\,
	combout => \ALU_Reult[30]~30_combout\);

-- Location: IOIBUF_X22_Y0_N35
\inputB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputB(31),
	o => \inputB[31]~input_o\);

-- Location: IOIBUF_X50_Y0_N18
\inputA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputA(31),
	o => \inputA[31]~input_o\);

-- Location: LABCELL_X25_Y1_N36
\Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~125_sumout\ = SUM(( !\inputB[31]~input_o\ $ (((\ALUControl[1]~input_o\ & !\ALUControl[0]~input_o\))) ) + ( \inputA[31]~input_o\ ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inputB[31]~input_o\,
	datab => \ALT_INV_ALUControl[1]~input_o\,
	datac => \ALT_INV_ALUControl[0]~input_o\,
	dataf => \ALT_INV_inputA[31]~input_o\,
	cin => \Add0~122\,
	sumout => \Add0~125_sumout\);

-- Location: LABCELL_X24_Y1_N6
\ALU_Reult[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALU_Reult[31]~31_combout\ = ( \Add0~125_sumout\ & ( \inputA[31]~input_o\ & ( ((\ALUControl[0]~input_o\) # (\ALUControl[1]~input_o\)) # (\inputB[31]~input_o\) ) ) ) # ( !\Add0~125_sumout\ & ( \inputA[31]~input_o\ & ( (!\ALUControl[1]~input_o\ & 
-- ((\ALUControl[0]~input_o\) # (\inputB[31]~input_o\))) ) ) ) # ( \Add0~125_sumout\ & ( !\inputA[31]~input_o\ & ( ((\inputB[31]~input_o\ & \ALUControl[0]~input_o\)) # (\ALUControl[1]~input_o\) ) ) ) # ( !\Add0~125_sumout\ & ( !\inputA[31]~input_o\ & ( 
-- (\inputB[31]~input_o\ & (!\ALUControl[1]~input_o\ & \ALUControl[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000011110011111100110000111100000011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inputB[31]~input_o\,
	datac => \ALT_INV_ALUControl[1]~input_o\,
	datad => \ALT_INV_ALUControl[0]~input_o\,
	datae => \ALT_INV_Add0~125_sumout\,
	dataf => \ALT_INV_inputA[31]~input_o\,
	combout => \ALU_Reult[31]~31_combout\);

-- Location: LABCELL_X16_Y27_N0
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


