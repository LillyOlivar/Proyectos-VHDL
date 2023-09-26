-- Library and packages
library ieee;
use ieee.std_logic_1164.all;


entity Add16 is
	Port(
		a 	   : in std_logic_vector(15 downto 0);
		b    	: in std_logic_vector(15 downto 0);
		c     : in std_logic;	
		sum   : out std_logic_vector(15 downto 0);
		carry : out std_logic
	);
end entity;

architecture arch of Add16 is
	signal carryc : std_logic_vector (15 downto 0);
	component FullAdder is
		Port(
			a 	   : in std_logic;
			b    	: in std_logic;
			c     : in std_logic;	
			sum   : out std_logic;
			carry : out std_logic
		);
	end component;
begin
	FullAdder15: FullAdder
		Port map(
			a => a(15),
			b => b(15),
			c => carryc(15),
			sum => sum(15),
			carry => carry
			);
	FullAdder14: FullAdder
		Port map(
			a => a(14),
			b => b(14),
			c => carryc(14),
			sum => sum(14),
			carry => carryc(15)
			);
	FullAdder13: FullAdder
		Port map(
			a => a(13),
			b => b(13),
			c => carryc(13),
			sum => sum(13),
			carry => carryc(14)
			);
	FullAdder12: FullAdder
		Port map(
			a => a(12),
			b => b(12),
			c => carryc(12),
			sum => sum(12),
			carry => carryc(13)
			);
	FullAdder11: FullAdder
		Port map(
			a => a(11),
			b => b(11),
			c => carryc(11),
			sum => sum(11),
			carry => carryc(12)
			);
	FullAdder10: FullAdder
		Port map(
			a => a(10),
			b => b(10),
			c => carryc(10),
			sum => sum(10),
			carry => carryc(11)
			);
	FullAdder9: FullAdder
		Port map(
			a => a(9),
			b => b(9),
			c => carryc(9),
			sum => sum(9),
			carry => carryc(10)
			);
	FullAdder8: FullAdder
		Port map(
			a => a(8),
			b => b(8),
			c => carryc(8),
			sum => sum(8),
			carry => carryc(9)
			);
	FullAdder7: FullAdder
		Port map(
			a => a(7),
			b => b(7),
			c => carryc(7),
			sum => sum(7),
			carry => carryc(8)
			);
	FullAdder6: FullAdder
		Port map(
			a => a(6),
			b => b(6),
			c => carryc(6),
			sum => sum(6),
			carry => carryc(7)
			);
	FullAdder5: FullAdder
		Port map(
			a => a(5),
			b => b(5),
			c => carryc(5),
			sum => sum(5),
			carry => carryc(6)
			);
	FullAdder4: FullAdder
		Port map(
			a => a(4),
			b => b(4),
			c => carryc(4),
			sum => sum(4),
			carry => carryc(5)
			);
	FullAdder3: FullAdder
		Port map(
			a => a(3),
			b => b(3),
			c => carryc(3),
			sum => sum(3),
			carry => carryc(4)
			);
	FullAdder2: FullAdder
		Port map(
			a => a(2),
			b => b(2),
			c => carryc(2),
			sum => sum(2),
			carry => carryc(3)
			);
	FullAdder1: FullAdder
		Port map(
			a => a(1),
			b => b(1),
			c => carryc(1),
			sum => sum(1),
			carry => carryc(2)
			);
	FullAdder0: FullAdder
		Port map(
			a => a(0),
			b => b(0),
			c => '0',
			sum => sum(0),
			carry => carryc(1)
			);
end architecture;