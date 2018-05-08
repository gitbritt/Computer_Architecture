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

-- DATE "04/11/2018 11:23:33"

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

ENTITY 	mips_control IS
    PORT (
	opcode : IN std_logic_vector(7 DOWNTO 0);
	funct : IN std_logic_vector(7 DOWNTO 0);
	RegDst : OUT std_logic;
	ALUsrc : OUT std_logic;
	Jump : OUT std_logic;
	Jal : OUT std_logic;
	JR : OUT std_logic;
	Beq : OUT std_logic;
	Bne : OUT std_logic;
	MemRead : OUT std_logic;
	MemWrite : OUT std_logic;
	RegWrite : OUT std_logic;
	MemtoReg : OUT std_logic;
	ALUControl : OUT std_logic_vector(3 DOWNTO 0)
	);
END mips_control;

-- Design Ports Information
-- RegDst	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUsrc	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jump	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jal	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JR	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Beq	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bne	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRead	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUControl[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[6]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[7]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[5]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_funct : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_ALUsrc : std_logic;
SIGNAL ww_Jump : std_logic;
SIGNAL ww_Jal : std_logic;
SIGNAL ww_JR : std_logic;
SIGNAL ww_Beq : std_logic;
SIGNAL ww_Bne : std_logic;
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_ALUControl : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[5]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \funct[2]~input_o\ : std_logic;
SIGNAL \funct[3]~input_o\ : std_logic;
SIGNAL \funct[5]~input_o\ : std_logic;
SIGNAL \funct[1]~input_o\ : std_logic;
SIGNAL \funct[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \opcode[7]~input_o\ : std_logic;
SIGNAL \opcode[6]~input_o\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \funct[4]~input_o\ : std_logic;
SIGNAL \funct[6]~input_o\ : std_logic;
SIGNAL \funct[7]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \ALUControl[0]$latch~combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \ALUControl[1]$latch~combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \ALUControl[2]$latch~combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \ALUControl[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_opcode[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_opcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUControl[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_ALUControl[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;

BEGIN

ww_opcode <= opcode;
ww_funct <= funct;
RegDst <= ww_RegDst;
ALUsrc <= ww_ALUsrc;
Jump <= ww_Jump;
Jal <= ww_Jal;
JR <= ww_JR;
Beq <= ww_Beq;
Bne <= ww_Bne;
MemRead <= ww_MemRead;
MemWrite <= ww_MemWrite;
RegWrite <= ww_RegWrite;
MemtoReg <= ww_MemtoReg;
ALUControl <= ww_ALUControl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_opcode[7]~input_o\ <= NOT \opcode[7]~input_o\;
\ALT_INV_opcode[6]~input_o\ <= NOT \opcode[6]~input_o\;
\ALT_INV_opcode[4]~input_o\ <= NOT \opcode[4]~input_o\;
\ALT_INV_opcode[1]~input_o\ <= NOT \opcode[1]~input_o\;
\ALT_INV_funct[3]~input_o\ <= NOT \funct[3]~input_o\;
\ALT_INV_funct[2]~input_o\ <= NOT \funct[2]~input_o\;
\ALT_INV_funct[1]~input_o\ <= NOT \funct[1]~input_o\;
\ALT_INV_funct[0]~input_o\ <= NOT \funct[0]~input_o\;
\ALT_INV_funct[5]~input_o\ <= NOT \funct[5]~input_o\;
\ALT_INV_opcode[5]~input_o\ <= NOT \opcode[5]~input_o\;
\ALT_INV_opcode[3]~input_o\ <= NOT \opcode[3]~input_o\;
\ALT_INV_opcode[2]~input_o\ <= NOT \opcode[2]~input_o\;
\ALT_INV_opcode[0]~input_o\ <= NOT \opcode[0]~input_o\;
\ALT_INV_funct[7]~input_o\ <= NOT \funct[7]~input_o\;
\ALT_INV_funct[6]~input_o\ <= NOT \funct[6]~input_o\;
\ALT_INV_funct[4]~input_o\ <= NOT \funct[4]~input_o\;
\ALT_INV_ALUControl[3]$latch~combout\ <= NOT \ALUControl[3]$latch~combout\;
\ALT_INV_ALUControl[2]$latch~combout\ <= NOT \ALUControl[2]$latch~combout\;
\ALT_INV_ALUControl[1]$latch~combout\ <= NOT \ALUControl[1]$latch~combout\;
\ALT_INV_ALUControl[0]$latch~combout\ <= NOT \ALUControl[0]$latch~combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux17~3_combout\ <= NOT \Mux17~3_combout\;
\ALT_INV_Mux17~2_combout\ <= NOT \Mux17~2_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\ALT_INV_Mux15~2_combout\ <= NOT \Mux15~2_combout\;
\ALT_INV_Mux15~1_combout\ <= NOT \Mux15~1_combout\;
\ALT_INV_Mux15~0_combout\ <= NOT \Mux15~0_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;

-- Location: IOOBUF_X89_Y6_N5
\RegDst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => ww_RegDst);

-- Location: IOOBUF_X89_Y4_N62
\ALUsrc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_ALUsrc);

-- Location: IOOBUF_X72_Y0_N2
\Jump~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => ww_Jump);

-- Location: IOOBUF_X72_Y0_N19
\Jal~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_Jal);

-- Location: IOOBUF_X72_Y0_N53
\JR~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_JR);

-- Location: IOOBUF_X70_Y0_N2
\Beq~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_Beq);

