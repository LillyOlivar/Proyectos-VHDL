
-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity DMux_test is	
end entity;

-- Architecture (test process)
architecture arch_test of DMux_test is

	-- Component declaration
	component DMux
		port(
			a	:	in 	std_logic;
			sel:	in 	std_logic;
			y1	:	out	std_logic;
			y2	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal a_test		: std_logic := '0';
	signal sel_test	: std_logic := '0';
	signal y1_test		: std_logic;
	signal y2_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: DMux 
		port map (
			a 		=> a_test,
			sel 	=> sel_test,
			y1 	=> y1_test,
			y2 	=> y2_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of DMux"	  
		severity note;
		
		a_test 	<= '0';
		sel_test <= '0';
		wait for 1 ns;
		assert y1_test = '0';
		assert y2_test = '0';
		  report "Failure for {a,sel} = {0,0}"
		  severity failure;
		  
		a_test 	<= '0';
		sel_test <= '1';
		wait for 1 ns;
		assert y1_test = '0';
		assert y2_test = '0';
		  report "Failure for {a,sel} = {0,1}"
		  severity failure;
		
		a_test 	<= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert y1_test = '1';
		assert y2_test = '0';
		  report "Failure for {a,sel} = {1,0}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert y1_test = '0';
		assert y2_test = '1';
		  report "Failure for {a,sel} = {1,1}"
		  severity failure;
		
			report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;