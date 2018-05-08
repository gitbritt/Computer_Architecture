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

-- DATE "03/16/2017 14:44:54"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	PCReg IS
    PORT (
	CLK : IN std_logic;
	NextPC : IN std_logic_vector(31 DOWNTO 0);
	reset : IN std_logic;
	PC : OUT std_logic_vector(31 DOWNTO 0)
	);
END PCReg;

-- Design Ports Information
-- PC[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[13]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[16]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[17]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[18]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[19]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[20]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[21]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[22]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[23]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[24]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[25]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[26]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[27]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[28]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[29]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[30]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[31]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[2]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[8]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[10]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[11]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[13]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[14]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[16]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[17]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[19]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[20]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[21]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[22]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[23]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[24]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[25]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[26]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[27]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[28]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[29]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[30]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NextPC[31]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PCReg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_NextPC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \NextPC[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \PC[0]~reg0_q\ : std_logic;
SIGNAL \NextPC[1]~input_o\ : std_logic;
SIGNAL \PC[1]~reg0_q\ : std_logic;
SIGNAL \NextPC[2]~input_o\ : std_logic;
SIGNAL \PC[2]~reg0_q\ : std_logic;
SIGNAL \NextPC[3]~input_o\ : std_logic;
SIGNAL \PC[3]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[3]~reg0_q\ : std_logic;
SIGNAL \NextPC[4]~input_o\ : std_logic;
SIGNAL \PC[4]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[4]~reg0_q\ : std_logic;
SIGNAL \NextPC[5]~input_o\ : std_logic;
SIGNAL \PC[5]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[5]~reg0_q\ : std_logic;
SIGNAL \NextPC[6]~input_o\ : std_logic;
SIGNAL \PC[6]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[6]~reg0_q\ : std_logic;
SIGNAL \NextPC[7]~input_o\ : std_logic;
SIGNAL \PC[7]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[7]~reg0_q\ : std_logic;
SIGNAL \NextPC[8]~input_o\ : std_logic;
SIGNAL \PC[8]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[8]~reg0_q\ : std_logic;
SIGNAL \NextPC[9]~input_o\ : std_logic;
SIGNAL \PC[9]~reg0_q\ : std_logic;
SIGNAL \NextPC[10]~input_o\ : std_logic;
SIGNAL \PC[10]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[10]~reg0_q\ : std_logic;
SIGNAL \NextPC[11]~input_o\ : std_logic;
SIGNAL \PC[11]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[11]~reg0_q\ : std_logic;
SIGNAL \NextPC[12]~input_o\ : std_logic;
SIGNAL \PC[12]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[12]~reg0_q\ : std_logic;
SIGNAL \NextPC[13]~input_o\ : std_logic;
SIGNAL \PC[13]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[13]~reg0_q\ : std_logic;
SIGNAL \NextPC[14]~input_o\ : std_logic;
SIGNAL \PC[14]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[14]~reg0_q\ : std_logic;
SIGNAL \NextPC[15]~input_o\ : std_logic;
SIGNAL \PC[15]~reg0_q\ : std_logic;
SIGNAL \NextPC[16]~input_o\ : std_logic;
SIGNAL \PC[16]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[16]~reg0_q\ : std_logic;
SIGNAL \NextPC[17]~input_o\ : std_logic;
SIGNAL \PC[17]~reg0_q\ : std_logic;
SIGNAL \NextPC[18]~input_o\ : std_logic;
SIGNAL \PC[18]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[18]~reg0_q\ : std_logic;
SIGNAL \NextPC[19]~input_o\ : std_logic;
SIGNAL \PC[19]~reg0_q\ : std_logic;
SIGNAL \NextPC[20]~input_o\ : std_logic;
SIGNAL \PC[20]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[20]~reg0_q\ : std_logic;
SIGNAL \NextPC[21]~input_o\ : std_logic;
SIGNAL \PC[21]~reg0_q\ : std_logic;
SIGNAL \NextPC[22]~input_o\ : std_logic;
SIGNAL \PC[22]~0_combout\ : std_logic;
SIGNAL \PC[22]~reg0_q\ : std_logic;
SIGNAL \NextPC[23]~input_o\ : std_logic;
SIGNAL \PC[23]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[23]~reg0_q\ : std_logic;
SIGNAL \NextPC[24]~input_o\ : std_logic;
SIGNAL \PC[24]~reg0_q\ : std_logic;
SIGNAL \NextPC[25]~input_o\ : std_logic;
SIGNAL \PC[25]~reg0_q\ : std_logic;
SIGNAL \NextPC[26]~input_o\ : std_logic;
SIGNAL \PC[26]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[26]~reg0_q\ : std_logic;
SIGNAL \NextPC[27]~input_o\ : std_logic;
SIGNAL \PC[27]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[27]~reg0_q\ : std_logic;
SIGNAL \NextPC[28]~input_o\ : std_logic;
SIGNAL \PC[28]~reg0_q\ : std_logic;
SIGNAL \NextPC[29]~input_o\ : std_logic;
SIGNAL \PC[29]~reg0_q\ : std_logic;
SIGNAL \NextPC[30]~input_o\ : std_logic;
SIGNAL \PC[30]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[30]~reg0_q\ : std_logic;
SIGNAL \NextPC[31]~input_o\ : std_logic;
SIGNAL \PC[31]~reg0feeder_combout\ : std_logic;
SIGNAL \PC[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_NextPC[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_NextPC[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC[22]~reg0_q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_NextPC <= NextPC;
ww_reset <= reset;
PC <= ww_PC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_NextPC[31]~input_o\ <= NOT \NextPC[31]~input_o\;
\ALT_INV_NextPC[30]~input_o\ <= NOT \NextPC[30]~input_o\;
\ALT_INV_NextPC[27]~input_o\ <= NOT \NextPC[27]~input_o\;
\ALT_INV_NextPC[26]~input_o\ <= NOT \NextPC[26]~input_o\;
\ALT_INV_NextPC[23]~input_o\ <= NOT \NextPC[23]~input_o\;
\ALT_INV_NextPC[22]~input_o\ <= NOT \NextPC[22]~input_o\;
\ALT_INV_NextPC[20]~input_o\ <= NOT \NextPC[20]~input_o\;
\ALT_INV_NextPC[18]~input_o\ <= NOT \NextPC[18]~input_o\;
\ALT_INV_NextPC[16]~input_o\ <= NOT \NextPC[16]~input_o\;
\ALT_INV_NextPC[14]~input_o\ <= NOT \NextPC[14]~input_o\;
\ALT_INV_NextPC[13]~input_o\ <= NOT \NextPC[13]~input_o\;
\ALT_INV_NextPC[12]~input_o\ <= NOT \NextPC[12]~input_o\;
\ALT_INV_NextPC[11]~input_o\ <= NOT \NextPC[11]~input_o\;
\ALT_INV_NextPC[10]~input_o\ <= NOT \NextPC[10]~input_o\;
\ALT_INV_NextPC[8]~input_o\ <= NOT \NextPC[8]~input_o\;
\ALT_INV_NextPC[7]~input_o\ <= NOT \NextPC[7]~input_o\;
\ALT_INV_NextPC[6]~input_o\ <= NOT \NextPC[6]~input_o\;
\ALT_INV_NextPC[5]~input_o\ <= NOT \NextPC[5]~input_o\;
\ALT_INV_NextPC[4]~input_o\ <= NOT \NextPC[4]~input_o\;
\ALT_INV_NextPC[3]~input_o\ <= NOT \NextPC[3]~input_o\;
\ALT_INV_PC[22]~reg0_q\ <= NOT \PC[22]~reg0_q\;

-- Location: IOOBUF_X18_Y0_N36
\PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(0));

-- Location: IOOBUF_X23_Y0_N93
\PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(1));

-- Location: IOOBUF_X29_Y0_N53
\PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(2));

-- Location: IOOBUF_X33_Y0_N42
\PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(3));

-- Location: IOOBUF_X14_Y0_N53
\PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(4));

