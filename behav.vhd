------------------------------------------------------------------------
-- IAY0150 -  Espresso result, behavioural model
------------------------------------------------------------------------
--
------------------------------------------------------------------------
library IEEE; use IEEE.std_logic_1164.all;
entity f_system is
  port ( x1, x2, x3, x4: in std_logic;
         y1, y2, y3: out std_logic );
end entity f_system;

library IEEE; use IEEE.std_logic_1164.all;
architecture behavioural of f_system is
	begin
		process (x1,x2,x3,x4)
		begin 
			y1 <= '1';
			y2 <= '1';
			y3 <= '1';

		if ((x3 = '1' and x4 = '1') or (x1 = '0')) then
		--phase 000, seega vastupidi
			y1 <= '0';
			y2 <= '0';
			y3 <= '0';
		end if;
		if (x2 = '1') then
			y1 <= '0';
		end if;
		if (x3 = '0') then
			y3 <= '0';
		end if;
	end process;
end architecture behavioural;
