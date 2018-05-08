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

-- DATE "04/13/2017 14:19:32"

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

ENTITY 	signExtImm IS
    PORT (
	input1 : IN std_logic_vector(15 DOWNTO 0);
	Data_Out : OUT std_logic_vector(31 DOWNTO 0)
	);
END signExtImm;

-- Design Ports Information
-- Data_Out[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[2]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[7]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[8]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[11]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[13]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[14]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[15]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[16]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[17]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[18]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[19]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[20]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[21]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[22]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[23]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[24]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[25]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[26]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[27]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[28]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[29]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[30]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_Out[31]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[8]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[10]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[14]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input1[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF signExtImm IS
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

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X43_Y45_N19
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

-- Location: IOOBUF_X48_Y45_N53
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

-- Location: IOOBUF_X52_Y45_N53
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

-- Location: IOOBUF_X38_Y45_N36
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

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X36_Y45_N19
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

-- Location: IOOBUF_X52_Y45_N2
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

-- Location: IOOBUF_X52_Y45_N19
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

-- Location: IOOBUF_X32_Y45_N93
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

-- Location: IOOBUF_X43_Y45_N53
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

-- Location: IOOBUF_X36_Y45_N36
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

-- Location: IOOBUF_X44_Y45_N36
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

-- Location: IOOBUF_X42_Y45_N19
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

-- Location: IOOBUF_X40_Y45_N93
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

-- Location: IOOBUF_X48_Y45_N2
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

-- Location: IOOBUF_X50_Y45_N36
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

-- Location: IOOBUF_X34_Y45_N53
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

-- Location: IOOBUF_X40_Y45_N76
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

-- Location: IOOBUF_X32_Y45_N59
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

-- Location: IOOBUF_X50_Y45_N53
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

-- Location: IOOBUF_X38_Y45_N19
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

-- Location: IOOBUF_X38_Y45_N53
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

-- Location: IOOBUF_X46_Y45_N59
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

-- Location: IOOBUF_X46_Y45_N76
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

-- Location: IOOBUF_X40_Y45_N59
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

-- Location: IOOBUF_X42_Y45_N2
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

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X46_Y45_N93
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

-- Location: IOOBUF_X34_Y45_N19
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

-- Location: IOOBUF_X46_Y45_N42
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

-- Location: IOOBUF_X50_Y45_N2
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

-- Location: IOIBUF_X34_Y45_N1
\input1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(0),
	o => \input1[0]~input_o\);

-- Location: IOIBUF_X44_Y45_N1
\input1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(1),
	o => \input1[1]~input_o\);

-- Location: IOIBUF_X52_Y45_N35
\input1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(2),
	o => \input1[2]~input_o\);

-- Location: IOIBUF_X50_Y45_N18
\input1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(3),
	o => \input1[3]~input_o\);

-- Location: IOIBUF_X38_Y45_N1
\input1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(4),
	o => \input1[4]~input_o\);

-- Location: IOIBUF_X43_Y45_N1
\input1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(5),
	o => \input1[5]~input_o\);

-- Location: IOIBUF_X36_Y45_N52
\input1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(6),
	o => \input1[6]~input_o\);

-- Location: IOIBUF_X48_Y45_N35
\input1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(7),
	o => \input1[7]~input_o\);

-- Location: IOIBUF_X48_Y45_N18
\input1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(8),
	o => \input1[8]~input_o\);

-- Location: IOIBUF_X32_Y45_N75
\input1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(9),
	o => \input1[9]~input_o\);

-- Location: IOIBUF_X44_Y45_N18
\input1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(10),
	o => \input1[10]~input_o\);

-- Location: IOIBUF_X36_Y45_N1
\input1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(11),
	o => \input1[11]~input_o\);

-- Location: IOIBUF_X43_Y45_N35
\input1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(12),
	o => \input1[12]~input_o\);

-- Location: IOIBUF_X42_Y45_N35
\input1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(13),
	o => \input1[13]~input_o\);

-- Location: IOIBUF_X40_Y45_N41
\input1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(14),
	o => \input1[14]~input_o\);

-- Location: IOIBUF_X42_Y45_N52
\input1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input1(15),
	o => \input1[15]~input_o\);

-- Location: LABCELL_X20_Y37_N0
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


