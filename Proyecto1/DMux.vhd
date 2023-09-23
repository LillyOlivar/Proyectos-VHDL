
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity DMux is
	port(
		a	:	  in 	std_logic;
		sel:	  in	std_logic;
		
		y1	:	out	std_logic;
		y2	:	out	std_logic
	
	);
end entity;

-- Architecture (Implementation)
architecture arch of DMux is

begin
	y1 <= ( not sel ) and a;
   y2 <= a and sel;
	
end architecture;	
