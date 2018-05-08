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
	BEGIN
	Process (ALUControl)
	BEGIN
	Case ALUControl is
		WHEN "0000" =>	--AND
		
			ALU_Result <= inputA and inputB;

			IF (inputA and inputB) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;
			
		WHEN "0001" =>	--OR

			IF (inputA or inputB) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;

		
			ALU_Result <= inputA or inputB;
			
		WHEN "0010"	=>	--ADD
		
		
			ALU_Result <= inputA + inputB;
			
			
			IF (inputA + inputB) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;

			
		WHEN "0110"	=>	--SUB
		
				ALU_Result <= inputA - inputB;
			
			IF (inputA - inputB) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;

			
		WHEN "0111" =>	--SLT
		
		
			IF(inputA < inputB) then
			
				ALU_Result <= X"00000001";
				Zero <= '0';
			else 
				
				ALU_Result <= X"00000000";
				Zero <= '1';
				
			END IF;
			
		WHEN "1000" => --SLL
		
			ALU_Result <= std_logic_vector	(shift_left(signed(inputB), to_integer(signed(shamt))));
		
			IF (shift_left(signed(inputB), to_integer(signed(shamt)))) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;

			
		WHEN "1001" =>	--SRL
		
			ALU_result <= std_logic_vector	(shift_right(signed(inputB), to_integer(signed(shamt))));
			
			IF (shift_right(signed(inputB), to_integer(signed(shamt)))) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;

			
		WHEN "1010" =>	--SLLV
		
			ALU_Result <= std_logic_vector	(shift_left(signed(inputB), to_integer(signed(shamt))));
		
			IF (shift_left(signed(inputB), to_integer(signed(shamt)))) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;

			
		WHEN "1011" =>	--SRLV
			
			ALU_result <= std_logic_vector	(shift_right(signed(inputB), to_integer(signed(shamt))));
			
			IF (shift_right(signed(inputB), to_integer(signed(shamt)))) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;

			
		WHEN "1100" =>	--NOR
		
			ALU_Result <= inputA nor inputB;
			
			IF (inputA nor inputB) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;
			
		WHEN "1101" =>	--LUI
			
			ALU_Result <= std_logic_vector(shift_left(unsigned(inputB), 16));
			
			IF (std_logic_vector(shift_left(unsigned(inputB), 16))) <= 0 THEN
				Zero <= '1';
			ELSE
				Zero <= '0';
			END IF;
			
		WHEN others =>
		
	End case;
	END PROCESS;
	
END arch;