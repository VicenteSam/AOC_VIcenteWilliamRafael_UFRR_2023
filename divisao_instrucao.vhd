LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY divisao_instrucao IS
    port(
        in_port: in std_logic_vector(15 downto 0); --instrução
        out_op_code: out std_logic_vector(3 downto 0); --opcode
        out_rs: out std_logic_vector(3 downto 0); --rs
        out_rt: out std_logic_vector(3 downto 0); --rt
		  out_rd: out std_logic_vector(3 downto 0); --rd
        out_jump: out std_logic_vector(15 downto 0) -- endereço
    );
END divisao_instrucao;

ARCHITECTURE behavior OF  divisao_instrucao IS

    BEGIN
        out_op_code <= in_port(15 downto 12); -- 4 bits
        out_rs <= in_port(11 downto 8); -- 4 bits
        out_rt <= in_port(7 downto 4); -- 4 bits
		  out_rd <= in_port(3 downto 0); -- 4 bits
        out_jump(11 downto 0) <= in_port(11 downto 0);
		  out_jump(15 downto 12) <= (others =>'0'); --12 bits
 END behavior;