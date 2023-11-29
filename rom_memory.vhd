
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



		--Teste ADD, SUB, LW, SW e J
		0 => "0001000000000011", -- ADDI RD 3 -> RD = 3
		1 => "0001000100010001", -- ADDI RT 1 -> RT = 1
		2 => "0011000000000001", -- SUBI RD 1 -> RD = 2
		3 => "0010000000000001", -- SUB RD RT -> RD = 1
		4 => "0001000000000011", -- ADDI RD 3 -> RD = 4
		5 => "0001000000000010", -- ADDI RD 2 -> RD = 6
		6 => "0000000000000001", -- ADD RD RT -> RD = 7
		7 => "0101000000000000", -- SW RD
		8 => "0100000000000000", -- LW RD
		9 => "1000000000010100", -- J 0100
		
		--Teste BEQ (True)
		--0 => "0110000000000010",	-- Li S0 2
		--1 => "0110000100010010", 	-- Li S1 2
		--2 => "1000000000000001", 	-- If S0 == S1
		--3 => "0111000000010101", 	-- Beq S0 == S1 Jump 0101
		--4 => "0001000000000010", 	-- Addi S0 S0 2 = 4 (pula)
		--5 => "0001000000000010", 	-- Addi S0 S0 1 = 3 (resultado final)
		
		--Teste BEQ (False)
		--0 => "0110000000000010",	-- Li S0 2
		--1 => "0110000100010010", 	-- Li S1 3
		--2 => "1000000000000001", 	-- If S0 == S1
		--3 => "0111000000010101", 	-- Beq S0 == S1 Jump 0101
		--4 => "0001000000000010", 	-- Addi S0 S0 2 = 4 (executa)
		--5 => "0001000000000010", 	-- Addi S0 S0 1 = 5 (resultado final)


		
		
		OTHERS=> "0000000000000000"
    );
    BEGIN
        PROCESS (clock)
		  BEGIN
            out_data <= rom_memory(to_integer(unsigned(in_data)));
        END PROCESS;
END main;  