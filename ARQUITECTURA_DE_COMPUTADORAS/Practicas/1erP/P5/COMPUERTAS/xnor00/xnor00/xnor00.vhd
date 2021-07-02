library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity xnor00 is
	port(
		Aa: in std_logic_vector(7 downto 0);
		Ba: in std_logic_vector(7 downto 0);
		Ya: out std_logic_vector(7 downto 0));
end xnor00;
	
architecture xnor0 of xnor00 is
begin
	Ya <= Aa xnor Ba;
end xnor0;