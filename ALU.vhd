library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

 Entity ALU is
 Port ( 

 x : in signed(3 downto 0);
 y : in signed(3 downto 0);
 f : in std_logic;
 o : out signed(3 downto 0)
 
 );
 end entity;
 
 Architecture Behavior of ALU is
 
 component OpAnd is
 port ( x, y: in std_logic_vector(3 downto 0);
        o : out std_logic_vector(3 downto 0));
end component;

component sumador is
port ( x, y: in signed(3 downto 0);
        o : out signed(3 downto 0));
end component;

signal a, b : signed(3 downto 0);

begin 
 
alu_op : if f '0' generate
opAnd_component : OpAnd
port map(
x => x,
y => y,
o => a
);

else

sumador_component : sumador
port Map ( 
x => x,
y => y,
o => b
);

end generate;

process(f, a, b)
begin 
if f = '0' then
o <= a;
else 
o <= b;
end if;
end process;
end architecture;


end architecture;