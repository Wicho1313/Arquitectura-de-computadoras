--Hernández Escobedo Fernando
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity coder00 is
	port(
			clkc: in std_logic;
			inkeyc: in std_logic_vector(3 downto 0);
			incontc: in std_logic_vector(3 downto 0);
			outcoderc: out std_logic_vector(6 downto 0));
end coder00;

architecture coder0 of coder00 is
begin
	pcoder: process(clkc)
	variable aux0: bit:='0';
	variable aux1: bit:='0';
	variable aux2: bit:='0';
	variable aux3: bit:='0';
	variable aux4: bit:='0';
	begin
		if (clkc'event and clkc ='1') then
----------------------------------------------FILA_1------------------------------------------------------------------------------
case incontc is
				when "1000" =>--incont
					case inkeyc is
						when "0000" =>
							aux0:='0';
							aux1:='0';
						when "0001" =>--COLUMNA_1
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux1:='1';
								outcoderc <= "0110000";--1
							end if;
						when "0010" =>--COLUMNA_2
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux1:='1';
								outcoderc <= "1101101";--2
							end if;
						when "0100" =>--COLUMNA_3
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux1:='1';
								outcoderc <= "1111001";--3
							end if;
						when "1000" =>--COLUMNA_4
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux1:='1';
								outcoderc <= "1110111";--A
							end if;
						when others => null;
					end case;
----------------------------------------------FILA_2------------------------------------------------------------------------------
				when "0100" =>--incont
					case inkeyc is
						when "0000" =>
							aux0:='0';
							aux2:='0';
						when "0001" =>--COLUMNA_1
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux2:='1';
								outcoderc <= "0110011";--4
							end if;
						when "0010" =>--COLUMNA_2
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux2:='1';
								outcoderc <= "1011011";--5
							end if;
						when "0100" =>--COLUMNA_3
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux2:='1';
								outcoderc <= "1011111";--6
							end if;
						when "1000" =>--COLUMNA_4
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux2:='1';
								outcoderc <= "0011111";--B
							end if;
						when others => null;
					end case;
----------------------------------------------FILA_3------------------------------------------------------------------------------
				when "0010" =>--incont
					case inkeyc is
						when "0000" =>
							aux0:='0';
							aux3:='0';
						when "0001" =>--COLUMNA_1
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux3:='1';
								outcoderc <= "1110000";--7
							end if;
						when "0010" =>--COLUMNA_2
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux3:='1';
								outcoderc <= "1111111";--8
							end if;
						when "0100" =>--COLUMNA_3
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux3:='1';
								outcoderc <= "1110011";--9
							end if;
						when "1000" =>--COLUMNA_4
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux3:='1';
								outcoderc <= "1001110";--C
							end if;
						when others => null;
					end case;
----------------------------------------------FILA_4------------------------------------------------------------------------------
				when "0001" =>--incont
					case inkeyc is
						when "0000" =>
							aux0:='0';
							aux4:='0';
						when "0001" =>--COLUMNA_1
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux4:='1';
								outcoderc <= "1111110";--0
							end if;
						when "0010" =>--COLUMNA_2
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux4:='1';
								outcoderc <= "1100011";--*
							end if;
						when "0100" =>--COLUMNA_3
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux4:='1';
								outcoderc <= "0011101";--+
							end if;
						when "1000" =>--COLUMNA_4
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux4:='1';
								outcoderc <= "0000001";---
							end if;
						when others => null;
					end case;
					
				when others => null;
			end case;
		end if;
	end process pcoder;
end coder0;