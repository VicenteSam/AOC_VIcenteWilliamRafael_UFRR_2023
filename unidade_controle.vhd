LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY unidade_controle IS
    PORT(
        clock    : IN STD_LOGIC;
        opcode   : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        JUMP     : OUT STD_LOGIC;
        BRANCH   : OUT STD_LOGIC;
        MEMREAD  : OUT STD_LOGIC;
        MEMTOREG : OUT STD_LOGIC;
        ALUOP    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        MEMWRITE : OUT STD_LOGIC;
        ALUSRC   : OUT STD_LOGIC;
        REGWRITE : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE Behavioral OF unidade_controle IS
BEGIN
    process(Clock,OpCode)
	 Constant Add	 : Std_logic_vector(3 DOWNTO 0) := "0000";
	 Constant Sub	 : Std_logic_vector(3 DOWNTO 0) := "0001";
	 Constant Lw		 : Std_logic_vector(3 DOWNTO 0) := "0010";
	 Constant Sw		 : Std_logic_vector(3 DOWNTO 0) := "0011";
	 Constant Beq	 : Std_logic_vector(3 DOWNTO 0) := "0100";
	 Constant J		 : Std_logic_vector(3 DOWNTO 0) := "0101";
    begin
			case OpCode is
				when Add =>
					AluOp 	<= "0000";
					Regwrite <= '0';
					Jump 		<= '0';
					Branch 	<= '0';
					MemRead 	<= '0';
					MemToReg <= '0';
					MemWrite <= '0';
					Alusrc 	<= '0';
					
				when Sub =>
					AluOp 	<= "0001";
					Regwrite <= '0';
					Jump 		<= '0';
					Branch 	<= '0';
					MemRead 	<= '0';
					MemToReg <= '0';
					MemWrite <= '0';
					Alusrc 	<= '0';
					
				when Lw =>
					AluOp 	<= "0010";
					Regwrite <= '1';
					Jump 		<= '0';
					Branch 	<= '0';
					MemRead 	<= '1';
					MemToReg <= '1';
					MemWrite <= '0';
					Alusrc 	<= '0';
					
				when Sw =>
					AluOp 	<= "0011";
					Regwrite <= '1';
					Jump 		<= '0';
					Branch 	<= '0';
					MemRead 	<= '1';
					MemToReg <= '1';
					MemWrite <= '0';
					Alusrc 	<= '0';
					
				when Beq =>
					AluOp 	<= "0100";
					Regwrite <= '0';
					Jump 		<= '0';
					Branch 	<= '1';
					MemRead 	<= '0';
					MemToReg <= '0';
					MemWrite <= '0';
					Alusrc 	<= '0';
					
				when others => --J
					AluOp 	<= "0101";
					Regwrite <= '0';
					Jump 		<= '1';
					Branch 	<= '0';
					MemRead 	<= '0';
					MemToReg <= '0';
					MemWrite <= '0';
					Alusrc 	<= '0';
				end case;
			end process;
	end architecture;