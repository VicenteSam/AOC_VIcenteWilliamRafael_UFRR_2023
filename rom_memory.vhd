
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

       -- TESTE FIBONACCI
		0 => "0001000000010000", -- ADDI S0 0
		1 => "0101000000010000", -- SW S0
		2 => "0001000000010001", -- ADDI S0 1
		3 => "0001000001010001", -- ADDI S1 1
		4 => "0100000001000000", -- LW S3 00
		5 => "0000000001000101", -- ADD S3 S1
		6 => "0000000001010001", -- ADD S1 S0
		7 => "0100000000010000", -- LW S0 00
		8 => "0000000000010100", -- ADD S0 S3
		9 => "1001000001010100", -- J 0100


		--Teste para fatorial
--		0 => "10001111", -- li S3 3
--		1 => "00011111", -- addi S3 3 == 6
--		2 => "10001001", -- li S2 1
--		3 => "10000001", -- li S0 1
--		4 => "01000010", -- mul S0 S2
--		5 => "10111011", -- if S2 == S3
--		6 => "00011001", -- addi S2 1
--		7 => "10100100", -- bne S2 != S3 jump 0100
--		8 => "10000000", -- li S0 0
--		9 => "10000100", -- li S1 0
--		10=> "10001000", -- li S2 0
	
--Teste Fibonacci	
--0 => "10001111", --li S3 3
--1 => "01001111", --mul S3 S3
--2 => "00011101", --addi S3 1
--3 => "00011110", --addi S3 2
--4 => "00011110", --addi S3 2
--5 => "10001000", --li S2 0
--6 => "10000000", --li S0 0
--7 => "01100000", --sw S0 RAM(00)
--8 => "10000001", --li S0 1
--9 => "01100001", --sw S0 RAM(01)
--10 => "01010000", --lw S0 RAM(00)
--11 => "00000100", --add S1 S0
--12 => "01010001", --lw S0 RAM(01)
--13 => "00000100", --add S1 S0
--14 => "01100000", --sw S0 RAM(00)
--15 => "01100101", --sw S1 RAM(01)
--16 => "00011001", --addi S2 1
--17 => "10111011", --if S2 S3
--18 => "10101010", -- bne 1010


OTHERS=> "0000000000000000"
    );
    BEGIN
        PROCESS (clock)
		  BEGIN
            out_data <= rom_memory(to_integer(unsigned(in_data)));
        END PROCESS;
END main;  