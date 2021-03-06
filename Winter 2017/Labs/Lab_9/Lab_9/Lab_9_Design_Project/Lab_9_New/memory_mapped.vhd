Library ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.STD_LOGIC_ARITH.all;
USE ieee.STD_LOGIC_UNSIGNED.all;

ENTITY memory_mapped IS
PORT(
	clock							: IN STD_LOGIC;--Clock
	reset							: IN STD_LOGIC;--Reset
	MEMORY_mapped_IO_INPUT	: IN STD_LOGIC;--
	ADDRESS						: IN STD_LOGIC_VECTOR(31 DOWNTO 0);		--Address
	WRITEDATA					: IN STD_LOGIC_VECTOR(31 DOWNTO 0);		--DATA
	INPUT1						: IN STD_LOGIC_VECTOR(7 DOWNTO 0);		--
	INPUT2						: IN STD_LOGIC_VECTOR(7 DOWNTO 0);		--
	READMEM						: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);	--Output goes to mux
	midi_output_data			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	midi_send_out				: OUT STD_LOGIC
);
END memory_mapped;

ARChITECTURE memory_mapped_IO of memory_mapped IS
TYPE READ_OR_WRITE IS ARRAY (0 DOWNTO 31) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
	
	PROCESS(INPUT1, INPUT2, ADDRESS)
	BEGIN
	
	--LW MEMORY
		IF(ADDRESS = x"80000000") THEN
			READMEM <= x"000000" & INPUT1; 
		ELSIF (ADDRESS = x"80000001") THEN
			READMEM <= x"000000" & INPUT2; 
		ELSE 
			READMEM <= x"00000000";
		END IF;
	END PROCESS;
	PROCESS(clock, reset)
	BEGIN
	
	IF(reset = '0') THEN
		midi_output_data <= x"00000000";
		
		--SW MEMORY
		ELSIF(RISING_EDGE(clock)) THEN 
		IF(MEMORY_mapped_IO_INPUT = '1') THEN
			IF(ADDRESS = x"80000002") THEN
				midi_output_data(7 DOWNTO 0) <= WRITEDATA(7 DOWNTO 0);
				ELSIF(ADDRESS = x"80000003") THEN
				midi_output_data(7 DOWNTO 0) <= WRITEDATA(7 DOWNTO 0);
				END IF;
			END IF;
		END IF;
		
	--END IF;
	END PROCESS;
END memory_mapped_IO;