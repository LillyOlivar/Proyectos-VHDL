-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Or16_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Or16_test is

	-- Component declaration
	component Or16
		port(
			a	:	in 	std_logic_vector(15 downto 0);
			b	:	in 	std_logic_vector(15 downto 0);
			y	:	out	std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
	signal a_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal b_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal y_test	: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: Or16 
		port map (
			a => a_test,
			b => b_test,
			y => y_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of OrGate"	  
		severity note;
		
		a_test <= "0000000000000000"; 
		b_test <= "0000000000000000";
		wait for 1 ns;
		assert y_test = "0000000000000000"
		  report "Failure para a = [0000000000000000] and b = [0000000000000000]"
		  severity failure;
		  
		a_test <= "1111111111111111"; 
		b_test <= "0000000000000000";
		wait for 1 ns;
		assert y_test = "1111111111111111"
		  report "Failure para a = [1111111111111111] and b = [0000000000000000]"
		  severity failure;
		  
		a_test <= "0000000000000000"; 
		b_test <= "1111111111111111";
		wait for 1 ns;
		assert y_test = "1111111111111111"
		  report "Failure para a = [0000000000000000] and b = [1111111111111111]"
		  severity failure;
		  
		a_test <= "1111000000000000"; 
		b_test <= "0000010000001000";
		wait for 1 ns;
		assert y_test = "1111010000001000"
		  report "Failure para a = [1111000000000000] and b = [0000010000001000]"
		  severity failure;
		  
		a_test <= "1111100000000000"; 
		b_test <= "1111000000000000";
		wait for 1 ns;
		assert y_test = "1111100000000000"
		  report "Failure para a = [1111100000000000] and b = [1111000000000000]"
		  severity failure;
		  
		a_test <= "0000001111100000"; 
		b_test <= "0000111000000111";
		wait for 1 ns;
		assert y_test = "0000111111100111"
		  report "Failure para a = [0000001111100000] and b = [0000111000000111]"
		  severity failure;
		  
		a_test <= "0001111000000000"; 
		b_test <= "0000010001000111";
		wait for 1 ns;
		assert y_test = "0001111001000111"
		  report "Failure para a = [0001111000000000] and b = [0000010001000111]"
		  severity failure;
		  
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;