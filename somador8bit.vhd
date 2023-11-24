LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY somador8bit IS 
	PORT ( busX : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			 busY : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			 Cin : IN STD_LOGIC;
			 busS : out STD_LOGIC_VECTOR (15 DOWNTO 0);
			 overflow : out STD_LOGIC);
end somador8bit;

ARCHITECTURE Behavioral of somador8bit IS
	COMPONENT somador1bit 
	PORT ( X : IN STD_LOGIC;
			 Y : IN STD_LOGIC;
			 Cin : IN STD_LOGIC;
			 S : OUT  STD_LOGIC;
			 Cout : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL C0: STD_LOGIC;
	SIGNAL C1: STD_LOGIC;
	SIGNAL C2: STD_LOGIC;
	SIGNAL C3: STD_LOGIC;
	SIGNAL C4: STD_LOGIC;
	SIGNAL C5: STD_LOGIC;
	SIGNAL C6: STD_LOGIC;
	SIGNAL C7: STD_LOGIC;
	
	BEGIN
		b0 : somador1bit PORT MAP (x=>busx(0), y=>busy(0), cin => cin, s=>buss(0), cout=>C0);
		b1 : somador1bit PORT MAP (x=>busx(1), y=>busy(1), cin => C0, s=>buss(1), cout=>C1);
		b2 : somador1bit PORT MAP (x=>busx(2), y=>busy(2), cin => C1, s=>buss(2), cout=>C2);
		b3 : somador1bit PORT MAP (x=>busx(3), y=>busy(3), cin => C2, s=>buss(3), cout=>C3);
		b4 : somador1bit PORT MAP (x=>busx(4), y=>busy(4), cin => C3, s=>buss(4), cout=>C4);
		b5 : somador1bit PORT MAP (x=>busx(5), y=>busy(5), cin => C4, s=>buss(5), cout=>C5);
		b6 : somador1bit PORT MAP (x=>busx(6), y=>busy(6), cin => C5, s=>buss(6), cout=>C6);
		b7 : somador1bit PORT MAP (x=>busx(7), y=>busy(7), cin => C6, s=>buss(7), cout=>C7);
		overflow <= C6 XOR C7;
		
	END Behavioral;