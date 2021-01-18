
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY or_gate IS

	PORT(
		or_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		or_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		or_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
END or_gate;

ARCHITECTURE model_1 OF or_gate IS 

BEGIN
	PROCESS (or_input_a, or_input_b)
	BEGIN
		or_output <= or_input_a OR or_input_b;
	END PROCESS;
END model_1; 
