LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Trinity IS
	port(
		-- clock 
		clock : in std_logic;
		-- Trilha do PC
		outPc : out std_logic_vector(15 downto 0);
		-- ram
		outRam : out std_logic_vector(15 downto 0);
		-- rom
		outRom : out std_logic_vector(15 downto 0);
		-- ula
		outUla : out std_logic_vector(15 downto 0);
		-- banco de registradores
		out_br_regA : out std_logic_vector(15 downto 0);
		out_br_regB : out std_logic_vector(15 downto 0);
		-- divisão de instrução
		out_opcode : out std_logic_vector(3 downto 0);
		out_rs : out std_logic_vector(3 downto 0);
		out_rt : out std_logic_vector(3 downto 0);
		out_endereco : out std_logic_vector(3 downto 0);
		overflow        : out std_logic;
		out_out_mult4_2X1_ram_ula : out std_logic_vector(15 downto 0)
	);
END Trinity;

ARCHITECTURE Behavioral OF Trinity IS
	
	COMPONENT PC IS 
		port (
		clock : in std_logic;
		inPort : in std_logic_vector (15 downto 0);
		outPort : out std_logic_vector (15 downto 0)
		);
	end COMPONENT;
	
	COMPONENT somador IS 
		port(
			clock : in std_logic;
			inPort : in std_logic_vector(15 downto 0);
			outPort : out std_logic_vector(15 downto 0)
		);
	end COMPONENT;
	
	COMPONENT divisao_instrucao IS
		port(
        in_port: in std_logic_vector(15 downto 0);
        out_op_code: out std_logic_vector(3 downto 0);
        out_rs: out std_logic_vector(3 downto 0);
        out_rt: out std_logic_vector(3 downto 0);
        out_jump: out std_logic_vector(3 downto 0)
    );
	end COMPONENT;
	
	COMPONENT bitExtensor4_16_2 IS
		PORT (
		in_data  : IN Std_Logic_Vector (3 DOWNTO 0);
		s : OUT Std_Logic_Vector (15 DOWNTO 0)
		);
	end COMPONENT;
	
	COMPONENT unidade_controle IS
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
	end COMPONENT;
	
	COMPONENT rom_memory IS
		PORT(
        in_data     : IN std_logic_vector(15 DOWNTO 0);
        clock       : IN std_logic;
        out_data    : OUT std_logic_vector(15 DOWNTO 0)
    );
	end COMPONENT;
	
	COMPONENT bitExtensor4_16 IS
		PORT (
		in_data  : IN Std_Logic_Vector (3 DOWNTO 0);
		s : OUT Std_Logic_Vector (15 DOWNTO 0)
		);
	end COMPONENT;
	
	COMPONENT multiplexador IS
    PORT ( SEL : IN  STD_LOGIC ;     -- select input
           A   : IN  STD_LOGIC_VECTOR (15 DOWNTO 0);     -- inputA
			  B   : IN  STD_LOGIC_VECTOR (15 DOWNTO 0);     -- inputB
           Sout   : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
			  );
	end COMPONENT;
	
	COMPONENT ula IS 
		port(
		selec : in std_logic_vector(3 downto 0);
		inA 	: in  std_logic_vector(15 downto 0);
		inB  	: in  std_logic_vector(15 downto 0);
		Sout  : out std_logic_vector(15 downto 0);
		s_zero: out std_logic;
		overflow: out std_logic);
	end COMPONENT;
	
	COMPONENT and_gate IS
		Port ( 
			inand1 : in  STD_LOGIC;  
         inand2 : in  STD_LOGIC;    
         saida   : out STD_LOGIC
			);
	end COMPONENT;
	
	COMPONENT ram_memory IS
	port(
        clock : in std_logic;       -- clock
        mem_write : in std_logic;   -- flag de escrita
        mem_read  : in std_logic;   -- flag de leitura
		  in_A      : in std_logic_vector(15 downto 0); -- valor
        addr      : in std_logic_vector(15 downto 0); -- endereço
        Sout     : out std_logic_vector(15 downto 0) -- saida
    );
	end COMPONENT;
	
	COMPONENT bancoRegistradores IS
	 PORT (
		clock			: IN std_logic;
		escreveReg		: IN std_logic;
		addressReg1		: IN std_logic_vector(3 DOWNTO 0);
		addressReg2		: IN std_logic_vector(3 DOWNTO 0);
		escreveDado		: IN std_logic_vector(15 DOWNTO 0);
		out_Reg1		: OUT std_logic_vector(15 DOWNTO 0);
		out_Reg2		: OUT std_logic_vector(15 DOWNTO 0)
	);
	end COMPONENT;
	
	--Pc
	signal out_pc : std_logic_vector(15 downto 0);
	
	--Add
	signal out_addr: std_logic_vector(15 downto 0);
	
	--Extensor de sinal 2 para 8 bits
	signal out_ES_4_16: std_logic_vector(15 downto 0);
	
	--Extensor de sinal 4 para 8 bits
	signal out_ES_4_16_2: std_logic_vector(15 downto 0);
	
	--Porta AND
	signal out_port_and: std_logic;
	
	--ULa
	signal out_ula_result: std_logic_vector(15 downto 0);
	signal out_ula_zero: std_logic;
	
	--ram
	signal out_ram: std_logic_vector(15 downto 0);
	
	--rom
	signal out_rom: std_logic_vector(15 downto 0);
	
	-- identificador de overflow
    signal estouroMEM : std_logic;
	
	--instruction division
	signal out_di_7_4: std_logic_vector(15 downto 12);
	signal out_di_3_2: std_logic_vector(11 downto 8);
	signal out_di_1_0: std_logic_vector(7 downto 4);
	signal out_di_3_0: std_logic_vector(3 downto 0);
	
	--banco de registradores
	signal out_br_reg_A: std_logic_vector(15 downto 0);
	signal out_br_reg_B: std_logic_vector(15 downto 0);
	
	--multiplexador 2x1(mux1), que fica entre o Banco de registradores e a ula
	signal out_mult1_2x1_br_ula : std_logic_vector(15 downto 0);
	
	--multiplexador 2x1(mux2), que recebe o extensor de sinal 4/8 e o add
	signal out_mult2_2x1_add_es :  std_logic_vector(15 downto 0);
	
	--multiplexador 2x1(mux3), que recebe do muliplexador anterior(mux2) do extensor de sinal e o jump
	signal out_port_map_mult3_2X1_jump : std_logic_vector (15 DOWNTO 0);
	
	--multiplexador 2x1(mux4), que recebe da ula e da memoria ram
	signal out_mult4_2x1_ram_ula: std_logic_vector(15 downto 0);
	
	-- unidade de controle
	signal out_uc_j: std_logic;
	signal out_uc_branch: std_logic;
	signal out_uc_mem_read: std_logic;
	signal out_uc_memto_reg: std_logic;
	signal out_uc_ula_op: std_logic_vector(3 downto 0);
	signal out_uc_mem_write: std_logic;
	signal out_uc_ula_src: std_logic;
	signal out_uc_reg_write: std_logic;

