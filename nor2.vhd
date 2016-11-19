library IEEE; use IEEE.std_logic_1164.all;

entity nor2 is
	port( 
		f : in std_logic;
		g : in std_logic;
		h : out std_logic);
	end nor2;
	
architecture normal of nor2 is
begin
	h <= not(f or g);
end normal;