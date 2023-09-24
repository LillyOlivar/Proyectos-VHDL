library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or8Way_test is
end entity;

architecture arch_test of Or8Way_test is

component Or8Way
port(  

 a : in std_logic;
	b : in std_logic;
	c : in std_logic;
	d : in std_logic;
	e : in std_logic;
	f : in std_logic;
	g : in std_logic;
	h : in std_logic;
	y : out std_logic
	
);
  
 end component;

-- signal declaration

 signal a_test : std_logic  := '0' ;
 signal b_test : std_logic  := '0';
 signal c_test : std_logic  := '0';
 signal d_test : std_logic  := '0';
 signal e_test : std_logic  := '0';
 signal f_test : std_logic  := '0';
 signal g_test : std_logic  := '0';
 signal h_test : std_logic  := '0';
 signal y_test : std_logic;

begin

dut1 : Or8Way  
    port map (
      a => a_test,
      b => b_test,
		c => c_test,
      d => d_test,
		e => e_test,
      f => f_test,
		g => g_test,
      h => h_test,
		y => y_test
    );

  -- Stimulus generation
  
  Stimulus : process
  
  begin
  
  report "Start of the test of OrGate"
  severity note;
  
    a_test <= '0';
	 b_test <= '0';
	 c_test <= '0';
	 d_test <= '0';
	 e_test <= '0';
	 f_test <= '0';
	 g_test <= '0';
	 h_test <= '0';
    wait for 1 ns;
	 assert y_test = '0'
	 report "Failure para a = [0] y b = [0] y c = [0] y d = [0] y e = [0] y f = [0] y  h = [0]"
	 severity failure;
	 
  a_test   <= '0';
	 b_test <= '0';
	 c_test <= '0';
	 d_test <= '0';
	 e_test <= '0';
	 f_test <= '0';
	 g_test <= '0';
	 h_test <= '1';
    wait for 1 ns;
	 assert y_test = '1'
	 report "Failure para a = [0] y b = [0] y c = [0] y d = [0] y e = [0] y f = [0] y g =[0] y h = [1]"
	 severity failure;
	 
  a_test   <= '1';
	 b_test <= '1';
	 c_test <= '1';
	 d_test <= '1';
	 e_test <= '1';
	 f_test <= '1';
	 g_test <= '1';
	 h_test <= '1';
    wait for 1 ns;
	 assert y_test = '1'
	 report "Failure para a = [1] y b = [1] y c = [1] y d = [1] y e = [1] y f = [1] y g =[1] y  h = [1]"
	 severity failure;
	 
 a_test    <= '0';
	 b_test <= '1';
	 c_test <= '0';
	 d_test <= '1';
	 e_test <= '0';
	 f_test <= '1';
	 g_test <= '0';
	 h_test <= '1';
    wait for 1 ns;
	 assert y_test = '1'
	 report "Failure para a = [0] y b = [1] y c = [0] y d = [1] y e = [0] y f = [1] y g = [0] y h = [1]"
	 severity failure;
	 
	a_test  <= '1';
	 b_test <= '0';
	 c_test <= '0';
	 d_test <= '0';
	 e_test <= '0';
	 f_test <= '0';
	 g_test <= '0';
	 h_test <= '0';
    wait for 1 ns;
	 assert y_test = '1'
	 report "Failure para a = [1] y b = [0] y c = [0] y d = [0] y e = [0] y f = [0] y g = [0] y h = [0]"
	 severity failure;
	  
    a_test   <= '0';
	 b_test <= '1';
	 c_test <= '1';
	 d_test <= '1';
	 e_test <= '1';
	 f_test <= '1';
	 g_test <= '1';
	 h_test <= '1';
    wait for 1 ns;
	 assert y_test = '1'
	 report "Failure para a = [0] y b = [1] y c = [1] y d = [1] y e = [1] y f = [1] y g =[1] y  h = [1]"
	 severity failure;
	 
	 
	
    report "Test successful"
	 severity note;
    wait;
  end process;
end architecture;