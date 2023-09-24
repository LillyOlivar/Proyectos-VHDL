library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity DMux4Way_test is	
end entity;

-- Architecture (test process)
architecture arch_test of DMux4Way_test is

	-- Component declaration
	component DMux4Way
		port(
		a 	: in std_logic;
		sel : in std_logic;
		sel2 : in std_logic;
		y1: out std_logic;	
		y2: out std_logic;
		y3:	out	std_logic;
		y4	:	out	std_logic
		);
		
	end component;
	
	-- Signal declaration
	
	signal a_test		: std_logic := '0';
	signal sel_test	: std_logic := '0';
	signal sel2_test	: std_logic := '0';
	signal y1_test		: std_logic;
	signal y2_test		: std_logic;
	signal y3_test		: std_logic;
	signal y4_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: DMux4Way
		port map (
			a 		=> a_test,
			sel   => sel_test,
			sel2  => sel2_test,
			y1 	=> y1_test,
		   y2    => y2_test,
			y3 	=> y3_test,
		   y4    => y4_test
			
			
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of DMux4Way"	  
		severity note;
		
		a_test 	<= '0';
		sel_test 	<= '0';	
	   sel2_test   <= '0';	
		
		wait for 1 ns;
		assert y1_test = '0' and y2_test = '0' and y3_test = '0' and y4_test = '0'
		  report "Failure for {a,sel,sel1} = {0,0,0,0}"
		  severity failure;
		
		a_test 	<= '0';
		sel_test 	<= '0';	
	   sel2_test   <= '1';	
		wait for 1 ns;
		assert y1_test = '0' and y2_test = '0' and y3_test = '0' and y4_test = '0'
		  report "Failure for {a,sel,sel1} = {0,0,0,0"
		  severity failure;
		
		a_test 	<= '0';
		sel_test 	<= '1';	
	   sel2_test   <= '0';
		
		wait for 1 ns;
		assert y1_test = '0' and y2_test = '0' and y3_test = '0' and y4_test = '0'
		  report "Failure for {a,sel,sel1} = {0,0,0,0}"
		  severity failure;
		
		a_test 	<= '0';
		sel_test 	<= '1';	
	   sel2_test   <= '1';	
		wait for 1 ns;
		assert y1_test = '0' and y2_test = '0' and y3_test = '0' and y4_test = '0'
		  report "Failure for {a,sel,sel1} = {0,0,0,0}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test 	<= '0';	
	   sel2_test   <= '0';	
		wait for 1 ns;
		assert y1_test = '1' and y2_test = '0' and y3_test = '0' and y4_test = '0'
		  report "Failure for {a,sel,sel1} = {1,0,0,0}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test 	<= '0';	
	   sel2_test   <= '1';	
		wait for 1 ns;
		assert y1_test = '0' and y2_test = '1' and y3_test = '0' and y4_test = '0'
		  report "Failure for {a,sel,sel1} = {0,1,0,0}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test 	<= '1';	
	   sel2_test   <= '0';	
		wait for 1 ns;
		assert y1_test = '0' and y2_test = '0' and y3_test = '1' and y4_test = '0'
		  report "Failure for {a,sel,sel1} = {0,0,1,0}"
		  severity failure;
		  
		a_test 	<= '1';
		sel_test 	<= '1';	
	   sel2_test   <= '1';	
		wait for 1 ns;
		assert y1_test = '0' and y2_test = '0' and y3_test = '0' and y4_test = '1'
		  report "Failure for {a,sel,sel1} = {0,0,0,1}"
		  severity failure;
		  

		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;