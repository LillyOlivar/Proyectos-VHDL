library ieee;
use ieee.std_logic_1164.all;

entity ALU is 
port (
x 	: in std_logic;
y 	: in std_logic;
s1	: in std_logic;
s2	: in std_logic;
z 	: out std_logic
);
end entity;
architecture arch of ALU is 
	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal c : std_logic := '0';
	signal d : std_logic := '0';
	signal x1, x2, x3, x4 : std_logic;
	
begin 
a <= (not x) nand (not y);
b <= (x and (not y)) or ((not x) and y);
c <= (not x) nor (not y);
d <=  not x;
	x1 <= (not s1) and (not s2) and a;
	x2 <= s1 and (not s2) and b;
	x3 <= (not s1) and s2 and c;
	x4 <= s1 and s2 and d;
	z <= x1 or x2 or x3 or x4;
end architecture;