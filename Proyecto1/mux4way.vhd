--LIBRERIAS Y PAQUETES

library IEEE;
use IEEE.std_logic_1164.all;
 
--ENTIDAD

entity mux4way is 

Port (

a : in std_logic;
b : in std_logic;
c : in std_logic;
d : in std_logic;
s1: in std_logic;
s2: in std_logic;
o : out std_logic

);
end entity;

--ARQUITECTURA

architecture mux4way_arch of mux4way is

signal x1,x2,x3,x4 : std_logic;

begin 

x1 <= (not s1) and (not s2) and a;
x2 <= s1 and (not s2) and b;
x3 <= (not s1) and s2 and c;
x4 <= s1 and s2 and d;
o <= x1 or x2 or x3 or x4;

end architecture;