
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY ALU IS

	PORT(
		sel	: IN STD_LOGIC_VECTOR (3 downto 0);
		a	: IN STD_LOGIC_VECTOR (3 downto 0);
		b	: IN STD_LOGIC_VECTOR (3 downto 0);
		y	:OUT STD_LOGIC_VECTOR (7 downto 0)
	);
END ALU;


-----------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------structural model------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------


ARCHITECTURE struct OF ALU IS

	COMPONENT increment IS				-------------------------component order -0-
	PORT(
		inc_input	: IN STD_LOGIC_VECTOR ( 3 downto 0);
		inc_output	:OUT STD_LOGIC_VECTOR ( 3 downto 0)
	);
	END COMPONENT;

	COMPONENT decrement IS				-------------------------component order -1-
	PORT(
		dec_input	: IN STD_LOGIC_VECTOR ( 3 downto 0);
		dec_output	:OUT STD_LOGIC_VECTOR ( 3 downto 0)
	);
	END COMPONENT;

	COMPONENT multiply IS				-------------------------component order -2-
	PORT(
		mul_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		mul_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		mul_output	:OUT STD_LOGIC_VECTOR (7 downto 0)
	);
	END COMPONENT;

	COMPONENT add IS				-------------------------component order -3-
	PORT(
		add_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		add_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		add_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;

	COMPONENT sub IS				-------------------------component order -4-
	PORT(
		sub_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		sub_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		sub_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;

	COMPONENT transfer IS				-------------------------component order -5-
	PORT(
		trans_input	: IN STD_LOGIC_VECTOR ( 3 downto 0);
		trans_output	:OUT STD_LOGIC_VECTOR ( 3 downto 0)
	);
	END COMPONENT;

	COMPONENT complement IS				-------------------------component order -6-
	PORT(
		comp_input	: IN STD_LOGIC_VECTOR ( 3 downto 0);
		comp_output	:OUT STD_LOGIC_VECTOR ( 3 downto 0)
	);
	END COMPONENT;

	COMPONENT and_gate IS				-------------------------component order -7-
	PORT(
		and_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		and_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		and_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;

	COMPONENT or_gate IS				-------------------------component order -8-
	PORT(
		or_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		or_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		or_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;

	COMPONENT xor_gate IS				-------------------------component order -9-
	PORT(
		xor_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		xor_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		xor_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;

	COMPONENT xnor_gate IS				-------------------------component order -10-
	PORT(
		xnor_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		xnor_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		xnor_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;

	COMPONENT nand_gate IS				-------------------------component order -11-
	PORT(
		nand_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		nand_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		nand_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;

	COMPONENT nor_gate IS				-------------------------component order -12-
	PORT(
		nor_input_a	: IN STD_LOGIC_VECTOR (3 downto 0);
		nor_input_b	: IN STD_LOGIC_VECTOR (3 downto 0);
		nor_output	:OUT STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;

	signal inc_temp_a,dec_temp_a,inc_temp_b,dec_temp_b,trans_temp_a,add_temp,sub_temp : std_logic_vector (3 downto 0);
	signal mul_temp : std_logic_vector (7 downto 0);
	signal comp_temp_a,comp_temp_b,and_temp,or_temp,xor_temp,xnor_temp,nand_temp,nor_temp : std_logic_vector (3 downto 0);

BEGIN

--------------------------------------------Arithmetic Operations------------------------------------------------------------
		op_0 : increment port map ( inc_input => a, inc_output => inc_temp_a);
		op_1 : decrement port map ( dec_input => a, dec_output => dec_temp_a);
		op_2 : multiply port map ( mul_input_a => a, mul_input_b => b, mul_output => mul_temp);
		op_3 : increment port map ( inc_input => b, inc_output => inc_temp_b);
		op_4 : decrement port map ( dec_input => b, dec_output => dec_temp_b);
		op_5 : transfer port map ( trans_input => a, trans_output => trans_temp_a);
		op_6 : add port map ( add_input_a => a, add_input_b => b, add_output => add_temp);
		op_7 : sub port map ( sub_input_a => a, sub_input_b => b, sub_output => sub_temp);

-------------------------------------------------Logic Operations------------------------------------------------------------
		op_8 : complement port map ( comp_input => a, comp_output => comp_temp_a);
		op_9 : complement port map ( comp_input => b, comp_output => comp_temp_b);
		op_10: and_gate port map ( and_input_a => a, and_input_b => b, and_output => and_temp);
		op_11: or_gate port map ( or_input_a => a, or_input_b => b, or_output => or_temp);
		op_12: xor_gate port map ( xor_input_a => a, xor_input_b => b, xor_output => xor_temp);
		op_13: xnor_gate port map ( xnor_input_a => a, xnor_input_b => b, xnor_output => xnor_temp);
		op_14: nand_gate port map ( nand_input_a => a, nand_input_b => b, nand_output => nand_temp);
		op_15: nor_gate port map ( nor_input_a => a, nor_input_b => b, nor_output => nor_temp);



PROCESS (sel,inc_temp_a,dec_temp_a,inc_temp_b,dec_temp_b,trans_temp_a,add_temp,sub_temp,
		mul_temp,comp_temp_a,comp_temp_b,and_temp,or_temp,xor_temp,xnor_temp,nand_temp,nor_temp)
BEGIN

-----------------------------------------------------------------------------------------------------------------------------
--------------------------------------------Arithmetic Operations------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------

	if sel = "0000" then			-------------------------Arithmetic Operation Increment a
		y <= "0000" & inc_temp_a;

	elsif sel = "0001" then			-------------------------Arithmetic Operation Decrement a
		y <= "0000" & dec_temp_a;

	elsif sel = "0010" then			-------------------------Arithmetic Operation Multiply a and b
		y <= mul_temp;

	elsif sel = "0011" then			-------------------------Arithmetic Operation Increment b
		y <= "0000" & inc_temp_b;

	elsif sel = "0100" then			-------------------------Arithmetic Operation Decrement b
		y <= "0000" & dec_temp_b;

	elsif sel = "0101" then			-------------------------Arithmetic Operation Transfer a
		y <= "0000" & trans_temp_a;
	
	elsif sel = "0110" then			-------------------------Arithmetic Operation Add a and b
		y <= "0000" & add_temp;

	elsif sel = "0111" then			-------------------------Arithmetic Operation Subtract a and b
		y <= "0000" & sub_temp;

-----------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------Logic Operations------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------

	elsif sel = "1000" then			-------------------------Logic Operation Complement a
		y <= "0000" & comp_temp_a;

	elsif sel = "1001" then			-------------------------Logic Operation Complement b
		y <= "0000" & comp_temp_b;

	elsif sel = "1010" then			-------------------------Logic Operation AND
		y <= "0000" & and_temp;

	elsif sel = "1011" then			-------------------------Logic Operation OR
		y <= "0000" & or_temp;

	elsif sel = "1100" then			-------------------------Logic Operation XOR
		y <= "0000" & xor_temp;

	elsif sel = "1101" then			-------------------------Logic Operation XNOR
		y <= "0000" & xnor_temp;

	elsif sel = "1110" then			-------------------------Logic Operation NAND
		y <= "0000" & nand_temp;

	elsif sel = "1111" then			-------------------------Logic Operation NOR
		y <= "0000" & nor_temp;

	end if;

END PROCESS;

END struct;


