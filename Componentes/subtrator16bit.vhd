LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY subtrator16bit IS
	PORT(	
		A,B  : IN STD_LOGIC_VECTOR (15 DOWNTO 0); 
		COUT : OUT STD_LOGIC; 
		S    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE BEHAVIOR OF subtrator16bit IS
SIGNAL COMPLEMENTO : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT somador16bit IS
PORT(
	A,B  : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	CIN  : IN STD_LOGIC;
	COUT : OUT STD_LOGIC;
	S    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END COMPONENT;
	
BEGIN
	COMPLEMENTO(15) <= '1' XOR B(15);
	COMPLEMENTO(14) <= '1' XOR B(14);
	COMPLEMENTO(13) <= '1' XOR B(13);
	COMPLEMENTO(12) <= '1' XOR B(12);
	COMPLEMENTO(11) <= '1' XOR B(11);
	COMPLEMENTO(10) <= '1' XOR B(10);
	COMPLEMENTO(9)  <= '1' XOR B(9);
	COMPLEMENTO(8)  <= '1' XOR B(8);
	COMPLEMENTO(7)  <= '1' XOR B(7);
	COMPLEMENTO(6)  <= '1' XOR B(6);
	COMPLEMENTO(5)  <= '1' XOR B(5);
	COMPLEMENTO(4)  <= '1' XOR B(4);
	COMPLEMENTO(3)  <= '1' XOR B(3);
	COMPLEMENTO(2)  <= '1' XOR B(2);
	COMPLEMENTO(1)  <= '1' XOR B(1);
	COMPLEMENTO(0)  <= '1' XOR B(0);
	RESULTADO : somador16bit PORT MAP(A, COMPLEMENTO, '1', COUT, S);
END;