-- Location: IOOBUF_X0_Y18_N62
\PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(5));

-- Location: IOOBUF_X29_Y0_N2
\PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(6));

-- Location: IOOBUF_X16_Y0_N76
\PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(7));

-- Location: IOOBUF_X19_Y0_N53
\PC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(8));

-- Location: IOOBUF_X19_Y0_N36
\PC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(9));

-- Location: IOOBUF_X23_Y0_N76
\PC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(10));

-- Location: IOOBUF_X14_Y0_N19
\PC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(11));

-- Location: IOOBUF_X12_Y0_N36
\PC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(12));

-- Location: IOOBUF_X16_Y0_N93
\PC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(13));

-- Location: IOOBUF_X10_Y0_N76
\PC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(14));

-- Location: IOOBUF_X25_Y0_N53
\PC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(15));

-- Location: IOOBUF_X19_Y0_N19
\PC[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(16));

-- Location: IOOBUF_X0_Y20_N5
\PC[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(17));

-- Location: IOOBUF_X25_Y0_N2
\PC[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(18));

-- Location: IOOBUF_X33_Y0_N93
\PC[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(19));

-- Location: IOOBUF_X29_Y0_N36
\PC[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(20));

-- Location: IOOBUF_X16_Y0_N59
\PC[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(21));

