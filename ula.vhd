LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

ENTITY ula IS 
	port(
		selec : in std_logic_vector(3 downto 0);
		inA 	: in  std_logic_vector(15 downto 0);
		inB  	: in  std_logic_vector(15 downto 0);
		Sout  : out std_logic_vector(15 downto 0);
		s_zero: out std_logic;
		overflow: out std_logic);
END ula;

ARCHITECTURE Behavior OF ula IS
	
	COMPONENT zero IS
		port(
			in_port : in std_logic;
			out_port : out std_logic
		);
	END COMPONENT;

	
	COMPONENT somador8bit IS
		PORT ( busX : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			 busY : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			 Cin : IN STD_LOGIC;
			 busS : out STD_LOGIC_VECTOR (15 DOWNTO 0);
			 overflow : out STD_LOGIC);
	END COMPONENT;

	
	 -- if para o beq e bne
    SIGNAL in_temp_zero : std_logic;
    SIGNAL out_temp_zero : std_logic;
	 signal somadorOut, subtratorOut : std_logic_vector(15 downto 0);
	 signal overflowSoma: std_logic;

BEGIN
		
		port_map_temp_zero : zero PORT MAP(in_temp_zero, out_temp_zero);
		soma    : somador8bit port map(inA, inB,'0', somadorOut, overflowSoma);
		
		process(inA,inB,selec,out_temp_zero)
		begin
			case selec is  
			when "0000" => --add
					 Sout <= somadorOut;
                overflow <= overflowSoma;
			when "0001" => Sout <= inA + inB; --addi
			when "0010" => Sout <= inA - inB; --subb
			when "0011" => Sout <= inA - inB; --subbi
			when "0100" => Sout <= inA;  --lw
			when "0101" => Sout <= inA; --sw	
			when "0110" => Sout <= inB; --li
			when "0111" => --beq
				if out_temp_zero = '1' then
					s_zero <= '1';
				else
					s_zero <= '0';
				end if;
				Sout <= "0000000000000000";
			when "1000" => -- If
				if inA = inB then
					in_temp_zero <= '1';
				else
					in_temp_zero <= '0';
				end if;
				Sout <= "0000000000000000";
			when others => Sout <= "0000000000000000";
		end case;
	end process;
END Behavior;	