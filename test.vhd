------------------------------------------------------------------------
-- IAY0105 - Test bench 
------------------------------------------------------------------------
--Merli Lall 2016
------------------------------------------------------------------------
library IEEE; use IEEE.std_logic_1164.all;
entity test2 is
end entity test2;

library IEEE; use IEEE.std_logic_1164.all;
architecture bench of test2 is
  signal x1, x2, x3, x4, y1, y2, y3: std_logic;
  signal y1_esp, y2_esp, y3_esp: std_logic;
  signal y1_beh, y2_beh, y3_beh: std_logic;
  signal y1_str, y2_str, y3_str: std_logic;
  component f_system
  port ( x1, x2, x3, x4: in std_logic;
         y1, y2, y3: out std_logic );
  end component;
  for U1: f_system use entity work.f_system(tabel);
  for U2: f_system use entity work.f_system(espresso);
  for U3: f_system use entity work.f_system(behavioural);
  for U4: f_system use entity work.f_system(structure);
begin
  -- Input signaals (after every 10 ns)
  x1 <= '0' after 0 ns, '1' after 80 ns, '0' after 160 ns;
  x2 <= '0' after 0 ns, '1' after 40 ns, '0' after 80 ns, '1' after 120 ns;
  x3 <= '0' after 0 ns, '1' after 20 ns, '0' after 40 ns, '1' after 60 ns,
       '0' after 80 ns, '1' after 100 ns, '0' after 120 ns, '1' after 140 ns;
  x4 <= '0' after 0 ns, '1' after 10 ns, '0' after 20 ns, '1' after 30 ns,
       '0' after 40 ns, '1' after 50 ns, '0' after 60 ns, '1' after 70 ns,
       '0' after 80 ns, '1' after 90 ns, '0' after 100 ns, '1' after 110 ns,
       '0' after 120 ns, '1' after 130 ns, '0' after 140 ns, '1' after 150 ns;

  -- System of Boolean functions
  U1: f_system port map (x1, x2, x3, x4, y1, y2, y3);
  U2: f_system port map (x1, x2, x3, x4, y1_esp, y2_esp, y3_esp);
  U3: f_system port map (x1, x2, x3, x4, y1_beh, y2_beh, y3_beh);
  U4: f_system port map (x1, x2, x3, x4, y1_str, y2_str, y3_str);
end architecture bench;
