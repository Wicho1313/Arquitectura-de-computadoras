library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity div01 is
  port(
       clkdiv1: in std_logic;
	   indiv1: in std_logic_vector(4 downto 0);
       outdiv1: inout std_logic);
end div01;

architecture div0 of div01 is
signal sdiv1: std_logic_vector(20 downto 0);
begin
  pdiv: process(clkdiv1)
    begin
	if (clkdiv1'event and clkdiv1 = '1')then
	  case indiv1 is
	     when "00000" =>
		   if (sdiv1 > "100000000000000000000") then
		      outdiv1 <= not(outdiv1);
			  sdiv1 <= "000000000000000000000";
		   else
		      sdiv1 <= sdiv1 + 1;
		   end if;
	     when "00001" =>
		   if (sdiv1 > "010000000000000000000") then
		      outdiv1 <= not(outdiv1);
			  sdiv1 <= "000000000000000000000";
		   else
		      sdiv1 <= sdiv1 + 1;
		   end if;
	     when "00011" =>
		   if (sdiv1 > "001000000000000000000") then
		      outdiv1 <= not(outdiv1);
			  sdiv1 <= "000000000000000000000";
		   else
		      sdiv1 <= sdiv1 + 1;
		   end if;
	     when "00111" =>
		   if (sdiv1 > "000100000000000000000") then
		      outdiv1 <= not(outdiv1);
			  sdiv1 <= "000000000000000000000";
		   else
		      sdiv1 <= sdiv1 + 1;
		   end if;
	     when "01111" =>
		   if (sdiv1 > "000010000000000000000") then
		      outdiv1 <= not(outdiv1);
			  sdiv1 <= "000000000000000000000";
		   else
		      sdiv1 <= sdiv1 + 1;
		   end if;
	     when "11111" =>
		   if (sdiv1 > "000001000000000000000") then
		      outdiv1 <= not(outdiv1);
			  sdiv1 <= "000000000000000000000";
		   else
		      sdiv1 <= sdiv1 + 1;
		   end if;
	     when "11110" =>
		   if (sdiv1 > "000000010000000000000") then
		      outdiv1 <= not(outdiv1);
			  sdiv1 <= "000000000000000000000";
		   else
		      sdiv1 <= sdiv1 + 1;
		   end if;
------------------------------------------------------
	     when "11100" =>
		   if (sdiv1 > "000000000100000000000") then
		      outdiv1 <= not(outdiv1);
			  sdiv1 <= "000000000000000000000";
		   else
		      sdiv1 <= sdiv1 + 1;
		   end if;

------------------------------------------------------
		 when others => null;
	  end case;
	end if;
	end process pdiv;
end div0;