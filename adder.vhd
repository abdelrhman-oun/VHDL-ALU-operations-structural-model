
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY add IS

	PORT(
		add_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		add_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		add_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
END add;

ARCHITECTURE model_1 OF add IS 

BEGIN
	PROCESS (add_input_a, add_input_b)
	BEGIN
		add_output <= add_input_a + add_input_b;
	END PROCESS;
END model_1; 