LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY toplevelmips IS
	PORT ( reset, clock : IN STD_LOGIC;
			 topOutput	  : OUT STD_LOGIC
			 );
END toplevelmips;

ARCHITECTURE behavior OF toplevelmips IS 
	COMPONENT mips
		PORT( reset									: IN STD_LOGIC;
				slow_clock, fast_clock			: IN STD_LOGIC;
				midi_ready							: IN STD_LOGIC;
				midi_data							: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
				midi_send							: OUT STD_LOGIC;
				PC_out, instruction_out			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
				Read_reg1_out						: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
				Read_reg2_out						: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
				Write_reg_out						: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
				Read_data1_out						: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
				Read_data2_out						: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
				Write_data_out						: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
			);
	END COMPONENT;
	
	COMPONENT clk_div 
		PORT( clock_50Mhz				: IN	STD_LOGIC;
				clock_1MHz				: OUT	STD_LOGIC;
				clock_100KHz			: OUT	STD_LOGIC;
				clock_10KHz				: OUT	STD_LOGIC;
				clock_1KHz				: OUT	STD_LOGIC;
				clock_100Hz				: OUT	STD_LOGIC;
				clock_10Hz				: OUT	STD_LOGIC;
				clock_1Hz				: OUT	STD_LOGIC;
				clock_3125Hz			: OUT STD_LOGIC;
				clock_31250Hz			: OUT STD_LOGIC
			);	
	END COMPONENT;
	
	COMPONENT midi_serial
		PORT(	clock_31250Hz, send, reset	: IN	STD_LOGIC;
				byte1, byte2, byte3			: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
				num_bytes						: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
				ready								: OUT	STD_LOGIC;
				serial_out						: OUT	STD_LOGIC 
				);
	END COMPONENT;
	
	SIGNAL reset: STD_LOGIC;
	SIGNAL S_OUT: STD_LOGIC;
	SIGNAL clock1mhz : STD_LOGIC;
	SIGNAL clock100khz : STD_LOGIC;
	SIGNAL clock3120 : STD_LOGIC;
	SIGNAL snd : STD_LOGIC;
	SIGNAL mready : STD_LOGIC;
	SIGNAL mididdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
	
				
	MIPSC: mips PORT MAP (reset => reset, slow_clock => clock1mhz, 
					fast_clock => clock100khz, midi_ready => mready, midi_data => mididdata,
					midi_send => snd)
	MIDI: midi_serial PORT MAP (clock_31250Hz => clock, send => snd,
					byte1 => midi_data(31 DOWNTO 24) ,byte2 => midi_data(23 DOWNTO 16),
					byte3 => midi_data(15 DOWNTO 8) ,num_bytes => midi_data(7 DOWNTO 0), ready => mready, serial_out => topOutput);
	
	
BEGIN 
	
	
	
	
	
	
	
END behavior;