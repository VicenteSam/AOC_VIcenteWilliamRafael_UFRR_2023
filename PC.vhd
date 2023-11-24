LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY PC IS 
	port (
		clock : in std_logic;
		inPort : in std_logic_vector (15 downto 0);
		outPort : out std_logic_vector (15 downto 0)
	);
END PC;

ARCHITECTURE Behavioral OF PC IS
BEGIN 
	PROCESS(clock)
	BEGIN 
		IF rising_edge(clock) THEN
			outPort <= inPort;
		END IF;
	END PROCESS;
END Behavioral;