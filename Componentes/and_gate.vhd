library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port ( inand1 : in  STD_LOGIC;  
           inand2 : in  STD_LOGIC;    
           saida   : out STD_LOGIC);   
end and_gate;

architecture Behavioral of and_gate is
begin
    saida <= inand1 and inand2;    
end Behavioral;