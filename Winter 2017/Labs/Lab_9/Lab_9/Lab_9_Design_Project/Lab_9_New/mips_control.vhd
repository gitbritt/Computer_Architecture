library ieee;
use ieee.std_logic_1164.all;


Entity mips_control is
Port(
opcode					: In STD_Logic_Vector(5 downto 0);
funct						: In STD_Logic_vector(5 downto 0);
RegDst, ALUsrc			: OUT STD_LOGIC;
Jump, Jal, JR			: OUT STD_LOGIC;
Beq, Bne					: OUT STD_LOGIC;
MemRead, MemWrite		: OUT STD_LOGIC;
RegWrite, MemtoReg	: OUT STD_LOGIC;
ALUControl				: OUT STD_LOGIC_VECTOR(3 downto 0)
);
End mips_control;

Architecture Behavioral of mips_control is
	Begin
	Process(opcode, funct)
	Begin
		case opcode is --opcode 
			when "000000" =>
				Case funct is--Start a new case statement for the function code, because there are a bunch of op's with zeros
					when "100000" =>	--ADD
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "0010";
						
					when "100001" =>	--ADDU
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "0010";

					when "100100" =>	--AND, 0x24
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "0000";

					when "001000" =>	--JR, 0x8
						RegDst		<= '0';
						ALUsrc		<= '0';
						Jump 			<= '1';
						Jal			<= '0';
						JR				<= '1';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '0';
						MemtoReg		<= '0';
						--ALUControl	<= "";

					when "100111" =>	--NOR, 0x27
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "1100";

					when "100101" =>	--OR, 0x25
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "0001";

					when "101010" =>	--SLT, 0x2a
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "0111";

					when "000000" =>	--SLL, 0x0
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "1000";

					when "000010" =>	--SRL, 0x02
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "1001";

					when "000100" =>	--SLLV, 0x4
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "1010";

					when "000110" =>	--SRLV, 0x6
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "1011";

					when "100010" =>	--SUB, 0x22
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "0110";

					when "100011" =>	--SUBU, 0x23
						RegDst		<= '1';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "0110";

					when others =>
						RegDst		<= '0';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '0';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '1';
						MemtoReg		<= '0';
						ALUControl	<= "0000";
					end case;
			--All the Function codes should be all zeros, so now the hex value is for the OPCode
			when "000010" =>	--Jump, 0x2
					RegDst		<= '0';
					ALUsrc		<= '0';
					Jump 			<= '1';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					--ALUControl	<= "";

			when "000011" =>	--JAL, 0x3
					RegDst		<= '0';
					ALUsrc		<= '0';
					Jump 			<= '1';
					Jal			<= '1';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					--ALUControl	<= '0';
					
			when "000100" =>	--BNE, 0x4
					RegDst		<= '0';
					ALUsrc		<= '0';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '1';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '0';
					MemtoReg		<= '0';
					ALUControl	<= "0110";
					
			when "000101" =>	--BEQ, 0x5
					RegDst		<= '0';
					ALUsrc		<= '0';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '1';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '0';
					MemtoReg		<= '0';
					ALUControl	<= "0110";
					
			when "001000" =>	--ADDI, 0x8
					RegDst		<= '0';
					ALUsrc		<= '1';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					ALUControl	<= "0010";
					
			when "001001" =>	--ADDIU, 0x9
					RegDst		<= '0';
					ALUsrc		<= '1';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					ALUControl	<= "0010";
					
			when "100011" =>	--LW, 0x23
					RegDst		<= '0';
					ALUsrc		<= '1';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '1';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '1';
					ALUControl	<= "0010";
					
			when "101011" =>	--SW, 0x2b
					RegDst		<= '0';
					ALUsrc		<= '1';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '1';
					RegWrite		<= '0';
					MemtoReg		<= '0';
					ALUControl	<= "0010";
					
			when "001010" =>	--SLTI, 0xA
					RegDst		<= '0';
					ALUsrc		<= '1';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					ALUControl	<= "0111";
					
			when "001100" =>	--ANDI, 0xC
					RegDst		<= '0';
					ALUsrc		<= '1';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					ALUControl	<= "0000";
					
			when "001101" =>	--ORI, 0xD
					RegDst		<= '0';
					ALUsrc		<= '1';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					ALUControl	<= "0001";
					
			when "001111" =>	--LUI, 0xF
					RegDst		<= '0';
					ALUsrc		<= '1';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					ALUControl	<= "1101";
					
			when others =>
					RegDst		<= '0';
					ALUsrc		<= '0';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					ALUControl	<= "0000";
					
			end case;
	END PROCESS;
END Behavioral;