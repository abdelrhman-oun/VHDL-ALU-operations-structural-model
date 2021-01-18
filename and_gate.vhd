
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY and_gate IS

	PORT(
		and_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		and_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		and_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
END and_gate;

ARCHITECTURE model_1 OF and_gate IS 

BEGIN
	PROCESS (and_input_a, and_input_b)
	BEGIN
		and_output <= and_input_a AND and_input_b;
	END PROCESS;
END model_1; 
