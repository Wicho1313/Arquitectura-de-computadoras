library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contIter00 is
  port(
       clkIter: in std_logic;
	   inFlagIter: in std_logic_vector(2 downto 0);
	   outContIter: inout std_logic_vector(3 downto 0);
	   outFlagIterA: out std_logic;
       outFlagIterB: out std_logic);
end contIter00;

architecture contIter0 of contIter00 is
begin
  pIter: process(clkIter)
  begin
    if (clkIter'event and clkIter = '1') then
	  case inFlagIter is
	    when "000" =>
		  outContIter <= "0000";
		  outFlagIterA <= '0';
		  outFlagIterB <= '0';
		when "001" =>
		  outContIter <= "0000";
		  outFlagIterA <= '0';
		  outFlagIterB <= '0';	
		when "010" =>
		  outContIter <= "0000";
		  outFlagIterA <= '0';
		  outFlagIterB <= '1';
-------------------------------------------
		when "011" =>
		 if (outContIter < "1001") then
		  outContIter <= outContIter + '1';
		  outFlagIterA <= '0';
		  outFlagIterB <= '1';
		 else
		  outContIter <= outContIter;
		  outFlagIterA <= '1';
		  outFlagIterB <= '0';
		 end if;
-------------------------------------------
		when "100" =>
		  outContIter <= outContIter;
		  outFlagIterA <= '0';
		  outFlagIterB <= '0';
		when "101" =>
		  outContIter <= outContIter;
		  outFlagIterA <= '0';
		  outFlagIterB <= '0';
		when "110" =>
		  outContIter <= outContIter;
		  outFlagIterA <= '0';
		  outFlagIterB <= '0';
		when "111" =>
		  outContIter <= outContIter;
		  outFlagIterA <= '0';
		  outFlagIterB <= '0';
		when others => null;
	  end case;
	end if;
  end process pIter;
end contIter0;