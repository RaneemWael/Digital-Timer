LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
  
ENTITY counter IS
	PORT (clk_in, reset, pause: IN std_logic;
		left_out, right_out: OUT std_logic_vector (6 DOWNTO 0));
END counter;


ARCHITECTURE arch_counter OF counter IS

SIGNAL clk: std_logic;
SIGNAL count_left: std_logic_vector (3 DOWNTO 0);
SIGNAL count_right: std_logic_vector (3 DOWNTO 0);
SIGNAL screen_left: std_logic_vector (6 downto 0);
SIGNAL screen_right: std_logic_vector (6 downto 0);

COMPONENT clk_generator 
	PORT (clk_in: IN std_logic;
		clock_out: OUT std_logic);
END COMPONENT;

COMPONENT seven_seg_dec
	PORT (bcd: in std_logic_vector (3 downto 0);
		seven_seg: out std_logic_vector (6 downto 0));
END COMPONENT;

COMPONENT sixty_counter
	PORT (clk_in, reset, pause: IN std_logic;
		count_left, count_right: OUT std_logic_vector (3 DOWNTO 0));
END COMPONENT;

  
BEGIN
		clk_out: clk_generator port map(clk_in, clk);
		current_count: sixty_counter port map(clk, reset, pause, count_left, count_right); 
		decoder1: seven_seg_dec port map(count_left, screen_left);
		decoder2: seven_seg_dec port map(count_right, screen_right);
		left_out <= screen_left;
		right_out <= screen_right;

END arch_counter;