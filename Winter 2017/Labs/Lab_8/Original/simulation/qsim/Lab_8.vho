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

-- DATE "04/07/2017 13:07:20"

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

ENTITY 	Lab_8 IS
    PORT (
	input1 : IN std_logic_vector(15 DOWNTO 0);
	Data_Out : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END Lab_8;

-- Design Ports Information
-- Data_Out[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[4]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[6]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[8]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[10]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[11]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[12]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[14]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[15]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[16]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[17]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[18]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[19]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[20]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[21]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[22]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[23]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[24]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[25]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[26]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[27]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[28]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[29]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[30]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[31]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[10]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[11]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[12]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[13]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[14]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Data_Out : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \input1[0]~input_o\ : std_logic;
SIGNAL \input1[1]~input_o\ : std_logic;
SIGNAL \input1[2]~input_o\ : std_logic;
SIGNAL \input1[3]~input_o\ : std_logic;
SIGNAL \input1[4]~input_o\ : std_logic;
SIGNAL \input1[5]~input_o\ : std_logic;
SIGNAL \input1[6]~input_o\ : std_logic;
SIGNAL \input1[7]~input_o\ : std_logic;
SIGNAL \input1[8]~input_o\ : std_logic;
SIGNAL \input1[9]~input_o\ : std_logic;
SIGNAL \input1[10]~input_o\ : std_logic;
SIGNAL \input1[11]~input_o\ : std_logic;
SIGNAL \input1[12]~input_o\ : std_logic;
SIGNAL \input1[13]~input_o\ : std_logic;
SIGNAL \input1[14]~input_o\ : std_logic;
SIGNAL \input1[15]~input_o\ : std_logic;

BEGIN

ww_input1 <= input1;
Data_Out <= ww_Data_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X70_Y0_N2
\Data_Out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[0]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(0));

-- Location: IOOBUF_X62_Y0_N19
\Data_Out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[1]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(1));

-- Location: IOOBUF_X64_Y81_N36
\Data_Out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[2]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(2));

-- Location: IOOBUF_X89_Y8_N5
\Data_Out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[3]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(3));

-- Location: IOOBUF_X32_Y0_N53
\Data_Out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[4]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(4));

-- Location: IOOBUF_X8_Y0_N53
\Data_Out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[5]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(5));

-- Location: IOOBUF_X4_Y0_N36
\Data_Out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[6]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(6));

-- Location: IOOBUF_X66_Y0_N42
\Data_Out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[7]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(7));

-- Location: IOOBUF_X2_Y0_N93
\Data_Out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[8]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(8));

-- Location: IOOBUF_X40_Y0_N19
\Data_Out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[9]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(9));

-- Location: IOOBUF_X6_Y0_N36
\Data_Out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[10]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(10));

-- Location: IOOBUF_X28_Y0_N53
\Data_Out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[11]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(11));

-- Location: IOOBUF_X89_Y4_N96
\Data_Out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[12]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(12));

-- Location: IOOBUF_X34_Y81_N42
\Data_Out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[13]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(13));

-- Location: IOOBUF_X30_Y0_N2
\Data_Out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[14]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(14));

-- Location: IOOBUF_X30_Y0_N53
\Data_Out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(15));

-- Location: IOOBUF_X26_Y0_N59
\Data_Out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(16));

-- Location: IOOBUF_X36_Y0_N19
\Data_Out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(17));

-- Location: IOOBUF_X36_Y0_N36
\Data_Out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(18));

-- Location: IOOBUF_X34_Y0_N76
\Data_Out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(19));

-- Location: IOOBUF_X8_Y0_N19
\Data_Out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(20));

-- Location: IOOBUF_X26_Y0_N93
\Data_Out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(21));

-- Location: IOOBUF_X38_Y0_N53
\Data_Out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(22));

-- Location: IOOBUF_X34_Y0_N59
\Data_Out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(23));

-- Location: IOOBUF_X26_Y0_N42
\Data_Out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(24));

-- Location: IOOBUF_X28_Y0_N19
\Data_Out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(25));

-- Location: IOOBUF_X38_Y0_N36
\Data_Out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(26));

-- Location: IOOBUF_X36_Y0_N53
\Data_Out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(27));

-- Location: IOOBUF_X34_Y0_N93
\Data_Out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(28));

-- Location: IOOBUF_X8_Y0_N2
\Data_Out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(29));

-- Location: IOOBUF_X34_Y0_N42
\Data_Out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(30));

-- Location: IOOBUF_X36_Y0_N2
\Data_Out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \input1[15]~input_o\,
	devoe => ww_devoe,
	o => ww_Data_Out(31));

-- Location: IOIBUF_X70_Y0_N35
\input1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(0),
	o => \input1[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\input1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(1),
	o => \input1[1]~input_o\);

-- Location: IOIBUF_X64_Y81_N1
\input1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(2),
	o => \input1[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\input1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(3),
	o => \input1[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\input1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(4),
	o => \input1[4]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\input1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(5),
	o => \input1[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\input1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(6),
	o => \input1[6]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\input1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(7),
	o => \input1[7]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\input1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(8),
	o => \input1[8]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\input1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(9),
	o => \input1[9]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\input1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(10),
	o => \input1[10]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\input1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(11),
	o => \input1[11]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\input1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(12),
	o => \input1[12]~input_o\);

-- Location: IOIBUF_X34_Y81_N92
\input1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(13),
	o => \input1[13]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\input1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(14),
	o => \input1[14]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\input1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(15),
	o => \input1[15]~input_o\);

-- Location: LABCELL_X53_Y51_N0
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


