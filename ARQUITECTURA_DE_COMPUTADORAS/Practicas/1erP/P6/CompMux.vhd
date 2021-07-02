library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity muxcomp00 is
	port(
		Aa: in std_logic_vector(7 downto 0);
		Ba: in std_logic_vector(7 downto 0);
		Sel: in std_logic_vector(2 downto 0);
		Ya: out std_logic_vector(7 downto 0));
end muxcomp00;

	
architecture muxcomp0 of muxcomp00 is
begin
	with Sel select
		Ya <= (Aa and Ba) when "001",
				(Aa nand Ba) when "010",
				(Aa or Ba) when "011",
				(Aa nor Ba) when "100",
				(Aa xor Ba) when "101",
				(Aa xnor Ba) when "110",
				(not Aa) when "111",
				"00000000" when others;
end muxcomp0;