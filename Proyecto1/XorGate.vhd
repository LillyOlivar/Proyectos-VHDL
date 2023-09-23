
-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity XorGate is
	port(
		a	:	in 	std_logic;
		b	:	in	   std_logic;
		c  :  out	std_logic
	);
end entity;

-- Architecture (Implementation)
architecture XorGate_arch of XorGate is
signal tem1,tem2,tem3,tem4 : std_logic;
begin

	tem1 <= a nand a;
	tem2 <= tem1 nand b;
	
	tem3 <= b nand b;
	tem4 <= a nand tem3;
	
	c <= tem2 nand tem4;
	
end architecture;	
