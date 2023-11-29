
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY rom_memory IS
    PORT(
        in_data     : IN std_logic_vector(15 DOWNTO 0);
        clock       : IN std_logic;
        out_data    : OUT std_logic_vector(15 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE main OF rom_memory IS
    TYPE ROM IS ARRAY(0 TO 255) OF std_logic_vector(15 DOWNTO 0);
    SIGNAL rom_memory : ROM := (



		--Teste Instruções
		0 => "0001000000000011", -- ADDI S0 3
		1 => "0001000100010001", -- ADDI S1 1
		2 => "0011000000000001", -- SUBI S0 1
		3 => "0010000000000001", -- SUB S0 S1
		OTHERS=> "0000000000000000"
    );
    BEGIN
        PROCESS (clock)
		  BEGIN
            out_data <= rom_memory(to_integer(unsigned(in_data)));
        END PROCESS;
END main;  