--LIBRERIAS Y PAQUETES

library IEEE;
use IEEE.std_logic_1164.all;
 
--ENTIDAD

entity AndGate is 

Port (

a : in std_logic;
b : in std_logic;
y : out std_logic

);
end entity;

--ARQUITECTURA

architecture AndGate_arch of AndGate is

signal x : std_logic;

begin 

x <= a nand b;
y <= not x;

end architecture;