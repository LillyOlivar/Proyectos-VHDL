-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (Interface)
entity Or16 is
	port(
		a	:	in 	std_logic_vector(15 downto 0);
		b	:	in 	std_logic_vector(15 downto 0);
		y	:	out	std_logic_vector(15 downto 0)
	);
end entity;

-- Architecture (Implementation)
architecture arch of Or16 is
	signal x : std_logic_vector(15 downto 0);
	signal z : std_logic_vector(15 downto 0);
	
begin

   x(0) <= a(0) nand a(0);
	z(0) <= b(0) nand b(0);
	x(1) <= a(1) nand a(1);
	z(1) <= b(1) nand b(1);
	x(2) <= a(2) nand a(2);
	z(2) <= b(2) nand b(2);
	x(3) <= a(3) nand a(3);
	z(3) <= b(3) nand b(3);
	x(4) <= a(4) nand a(4);
	z(4) <= b(4) nand b(4);
	x(5) <= a(5) nand a(5);
	z(5) <= b(5) nand b(5);
	
	x(6) <= a(6) nand a(6);
	z(6) <= b(6) nand b(6);
	x(7) <= a(7) nand a(7);
	z(7) <= b(7) nand b(7);
	x(8) <= a(8) nand a(8);
	z(8) <= b(8) nand b(8);
	x(9) <= a(9) nand a(9);
	z(9) <= b(9) nand b(9);
	x(10) <= a(10) nand a(10);
	z(10) <= b(10) nand b(10);
	x(11) <= a(11) nand a(11);
	z(11) <= b(11) nand b(11);
	
	x(12) <= a(12) nand a(12);
	z(12) <= b(12) nand b(12);
	x(13) <= a(13) nand a(13);
	z(13) <= b(13) nand b(13);
	x(14) <= a(14) nand a(14);
	z(14) <= b(14) nand b(14);
	x(15) <= a(15) nand a(15);
	z(15) <= b(15) nand b(15);


	y(0) <= x(0) nand z(0);
	y(1) <= x(1) nand z(1);
	y(2) <= x(2) nand z(2);
	y(3) <= x(3) nand z(3);
	y(4) <= x(4) nand z(4);
	y(5) <= x(5) nand z(5);
	y(6) <= x(6) nand z(6);
	y(7) <= x(7) nand z(7);
	y(8) <= x(8) nand z(8);
	y(9) <= x(9) nand z(9);
	y(10) <= x(10) nand z(10);
	y(11) <= x(11) nand z(11);
	y(12) <= x(12) nand z(12);
	y(13) <= x(13) nand z(13);
	y(14) <= x(14) nand z(14);
	y(15) <= x(15) nand z(15);

end architecture;	
