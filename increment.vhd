
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY increment IS

	PORT(
		inc_input	: IN STD_LOGIC_VECTOR ( 3 downto 0);
		inc_output	:OUT STD_LOGIC_VECTOR ( 3 downto 0)
	);

END increment;

ARCHITECTURE model_1 OF increment IS

BEGIN
	PROCESS(inc_input)
	BEGIN
		inc_output <= inc_input + 1;  
	END PROCESS;

END model_1;