-- Location: IOOBUF_X12_Y0_N53
\PC[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_PC[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(22));

-- Location: IOOBUF_X12_Y0_N2
\PC[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(23));

-- Location: IOOBUF_X0_Y18_N79
\PC[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(24));

-- Location: IOOBUF_X0_Y18_N45
\PC[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(25));

-- Location: IOOBUF_X22_Y0_N2
\PC[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(26));

-- Location: IOOBUF_X24_Y0_N2
\PC[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(27));

-- Location: IOOBUF_X0_Y19_N56
\PC[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(28));

-- Location: IOOBUF_X11_Y0_N19
\PC[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(29));

-- Location: IOOBUF_X18_Y0_N19
\PC[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(30));

-- Location: IOOBUF_X0_Y21_N56
\PC[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PC(31));

-- Location: IOIBUF_X54_Y18_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X23_Y0_N41
\NextPC[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(0),
	o => \NextPC[0]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X17_Y2_N34
\PC[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[0]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N18
\NextPC[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(1),
	o => \NextPC[1]~input_o\);

-- Location: FF_X25_Y1_N34
\PC[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[1]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N35
\NextPC[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(2),
	o => \NextPC[2]~input_o\);

-- Location: FF_X25_Y1_N10
\PC[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[2]~reg0_q\);

-- Location: IOIBUF_X33_Y0_N75
\NextPC[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(3),
	o => \NextPC[3]~input_o\);

-- Location: LABCELL_X25_Y1_N12
\PC[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[3]~reg0feeder_combout\ = ( \NextPC[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[3]~input_o\,
	combout => \PC[3]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N13
\PC[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[3]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[3]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N18
\NextPC[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(4),
	o => \NextPC[4]~input_o\);

-- Location: LABCELL_X17_Y2_N9
\PC[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[4]~reg0feeder_combout\ = ( \NextPC[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[4]~input_o\,
	combout => \PC[4]~reg0feeder_combout\);

-- Location: FF_X17_Y2_N11
\PC[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[4]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[4]~reg0_q\);

-- Location: IOIBUF_X10_Y0_N41
\NextPC[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(5),
	o => \NextPC[5]~input_o\);

-- Location: LABCELL_X1_Y15_N30
\PC[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[5]~reg0feeder_combout\ = ( \NextPC[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[5]~input_o\,
	combout => \PC[5]~reg0feeder_combout\);

-- Location: FF_X1_Y15_N31
\PC[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[5]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[5]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N18
\NextPC[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(6),
	o => \NextPC[6]~input_o\);

-- Location: LABCELL_X25_Y1_N51
\PC[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[6]~reg0feeder_combout\ = ( \NextPC[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[6]~input_o\,
	combout => \PC[6]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N52
\PC[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[6]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[6]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N1
\NextPC[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(7),
	o => \NextPC[7]~input_o\);

-- Location: LABCELL_X17_Y2_N42
\PC[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[7]~reg0feeder_combout\ = ( \NextPC[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[7]~input_o\,
	combout => \PC[7]~reg0feeder_combout\);

-- Location: FF_X17_Y2_N44
\PC[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[7]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[7]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N35
\NextPC[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(8),
	o => \NextPC[8]~input_o\);

-- Location: LABCELL_X17_Y2_N48
\PC[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[8]~reg0feeder_combout\ = ( \NextPC[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[8]~input_o\,
	combout => \PC[8]~reg0feeder_combout\);

-- Location: FF_X17_Y2_N50
\PC[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[8]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[8]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N52
\NextPC[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(9),
	o => \NextPC[9]~input_o\);

-- Location: FF_X17_Y2_N58
\PC[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[9]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[9]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N1
\NextPC[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(10),
	o => \NextPC[10]~input_o\);

-- Location: LABCELL_X17_Y2_N3
\PC[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[10]~reg0feeder_combout\ = ( \NextPC[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[10]~input_o\,
	combout => \PC[10]~reg0feeder_combout\);

-- Location: FF_X17_Y2_N4
\PC[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[10]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[10]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N18
\NextPC[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(11),
	o => \NextPC[11]~input_o\);

-- Location: LABCELL_X17_Y2_N36
\PC[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[11]~reg0feeder_combout\ = ( \NextPC[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[11]~input_o\,
	combout => \PC[11]~reg0feeder_combout\);

-- Location: FF_X17_Y2_N38
\PC[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[11]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[11]~reg0_q\);

-- Location: IOIBUF_X10_Y0_N92
\NextPC[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(12),
	o => \NextPC[12]~input_o\);

-- Location: LABCELL_X12_Y2_N3
\PC[12]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[12]~reg0feeder_combout\ = ( \NextPC[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[12]~input_o\,
	combout => \PC[12]~reg0feeder_combout\);

-- Location: FF_X12_Y2_N4
\PC[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[12]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[12]~reg0_q\);

-- Location: IOIBUF_X19_Y0_N1
\NextPC[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(13),
	o => \NextPC[13]~input_o\);

-- Location: LABCELL_X17_Y2_N0
\PC[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[13]~reg0feeder_combout\ = ( \NextPC[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[13]~input_o\,
	combout => \PC[13]~reg0feeder_combout\);

-- Location: FF_X17_Y2_N2
\PC[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[13]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[13]~reg0_q\);

-- Location: IOIBUF_X0_Y19_N21
\NextPC[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(14),
	o => \NextPC[14]~input_o\);

-- Location: LABCELL_X1_Y15_N6
\PC[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[14]~reg0feeder_combout\ = ( \NextPC[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[14]~input_o\,
	combout => \PC[14]~reg0feeder_combout\);

-- Location: FF_X1_Y15_N7
\PC[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[14]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[14]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N35
\NextPC[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(15),
	o => \NextPC[15]~input_o\);

-- Location: FF_X25_Y1_N25
\PC[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[15]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[15]~reg0_q\);

-- Location: IOIBUF_X11_Y0_N52
\NextPC[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(16),
	o => \NextPC[16]~input_o\);

-- Location: LABCELL_X17_Y2_N12
\PC[16]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[16]~reg0feeder_combout\ = ( \NextPC[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[16]~input_o\,
	combout => \PC[16]~reg0feeder_combout\);

-- Location: FF_X17_Y2_N13
\PC[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[16]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[16]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N18
\NextPC[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(17),
	o => \NextPC[17]~input_o\);

-- Location: FF_X17_Y2_N16
\PC[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[17]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[17]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N58
\NextPC[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(18),
	o => \NextPC[18]~input_o\);

-- Location: LABCELL_X25_Y1_N3
\PC[18]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[18]~reg0feeder_combout\ = ( \NextPC[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[18]~input_o\,
	combout => \PC[18]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N4
\PC[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[18]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[18]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N41
\NextPC[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(19),
	o => \NextPC[19]~input_o\);

-- Location: FF_X25_Y1_N37
\PC[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[19]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[19]~reg0_q\);

-- Location: IOIBUF_X24_Y0_N52
\NextPC[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(20),
	o => \NextPC[20]~input_o\);

-- Location: LABCELL_X25_Y1_N42
\PC[20]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[20]~reg0feeder_combout\ = ( \NextPC[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[20]~input_o\,
	combout => \PC[20]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N43
\PC[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[20]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[20]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N52
\NextPC[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(21),
	o => \NextPC[21]~input_o\);

-- Location: FF_X17_Y2_N53
\PC[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[21]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[21]~reg0_q\);

-- Location: IOIBUF_X40_Y0_N75
\NextPC[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(22),
	o => \NextPC[22]~input_o\);

-- Location: LABCELL_X12_Y2_N36
\PC[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[22]~0_combout\ = ( !\NextPC[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[22]~input_o\,
	combout => \PC[22]~0_combout\);

-- Location: FF_X12_Y2_N38
\PC[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[22]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[22]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N35
\NextPC[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(23),
	o => \NextPC[23]~input_o\);

-- Location: LABCELL_X17_Y2_N21
\PC[23]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[23]~reg0feeder_combout\ = ( \NextPC[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[23]~input_o\,
	combout => \PC[23]~reg0feeder_combout\);

-- Location: FF_X17_Y2_N23
\PC[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[23]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[23]~reg0_q\);

-- Location: IOIBUF_X22_Y0_N35
\NextPC[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(24),
	o => \NextPC[24]~input_o\);

-- Location: FF_X17_Y2_N56
\PC[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[24]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[24]~reg0_q\);

-- Location: IOIBUF_X0_Y20_N55
\NextPC[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(25),
	o => \NextPC[25]~input_o\);

-- Location: FF_X17_Y2_N20
\PC[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[25]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[25]~reg0_q\);

-- Location: IOIBUF_X14_Y0_N1
\NextPC[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(26),
	o => \NextPC[26]~input_o\);

-- Location: LABCELL_X17_Y2_N39
\PC[26]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[26]~reg0feeder_combout\ = ( \NextPC[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[26]~input_o\,
	combout => \PC[26]~reg0feeder_combout\);

-- Location: FF_X17_Y2_N40
\PC[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[26]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[26]~reg0_q\);

-- Location: IOIBUF_X29_Y0_N18
\NextPC[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(27),
	o => \NextPC[27]~input_o\);

-- Location: LABCELL_X25_Y1_N18
\PC[27]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[27]~reg0feeder_combout\ = ( \NextPC[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[27]~input_o\,
	combout => \PC[27]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N20
\PC[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[27]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[27]~reg0_q\);

-- Location: IOIBUF_X0_Y20_N21
\NextPC[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(28),
	o => \NextPC[28]~input_o\);

-- Location: FF_X1_Y15_N16
\PC[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[28]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[28]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N52
\NextPC[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(29),
	o => \NextPC[29]~input_o\);

-- Location: FF_X12_Y2_N44
\PC[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NextPC[29]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[29]~reg0_q\);

-- Location: IOIBUF_X0_Y18_N95
\NextPC[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(30),
	o => \NextPC[30]~input_o\);

-- Location: LABCELL_X1_Y15_N21
\PC[30]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[30]~reg0feeder_combout\ = ( \NextPC[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[30]~input_o\,
	combout => \PC[30]~reg0feeder_combout\);

-- Location: FF_X1_Y15_N22
\PC[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[30]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[30]~reg0_q\);

-- Location: IOIBUF_X0_Y19_N38
\NextPC[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NextPC(31),
	o => \NextPC[31]~input_o\);

-- Location: LABCELL_X1_Y15_N54
\PC[31]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC[31]~reg0feeder_combout\ = ( \NextPC[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_NextPC[31]~input_o\,
	combout => \PC[31]~reg0feeder_combout\);

-- Location: FF_X1_Y15_N56
\PC[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \PC[31]~reg0feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC[31]~reg0_q\);

-- Location: LABCELL_X47_Y26_N0
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


