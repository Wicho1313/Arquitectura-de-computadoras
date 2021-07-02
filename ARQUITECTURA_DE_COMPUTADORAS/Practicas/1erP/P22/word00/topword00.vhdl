--Autor: Fernando Hrdz Esc
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageword00.all;

entity topword00 is
  port(
       cdiv00: in std_logic_vector(4 downto 0);
	   enable0: in std_logic;
	   clk00: inout std_logic;
	   outtran0: inout std_logic_vector(3 downto 0);
       outbcd70: out std_logic_vector(6 downto 0));
end topword00;

architecture topword0 of topword00 is
begin

   WO00: topdiv00 port map(clk0 => clk00,
						   cdiv0 => cdiv00);
   
   WO01: contring00 port map(clkr => clk00,
                             enable => enable0,
                             outr => outtran0);
   
   WO02: mux00 port map(incont => outtran0,
                        outbcd7 => outbcd70);

end topword0;