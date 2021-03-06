Library IEEE;
use IEEE.STD_logic_1164.ALL;
USE IEEE.STD_LOGIC_unsigned.all;

ENTITY LAB2 is
	port(CLK 	:IN STD_LOGIC;
		  RESET  :IN STD_LOGIC;
		  result :OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END LAB2;
	

ARCHITECTURE BEHAVIOR OF LAB2 IS

SIGNAL C : std_logic_vector(7 DOWNTO 0);

BEGIN 

PROCESS(CLK, RESET)

BEGIN

	IF (RESET = '0') THEN
		C <= X"00";
	ELSIF  RISING_EDGE(CLK) THEN
		C <= C + X"01";
			
	END IF;
	

	END PROCESS;
	
	result <= C;
END BEHAVIOR;