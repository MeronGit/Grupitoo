------------------------------------------------------------------------
-- IAY0150 -  Espresso result 
------------------------------------------------------------------------
--
------------------------------------------------------------------------
library IEEE; use IEEE.std_logic_1164.all;
entity f_system is
  port ( x1, x2, x3, x4: in std_logic;
         y1, y2, y3: out std_logic );
end entity f_system;

library IEEE; use IEEE.std_logic_1164.all;
architecture espresso of f_system is
begin
  y1 <= not((x3 and x4) or x2 or (not x1));
  y2 <= not((x3 and x4) or (not x1));
  y3 <= not((x3 and x4) or (not x3) or (not x1));

end architecture espresso;
