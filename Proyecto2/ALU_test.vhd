library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity ALU_test is	
end entity;

-- Architecture (test process)
architecture arch_test of ALU_test is

-- Component declaration
	component ALU
		port(
			x	:	in 	std_logic;
			y	:	in 	std_logic;
			s1 : 	in 	std_logic;
			s2	:	in 	std_logic;
			z	:	out	std_logic
		);
	end component;
	
-- Signal declaration
	signal x_test	 : std_logic := '0';
	signal y_test	 : std_logic := '0';
	signal s1_test  : std_logic := '0';
	signal s2_test  : std_logic := '0';
	signal x1_test  : std_logic := '0';
	signal x2_test  : std_logic := '0';
	signal x3_test  : std_logic := '0';
	signal x4_test  : std_logic := '0';
	signal z_test   : std_logic;
	
	
	begin
	
-- DUT instantiation
	dut1	: ALU
		port map (
			x  => x_test,
			y  => y_test,
			s1 => s1_test,
			s2 => s2_test,
			z  => z_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Start of the test of Arimetic Logic Unity (ALU)"	  
		severity note;
		
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '0';
		x4_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,0,0,0,0}"
		  severity failure;
		  
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '0';
		x4_test   <= '1';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,0,1,0,0}"
		  severity failure;
		
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '1';
		x4_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,1,0,0,0}"
		  severity failure;
		  
		x1_test 	<= '1';
		x2_test 	<= '0';
		x3_test 	<= '0';
		x4_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert z_test = '1'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {1,0,0,0,0,0}"
		  severity failure;
		 
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '0';
		x4_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,0,0,0,1}"
		  severity failure;
		  
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '0';
		x4_test   <= '1';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,0,1,0,1}"
		  severity failure;
		
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '1';
		x4_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,1,0,0,1}"
		  severity failure;
		  
		x1_test 	<= '0';
		x2_test 	<= '1';
		x3_test 	<= '0';
		x4_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert z_test = '1'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,1,0,0,0,1}"
		  severity failure;

		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '0';
		x4_test   <= '0';
		s1_test  <= '1';
		s2_test	<= '0';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,0,0,1,0}"
		  severity failure;

		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '0';
		x4_test   <= '1';
		s1_test  <= '0';
		s2_test	<= '0';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,0,1,1,0}"
		  severity failure;
	
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '1';
		x4_test   <= '0';
		s1_test  <= '1';
		s2_test	<= '0';
		wait for 1 ns;
		assert z_test = '1'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,1,0,1,0}"
		  severity failure;
		
		x1_test 	<= '0';
		x2_test 	<= '1';
		x3_test 	<= '0';
		x4_test   <= '0';
		s1_test  <= '0';
		s2_test	<= '1';
		wait for 1 ns;
		assert z_test = '1'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,1,0,0,0,1}"
		  severity failure;
		  
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '0';
		x4_test   <= '0';
		s1_test  <= '1';
		s2_test	<= '1';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,0,0,1,1}"
		  severity failure;		  
		  
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '0';
		x4_test   <= '1';
		s1_test  <= '1';
		s2_test	<= '1';
		wait for 1 ns;
		assert z_test = '1'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,0,1,1,1}"
		  severity failure;		  
		  
		x1_test 	<= '0';
		x2_test 	<= '0';
		x3_test 	<= '1';
		x4_test   <= '0';
		s1_test  <= '1';
		s2_test	<= '1';
		wait for 1 ns;
		assert z_test = '0'
		  report "Failure for {x1,x2,x3,x4,s1,s2} = {0,0,1,0,1,1}"
		  severity failure;		  
		  
		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;