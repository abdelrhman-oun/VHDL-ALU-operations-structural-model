
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY xnor_gate IS

	PORT(
		xnor_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		xnor_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		xnor_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
END xnor_gate;

ARCHITECTURE model_1 OF xnor_gate IS 

BEGIN
	PROCESS (xnor_input_a, xnor_input_b)
	BEGIN
		xnor_output <= xnor_input_a XNOR xnor_input_b;
	END PROCESS;
END model_1; 