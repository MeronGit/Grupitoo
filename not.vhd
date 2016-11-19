library IEEE; use IEEE.std_logic_1164.all;

entity not1 is
	port(a: in std_logic; 
	     b: out std_logic);
	end not1;
	
architecture normal of not1 is
begin
	b <= not a;
end normal;
