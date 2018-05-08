--Dillon Britt
--Lab 8 part 2


LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;


ENTITY Lab_8 IS
	PORT
	(
		input1	: IN std_LOGIC_VECTOR(15 DOWNTO 0);
		Data_Out	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END Lab_8;

ARCHITECTURE arch OF Lab_8 is
BEGIN
	PROCESS(input1)
		BEGIN
			--IF (input1 < 0) THEN
				Data_Out <= STD_LOGIC_VECTOR(resize(SIGNED(input1), Data_Out'LENGTH));
	END PROCESS;
END arch;