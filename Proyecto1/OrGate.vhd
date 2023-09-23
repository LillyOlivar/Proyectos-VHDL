-- Library and packages 

library IEEE;

use IEEE.std_logic_1164.all;

-- Entity (Interface)

entity OrGate is

	port(
		a	:	in 	std_logic;
		b	:	in 	std_logic;
		c	:	out	std_logic
		
	);
	
end entity;

-- Architecture 
architecture OrGate_arch of OrGate is

	signal x : std_logic;
	signal y : std_logic;
	
begin
	
	x <= a nand a;
	y <= b nand b;
	c <= x nand y;
	
end architecture;
