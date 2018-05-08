LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;


ENTITY signExtImm IS
	PORT
	(
		input1	: IN std_LOGIC_VECTOR(15 DOWNTO 0);
		Data_Out	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END signExtImm;

ARCHITECTURE arch OF signExtImm is
BEGIN
	PROCESS(input1)
		BEGIN
			--IF (input1 < 0) THEN
				Data_Out <= STD_LOGIC_VECTOR(resize(SIGNED(input1), Data_Out'LENGTH));
	END PROCESS;
END arch;