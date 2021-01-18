
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY multiply IS

	PORT(
		mul_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		mul_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		mul_output	:OUT STD_LOGIC_VECTOR (7 downto 0)
	);
END multiply;

ARCHITECTURE model_1 OF multiply IS

BEGIN
	PROCESS (mul_input_a, mul_input_b)

	VARIABLE num_1 : STD_LOGIC_VECTOR (7 downto 0);
	VARIABLE num_2 : STD_LOGIC_VECTOR (7 downto 0);

	BEGIN
		num_1 := "00000000";
		num_2 := "0000" & mul_input_b;
		
		for i in 0 to 3 loop
			if mul_input_a(i) = '1' then
				num_1 := num_1 + num_2;
			end if;
			num_2 := num_2(6 downto 0) & '0';
		end loop;
		mul_output <= num_1;
	END PROCESS;
END model_1;