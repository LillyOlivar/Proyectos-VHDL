library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or8Way is
  Port (
  
   a : in std_logic;
	b : in std_logic;
	c : in std_logic;
	d : in std_logic;
	e : in std_logic;
	f : in std_logic;
	g : in std_logic;
	h : in std_logic;
	y : out std_logic
	 
  );
end entity Or8Way;

architecture arch of Or8Way is
signal sg1,sg2,sg3,sg4,sg5,sg6 : std_logic := '0';
begin
 sg1 <= (not a) nand (not b);
  sg2 <= (not c) nand (not d);
   sg3 <= (not e) nand (not f);
	 sg4 <= (not g) nand (not h);
	  sg5 <= (not sg1) nand (not sg2);
	   sg6 <= (not sg3) nand (not sg4);
		 y <= (not sg5) nand (not sg6);
end architecture;
