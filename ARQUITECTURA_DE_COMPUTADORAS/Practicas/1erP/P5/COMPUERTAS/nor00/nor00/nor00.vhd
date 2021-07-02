library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity nor00 is
	port(
		Aa: in std_logic_vector(7 downto 0);
		Ba: in std_logic_vector(7 downto 0);
		Ya: out std_logic_vector(7 downto 0));
end nor00;
	
architecture nor0 of nor00 is
begin
	Ya <= Aa nor Ba;
end nor0;