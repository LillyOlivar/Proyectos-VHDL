-- This file is part of the course "Circuitos Digitales II"
-- by Carlos Hernan Tobar Arteaga
-- File name: project_01/NotGate.vhdl

-- Not gate:
-- f = not x


-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity NotGate is
	port(
		x	:	in 	std_logic;
		f	:	out	std_logic
	);
end entity;

-- Architecture (Implementation)
architecture NotGate_arch of NotGate is
begin
	F <= x nand x;
end architecture;	

