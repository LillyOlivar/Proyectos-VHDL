-- Library and packages
library ieee;
use ieee.std_logic_1164.all;

entity Mux8Way is
	Port(
		
		sel : in std_logic;
		sel2 : in std_logic;
		sel3 : in std_logic;
		a: in std_logic;	
		b: in std_logic;
		c:	in	std_logic;
		d	:	in	std_logic;
		e	:	in	std_logic;
		f	:	in	std_logic;
		g	:	in	std_logic;
		h	:	in	std_logic;
		o 	: out std_logic
		
	);
end entity;

architecture arch of Mux8Way  is

signal y1a : std_logic;
signal y1b : std_logic;
signal y2a : std_logic;
signal y2b : std_logic;
signal y3a : std_logic;
signal y3b : std_logic;



	component Mux is
		Port(
		a	:	in 	std_logic;
		b	:	in		std_logic;
		sel:	in 	std_logic;
		o	:	out	std_logic
		
		);
	end component;
begin

	Mux1: Mux
	
		Port map(
		a => a,
		b	=> b,
		sel => sel,
		o	=> y1a
		);
		
	Mux2: Mux
		Port map(
		a => c,
		b	=> d,
		sel => sel,
		o	=> y1b
		);
		
	Mux3: Mux
		Port map(
		a	=> y1a,
		b	=>	y1b,
		sel => sel2,
		o	=> y3a
		);
		
	Muxa: Mux
	
		Port map(
		a => e,
		b	=> f,
		sel => sel,
		o	=> y2a
		);
		
	Muxb: Mux
		Port map(
		a => g,
		b	=> h,
		sel => sel,
		o	=> y2b
		);
		
	Muxc: Mux
		Port map(
		a	=> y2a,
		b	=>	y2b,
		sel => sel2,
		o	=> y3b
		);
		
	Muxa1: Mux
		Port map(
		a	=> y3a,
		b	=>	y3b,
		sel => sel3,
		o	=> o
			
		);
end architecture;