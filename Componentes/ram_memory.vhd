LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY ram_memory IS
    port(
        clock : in std_logic;       -- clock
        mem_write : in std_logic;   -- flag de escrita
        mem_read  : in std_logic;   -- flag de leitura
		  in_A      : in std_logic_vector(15 downto 0); -- valor
        addr      : in std_logic_vector(15 downto 0); -- endereço
        Sout     : out std_logic_vector(15 downto 0) -- saida
    );
END ram_memory;

ARCHITECTURE Behavioral OF ram_memory is
    type mem_t is array (0 to 15) of std_logic_vector(15 downto 0); -- verificar
    signal mem : mem_t := (others => "0000000000000000");    
BEGIN

    PROCESS(clock)
    BEGIN

        IF rising_edge(clock) THEN
				
            -- Flag de escrita 
            IF(mem_write = '1') THEN
                mem(to_integer(unsigned(addr))) <= in_A;
            END IF;            
            -- Flag de leitura 
            IF(mem_read = '1') THEN
               Sout <= mem(to_integer(unsigned(addr)));
            END IF;
								
        END IF;

    END PROCESS;

END;