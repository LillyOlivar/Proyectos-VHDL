library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity OpAnd is
port( x, y: in std_logic_vector(3 downto 0);
		o : out std_logic_vector(3 downto 0)
		);
		end entity;
		architecture arch of OpAnd is
		begin 
		
		o(0) <= x(0) and y(0);
		o(1) <= x(1) and y(1);
		o(2) <= x(2) and y(2);
		o(3) <= x(3) and y(3);
		
		end arch;