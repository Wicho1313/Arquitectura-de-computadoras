library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity pc00 is
  port(
       clkpc: in std_logic;
	   inFlagpc: in std_logic_vector(2 downto 0);
	   outpc: inout std_logic_vector(4 downto 0);
       outFlagpc: out std_logic);
end pc00;

architecture pc0 of pc00 is
begin
  ppc: process(clkpc)
  begin
    if (clkpc'event and clkpc = '1') then
	  case inFlagpc is
	    when "000" =>
		  outpc <= "00000";
		  outFlagpc <= '0';
		when "001" =>
		  outpc <= "00000";
		  outFlagpc <= '1';
		when "010" =>
		  outpc <= outpc + '1';
		  outFlagpc <= '1';
		when "011" =>
		  outpc <= outpc + '1';
		  outFlagpc <= '1';
		when "100" =>
		  outpc <= outpc + '1';
		  outFlagpc <= '1';
		when "101" =>
		  outpc <= "00010";
		  outFlagpc <= '1';
		when "110" =>
		  outpc <= outpc;
		  outFlagpc <= '0';
		when "111" =>
		  outpc <= outpc;
		  outFlagpc <= '0';
		when others => null;
	  end case;
	end if;
  end process ppc;
end pc0;