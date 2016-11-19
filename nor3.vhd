library IEEE; use IEEE.std_logic_1164.all;

entity nor3 is
	port(
		l, m, n : in std_logic;
		o : out std_logic);
	end nor3;
	
architecture normal of nor3 is
begin
	o <= not( l or m or n);
end normal;
