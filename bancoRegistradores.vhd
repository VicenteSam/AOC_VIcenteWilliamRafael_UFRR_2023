library Ieee;
Use Ieee.std_logic_1164.all;
Use Ieee.numeric_std.all;

ENTITY bancoRegistradores IS 
PORT (
	clock			: IN std_logic;
	escreveReg		: IN std_logic;
	addressReg1		: IN std_logic_vector(3 DOWNTO 0);
	addressReg2		: IN std_logic_vector(3 DOWNTO 0);
	escreveDado		: IN std_logic_vector(15 DOWNTO 0);
	out_Reg1		: OUT std_logic_vector(15 DOWNTO 0);
	out_Reg2		: OUT std_logic_vector(15 DOWNTO 0)
);
END bancoRegistradores;

ARCHITECTURE main OF bancoRegistradores IS 

	TYPE bancoRegistradores IS ARRAY (0 TO 15)OF std_logic_vector (15 DOWNTO 0); -- verificar
	SIGNAL registradores : bancoRegistradores;

BEGIN
		PROCESS (clock)
		BEGIN
				IF rising_edge(clock) THEN
					IF (escreveReg = '1') THEN
						registradores(to_integer(unsigned(addressReg1))) <= escreveDado; 
					END IF;
				END IF;
				out_Reg1 <= registradores(to_integer(unsigned(addressReg1)));
				out_Reg2 <= registradores(to_integer(unsigned(addressReg2)));
		END PROCESS;
END main;