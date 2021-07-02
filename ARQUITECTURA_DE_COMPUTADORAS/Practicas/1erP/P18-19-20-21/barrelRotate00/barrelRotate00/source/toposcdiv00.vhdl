library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
use packagediv00.all;

entity toposcdiv00 is
	port(
		cdiv0: in std_logic_vector(4 downto 0);
		oscout0: inout std_logic);
	
end toposcdiv00;


architecture toposcdiv0 of toposcdiv00 is
signal sclk: std_logic;
begin

	D00: osc00 port map(osc_int => sclk);
	
	D01: div00 port map(clkdiv => sclk,
						indiv => cdiv0,
						outdiv => oscout0);
end toposcdiv0;