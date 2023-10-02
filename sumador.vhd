library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity sumador is
port ( x, y : in signed( 3 downto 0);
       o : out signed (3 downto 0)
		 );
		 
		 end sumador;
		 architecture arch of sumador is 
		 begin 
		 o <= x+y;
		 end arch;
