-- Library and packages 
library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity mux4way16_test is	
end entity;

-- Architecture (test process)
architecture arch_test of mux4way16_test is

	-- Component declaration
	component mux4way16
		port(
			a 	: in std_logic_vector(15 downto 0);
			b 	: in std_logic_vector(15 downto 0);
			c 	: in std_logic_vector(15 downto 0);
			d	: in std_logic_vector(15 downto 0);
			s1 : in std_logic;
			s2 : in std_logic;	
			o 	: out std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
			signal a_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal b_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal c_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal d_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal s1_test : std_logic := '0';	
			signal s2_test : std_logic := '0';	
			signal o_test 	: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: mux4way16
		port map (
			a 	=> a_test,
			b 	=> b_test,
			c 	=> c_test,
			d 	=> d_test,
			s1	=> s1_test,
			s2 => s2_test,
			o  => o_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Start of the test of mux4way16"	  
		severity note;
		
		a_test <= "0000000000000000"; 
		b_test <= "0000000000000000";
		c_test <= "0000000000000000";
		d_test <= "0000000000000000";
		s1_test <= '0';
		s2_test <= '0';
		wait for 1 ns;
		assert o_test = "0000000000000000"
		  report "Failure for a=0000000000000000, b=0000000000000000, c=0000000000000000, d=0000000000000000, s1=0, s1=0"
		  severity failure;
		 
		a_test <= "1111111111111111"; 
		b_test <= "0000000000000000";
		c_test <= "0000000000000000";
		d_test <= "0000000000000000";
		s1_test <= '0';
		s2_test <= '0';
		wait for 1 ns;
		assert o_test = "1111111111111111"
		  report "Failure for a=1111111111111111, b=0000000000000000, c=0000000000000000, d=0000000000000000, s1=0, s2=0"
		  severity failure; 
		  
		a_test <= "0000000000000000"; 
		b_test <= "1111111111111111";
		c_test <= "0000000000000000";
		d_test <= "0000000000000000";
		s1_test <= '0';
		s2_test <= '1';
		wait for 1 ns;
		assert o_test = "1111111111111111"
		  report "Failure for a=0000000000000000, b=1111111111111111, c=0000000000000000, d=0000000000000000, s1=0, s2=1"
		  severity failure; 

		a_test <= "0000000000000000"; 
		b_test <= "0000000000000000";
		c_test <= "1111111111111111";
		d_test <= "0000000000000000";
		s1_test <= '1';
		s2_test <= '0';
		wait for 1 ns;
		assert o_test = "1111111111111111"
		  report "Failure for a=0000000000000000, b=0000000000000000, c=1111111111111111, d=0000000000000000, s1=1, s1=0"
		  severity failure; 	  
		 
		a_test <= "0000000000000000"; 
		b_test <= "0000000000000000";
		c_test <= "0000000000000000";
		d_test <= "1111111111111111";
		s1_test <= '1';
		s2_test <= '1';
		wait for 1 ns;
		assert o_test = "1111111111111111"
		  report "Failure for a=0000000000000000, b=0000000000000000, c=0000000000000000, d=1111111111111111, s1=1, s1=1"
		  severity failure; 	  

		report "Test successful"
		severity note;
		wait;
		
	end process;

end architecture;