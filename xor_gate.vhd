
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY xor_gate IS

	PORT(
		xor_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		xor_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		xor_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
END xor_gate;

ARCHITECTURE model_1 OF xor_gate IS 

BEGIN
	PROCESS (xor_input_a, xor_input_b)
	BEGIN
		xor_output <= xor_input_a XOR xor_input_b;
	END PROCESS;
END model_1; 
