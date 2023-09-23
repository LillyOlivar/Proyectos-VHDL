
-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity OrGate_test is	
end entity;

-- Architecture (test process)
architecture arch_test of OrGate_test is

	-- Component declaration
	component OrGate
		port(
		a	:	in 	std_logic;
		b	:	in 	std_logic;
		c	:	out	std_logic
		
		);
	end component;
	
	-- Signal declaration
	
	signal a_test	: std_logic := '0';
	signal b_test	: std_logic := '0';
	signal c_test	: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: OrGate 
		port map (
			a => a_test,
			b => b_test,
			c => c_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of OrGate"	  
		severity note;
		
		a_test <= '0'; 
		b_test <= '0'; 
		wait for 1 ns;
		assert c_test = '0'
		  report "Falla para a = 0 y b =0"
		  severity failure;

		a_test <= '0'; 
		b_test <= '1'; 
		wait for 1 ns;
		assert c_test = '1'
		  report "Falla para a = 0 y b = 1"
		  severity failure;
		  		  
		a_test <= '1';
		b_test <= '0';	
		wait for 1 ns;
		assert c_test = '1'
		  report "Falla para a = 1 y b = 0"
		  severity failure;
		   
		 a_test <= '1';
		b_test <= '1';  
		wait for 1 ns;
		assert c_test = '1'
		  report "Falla para a = 1 y b = 1"
		  severity failure;
		  
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;