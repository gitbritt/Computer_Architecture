LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE ieee.std_LOGIC_unsigned.all;

ENTITY ALU IS
	PORT (ALUControl		:IN STD_LOGIC_vector(1 downto 0);
			inputA, inputB :IN STD_LOGIC_Vector(31 DOWNTO 0);
			ALU_RESULT		:OUT STD_LOGIC_Vector(31 DOWNTO 0)
	);
END ALU;



ARCHITECTURE BEHAVIOR OF ALU IS

	BEGIN
	
	PROCESS(inputA, inputB)
	
	BEGIN
	
		IF (ALUControl = "00") then 
		
			ALU_RESULT <= inputA and inputB;
			
		elsif (ALUControl = "01") then 
			
			ALU_RESULT <= inputA or inputB;
			
		elsif (ALUControl = "10") then
			
			ALU_RESULT <= inputA + inputB;
			
		elsIF(ALUControl = "11") then
					
			ALU_RESULT <= inputA - inputB;
		
			end IF;
		end process;
	END BEHAVIOR; 