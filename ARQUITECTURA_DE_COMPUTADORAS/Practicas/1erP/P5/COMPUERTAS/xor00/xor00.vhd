library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity xor00 is
	port(
		Aa: in std_logic_vector(7 downto 0);
		Ba: in std_logic_vector(7 downto 0);
		Ya: out std_logic_vector(7 downto 0));
end xor00;
	
architecture xor0 of xor00 is
begin
	Ya <= Aa xor Ba;
end xor0;