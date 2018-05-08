library ieee;
use ieee.std_logic_1164.all;

entity Counter is
port(
Clock: IN std_logic;
Next_count: IN STD_LOGIC_Vector (31 downto 0);
Reset: IN STD_logic;
Count: out STD_LOGIC_Vector(31 downto 0)
);
end Counter;

Architecture Behavioral of Counter is

Begin 
	Process(Clock, reset)
	Begin
	if Reset = '0' Then
		Count <= X"00400000";
	Elsif Rising_edge (Clock) then
		Count <= Next_count;
	end if;
	end Process;

End Behavioral;