LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
  
ENTITY clk_generator IS
	PORT (clk_in: IN std_logic;
		clock_out: OUT std_logic);
END clk_generator;
 
 
ARCHITECTURE arch_clk_generator OF clk_generator IS

SIGNAL count: integer := 1;
SIGNAL tmp_out: std_logic := '0';
  
BEGIN

	PROCESS(clk_in)
	BEGIN
		IF (clk_in'EVENT) and (clk_in='1') THEN
			count <= count+1;
			IF (count = 25000000) THEN
				tmp_out <= NOT tmp_out;
				count <= 1;
			END IF;
		END IF;
		clock_out <= tmp_out;
	END PROCESS;
  
END arch_clk_generator;
