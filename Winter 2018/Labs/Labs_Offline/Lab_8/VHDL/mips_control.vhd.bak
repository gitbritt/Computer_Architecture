library ieee;
use ieee.std_logic_1164.all;


Entity mips_control is
Port(
opcode					: In STD_Logic_Vector(7 downto 0);
funct						: In STD_Logic_vector(7 downto 0);
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
			when X"00" =>
				Case funct is--Start a new case statement for the function code, because there are a bunch of op's with zeros
					when X"20" =>	--ADD
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
						
					when X"21" =>	--ADDU
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

					when X"24" =>	--AND
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

					when X"08" =>	--JR
						RegDst		<= '0';
						ALUsrc		<= '0';
						Jump 			<= '0';
						Jal			<= '0';
						JR				<= '1';
						Beq			<= '0';
						Bne			<= '0';
						MemRead		<= '0';
						MemWrite		<= '0';
						RegWrite		<= '0';
						MemtoReg		<= '0';
						--ALUControl	<= "";

					when X"27" =>	--NOR
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

					when X"25" =>	--OR
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

					when X"2A" =>	--SLT
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

					when X"00" =>	--SLL
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

					when X"02" =>	--SRL
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

					when X"04" =>	--SLLV
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

					when X"06" =>	--SRLV
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

					when X"22" =>	--SUB
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

					when X"23" =>	--SUBU
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
			when X"02" =>	--Jump
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

			when X"03" =>	--JAL
					RegDst		<= '0';
					ALUsrc		<= '0';
					Jump 			<= '0';
					Jal			<= '1';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '0';
					MemWrite		<= '0';
					RegWrite		<= '1';
					MemtoReg		<= '0';
					--ALUControl	<= '0';
					
			when X"04" =>	--BNE
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
					
			when X"05" =>	--BEQ
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
					
			when X"08" =>	--ADDI
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
					
			when X"09" =>	--ADDIU
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
					
			when X"23" =>	--LW
					RegDst		<= '0';
					ALUsrc		<= '1';
					Jump 			<= '0';
					Jal			<= '0';
					JR				<= '0';
					Beq			<= '0';
					Bne			<= '0';
					MemRead		<= '1';
					MemWrite		<= '0';
					RegWrite		<= '0';
					MemtoReg		<= '0';
					ALUControl	<= "0010";
					
			when X"2B" =>	--SW
					RegDst		<= '1';
					ALUsrc		<= '0';
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
					
			when X"0A" =>	--SLTI
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
					ALUControl	<= "0110";
					
			when X"0C" =>	--ANDI
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
					
			when X"0D" =>	--ORI
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
					
			when X"0F" =>	--LUI
					RegDst		<= '1';
					ALUsrc		<= '-';
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