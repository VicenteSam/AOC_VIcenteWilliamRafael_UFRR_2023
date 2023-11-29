library Ieee;
Use Ieee.std_logic_1164.all;
Use Ieee.numeric_std.all;

ENTITY bancoRegistradores IS 
PORT (
	clock			: IN std_logic;
	escreveReg		: IN std_logic;
	addressReg1		: IN std_logic_vector(3 DOWNTO 0);
	addressReg2		: IN std_logic_vector(3 DOWNTO 0);
	addressReg3		: IN std_logic_vector(3 DOWNTO 0);
	escreveDado		: IN std_logic_vector(15 DOWNTO 0);
	out_Reg2		: OUT std_logic_vector(15 DOWNTO 0);
	out_Reg3		: OUT std_logic_vector(15 DOWNTO 0)
);
END bancoRegistradores;

ARCHITECTURE main OF bancoRegistradores IS 

	TYPE bancoRegistradores IS ARRAY (0 TO 8)OF std_logic_vector (15 DOWNTO 0); -- verificar
	SIGNAL registradores : bancoRegistradores;

BEGIN
		PROCESS (clock, addressReg1, addressReg2)
		BEGIN
				IF rising_edge(clock) THEN
					IF (escreveReg = '1') THEN
						registradores(to_integer(unsigned(addressReg1))) <= escreveDado; 
					END IF;
				END IF;
				out_Reg2 <= registradores(to_integer(unsigned(addressReg2)));
				out_Reg3 <= registradores(to_integer(unsigned(addressReg3)));
		END PROCESS;
END main;