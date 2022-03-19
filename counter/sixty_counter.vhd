LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
  
ENTITY sixty_counter IS
	PORT (clk_in, reset, pause: IN std_logic;
		count_left, count_right: OUT std_logic_vector (3 DOWNTO 0));
END sixty_counter;


ARCHITECTURE arch_sixty_counter OF sixty_counter IS

SIGNAL tmp_left: integer := 0;
SIGNAL tmp_right: integer := 0;
  
BEGIN

	PROCESS(clk_in, reset)
	BEGIN
		IF (pause='1') THEN
			count_left <= std_logic_vector(to_unsigned (tmp_left, 4));
			count_right <= std_logic_vector(to_unsigned (tmp_right, 4));
		ELSIF (reset='0') THEN
			tmp_left <= 0;
			tmp_right <= 0;
		ELSIF (clk_in'EVENT) and (clk_in='1') THEN
			IF (tmp_right = 9) and (tmp_left = 5) THEN
				count_left <= std_logic_vector(to_unsigned (tmp_left, 4));
				count_right <= std_logic_vector(to_unsigned (tmp_right, 4));
			ELSIF (tmp_right = 9) THEN
				tmp_left <= tmp_left+1;
				tmp_right <= 0;
			ELSE 
				tmp_right <= tmp_right+1; 
			END IF;
		END IF;
		count_left <= std_logic_vector(to_unsigned (tmp_left, 4));
		count_right <= std_logic_vector(to_unsigned (tmp_right, 4));

	END PROCESS;
  
END arch_sixty_counter;
