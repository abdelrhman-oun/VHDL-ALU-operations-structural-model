
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY sub IS

	PORT(
		sub_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		sub_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		sub_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
END sub;

ARCHITECTURE model_1 OF sub IS 

BEGIN
	PROCESS (sub_input_a, sub_input_b)
	BEGIN
		sub_output <= sub_input_a - sub_input_b;
	END PROCESS;
END model_1; 
