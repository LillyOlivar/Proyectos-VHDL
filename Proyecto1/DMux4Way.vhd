-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

entity DMux4Way is
	Port(
		a 	: in std_logic;
		sel : in std_logic;
		sel2 : in std_logic;
		y1: out std_logic;	
		y2: out std_logic;
		y3:	out	std_logic;
		y4	:	out	std_logic
		
	);
end entity;

architecture arch of DMux4Way  is

signal y1a : std_logic;
signal y1b : std_logic;

	component DMux is
		Port(
			a	:	in 	std_logic;
			sel : in		std_logic;
			y1:	out	std_logic;
			y2	:	out	std_logic
		
		);
	end component;
begin

	DMux1: Dmux
	
		Port map(
			a => a,
			sel => sel,
			y1 => y1a,
			y2 => y1b
		);
		
	DMux2: DMux
		Port map(
			a => y1a,
			sel => sel2,
			y1 => y1,
			y2 => y2
		);
		
		DMux3: DMux
		Port map(
			a => y1b,
			sel => sel2,
			y1 => y3,
			y2 => y4
			
		);
		
end architecture;