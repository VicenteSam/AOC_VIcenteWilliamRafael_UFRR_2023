LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

entity subtrator is
	
	port(
		A    : in unsigned (15 downto 0);
		B    : in unsigned (15 downto 0);
		Sub  : out unsigned (15 downto 0) 
	);
	
end entity;

architecture Behavior of subtrator is
begin

	Sub <= A - B;
	
end Behavior;