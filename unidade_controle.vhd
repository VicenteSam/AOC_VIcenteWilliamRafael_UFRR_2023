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
    PROCESS(clock, opcode)
    CONSTANT add   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
    CONSTANT addi  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001";
    CONSTANT sub   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010";
    CONSTANT subi  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011";
	 CONSTANT lw   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100";
    CONSTANT sw    : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101";
    CONSTANT li    : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0110";
	 CONSTANT beq  : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0111";
    CONSTANT if_op    : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000";
    CONSTANT j   : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001";

    BEGIN
        CASE OPCODE IS 
            WHEN ADD =>
                ALUOP    <= ADD;
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0'; 			 
            WHEN ADDI =>
                ALUOP    <= ADDI;
                ALUSRC   <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';   		 
            WHEN SUB =>
                ALUOP    <= SUB;                
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0'; 				 
            WHEN SUBI =>
                ALUOP    <= SUBI;
                ALUSRC   <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0'; 			 
            WHEN LW =>
                ALUOP    <=  LW;
                MEMREAD  <= '1';
                MEMTOREG <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';                                
                MEMWRITE <= '0';
                ALUSRC   <= '0';                
            WHEN SW =>
                ALUOP    <=  SW;
                MEMWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                                
                ALUSRC   <= '0';
                REGWRITE <= '0';
            WHEN LI =>
                ALUOP    <=  LI;
                ALUSRC   <= '1';
                REGWRITE <= '1';
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';  			 
            WHEN BEQ =>
                ALUOP    <= BEQ;
                BRANCH   <= '1';
                JUMP     <= '0';  
                MEMREAD  <= '0';              
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
	    WHEN IF_OP =>
                ALUOP    <= IF_OP;
                JUMP     <= '0';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
            WHEN J =>
                ALUOP    <=   J;
                JUMP     <= '1';
                BRANCH   <= '0';
                MEMREAD  <= '0';
                MEMTOREG <= '0';                
                MEMWRITE <= '0';
                ALUSRC   <= '0';
                REGWRITE <= '0';
            WHEN OTHERS => 
                ALUOP    <=   J;
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