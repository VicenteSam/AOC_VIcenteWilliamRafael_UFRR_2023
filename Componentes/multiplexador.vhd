library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY multiplexador IS
    PORT ( SEL : IN  STD_LOGIC ;     -- select input
           A   : IN  STD_LOGIC_VECTOR (15 DOWNTO 0);     -- inputA
			  B   : IN  STD_LOGIC_VECTOR (15 DOWNTO 0);     -- inputB
           Sout   : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)); -- output
END multiplexador;

ARCHITECTURE Behavioral OF multiplexador IS
BEGIN
WITH SEL SELECT
    Sout <= A WHEN '0',
				B WHEN '1';
        
END Behavioral;