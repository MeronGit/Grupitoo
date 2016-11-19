library IEEE; use IEEE.std_logic_1164.all;

entity and2 is
	port(
		c : in std_logic;
		d : in std_logic;
		e : out std_logic);
	end and2;
	
architecture normal of and2 is
begin
	e <= c and d;
end normal;
