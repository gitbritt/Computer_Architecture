LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.STD_LOGIC_ARITH.all;
USE ieee.STD_LOGIC_UNSIGNED.all;

ENTITY Simple_ALU IS 
	PORT (ALUControl 		: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			inputA, inputB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			ALU_Reult 		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0 )
			);
	END Simple_ALU;
	
ARCHITECTURE behavior OF Simple_ALU IS

BEGIN
	PROCESS(ALUControl)
	BEGIN 
		IF ALUControl = "00" THEN 
			ALU_Reult <= inputA AND inputB ;
	
		ELSIF ALUControl = "01" THEN 
			ALU_Reult <= inputA OR inputB ;
			
		ELSIF ALUControl = "10" THEN 
			ALU_Reult <= inputA + inputB ;
			
		ELSIF ALUControl = "11" THEN 
			ALU_Reult <= inputA - inputB ;

		END IF;
	END PROCESS;
END behavior;