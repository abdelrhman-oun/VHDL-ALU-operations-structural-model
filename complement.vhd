
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY complement IS

	PORT(
		comp_input	: IN STD_LOGIC_VECTOR ( 3 downto 0);
		comp_output	:OUT STD_LOGIC_VECTOR ( 3 downto 0)
	);

END complement;

ARCHITECTURE model_1 OF complement IS

BEGIN
	PROCESS(comp_input)
	BEGIN
		comp_output <= NOT comp_input;  
	END PROCESS;

END model_1;
