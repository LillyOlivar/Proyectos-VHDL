
-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity HalfAdder is
	port(
		a	:	in 	std_logic;
		b	:	in	   std_logic;
		sum, carry  :  out	std_logic
		
	);
end entity;

-- Architecture (Implementation)
architecture HalfAdder_arch of HalfAdder is
begin
sum <= a xor b;
carry <= a and b;
	
end architecture;	

