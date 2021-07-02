library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity mux00 is
  port(
       incont: in std_logic_vector(3 downto 0);
       outbcd7: out std_logic_vector(6 downto 0));
end mux00;

architecture mux0 of mux00 is
begin
   pmux: process(incont)
     begin
	   case incont is
		 when "0001" =>
		    outbcd7 <= "0110111";---------H
		 when "0010" =>
		    outbcd7 <= "1111110";---------O
		 when "0100" =>
		    outbcd7 <= "0001110"; --------L
		 when "1000" =>
		    outbcd7 <= "1110111";---------A
	     when others => 
			outbcd7 <= "1111111";
	   end case;
     end process pmux;
end mux0;