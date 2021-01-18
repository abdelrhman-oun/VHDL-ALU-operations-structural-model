
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY nor_gate IS

	PORT(
		nor_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		nor_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		nor_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
END nor_gate;

ARCHITECTURE model_1 OF nor_gate IS 

BEGIN
	PROCESS (nor_input_a, nor_input_b)
	BEGIN
		nor_output <= nor_input_a NOR nor_input_b;
	END PROCESS;
END model_1; 
