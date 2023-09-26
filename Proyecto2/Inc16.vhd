-- Librerias y paquetes
library ieee;
use ieee.std_logic_1164.all;

-- Entidad
entity Inc16 is
	Port(
		a, b : in std_logic_vector(15 downto 0);
		sum, carry : out std_logic_vector(15 downto 0)
	);
end entity;

-- Arquitectura
architecture arch_Inc16 of Inc16 is
begin

	sum(0)  <= a(0) xor b(0);
	sum(1)  <= a(1) xor b(1);
	sum(2)  <= a(2) xor b(2);
	sum(3)  <= a(3) xor b(3);
	sum(4)  <= a(4) xor b(4);
	sum(5)  <= a(5) xor b(5);
	sum(6)  <= a(6) xor b(6);
	sum(7)  <= a(7) xor b(7);
	sum(8)  <= a(8) xor b(8);
	sum(9)  <= a(9) xor b(9);
	sum(10) <= a(10) xor b(10);
	sum(11) <= a(11) xor b(11);
	sum(12) <= a(12) xor b(12);
	sum(13) <= a(13) xor b(13);
	sum(14) <= a(14) xor b(14);
	sum(15) <= a(15) xor b(15);
	
	carry(0)  <= a(0) and b(0);
	carry(1)  <= a(1) and b(1);
	carry(2)  <= a(2) and b(2);
	carry(3)  <= a(3) and b(3);
	carry(4)  <= a(4) and b(4);
	carry(5)  <= a(5) and b(5);
	carry(6)  <= a(6) and b(6);
	carry(7)  <= a(7) and b(7);
	carry(8)  <= a(8) and b(8);
	carry(9)  <= a(9) and b(9);
	carry(10) <= a(10) and b(10);
	carry(11) <= a(11) and b(11);
	carry(12) <= a(12) and b(12);
	carry(13) <= a(13) and b(13);
	carry(14) <= a(14) and b(14);
	carry(15) <= a(15) and b(15);
	
end architecture;