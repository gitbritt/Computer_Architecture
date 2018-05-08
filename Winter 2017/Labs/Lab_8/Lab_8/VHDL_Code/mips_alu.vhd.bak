library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;



ENTITY mips_alu IS
PORT(
ALUControl		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
inputA, inputB	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
shamt				: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
Zero				: OUT STD_LOGIC;
ALU_Result		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END mips_alu;

ARCHITECTURE arch of mips_alu is
	SIGNAL INTERNAL : STD_LOGIC_VECTOR(31 DOWNTO 0);
	BEGIN
	Process (ALUControl, inputA, inputB, shamt)
	BEGIN
	Case ALUControl is
		WHEN "0000" =>	--AND
			
			INTERNAL <= inputA and inputB;
			
		WHEN "0001" =>	--OR
			INTERNAL <= inputA or inputB;

			
		WHEN "0010"	=>	--ADD
			INTERNAL <= inputA + inputB;
			
		WHEN "0110"	=>	--SUB
			INTERNAL <= inputA - inputB;
			
			
		WHEN "0111" =>	--SLT
		
			IF (inputA < inputB) THEN 
				INTERNAL <= X"00000001";
			ELSE
				INTERNAL <= X"00000000";
			END IF;
			
			
		WHEN "1000" => --SLL
		
			INTERNAL <= std_logic_vector	(shift_left(signed(inputB), to_integer(signed(shamt))));
			
		WHEN "1001" =>	--SRL
		
			INTERNAL <= std_logic_vector	(shift_right(signed(inputB), to_integer(signed(shamt))));

			
		WHEN "1010" =>	--SLLV
		
			INTERNAL <= std_logic_vector	(shift_left(signed(inputB), to_integer(signed(shamt))));

			
		WHEN "1011" =>	--SRLV
			
			INTERNAL <= std_logic_vector	(shift_right(signed(inputB), to_integer(signed(shamt))));

			
		WHEN "1100" =>	--NOR
		
			INTERNAL <= inputA nor inputB;
			
		WHEN "1101" =>	--LUI
			
			INTERNAL <= std_logic_vector(shift_left(unsigned(inputB), 16));
			
			
		WHEN others =>
			INTERNAL <= X"00000000";
	End case;
	END PROCESS;
	
	PROCESS(INTERNAL)
	BEGIN
	IF (INTERNAL = 0) THEN
		ZERO <= '1';
		ELSE
		ZERO <= '0';
	END IF;
	
	ALU_Result <= INTERNAL;--Gets the Internal value and sets it as ALU_RESULT
	
	END PROCESS;
	
	

	
END arch;