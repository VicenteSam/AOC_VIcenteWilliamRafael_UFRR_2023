LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY bitExtensor2_8 IS 
	PORT (
		in_data  : IN Std_Logic_Vector (3 DOWNTO 0);
		s : OUT Std_Logic_Vector (15 DOWNTO 0)
	);

END bitExtensor2_8;

ARCHITECTURE Behavior OF bitExtensor2_8 IS 
BEGIN
	PROCESS (in_data)
	BEGIN 
		s <= ("000000000000") & in_data;	
	END PROCESS;
END Behavior;