BEGIN
	--Port Maps
	
	port_map_addr : somador port map (clock,out_pc,out_addr);
	port_map_pc: PC port map (clock,out_port_map_mult3_2X1_jump,out_pc);
	port_map_rom: rom_memory port map (out_pc,clock,out_rom);
	port_map_divisao_intrucao : divisao_instrucao port map (out_rom,out_di_7_4,out_di_3_2,out_di_1_0,out_di_3_0);
	port_map_unidade_de_controle: unidade_controle port map(clock,out_di_7_4,out_uc_j,out_uc_branch,out_uc_mem_read,out_uc_memto_reg,out_uc_ula_op,out_uc_mem_write,out_uc_ula_src,out_uc_reg_write);
	port_map_banco_de_registradores: bancoRegistradores port map(clock,out_uc_reg_write,out_di_3_2,out_di_1_0,out_mult4_2x1_ram_ula,out_br_reg_A,out_br_reg_B);
	port_map_extensor_sinal_4_16: bitExtensor4_16 port map (out_di_1_0,out_ES_4_16);
	port_map_mult1_2x1_br_ula: multiplexador port map (out_uc_ula_src,out_br_reg_B,out_ES_4_16,out_mult1_2x1_br_ula);
	port_map_ula: ula port map (out_uc_ula_op,out_br_reg_A,out_mult1_2x1_br_ula,out_ula_result,out_ula_zero,estouroMEM);
	port_map_ram: ram_memory port map (clock,out_uc_mem_write,out_uc_mem_read,out_ula_result,out_ES_4_16,out_ram);
	port_map_mult4_2x1_ram_ula: multiplexador port map (out_uc_memto_reg,out_ula_result,out_ram,out_mult4_2x1_ram_ula);
	port_map_extensor_sinal_4_16_2: bitExtensor4_16_2 port map (out_di_3_0,out_ES_4_16_2);
	port_map_porta_and: and_gate port map (out_uc_branch,out_ula_zero,out_port_and);
	port_map_mult2_2x1_add_es : multiplexador port map (out_port_and,out_addr,out_ES_4_16_2,out_mult2_2x1_add_es);
	port_map_mult3_2X1_jump: multiplexador port map (out_uc_j,out_mult2_2x1_add_es,out_ES_4_16_2,out_port_map_mult3_2X1_jump);
	
	-- Resultados das Saidas
	outPc <= out_pc;
	outRom <= out_rom;
	out_opcode <= out_di_7_4;
	out_rs <= out_di_3_2;
	out_rt <= out_di_1_0;
	out_endereco <= out_di_3_0;
	out_br_regA <= out_br_reg_A;
	out_br_regB <= out_br_reg_B;
	outUla <= out_ula_result;
	outRam <= out_ram;
	out_out_mult4_2X1_ram_ula <= out_mult4_2x1_ram_ula;
	overflow <= estouroMEM;
	
END Behavioral;