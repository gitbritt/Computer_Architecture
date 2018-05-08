library ieee;
use ieee.std_logic_1164.all;
USE ieee.STD_LOGIC_arith.all;
use ieee.STD_LOGIC_unsigned.all;

Entity mips_register_file IS
PORT(
clock, Reset, RegWrite	: IN STD_LOGIC;
read_reg1, read_reg2		: IN STD_LOGIC_VECTOR(4 downto 0);
write_reg					: IN STD_LOGIC_VECTOR(4 downto 0);
write_data					: IN STD_LOGIC_VECTOR(31 downto 0);
read_data1, read_data2	: OUT STD_LOGIC_VECTOR(31 downto 0)
);
end mips_register_file;

ARCHITECTURE arch of mips_register_file IS
	
	TYPE REG_TYPE IS ARRAY (0 to 31) OF STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL registers : REG_TYPE;
	
	BEGIN
		
		read_data1 <= registers( CONV_INTEGER(read_reg1));
		read_data2 <= registers( CONV_INTEGER(read_reg2));
		
		PROCESS(reset, clock)
		
		BEGIN
			IF( reset = '0' ) THEN
				for i in 0 to 31 loop
					
					registers(i) <= X"00000000";
					
				END LOOP;
			
			ELSIF (RISING_EDGE(clock)) THEN
					
				IF (RegWrite = '1') then
					
					registers(CONV_INTEGER(write_reg)) <= write_data;
					
				END IF;
					
				
			END IF;
		END PROCESS;
	END arch;	
				