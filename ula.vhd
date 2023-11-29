LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ula IS 
	port(
		Clock: 			in std_logic;
		selec : in std_logic_vector(3 downto 0); --AluOp
		inA 	: in  std_logic_vector(15 downto 0);
		inB  	: in  std_logic_vector(15 downto 0);
		Sout  : out std_logic_vector(15 downto 0);
		s_zero, overflow: out std_logic
	);
END ula;

architecture Behavior of Ula is

SIGNAL SOMA,SUBTRACAO                     : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL OVERFLOW_SOMA,OVERFLOW_SUBTRACAO   : STD_LOGIC;
SIGNAL IN_BRANCH_HELPER,OUT_BRANCH_HELPER : STD_LOGIC;

COMPONENT somador16bit IS
	PORT(
		A,B  : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		CIN  : IN STD_LOGIC;
		COUT : OUT STD_LOGIC;
		S    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT subtrator16bit IS
	PORT(
		A,B  : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		COUT : OUT STD_LOGIC;
		S    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT BRANCH_HELPER IS
	PORT (
	  A : IN STD_LOGIC;
	  S : OUT STD_LOGIC
	);
END COMPONENT;

BEGIN
	BH  : BRANCH_HELPER PORT MAP(IN_BRANCH_HELPER, OUT_BRANCH_HELPER);
	OP1 : somador16bit PORT MAP(inA, inB, '0', OVERFLOW_SOMA, SOMA);
	OP2 : subtrator16bit PORT MAP(inA, inB, OVERFLOW_SUBTRACAO, SUBTRACAO);

	PROCESS(Clock,selec,inA,inB,SOMA,SUBTRACAO,OVERFLOW_SOMA,OVERFLOW_SUBTRACAO,IN_BRANCH_HELPER,OUT_BRANCH_HELPER)
	BEGIN
		CASE selec IS
			-- SOMA
			WHEN "0000" =>
				Sout        <= SOMA;
				OVERFLOW <= OVERFLOW_SOMA;
			-- SOMA IMEDIATA
			WHEN "0001" =>
				Sout        <= SOMA;
				OVERFLOW <= OVERFLOW_SOMA;
			-- SUBTRAÇÃO
			WHEN "0010" =>
				Sout        <= SUBTRACAO;
				OVERFLOW <= OVERFLOW_SUBTRACAO;
			-- SUBTRAÇÃO IMEDIATA
			WHEN "0011" =>
				Sout        <= SUBTRACAO;
				OVERFLOW <= OVERFLOW_SUBTRACAO;
			-- LW
			WHEN "0100" =>
				Sout        <= inA;
				OVERFLOW <= '0';
			-- SW
			WHEN "0101" =>
				Sout        <= inA;
				OVERFLOW <= '0';
			-- LI
			WHEN "0110" =>
				Sout        <= inB;
				OVERFLOW <= '0';
			-- BEQ
			WHEN "0111" =>
				IF OUT_BRANCH_HELPER = '1' THEN
					s_zero     <= '1';
				ELSE
					s_zero     <= '0';
				END IF;
				Sout        <= "0000000000000000";
				OVERFLOW <= '0';
			-- IF
			WHEN "1000" =>
				IF inA = inB THEN
					IN_BRANCH_HELPER <= '1';
				ELSE
					IN_BRANCH_HELPER <= '0';
				END IF;
				Sout <= "0000000000000000";
				OVERFLOW <= '0';
			-- J
			WHEN OTHERS =>
				Sout        <= "0000000000000000";
				OVERFLOW <= '0';
		END CASE;
	END PROCESS;
END;