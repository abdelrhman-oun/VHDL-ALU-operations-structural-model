
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY transfer IS

	PORT(
		trans_input	: IN STD_LOGIC_VECTOR ( 3 downto 0);
		trans_output	:OUT STD_LOGIC_VECTOR ( 3 downto 0)
	);

END transfer;

ARCHITECTURE model_1 OF transfer IS

BEGIN
	PROCESS(trans_input)
	BEGIN
		trans_output <= trans_input;  
	END PROCESS;

END model_1;
