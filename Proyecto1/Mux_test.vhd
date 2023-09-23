-- This file is part of the Circuitos Digitales II
-- by Carlos Hernan Tobar Arteaga
-- File name: project_01/Mux_test.vhdl

-- Mux gate:
-- o = a, if sel = 0
--     b, in other case


-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Mux_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Mux_test is

	-- Component declaration
	component Mux
		port(
			a	:	in 	std_logic;
			b	:	in		std_logic;
			sel:	in 	std_logic;
			o	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal a_test		: std_logic := '0';
	signal b_test		: std_logic := '0';
	signal sel_test	: std_logic := '0';
	signal o_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: Mux 
		port map (
			a 		=> a_test,
			b 		=> b_test,
			sel 	=> sel_test,
			o 		=> o_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of Mux"	  
		severity note;
		
		a_test 	<= '0';
		b_test 	<= '0';
		sel_test <= '0';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,sel} = {0,0,0}"
		  severity failure;
		  
		a_test 	<= '0';
		b_test 	<= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,sel} = {0,1,0}"
		  severity failure;
		
		a_test 	<= '1';
		b_test 	<= '0';
		sel_test <= '0';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for {a,b,sel} = {1,0,0}"
		  severity failure;
		  
		a_test 	<= '1';
		b_test 	<= '1';
		sel_test <= '0';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for {a,b,sel} = {1,1,0}"
		  severity failure;
		 
		a_test 	<= '0';
		b_test 	<= '0';
		sel_test <= '1';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,sel} = {0,0,1}"
		  severity failure;
		  
		a_test 	<= '0';
		b_test 	<= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for {a,b,sel} = {0,1,1}"
		  severity failure;
		
		a_test 	<= '1';
		b_test 	<= '0';
		sel_test <= '1';
		wait for 1 ns;
		assert o_test = '0'
		  report "Failure for {a,b,sel} = {1,0,1}"
		  severity failure;
		  
		a_test 	<= '1';
		b_test 	<= '1';
		sel_test <= '1';
		wait for 1 ns;
		assert o_test = '1'
		  report "Failure for {a,b,sel} = {1,1,1}"
		  severity failure; 
		 
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;