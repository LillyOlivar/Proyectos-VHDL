-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

entity DMux8Way is
	Port(
		a 	: in std_logic;
		sel : in std_logic;
		sel2 : in std_logic;
		sel3 : in std_logic;
		y1: out std_logic;	
		y2: out std_logic;
		y3:	out	std_logic;
		y4	:	out	std_logic;
		y5:	out	std_logic;
		y6	:	out	std_logic;
		y7:	out	std_logic;
		y8	:	out	std_logic
		
	);
end entity;

architecture arch of DMux8Way  is

signal sg1 : std_logic;
signal sg2 : std_logic;
signal sg3 : std_logic;
signal sg4 : std_logic;
signal sg5 : std_logic;
signal sg6 : std_logic;

   component DMux is
		Port(
			a	:	in 	std_logic;
			sel : in		std_logic;
			y1:	out	std_logic;
			y2	:	out	std_logic
		);
	end component;
	
begin

	DMuxa : DMux
	
		Port map(
			a => a,
			sel => sel,
			y1 => sg1,
			y2 => sg2
		);
		
	 DMuxb : DMux
	 
		Port map(
			a => sg1,
			sel => sel2,
			y1 => sg3,
			y2 => sg4
		
		);
		
		DMuxc : DMux
		Port map(
			a => sg2,
			sel => sel2,
			y1 => sg5,
			y2 => sg6
	
		);
		
		DMuxd : DMux
		Port map(
			a => sg3,
			sel => sel3,
			y1 => y1,
			y2 => y2
	
		);
		
		DMuxe : DMux
		Port map(
			a => sg4,
			sel => sel3,
			y1 => y3,
			y2 => y4
	
		);
		
		DMuxf : DMux
		Port map(
			a => sg5,
			sel => sel3,
			y1 => y5,
			y2 => y6
	
		);
		
		DMuxg : DMux
		Port map(
			a => sg6,
			sel => sel3,
			y1 => y7,
			y2 => y8
	
		);
		
end architecture;