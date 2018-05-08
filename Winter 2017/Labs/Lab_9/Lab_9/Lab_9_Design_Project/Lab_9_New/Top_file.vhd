--Top File
library ieee;
use ieee.std_logic_1164.all;
USE ieee.STD_LOGIC_arith.all;
use ieee.STD_LOGIC_unsigned.all;

ENTITY Top_file IS
PORT(
			reset				:	IN STD_LOGIC;
			clock				:	IN	STD_LOGIC;
			serial_out		:	OUT STD_LOGIC
);

END Top_file;

ARCHITECTURE Top_level of Top_file IS
	
	--MIPS Processor SIGNALS
	SIGNAL midi_data_out	:	STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL midi_send_out	:	STD_LOGIC;
	SIGNAL ready			:	STD_LOGIC;
	SIGNAL fast_clock		: 	STD_LOGIC;
	SIGNAL slow_clock		:	STD_LOGIC;
	SIGNAL clk31250Hz		:	STD_LOGIC;
	
	
	
	COMPONENT mips
		PORT( 
				midi_data_out				:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
				midi_send_out				:	OUT STD_LOGIC;
				ready_in						:	 IN STD_LOGIC;
				reset							:	 IN STD_LOGIC;
				slow_clock, fast_clock	:	 IN STD_LOGIC
				);
	END COMPONENT;

	COMPONENT midi_serial
		PORT(
				clock_31250Hz, send, reset	: IN	STD_LOGIC;
				byte1, byte2, byte3			: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
				num_bytes					: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
				ready						: OUT	STD_LOGIC;
				serial_out					: OUT	STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT clk_div
		PORT(
				clock_50Mhz				: IN	STD_LOGIC;
				clock_1MHz				: OUT	STD_LOGIC;
				clock_100KHz			: OUT	STD_LOGIC;
				clock_31250Hz			: OUT STD_LOGIC;
				clock_10KHz				: OUT	STD_LOGIC;
				clock_1KHz				: OUT	STD_LOGIC;
				clock_100Hz				: OUT	STD_LOGIC;
				clock_10Hz				: OUT	STD_LOGIC;
				clock_1Hz				: OUT	STD_LOGIC
		);
	END COMPONENT;
	BEGIN
	mips_component	: mips port map(reset => reset, slow_clock => slow_clock, fast_clock => fast_clock,ready_in => ready, midi_data_out => midi_data_out, 
											midi_send_out => midi_send_out);

	midi: midi_serial port map (clock_31250Hz => clk31250Hz, send => midi_send_out, reset => reset, byte1 => midi_data_out(31 DOWNTO 24), byte2 => midi_data_out(23 DOWNTO 16),
											byte3 => midi_data_out(15 DOWNTO 8), num_bytes => midi_data_out(7 DOWNTO 0), serial_out => serial_out);
			
	Clock_Div: CLK_DIV port map(clock_50Mhz => clock, clock_1MHz => fast_clock, clock_100KHz => slow_clock, clock_31250Hz => clk31250Hz);
	
	
	
	
END Top_level;