-- Location: IOOBUF_X70_Y0_N36
\Bne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => ww_Bne);

-- Location: IOOBUF_X72_Y0_N36
\MemRead~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_MemRead);

-- Location: IOOBUF_X68_Y0_N2
\MemWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => ww_MemWrite);

-- Location: IOOBUF_X89_Y6_N56
\RegWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~2_combout\,
	devoe => ww_devoe,
	o => ww_RegWrite);

-- Location: IOOBUF_X89_Y38_N5
\MemtoReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MemtoReg);

-- Location: IOOBUF_X89_Y8_N56
\ALUControl[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(0));

-- Location: IOOBUF_X89_Y35_N79
\ALUControl[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(1));

-- Location: IOOBUF_X89_Y35_N62
\ALUControl[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(2));

-- Location: IOOBUF_X89_Y9_N56
\ALUControl[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUControl[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_ALUControl(3));

-- Location: IOIBUF_X89_Y4_N95
\opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\opcode[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(5),
	o => \opcode[5]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N4
\funct[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(2),
	o => \funct[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\funct[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(3),
	o => \funct[3]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\funct[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(5),
	o => \funct[5]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\funct[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(1),
	o => \funct[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\funct[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(0),
	o => \funct[0]~input_o\);

-- Location: LABCELL_X88_Y8_N9
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \funct[0]~input_o\ & ( (!\funct[3]~input_o\ & \funct[5]~input_o\) ) ) # ( !\funct[0]~input_o\ & ( (!\funct[5]~input_o\ & (((!\funct[3]~input_o\)))) # (\funct[5]~input_o\ & ((!\funct[1]~input_o\ & ((!\funct[3]~input_o\))) # 
-- (\funct[1]~input_o\ & (!\funct[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001010110011001100101000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[3]~input_o\,
	datac => \ALT_INV_funct[5]~input_o\,
	datad => \ALT_INV_funct[1]~input_o\,
	dataf => \ALT_INV_funct[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X68_Y0_N52
\opcode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\opcode[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(7),
	o => \opcode[7]~input_o\);

-- Location: IOIBUF_X89_Y6_N38
\opcode[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(6),
	o => \opcode[6]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\opcode[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: LABCELL_X88_Y6_N48
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \opcode[1]~input_o\ & ( (!\opcode[7]~input_o\ & (!\opcode[6]~input_o\ & (!\opcode[4]~input_o\ & \opcode[3]~input_o\))) ) ) # ( !\opcode[1]~input_o\ & ( (!\opcode[7]~input_o\ & (!\opcode[6]~input_o\ & (!\opcode[4]~input_o\ & 
-- !\opcode[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[7]~input_o\,
	datab => \ALT_INV_opcode[6]~input_o\,
	datac => \ALT_INV_opcode[4]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: IOIBUF_X70_Y0_N52
\funct[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(4),
	o => \funct[4]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\funct[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(6),
	o => \funct[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\funct[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(7),
	o => \funct[7]~input_o\);

-- Location: LABCELL_X88_Y6_N57
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( !\funct[7]~input_o\ & ( (!\opcode[2]~input_o\ & (!\funct[4]~input_o\ & (!\funct[6]~input_o\ & !\opcode[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_funct[4]~input_o\,
	datac => \ALT_INV_funct[6]~input_o\,
	datad => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_funct[7]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X88_Y6_N0
\Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( !\opcode[3]~input_o\ & ( ((!\opcode[5]~input_o\ & (\Mux19~0_combout\ & (\Mux3~0_combout\ & \Mux17~0_combout\)))) ) ) # ( \opcode[3]~input_o\ & ( (\opcode[0]~input_o\ & (((\Mux17~0_combout\ & (!\opcode[5]~input_o\ $ 
-- (!\opcode[2]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000000000000000000000000000000011000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_Mux17~0_combout\,
	datag => \ALT_INV_Mux19~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X88_Y6_N9
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( !\opcode[7]~input_o\ & ( (!\opcode[4]~input_o\ & !\opcode[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[4]~input_o\,
	datab => \ALT_INV_opcode[6]~input_o\,
	dataf => \ALT_INV_opcode[7]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y6_N24
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( !\opcode[2]~input_o\ & ( \opcode[5]~input_o\ & ( (\opcode[0]~input_o\ & (\Mux5~0_combout\ & (\opcode[1]~input_o\ & !\opcode[3]~input_o\))) ) ) ) # ( \opcode[2]~input_o\ & ( !\opcode[5]~input_o\ & ( (\Mux5~0_combout\ & 
-- (!\opcode[1]~input_o\ & \opcode[3]~input_o\)) ) ) ) # ( !\opcode[2]~input_o\ & ( !\opcode[5]~input_o\ & ( (\Mux5~0_combout\ & (\opcode[3]~input_o\ & ((!\opcode[0]~input_o\) # (!\opcode[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[5]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y6_N51
\Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( !\opcode[5]~input_o\ & ( (!\opcode[7]~input_o\ & (!\opcode[6]~input_o\ & (!\opcode[3]~input_o\ & !\opcode[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[7]~input_o\,
	datab => \ALT_INV_opcode[6]~input_o\,
	datac => \ALT_INV_opcode[3]~input_o\,
	datad => \ALT_INV_opcode[4]~input_o\,
	dataf => \ALT_INV_opcode[5]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: MLABCELL_X78_Y4_N48
\Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( !\opcode[2]~input_o\ & ( !\opcode[0]~input_o\ & ( (\opcode[1]~input_o\ & \Mux5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_Mux5~1_combout\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: MLABCELL_X78_Y4_N33
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (\opcode[1]~input_o\ & \Mux5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_Mux5~1_combout\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y6_N33
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\funct[7]~input_o\ & ( (!\funct[6]~input_o\ & !\funct[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[6]~input_o\,
	datab => \ALT_INV_funct[4]~input_o\,
	dataf => \ALT_INV_funct[7]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N12
\Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( !\funct[0]~input_o\ & ( (!\funct[2]~input_o\ & (!\funct[1]~input_o\ & (\funct[3]~input_o\ & !\funct[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[1]~input_o\,
	datac => \ALT_INV_funct[3]~input_o\,
	datad => \ALT_INV_funct[5]~input_o\,
	dataf => \ALT_INV_funct[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: MLABCELL_X78_Y4_N12
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Mux1~1_combout\ & ( \opcode[0]~input_o\ ) ) # ( !\Mux1~1_combout\ & ( \opcode[0]~input_o\ ) ) # ( \Mux1~1_combout\ & ( !\opcode[0]~input_o\ & ( (((!\Mux5~1_combout\) # (!\Mux1~0_combout\)) # (\opcode[2]~input_o\)) # 
-- (\opcode[1]~input_o\) ) ) ) # ( !\Mux1~1_combout\ & ( !\opcode[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datab => \ALT_INV_opcode[2]~input_o\,
	datac => \ALT_INV_Mux5~1_combout\,
	datad => \ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X78_Y4_N42
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \opcode[2]~input_o\ & ( \opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & \Mux5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datac => \ALT_INV_Mux5~1_combout\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X78_Y4_N27
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \opcode[2]~input_o\ & ( !\opcode[0]~input_o\ & ( (!\opcode[1]~input_o\ & \Mux5~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_Mux5~1_combout\,
	datae => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X88_Y6_N39
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \opcode[1]~input_o\ & ( (\opcode[0]~input_o\ & (\opcode[5]~input_o\ & !\opcode[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X78_Y4_N18
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \Mux10~0_combout\ & ( (!\opcode[3]~input_o\ & \Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: MLABCELL_X78_Y4_N39
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Mux10~0_combout\ & ( (\Mux5~0_combout\ & \opcode[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_Mux10~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X88_Y6_N36
\Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \opcode[3]~input_o\ & ( (\opcode[0]~input_o\ & (\opcode[5]~input_o\ & (\opcode[1]~input_o\ & !\opcode[2]~input_o\))) ) ) # ( !\opcode[3]~input_o\ & ( (!\opcode[5]~input_o\ & (((!\opcode[1]~input_o\)))) # (\opcode[5]~input_o\ & 
-- (\opcode[0]~input_o\ & (\opcode[1]~input_o\ & !\opcode[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000111000000110000011100000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_opcode[5]~input_o\,
	datac => \ALT_INV_opcode[1]~input_o\,
	datad => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[3]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X88_Y6_N54
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( !\opcode[5]~input_o\ & ( !\opcode[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	dataf => \ALT_INV_opcode[5]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X88_Y6_N42
\Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \opcode[0]~input_o\ & ( \Mux1~0_combout\ & ( (!\Mux12~1_combout\) # ((!\Mux5~0_combout\) # (\Mux12~0_combout\)) ) ) ) # ( !\opcode[0]~input_o\ & ( \Mux1~0_combout\ & ( (!\Mux12~1_combout\) # ((!\Mux5~0_combout\) # ((\Mux12~0_combout\ 
-- & !\Mux1~1_combout\))) ) ) ) # ( \opcode[0]~input_o\ & ( !\Mux1~0_combout\ & ( (!\Mux12~1_combout\) # ((!\Mux5~0_combout\) # (\Mux12~0_combout\)) ) ) ) # ( !\opcode[0]~input_o\ & ( !\Mux1~0_combout\ & ( (!\Mux12~1_combout\) # ((!\Mux5~0_combout\) # 
-- (\Mux12~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111101111111011111110111111101111111011101110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~1_combout\,
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Mux12~0_combout\,
	datad => \ALT_INV_Mux1~1_combout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: LABCELL_X88_Y6_N6
\Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( !\opcode[5]~input_o\ & ( (!\opcode[4]~input_o\ & (!\opcode[6]~input_o\ & (!\opcode[7]~input_o\ & !\opcode[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[4]~input_o\,
	datab => \ALT_INV_opcode[6]~input_o\,
	datac => \ALT_INV_opcode[7]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	dataf => \ALT_INV_opcode[5]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X88_Y8_N3
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \funct[0]~input_o\ & ( (\funct[2]~input_o\ & (\funct[5]~input_o\ & (!\funct[3]~input_o\ & !\funct[1]~input_o\))) ) ) # ( !\funct[0]~input_o\ & ( (\funct[1]~input_o\ & ((!\funct[5]~input_o\ & ((!\funct[3]~input_o\))) # 
-- (\funct[5]~input_o\ & (!\funct[2]~input_o\ & \funct[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000010000000001100001000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \ALT_INV_funct[3]~input_o\,
	datad => \ALT_INV_funct[1]~input_o\,
	dataf => \ALT_INV_funct[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X88_Y8_N48
\Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \opcode[0]~input_o\ & ( \Mux13~0_combout\ & ( (\opcode[2]~input_o\ & (\opcode[3]~input_o\ & \Mux13~1_combout\)) ) ) ) # ( !\opcode[0]~input_o\ & ( \Mux13~0_combout\ & ( (!\opcode[2]~input_o\ & (\Mux1~0_combout\ & 
-- (!\opcode[3]~input_o\ & \Mux13~1_combout\))) ) ) ) # ( \opcode[0]~input_o\ & ( !\Mux13~0_combout\ & ( (\opcode[2]~input_o\ & (\opcode[3]~input_o\ & \Mux13~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000001000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_opcode[3]~input_o\,
	datad => \ALT_INV_Mux13~1_combout\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_Mux13~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: LABCELL_X88_Y6_N15
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( !\opcode[5]~input_o\ & ( (!\opcode[2]~input_o\ & !\opcode[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_opcode[5]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \Mux1~0_combout\ & ( \Mux1~1_combout\ & ( (!\Mux21~0_combout\) # ((!\Mux5~0_combout\) # ((\opcode[0]~input_o\ & !\opcode[1]~input_o\))) ) ) ) # ( !\Mux1~0_combout\ & ( \Mux1~1_combout\ & ( (!\Mux21~0_combout\) # ((!\Mux5~0_combout\) 
-- # (!\opcode[1]~input_o\)) ) ) ) # ( \Mux1~0_combout\ & ( !\Mux1~1_combout\ & ( (!\Mux21~0_combout\) # ((!\Mux5~0_combout\) # (!\opcode[1]~input_o\)) ) ) ) # ( !\Mux1~0_combout\ & ( !\Mux1~1_combout\ & ( (!\Mux21~0_combout\) # ((!\Mux5~0_combout\) # 
-- (!\opcode[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100111111111111110011111111111111001111110111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[0]~input_o\,
	datab => \ALT_INV_Mux21~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_Mux1~1_combout\,
	combout => \Mux21~1_combout\);

-- Location: LABCELL_X88_Y8_N54
\ALUControl[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl[0]$latch~combout\ = ( \Mux21~1_combout\ & ( \Mux13~2_combout\ ) ) # ( !\Mux21~1_combout\ & ( \ALUControl[0]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux13~2_combout\,
	datad => \ALT_INV_ALUControl[0]$latch~combout\,
	dataf => \ALT_INV_Mux21~1_combout\,
	combout => \ALUControl[0]$latch~combout\);

-- Location: LABCELL_X88_Y6_N12
\Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = ( \opcode[1]~input_o\ & ( (\opcode[3]~input_o\ & (!\opcode[2]~input_o\ $ (\opcode[0]~input_o\))) ) ) # ( !\opcode[1]~input_o\ & ( !\opcode[2]~input_o\ $ (!\opcode[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[2]~input_o\,
	datab => \ALT_INV_opcode[3]~input_o\,
	datac => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux15~1_combout\);

-- Location: LABCELL_X88_Y8_N30
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \funct[5]~input_o\ & ( \funct[0]~input_o\ & ( (!\funct[2]~input_o\ & (!\funct[3]~input_o\ & !\opcode[1]~input_o\)) ) ) ) # ( \funct[5]~input_o\ & ( !\funct[0]~input_o\ & ( (!\funct[2]~input_o\ & (!\opcode[1]~input_o\ & 
-- ((!\funct[3]~input_o\) # (\funct[1]~input_o\)))) ) ) ) # ( !\funct[5]~input_o\ & ( !\funct[0]~input_o\ & ( (\funct[2]~input_o\ & (!\funct[3]~input_o\ & !\opcode[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000101000100000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[1]~input_o\,
	datac => \ALT_INV_funct[3]~input_o\,
	datad => \ALT_INV_opcode[1]~input_o\,
	datae => \ALT_INV_funct[5]~input_o\,
	dataf => \ALT_INV_funct[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = ( \opcode[5]~input_o\ & ( \Mux15~0_combout\ & ( (\Mux10~0_combout\ & \Mux5~0_combout\) ) ) ) # ( !\opcode[5]~input_o\ & ( \Mux15~0_combout\ & ( (\Mux5~0_combout\ & (((\Mux15~1_combout\) # (\Mux19~0_combout\)) # (\Mux10~0_combout\))) ) 
-- ) ) # ( \opcode[5]~input_o\ & ( !\Mux15~0_combout\ & ( (\Mux10~0_combout\ & \Mux5~0_combout\) ) ) ) # ( !\opcode[5]~input_o\ & ( !\Mux15~0_combout\ & ( (\Mux5~0_combout\ & ((\Mux15~1_combout\) # (\Mux10~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000010100000111000011110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~0_combout\,
	datab => \ALT_INV_Mux19~0_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	datad => \ALT_INV_Mux15~1_combout\,
	datae => \ALT_INV_opcode[5]~input_o\,
	dataf => \ALT_INV_Mux15~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: LABCELL_X88_Y8_N0
\ALUControl[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl[1]$latch~combout\ = ( \Mux21~1_combout\ & ( \Mux15~2_combout\ ) ) # ( !\Mux21~1_combout\ & ( \ALUControl[1]$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux15~2_combout\,
	datad => \ALT_INV_ALUControl[1]$latch~combout\,
	dataf => \ALT_INV_Mux21~1_combout\,
	combout => \ALUControl[1]$latch~combout\);

-- Location: LABCELL_X88_Y6_N18
\Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \opcode[3]~input_o\ & ( \opcode[1]~input_o\ & ( (!\opcode[7]~input_o\ & (!\opcode[6]~input_o\ & (!\opcode[4]~input_o\ & !\opcode[5]~input_o\))) ) ) ) # ( !\opcode[3]~input_o\ & ( !\opcode[1]~input_o\ & ( (!\opcode[7]~input_o\ & 
-- (!\opcode[6]~input_o\ & (!\opcode[4]~input_o\ & !\opcode[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_opcode[7]~input_o\,
	datab => \ALT_INV_opcode[6]~input_o\,
	datac => \ALT_INV_opcode[4]~input_o\,
	datad => \ALT_INV_opcode[5]~input_o\,
	datae => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_opcode[1]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: LABCELL_X88_Y6_N30
\Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \funct[5]~input_o\ & ( (!\funct[6]~input_o\ & (!\funct[4]~input_o\ & (!\funct[7]~input_o\ & !\opcode[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[6]~input_o\,
	datab => \ALT_INV_funct[4]~input_o\,
	datac => \ALT_INV_funct[7]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	dataf => \ALT_INV_funct[5]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LABCELL_X88_Y8_N57
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \funct[0]~input_o\ & ( (\funct[1]~input_o\ & !\funct[3]~input_o\) ) ) # ( !\funct[0]~input_o\ & ( (!\funct[2]~input_o\ & \funct[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[1]~input_o\,
	datac => \ALT_INV_funct[3]~input_o\,
	dataf => \ALT_INV_funct[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\Mux17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = ( \opcode[0]~input_o\ & ( \Mux18~0_combout\ & ( (\Mux17~2_combout\ & (\opcode[2]~input_o\ & !\opcode[3]~input_o\)) ) ) ) # ( !\opcode[0]~input_o\ & ( \Mux18~0_combout\ & ( (\Mux17~2_combout\ & ((!\opcode[2]~input_o\ $ 
-- (!\opcode[3]~input_o\)) # (\Mux17~1_combout\))) ) ) ) # ( \opcode[0]~input_o\ & ( !\Mux18~0_combout\ & ( (\Mux17~2_combout\ & (\opcode[2]~input_o\ & !\opcode[3]~input_o\)) ) ) ) # ( !\opcode[0]~input_o\ & ( !\Mux18~0_combout\ & ( (\Mux17~2_combout\ & 
-- (!\opcode[2]~input_o\ $ (!\opcode[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010000000000010101010100010000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~2_combout\,
	datab => \ALT_INV_Mux17~1_combout\,
	datac => \ALT_INV_opcode[2]~input_o\,
	datad => \ALT_INV_opcode[3]~input_o\,
	datae => \ALT_INV_opcode[0]~input_o\,
	dataf => \ALT_INV_Mux18~0_combout\,
	combout => \Mux17~3_combout\);

-- Location: LABCELL_X88_Y8_N24
\ALUControl[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl[2]$latch~combout\ = ( \ALUControl[2]$latch~combout\ & ( (!\Mux21~1_combout\) # (\Mux17~3_combout\) ) ) # ( !\ALUControl[2]$latch~combout\ & ( (\Mux21~1_combout\ & \Mux17~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux21~1_combout\,
	datac => \ALT_INV_Mux17~3_combout\,
	dataf => \ALT_INV_ALUControl[2]$latch~combout\,
	combout => \ALUControl[2]$latch~combout\);

-- Location: LABCELL_X88_Y8_N27
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \funct[0]~input_o\ & ( (\funct[2]~input_o\ & (\funct[1]~input_o\ & \funct[5]~input_o\)) ) ) # ( !\funct[0]~input_o\ & ( !\funct[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datac => \ALT_INV_funct[1]~input_o\,
	datad => \ALT_INV_funct[5]~input_o\,
	dataf => \ALT_INV_funct[0]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X88_Y8_N6
\Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( \Mux20~0_combout\ & ( (!\funct[3]~input_o\ & (\Mux5~1_combout\ & \Mux19~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_funct[3]~input_o\,
	datac => \ALT_INV_Mux5~1_combout\,
	datad => \ALT_INV_Mux19~0_combout\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LABCELL_X88_Y8_N15
\ALUControl[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUControl[3]$latch~combout\ = ( \Mux19~1_combout\ & ( (\Mux21~1_combout\) # (\ALUControl[3]$latch~combout\) ) ) # ( !\Mux19~1_combout\ & ( (\ALUControl[3]$latch~combout\ & !\Mux21~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUControl[3]$latch~combout\,
	datad => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_Mux19~1_combout\,
	combout => \ALUControl[3]$latch~combout\);

-- Location: MLABCELL_X25_Y12_N0
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


