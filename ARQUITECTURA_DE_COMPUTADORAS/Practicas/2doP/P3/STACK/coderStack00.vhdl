--STACK
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity coderStack00 is
  port(
       clkr: in std_logic;--
	   enr: in std_logic;--
	   --rwr: in std_logic;------------------------------
	   incontr: in std_logic_vector(3 downto 0);--
	   inkeyr: in std_logic_vector(3 downto 0);--
	   outcoderr: out std_logic_vector(6 downto 0);--
	   outcontr: inout std_logic_vector(4 downto 0);--
       outFlagr: out std_logic);--
end coderStack00;

architecture coderStack0 of coderStack00 is
--signal scotrol: std_logic_vector(1 downto 0);
begin
--scontrol <= (enr)&(rwr);----------------------------
  pcoder: process(clkr)
  variable aux0: bit:='0';
  variable aux1: bit:='0';
  variable aux2: bit:='0';
  variable aux3: bit:='0';
  variable aux4: bit:='0';----------------------------
  begin
    if (clkr'event and clkr = '1') then
----------------------------------------------FILA_1------------------------------------------------------------------------------
	  --case scrontrol is-----------------------
	  case enr is-----------------------
	    when '0' =>
		  outcoderr <= (others => '0');--FER1
		  outcontr <= "00000";----------------------
		  outFlagr <= '0';
		  aux0:='0';-----------------
		when '1' =>
		  case incontr is
		    when "1000" =>--incontr
			  case inkeyr is
			    when "0000" =>
				  aux0:='0';
				  aux1:='0';------------------
				  outcontr <= outcontr;
				  outflagr <= '0';
				when "0001" =>--COLUMNA_1
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux1:='1';
					outcoderr <= "0110000";--1
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
				    outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "0010" =>--COLUMNA_2
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux1:='1';
					outcoderr <= "1101101";--2
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
				    outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "0100" =>--COLUMNA_3
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux1:='1';
					outcoderr <= "1111001";--3
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
				    outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "1000" =>--COLUMNA_4
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux1:='1';
					outcoderr <= "1110111";--A
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
				    outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when others => null;
			  end case;
----------------------------------------------FILA_2------------------------------------------------------------------------------
			when "0100" =>--incontr
			  case inkeyr is
			    when "0000" =>
				  aux0:='0';
				  aux2:='0';
				  outcontr <= outcontr;
				  outFlagr <= '0';
				when "0001" =>--COLUMNA_1
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux2:='1';
					outcoderr <= "0110011";--4
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "0010" =>--COLUMNA_2
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux2:='1';
					outcoderr <= "1011011";--5
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "0100" =>--COLUMNA_3
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux2:='1';
					outcoderr <= "1011111";--6
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "1000" =>--COLUMNA_4
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux2:='1';
					outcoderr <= "0011111";--b
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when others => null;
			  end case;
----------------------------------------------FILA_3------------------------------------------------------------------------------
			when "0010" =>--incontr
			  case inkeyr is
			    when "0000" =>
				  aux0:='0';
				  aux3:='0';
				  outcontr <= outcontr;
				  outFlagr <= '0';
				when "0001" =>--COLUMNA_1
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux3:='1';
					outcoderr <= "1110000";--7
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "0010" =>--COLUMNA_2
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux3:='1';
					outcoderr <= "1111111";--8
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "0100" =>--COLUMNA_3
				  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux3:='1';
					outcoderr <= "1110011";--9
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "1000" =>--COLUMNA_4
					  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux3:='1';
					outcoderr <= "1001110";--C
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when others => null;
			  end case;
----------------------------------------------FILA_4------------------------------------------------------------------------------
			when "0001" =>--incontr
			  case inkeyr is
			    when "0000" =>
				  aux0:='0';
				  aux4:='0';
				  outcontr <= outcontr;
				  outFlagr <= '0';
				when "0001" =>--COLUMNA_1
					  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux4:='1';
					outcoderr <= "1111110";--0
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "0010" =>--COLUMNA_2
					  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux4:='1';
					outcoderr <= "1100011";--*
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "0100" =>--COLUMNA_3
					  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux4:='1';
					outcoderr <= "0011101";--+
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when "1000" =>--COLUMNA_4
					  if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
				    aux0:='1';
					aux4:='1';
					outcoderr <= "0000001";---
					outcontr <= outcontr + '1';
					outFlagr <= '1';
				  else
					outcontr <= outcontr;
					outFlagr <= '0';
				  end if;
				when others => null;
			  end case;
			when others => null;
		  end case;
		when others => null;--scontrol
	  end case;--scontrol
	end if;--clkr
  end process pcoder;
end coderStack0;