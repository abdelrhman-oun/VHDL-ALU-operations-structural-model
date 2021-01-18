
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY nand_gate IS

	PORT(
		nand_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		nand_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		nand_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
END nand_gate;

ARCHITECTURE model_1 OF nand_gate IS 

BEGIN
	PROCESS (nand_input_a, nand_input_b)
	BEGIN
		nand_output <= nand_input_a NAND nand_input_b;
	END PROCESS;
END model_1; 
