LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
  
ENTITY seven_seg_dec IS
	PORT (bcd: in std_logic_vector (3 downto 0);
		seven_seg: out std_logic_vector (6 downto 0));
END seven_seg_dec;


ARCHITECTURE arch_seven_seg_dec OF seven_seg_dec IS
  
BEGIN

	PROCESS(bcd)
	BEGIN
		CASE bcd IS
			WHEN "0000" => seven_seg <= "1000000";
			WHEN "0001" => seven_seg <= "1111001"; 
			WHEN "0010" => seven_seg <= "0100100";
			WHEN "0011" => seven_seg <= "0110000"; 
			WHEN "0100" => seven_seg <= "0011001";
			WHEN "0101" => seven_seg <= "0010010";
			WHEN "0110" => seven_seg <= "0000010";
			WHEN "0111" => seven_seg <= "1111000"; 
			WHEN "1000" => seven_seg <= "0000000";
			WHEN "1001" => seven_seg <= "0011000";
			WHEN OTHERS => seven_seg <= "1111111";
	   END CASE;
	END PROCESS;
  
END arch_seven_seg_dec;