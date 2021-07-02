library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity muxStack00 is
  port(
       enm: in std_logic;
	   rwm: in std_logic;
	   inwordkeym: in std_logic_vector(6 downto 0);
	   inwordramm: in std_logic_vector(6 downto 0);
       outwordm: out std_logic_vector(6 downto 0));
end muxStack00;

architecture muxStack0 of muxStack00 is
signal scontrol: std_logic_vector(1 downto 0);
begin
  scontrol <= (enm)&(rwm);
  with scontrol select
    outwordm <= inwordkeym when "10",
	            inwordramm when "11",
				"1111111" when others;
end muxStack0;