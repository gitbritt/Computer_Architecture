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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/04/2018 10:49:40"

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

ENTITY 	Counter IS
    PORT (
	Clock : IN std_logic;
	Next_count : IN std_logic_vector(31 DOWNTO 0);
	Reset : IN std_logic;
	Count : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END Counter;

-- Design Ports Information
-- Count[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[10]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[11]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[13]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[14]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[16]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[17]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[18]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[19]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[20]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[22]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[23]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[24]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[25]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[26]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[27]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[28]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[29]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[30]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Count[31]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[11]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[13]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[14]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[15]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[16]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[17]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[18]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[19]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[20]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[21]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[22]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[23]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[24]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[25]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[26]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[27]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[28]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[29]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[30]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Next_count[31]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Next_count : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Count : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Next_count[0]~input_o\ : std_logic;
SIGNAL \Count[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Count[0]~reg0_q\ : std_logic;
SIGNAL \Next_count[1]~input_o\ : std_logic;
SIGNAL \Count[1]~reg0_q\ : std_logic;
SIGNAL \Next_count[2]~input_o\ : std_logic;
SIGNAL \Count[2]~reg0_q\ : std_logic;
SIGNAL \Next_count[3]~input_o\ : std_logic;
SIGNAL \Count[3]~reg0_q\ : std_logic;
SIGNAL \Next_count[4]~input_o\ : std_logic;
SIGNAL \Count[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[4]~reg0_q\ : std_logic;
SIGNAL \Next_count[5]~input_o\ : std_logic;
SIGNAL \Count[5]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[5]~reg0_q\ : std_logic;
SIGNAL \Next_count[6]~input_o\ : std_logic;
SIGNAL \Count[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[6]~reg0_q\ : std_logic;
SIGNAL \Next_count[7]~input_o\ : std_logic;
SIGNAL \Count[7]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[7]~reg0_q\ : std_logic;
SIGNAL \Next_count[8]~input_o\ : std_logic;
SIGNAL \Count[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[8]~reg0_q\ : std_logic;
SIGNAL \Next_count[9]~input_o\ : std_logic;
SIGNAL \Count[9]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[9]~reg0_q\ : std_logic;
SIGNAL \Next_count[10]~input_o\ : std_logic;
SIGNAL \Count[10]~reg0_q\ : std_logic;
SIGNAL \Next_count[11]~input_o\ : std_logic;
SIGNAL \Count[11]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[11]~reg0_q\ : std_logic;
SIGNAL \Next_count[12]~input_o\ : std_logic;
SIGNAL \Count[12]~reg0_q\ : std_logic;
SIGNAL \Next_count[13]~input_o\ : std_logic;
SIGNAL \Count[13]~reg0_q\ : std_logic;
SIGNAL \Next_count[14]~input_o\ : std_logic;
SIGNAL \Count[14]~reg0_q\ : std_logic;
SIGNAL \Next_count[15]~input_o\ : std_logic;
SIGNAL \Count[15]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[15]~reg0_q\ : std_logic;
SIGNAL \Next_count[16]~input_o\ : std_logic;
SIGNAL \Count[16]~reg0_q\ : std_logic;
SIGNAL \Next_count[17]~input_o\ : std_logic;
SIGNAL \Count[17]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[17]~reg0_q\ : std_logic;
SIGNAL \Next_count[18]~input_o\ : std_logic;
SIGNAL \Count[18]~reg0_q\ : std_logic;
SIGNAL \Next_count[19]~input_o\ : std_logic;
SIGNAL \Count[19]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[19]~reg0_q\ : std_logic;
SIGNAL \Next_count[20]~input_o\ : std_logic;
SIGNAL \Count[20]~reg0_q\ : std_logic;
SIGNAL \Next_count[21]~input_o\ : std_logic;
SIGNAL \Count[21]~reg0_q\ : std_logic;
SIGNAL \Next_count[22]~input_o\ : std_logic;
SIGNAL \Count[22]~0_combout\ : std_logic;
SIGNAL \Count[22]~reg0_q\ : std_logic;
SIGNAL \Next_count[23]~input_o\ : std_logic;
SIGNAL \Count[23]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[23]~reg0_q\ : std_logic;
SIGNAL \Next_count[24]~input_o\ : std_logic;
SIGNAL \Count[24]~reg0_q\ : std_logic;
SIGNAL \Next_count[25]~input_o\ : std_logic;
SIGNAL \Count[25]~reg0_q\ : std_logic;
SIGNAL \Next_count[26]~input_o\ : std_logic;
SIGNAL \Count[26]~reg0_q\ : std_logic;
SIGNAL \Next_count[27]~input_o\ : std_logic;
SIGNAL \Count[27]~reg0feeder_combout\ : std_logic;
SIGNAL \Count[27]~reg0_q\ : std_logic;
SIGNAL \Next_count[28]~input_o\ : std_logic;
SIGNAL \Count[28]~reg0_q\ : std_logic;
SIGNAL \Next_count[29]~input_o\ : std_logic;
SIGNAL \Count[29]~reg0_q\ : std_logic;
SIGNAL \Next_count[30]~input_o\ : std_logic;
SIGNAL \Count[30]~reg0_q\ : std_logic;
SIGNAL \Next_count[31]~input_o\ : std_logic;
SIGNAL \Count[31]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Next_count[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Next_count[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Count[22]~reg0_q\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Next_count <= Next_count;
ww_Reset <= Reset;
Count <= ww_Count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Next_count[27]~input_o\ <= NOT \Next_count[27]~input_o\;
\ALT_INV_Next_count[23]~input_o\ <= NOT \Next_count[23]~input_o\;
\ALT_INV_Next_count[22]~input_o\ <= NOT \Next_count[22]~input_o\;
\ALT_INV_Next_count[19]~input_o\ <= NOT \Next_count[19]~input_o\;
\ALT_INV_Next_count[17]~input_o\ <= NOT \Next_count[17]~input_o\;
\ALT_INV_Next_count[15]~input_o\ <= NOT \Next_count[15]~input_o\;
\ALT_INV_Next_count[11]~input_o\ <= NOT \Next_count[11]~input_o\;
\ALT_INV_Next_count[9]~input_o\ <= NOT \Next_count[9]~input_o\;
\ALT_INV_Next_count[8]~input_o\ <= NOT \Next_count[8]~input_o\;
\ALT_INV_Next_count[7]~input_o\ <= NOT \Next_count[7]~input_o\;
\ALT_INV_Next_count[6]~input_o\ <= NOT \Next_count[6]~input_o\;
\ALT_INV_Next_count[5]~input_o\ <= NOT \Next_count[5]~input_o\;
\ALT_INV_Next_count[4]~input_o\ <= NOT \Next_count[4]~input_o\;
\ALT_INV_Next_count[0]~input_o\ <= NOT \Next_count[0]~input_o\;
\ALT_INV_Count[22]~reg0_q\ <= NOT \Count[22]~reg0_q\;

-- Location: IOOBUF_X50_Y0_N59
\Count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(0));

-- Location: IOOBUF_X40_Y0_N19
\Count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(1));

-- Location: IOOBUF_X28_Y0_N19
\Count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(2));

-- Location: IOOBUF_X32_Y0_N36
\Count[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(3));

-- Location: IOOBUF_X40_Y0_N53
\Count[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(4));

-- Location: IOOBUF_X2_Y0_N42
\Count[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(5));

-- Location: IOOBUF_X8_Y0_N19
\Count[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(6));

-- Location: IOOBUF_X28_Y0_N36
\Count[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(7));

-- Location: IOOBUF_X54_Y0_N53
\Count[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(8));

-- Location: IOOBUF_X38_Y0_N53
\Count[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(9));

-- Location: IOOBUF_X32_Y0_N2
\Count[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(10));

-- Location: IOOBUF_X6_Y0_N19
\Count[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(11));

-- Location: IOOBUF_X8_Y0_N2
\Count[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(12));

-- Location: IOOBUF_X32_Y0_N19
\Count[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(13));

-- Location: IOOBUF_X26_Y0_N76
\Count[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(14));

-- Location: IOOBUF_X40_Y0_N2
\Count[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(15));

-- Location: IOOBUF_X34_Y0_N59
\Count[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(16));

-- Location: IOOBUF_X26_Y0_N42
\Count[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(17));

-- Location: IOOBUF_X56_Y0_N19
\Count[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(18));

-- Location: IOOBUF_X50_Y0_N93
\Count[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(19));

-- Location: IOOBUF_X50_Y0_N42
\Count[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(20));

-- Location: IOOBUF_X40_Y0_N36
\Count[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(21));

-- Location: IOOBUF_X4_Y0_N53
\Count[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Count[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(22));

-- Location: IOOBUF_X34_Y0_N42
\Count[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(23));

-- Location: IOOBUF_X26_Y0_N59
\Count[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(24));

-- Location: IOOBUF_X56_Y0_N36
\Count[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(25));

-- Location: IOOBUF_X38_Y0_N2
\Count[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(26));

-- Location: IOOBUF_X8_Y0_N53
\Count[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(27));

-- Location: IOOBUF_X6_Y0_N53
\Count[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(28));

-- Location: IOOBUF_X32_Y0_N53
\Count[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(29));

-- Location: IOOBUF_X34_Y0_N76
\Count[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(30));

-- Location: IOOBUF_X2_Y0_N93
\Count[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Count[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_Count(31));

-- Location: IOIBUF_X89_Y35_N61
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G10
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y0_N1
\Next_count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(0),
	o => \Next_count[0]~input_o\);

-- Location: LABCELL_X40_Y1_N30
\Count[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[0]~reg0feeder_combout\ = ( \Next_count[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[0]~input_o\,
	combout => \Count[0]~reg0feeder_combout\);

-- Location: IOIBUF_X4_Y0_N1
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X40_Y1_N32
\Count[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[0]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[0]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N52
\Next_count[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(1),
	o => \Next_count[1]~input_o\);

-- Location: FF_X40_Y1_N41
\Count[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[1]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[1]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N52
\Next_count[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(2),
	o => \Next_count[2]~input_o\);

-- Location: FF_X25_Y1_N1
\Count[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[2]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[2]~reg0_q\);

-- Location: IOIBUF_X54_Y0_N35
\Next_count[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(3),
	o => \Next_count[3]~input_o\);

-- Location: FF_X40_Y1_N43
\Count[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[3]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[3]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N35
\Next_count[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(4),
	o => \Next_count[4]~input_o\);

-- Location: LABCELL_X40_Y1_N48
\Count[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[4]~reg0feeder_combout\ = ( \Next_count[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[4]~input_o\,
	combout => \Count[4]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N50
\Count[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[4]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[4]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N18
\Next_count[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(5),
	o => \Next_count[5]~input_o\);

-- Location: LABCELL_X4_Y1_N0
\Count[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[5]~reg0feeder_combout\ = ( \Next_count[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[5]~input_o\,
	combout => \Count[5]~reg0feeder_combout\);

-- Location: FF_X4_Y1_N2
\Count[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[5]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[5]~reg0_q\);

-- Location: IOIBUF_X28_Y0_N1
\Next_count[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(6),
	o => \Next_count[6]~input_o\);

-- Location: MLABCELL_X25_Y1_N9
\Count[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[6]~reg0feeder_combout\ = ( \Next_count[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[6]~input_o\,
	combout => \Count[6]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N10
\Count[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[6]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[6]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N1
\Next_count[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(7),
	o => \Next_count[7]~input_o\);

-- Location: MLABCELL_X25_Y1_N12
\Count[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[7]~reg0feeder_combout\ = ( \Next_count[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[7]~input_o\,
	combout => \Count[7]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N13
\Count[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[7]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[7]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N1
\Next_count[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(8),
	o => \Next_count[8]~input_o\);

-- Location: LABCELL_X40_Y1_N45
\Count[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[8]~reg0feeder_combout\ = ( \Next_count[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[8]~input_o\,
	combout => \Count[8]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N46
\Count[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[8]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[8]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N75
\Next_count[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(9),
	o => \Next_count[9]~input_o\);

-- Location: LABCELL_X40_Y1_N51
\Count[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[9]~reg0feeder_combout\ = ( \Next_count[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[9]~input_o\,
	combout => \Count[9]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N52
\Count[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[9]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[9]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N1
\Next_count[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(10),
	o => \Next_count[10]~input_o\);

-- Location: FF_X40_Y1_N25
\Count[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[10]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[10]~reg0_q\);

-- Location: IOIBUF_X8_Y0_N35
\Next_count[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(11),
	o => \Next_count[11]~input_o\);

-- Location: LABCELL_X9_Y1_N0
\Count[11]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[11]~reg0feeder_combout\ = ( \Next_count[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[11]~input_o\,
	combout => \Count[11]~reg0feeder_combout\);

-- Location: FF_X9_Y1_N1
\Count[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[11]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[11]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N35
\Next_count[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(12),
	o => \Next_count[12]~input_o\);

-- Location: FF_X9_Y1_N8
\Count[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[12]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[12]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N18
\Next_count[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(13),
	o => \Next_count[13]~input_o\);

-- Location: FF_X40_Y1_N38
\Count[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[13]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[13]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N35
\Next_count[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(14),
	o => \Next_count[14]~input_o\);

-- Location: FF_X25_Y1_N49
\Count[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[14]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[14]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N18
\Next_count[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(15),
	o => \Next_count[15]~input_o\);

-- Location: LABCELL_X40_Y1_N0
\Count[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[15]~reg0feeder_combout\ = ( \Next_count[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[15]~input_o\,
	combout => \Count[15]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N2
\Count[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[15]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[15]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N35
\Next_count[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(16),
	o => \Next_count[16]~input_o\);

-- Location: FF_X40_Y1_N10
\Count[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[16]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[16]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N52
\Next_count[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(17),
	o => \Next_count[17]~input_o\);

-- Location: MLABCELL_X25_Y1_N27
\Count[17]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[17]~reg0feeder_combout\ = ( \Next_count[17]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[17]~input_o\,
	combout => \Count[17]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N28
\Count[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[17]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[17]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N18
\Next_count[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(18),
	o => \Next_count[18]~input_o\);

-- Location: FF_X40_Y1_N4
\Count[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[18]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[18]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N52
\Next_count[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(19),
	o => \Next_count[19]~input_o\);

-- Location: LABCELL_X40_Y1_N33
\Count[19]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[19]~reg0feeder_combout\ = ( \Next_count[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[19]~input_o\,
	combout => \Count[19]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N34
\Count[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[19]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[19]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N92
\Next_count[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(20),
	o => \Next_count[20]~input_o\);

-- Location: FF_X40_Y1_N13
\Count[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[20]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[20]~reg0_q\);

-- Location: IOIBUF_X54_Y0_N18
\Next_count[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(21),
	o => \Next_count[21]~input_o\);

-- Location: FF_X40_Y1_N22
\Count[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[21]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[21]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N35
\Next_count[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(22),
	o => \Next_count[22]~input_o\);

-- Location: LABCELL_X4_Y1_N9
\Count[22]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[22]~0_combout\ = ( !\Next_count[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[22]~input_o\,
	combout => \Count[22]~0_combout\);

-- Location: FF_X4_Y1_N10
\Count[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[22]~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[22]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N41
\Next_count[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(23),
	o => \Next_count[23]~input_o\);

-- Location: LABCELL_X40_Y1_N6
\Count[23]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[23]~reg0feeder_combout\ = ( \Next_count[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[23]~input_o\,
	combout => \Count[23]~reg0feeder_combout\);

-- Location: FF_X40_Y1_N7
\Count[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[23]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[23]~reg0_q\);

-- Location: IOIBUF_X26_Y0_N92
\Next_count[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(24),
	o => \Next_count[24]~input_o\);

-- Location: FF_X25_Y1_N34
\Count[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[24]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[24]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N35
\Next_count[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(25),
	o => \Next_count[25]~input_o\);

-- Location: FF_X40_Y1_N58
\Count[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[25]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[25]~reg0_q\);

-- Location: IOIBUF_X50_Y0_N75
\Next_count[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(26),
	o => \Next_count[26]~input_o\);

-- Location: FF_X40_Y1_N19
\Count[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[26]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[26]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N18
\Next_count[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(27),
	o => \Next_count[27]~input_o\);

-- Location: MLABCELL_X25_Y1_N36
\Count[27]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count[27]~reg0feeder_combout\ = ( \Next_count[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Next_count[27]~input_o\,
	combout => \Count[27]~reg0feeder_combout\);

-- Location: FF_X25_Y1_N37
\Count[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \Count[27]~reg0feeder_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[27]~reg0_q\);

-- Location: IOIBUF_X6_Y0_N1
\Next_count[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(28),
	o => \Next_count[28]~input_o\);

-- Location: FF_X9_Y1_N46
\Count[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[28]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[28]~reg0_q\);

-- Location: IOIBUF_X36_Y0_N1
\Next_count[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(29),
	o => \Next_count[29]~input_o\);

-- Location: FF_X40_Y1_N16
\Count[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[29]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[29]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N52
\Next_count[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(30),
	o => \Next_count[30]~input_o\);

-- Location: FF_X40_Y1_N28
\Count[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[30]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[30]~reg0_q\);

-- Location: IOIBUF_X2_Y0_N58
\Next_count[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Next_count(31),
	o => \Next_count[31]~input_o\);

-- Location: FF_X4_Y1_N47
\Count[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \Next_count[31]~input_o\,
	clrn => \Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count[31]~reg0_q\);

-- Location: LABCELL_X10_Y68_N3
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


