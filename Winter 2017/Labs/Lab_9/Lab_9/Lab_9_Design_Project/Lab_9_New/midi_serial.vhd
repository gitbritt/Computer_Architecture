LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY midi_serial IS

	PORT(	clock_31250Hz, send, reset	: IN	STD_LOGIC;
			byte1, byte2, byte3			: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
			num_bytes					: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);
			ready						: OUT	STD_LOGIC;
			serial_out					: OUT	STD_LOGIC );	

END midi_serial;

ARCHITECTURE a OF midi_serial IS
	TYPE STATE_TYPE IS ( idle, stopbit, startbit, send_byte1, send_byte2, send_byte3 );
	SIGNAL state : STATE_TYPE;
	SIGNAL counter : INTEGER RANGE 0 TO 7;
	SIGNAL byte_count : INTEGER RANGE 0 TO 3;

BEGIN

WITH state SELECT
	ready <= 	'1'	WHEN idle,
				'0'	WHEN OTHERS;


PROCESS( clock_31250Hz, reset )
BEGIN
	IF( reset = '0' ) THEN
		state <= idle;
	ELSIF( RISING_EDGE(clock_31250Hz) ) THEN
		CASE state IS
			WHEN idle =>
				IF( send = '1' ) THEN
					state <= startbit;
				ELSE
					state <= idle;
				END IF;
			WHEN startbit =>
				serial_out <= '0';
				counter <= 0;
				byte_count <= byte_count + 1;
				IF( byte_count = 0 ) THEN
					state <= send_byte1;
				ELSIF( byte_count = 1 ) THEN
					state <= send_byte2;
				ELSE
					state <= send_byte3;
				END IF;
			WHEN stopbit =>
				serial_out <= '1';
				IF( byte_count = 3 ) OR (num_bytes = "10") THEN
					byte_count <= 0;
					state <= idle;
				ELSE
					state <= startbit;
				END IF;

			WHEN send_byte1 =>
				IF( counter = 7 ) THEN
					serial_out <= byte1(7);
					state <= stopbit;
				ELSE
					serial_out <= byte1(counter);
					counter <= counter + 1;
					state <= send_byte1;
				END IF;
			WHEN send_byte2 =>
				IF( counter = 7 ) THEN
					serial_out <= byte2(7);
					state <= stopbit;
				ELSE
					serial_out <= byte2(counter);
					counter <= counter + 1;
					state <= send_byte2;
				END IF;

			WHEN send_byte3 =>
				IF( counter = 7 ) THEN
					serial_out <= byte3(7);
					state <= stopbit;
				ELSE
					serial_out <= byte3(counter);
					counter <= counter + 1;
					state <= send_byte3;
				END IF;

		END CASE;
	END IF;

END PROCESS;

END a;