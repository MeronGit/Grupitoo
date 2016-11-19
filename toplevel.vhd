library IEEE; use IEEE.std_logic_1164.all;
--entity declaration: input and output signals
entity f_system is
  port ( x1, x2, x3, x4: in std_logic;
         y1, y2, y3: out std_logic );
end entity f_system;

--structural model: 
--1)declaration of the components (gates used in the circuit) - the types used:
--NOT
--AND
--2-NOR
--3-NOR 
--Can not use same input,output names as in entity!
library IEEE; use IEEE.std_logic_1164.all;
architecture components of f_system is 
component tabel 
port(
	a : in std_logic;
	b : out std_logic);
end component;
component espresso
port(
	c, d : in std_logic;
	e : out std_logic);
end component;
component behavioural
port(
	f, g : in std_logic;
	h : out std_logic);
end component;
component structure
port(
	l, m, n : in std_logic;
	o : out std_logic);
end component;

--2)declaration of signals(intermediates of the circuit):
signal i, j, k: std_logic; 

for gate1: not1 use entity work.not1(normal);
for gate2: and2 use entity work.and2(normal);
for gate3: not1 use entity work.not1(normal);
for gate4: nor3 use entity work.nor3(normal);


--3)interconnections which are made using instances: 
--We have 6 gates, so we will declare 6 instances.
--Port map - mapping of the components and entity ports (tegelikud sisendid, valjundid skeemis)
begin
	gate1: not1 port map(x1, i);
	gate2: and2 port map(x3,x4, j);
	gate3: not1 port map(x3, k);
	gate4: nor3 port map(i, x2, j, y1);
	gate5: nor2 port map(j, i, y2);
	gate6: nor3 port map(j, k, i, y3);
	

end structure; 

