LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY bitExtensor4_16_2 IS 
	PORT (
		in_data  : IN Std_Logic_Vector (3 DOWNTO 0);
		s : OUT Std_Logic_Vector (15 DOWNTO 0)
	);

END bitExtensor4_16_2;

ARCHITECTURE Behavior OF bitExtensor4_16_2 IS 
BEGIN
	PROCESS (in_data)
	BEGIN 
		s <= ("000000000000") & in_data;	--verificar
	END PROCESS;
END Behavior;