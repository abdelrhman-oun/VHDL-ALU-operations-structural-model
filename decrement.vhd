
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY decrement IS

	PORT(
		dec_input	: IN STD_LOGIC_VECTOR ( 3 downto 0);
		dec_output	:OUT STD_LOGIC_VECTOR ( 3 downto 0)
	);

END decrement;

ARCHITECTURE model_1 OF decrement IS

BEGIN
	PROCESS(dec_input)
	BEGIN
		dec_output <= dec_input - 1;  
	END PROCESS;

END model_1;