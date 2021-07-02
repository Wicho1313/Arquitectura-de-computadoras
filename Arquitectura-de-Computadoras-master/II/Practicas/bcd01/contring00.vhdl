library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contring00 is
port( 
	clkr: in std_logic ;
	enabler: in std_logic ;
	outr: out std_logic_vector ( 3 downto 0 ) );
end contring00;

architecture contring0 of contring00 is
signal sintRing: std_logic_vector(3 downto 0);
begin
  pr: process(clkr)
     begin
        if (clkr'event and clkr = '1') then
           if (enabler = '0') then
              sintRing <= "0001";
              outr <= sintRing;
           else
              sintRing(3 downto 1) <= sintRing(2 downto 0);
              sintRing(0) <= sintRing(3);
              outr <= sintRing;
           end if;
        end if;
    end process pr;
end contring0;