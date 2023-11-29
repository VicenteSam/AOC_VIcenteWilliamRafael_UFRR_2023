library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador is 
	port(
		clock : in std_logic;
		inPort : in std_logic_vector(15 downto 0);
		outPort : out std_logic_vector(15 downto 0)
	);
end somador;
architecture main of somador is
	begin
	process(clock)
	begin
		outPort <= inPort + "0000000000000001";
	end process;
end main;