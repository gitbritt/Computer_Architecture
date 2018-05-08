library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.all;


ENTITY mips IS
	PORT( 
			midi_data_out				:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			midi_send_out				:	OUT STD_LOGIC;
			ready_in					:	 IN STD_LOGIC;
			reset						:	 IN STD_LOGIC;
			slow_clock, fast_clock		:	 IN STD_LOGIC;
			PC_out						:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Instruction_out				:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Read_reg1_out				:	OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
			Read_reg2_out				:	OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
			Read_data1_out				:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Read_data2_out				:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Write_data_out				:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Write_reg_out				:	OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
		
			);
END mips;

ARCHITECTURE behavior OF mips IS

	
	
	COMPONENT memory_mapped
		PORT(
			clock							: IN STD_LOGIC;--Generate 19200
			reset							: IN STD_LOGIC;
			MEMORY_mapped_IO_INPUT	: IN STD_LOGIC;
			ADDRESS						: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			WRITEDATA					: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			INPUT1						: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			INPUT2						: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			READMEM						: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			midi_output_data			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			midi_send_out				: OUT STD_LOGIC
		);
	END COMPONENT;
	COMPONENT PCReg 
		PORT( CLK 	 :IN STD_LOGIC;
				NextPC :IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				reset	 :IN STD_LOGIC;
				PC	 	 :OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT; 
	
	COMPONENT ROM1PORT
		PORT( address		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
				clock			: IN STD_LOGIC  := '1';
				q				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT mips_control 
		PORT( opcode				 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
				funct					 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
				RegDst, ALUSrc 	 : OUT STD_LOGIC;
				Jump, Jal, Jr		 : OUT STD_LOGIC;
				Beq, Bne				 : OUT STD_LOGIC;
				MemRead, MemWrite	 : OUT STD_LOGIC;
				RegWrite, MemtoReg :	OUT STD_LOGIC;
				ALUControl			 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT mips_register_file 
		PORT ( clock, reset, RegWrite : IN STD_LOGIC;
				 read_reg1, read_reg2   : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				 write_reg				   : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				 write_data				   : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
				 read_data1, read_data2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT mips_alu 
		PORT( ALUControl		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				inputA, inputB	: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
				shamt				: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				Zero				: OUT STD_LOGIC;
				ALU_Result		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT signExtImm IS
		PORT(	input1	: IN std_LOGIC_VECTOR(15 DOWNTO 0);
				Data_Out	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
	END COMPONENT;
		
	COMPONENT data_memory_module
		PORT( address	: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				clock		: IN STD_LOGIC  := '1';
				data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				wren		: IN STD_LOGIC ;
				q			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	
	SIGNAL PCOUT: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL NEXT_PC: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL PC_PLUS_4: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inst: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL REG_WRITE: STD_LOGIC;
	SIGNAL readData1: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL readData2: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL writeReg: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL writeRegTemp: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL WDATA: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL WDATAMEMORY: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL WDATATemp: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL inputALU: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL ALU_Op: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Zero: STD_LOGIC;
	SIGNAL ALUResult: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL SIGNEXT_IMM: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL REG_DST: STD_LOGIC;
	SIGNAL ALU_SRC: STD_LOGIC;
	SIGNAL J: STD_LOGIC;
	SIGNAL J_A_L: STD_LOGIC;
	SIGNAL J_R: STD_LOGIC;
	SIGNAL B_E_Q: STD_LOGIC;
	SIGNAL B_N_E: STD_LOGIC;
	SIGNAL MEM_Read: STD_LOGIC;
	SIGNAL MEM_Write: STD_LOGIC;
	SIGNAL MEM_toReg: STD_LOGIC;
	SIGNAL DADDRESS : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL READDATAQ: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL ADD_MUX: std_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL TEMP: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL JMUXRESULT: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL READ_DATA_MEMORY: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL OUT_Sig1: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL OUT_Sig2: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL MEM_IO_INPUT_1: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL MEM_IO_INPUT_2: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL MEMORY_IO_INPUT: STD_LOGIC;
	SIGNAL MMIODATA: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
BEGIN
	
	
	PC: PCReg PORT MAP(slow_clock, NextPC => NEXT_PC, reset => reset, PC => PCOUT); 
	CONTROL: mips_control PORT MAP (opcode => inst(31 DOWNTO 26), funct => inst(5 DOWNTO 0),
				Jump => J, Jal => J_A_L, Jr => J_R, Beq => B_E_Q, Bne => B_N_E, MemRead => MEM_Read, MemWrite => MEM_Write,
				RegWrite => REG_WRITE, REGDst => REG_DST, ALUSrc =>ALU_SRC, MemtoReg => MEM_toReg, AluControl => ALU_Op);
	REGFILE: mips_register_file PORT MAP (clock => slow_clock, reset => reset, RegWrite => REG_WRITE,
				read_reg1 => inst(25 DOWNTO 21), read_reg2 => inst(20 DOWNTO 16),write_reg => writeReg,
				write_data => WDATA, read_data1 => readData1, read_data2 => readData2);
	ALU: mips_alu PORT MAP (ALUControl => ALU_Op, inputA => readData1, inputB => inputALU, shamt => inst(10 DOWNTO 6),
		Zero => Zero, ALU_Result => ALUResult);
	MEMORY_MAPPED_IO: memory_mapped PORT MAP(clock => fast_clock, reset => reset, MEMORY_mapped_IO_INPUT => MEMORY_IO_INPUT,
		ADDRESS => ALUResult, WRITEDATA => WDATAMEMORY, INPUT1 => MEM_IO_INPUT_1, INPUT2 => MEM_IO_INPUT_2, READMEM => READ_DATA_MEMORY, 
		midi_output_data => OUT_Sig1, midi_send_out => midi_send_out );
		
	EXTIMM: signExtImm PORT MAP (input1 => inst(15 DOWNTO 0), Data_Out => SIGNEXT_IMM);
	DATAMEMM: data_memory_module PORT MAP (address => ALUResult(6 DOWNTO 2), clock => Fast_clock, data => ReadData2, 
		wren => Mem_Write, q => READDATAQ);
	PCREGDATA: ROM1PORT PORT MAP (address => PCOUT(7 DOWNTO 2), clock => Fast_clock, q => inst);
		
		
		
		--REG_DST MUX
		writeRegTemp <= inst(20 DOWNTO 16) WHEN REG_DST = '0' ELSE inst(15 DOWNTO 11);
		
		--JUMP/BRANCH MUX
		PC_PLUS_4 <= STD_LOGIC_VECTOR (PCOUT + 4);
		TEMP <= SIGNEXT_IMM(29 DOWNTO 0) & "00";
		ADD_MUX <= STD_LOGIC_VECTOR(TEMP + PC_PLUS_4) WHEN ((B_E_Q AND Zero) OR (B_N_E AND NOT Zero)) = '1' ELSE PC_PLUS_4;
		JMUXRESULT <= (PC_PLUS_4(31 DOWNTO 28) & inst(25  DOWNTO 0) & "00") WHEN J = '1' ELSE ADD_MUX;
		
		--JR MUX
		NEXT_PC <= readData1 WHEN (J_R = '1') ELSE JMUXRESULT;
		
		--JAL MUX
		writeReg <= "11111" when J_A_L = '1' ELSE writeRegTemp;
		WDATA <= PC_PLUS_4 WHEN J_A_L = '1' ELSE WDATATemp;
		
		
		--MEMTOReg
		WDATATemp <= MMIODATA WHEN MEM_toReg = '1' ELSE ALUResult;
		 
		
		--ALUSrc
		inputALU <= readData2 WHEN ALU_SRC = '0' ELSE SIGNEXT_IMM;
		
			PC_out <= PCOUT;
			instruction_out <= inst;
			Read_reg1_out <= inst(25 DOWNTO 21); 
			Read_reg2_out <= inst(20 DOWNTO 16);
			Write_reg_out <= writeReg;
			Read_data1_out <= readData1;
			Read_data2_out <= inputALU; 
			Write_data_out <= WDATA;
			
		--MEMORY MAPPED IO STUFF
			MMIODATA <= READ_DATA_MEMORY WHEN (ALUResult(31) AND MEM_TOReg) = '1' ELSE READDATAQ;
			--READ_DATA_MEMORY <= ALUResult WHEN (ALUResult(31) AND MEM_TOReg) = '1' ELSE ReadData2;
			
			--READ_MEM <= READ_DATA_MEMORY;
			--MEMORY_IO <= MEMORY_IO_INPUT;
			WDATAMEMORY <= WDATA;
			--WDATAMEMORY <= x"0000001F" AND inst(20 DOWNTO 16);
			--MEM_IO_INPUT_1 <= MEMORY_INPUT_1;
			--MEM_IO_INPUT_2 <= MEMORY_INPUT_2;
			--OUTSIGNAL_IO_1 <= OUT_Sig1;
			--OUTSIGNAL_IO_2 <= OUT_Sig2;
			MEMORY_IO_INPUT <= ALUResult(31) AND MEM_Write;
			
END Behavior;