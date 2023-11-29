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
END unidade_controle;

ARCHITECTURE LOGIC OF unidade_controle IS
BEGIN
    PROCESS(CLOCK, OPCODE)
    CONSTANT ADD   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
    CONSTANT ADDI  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001";
    CONSTANT SUB   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010";
    CONSTANT SUBI  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011";
    CONSTANT LW    : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100";
    CONSTANT SW    : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101";
    CONSTANT LI    : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0110";
    CONSTANT BEQ   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0111";
	 CONSTANT IF_OP : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000";
	 CONSTANT J     : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001";
    BEGIN
        CASE OPCODE IS 
            WHEN ADD =>
                ALUOP    <= "0000";
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0'; 			 
            WHEN ADDI =>
                ALUOP    <= "0001";
                ALUSRC   <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';   		 
            WHEN SUB =>
                ALUOP    <= "0010";                
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0'; 				 
            WHEN SUBI =>
                ALUOP    <= "0011";
                ALUSRC   <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0'; 			 
            WHEN LW =>
                ALUOP    <=  "0100";
                MEMREAD  <= '1';
                MEMTOREG <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';                                
                MEMWRITE <= '0';
                ALUSRC   <= '0';                
            WHEN SW =>
                ALUOP    <=  "0101";
                MEMWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                                
                ALUSRC   <= '0';
                REGWRITE <= '0';
            WHEN LI =>
                ALUOP    <=  "0110";
                ALUSRC   <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';  			 
            WHEN BEQ =>
                ALUOP    <= "0111";
                BRANCH   <= '1';
                JUMP     <= '0';  
                MEMREAD  <= '0';              
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
	    WHEN IF_OP =>
                ALUOP    <= "1000";
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
            WHEN J =>
                ALUOP    <=   "1001";
                JUMP     <= '1';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
            WHEN OTHERS => 
                ALUOP    <=   "1001";
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
            END CASE;           
    END PROCESS;
END;