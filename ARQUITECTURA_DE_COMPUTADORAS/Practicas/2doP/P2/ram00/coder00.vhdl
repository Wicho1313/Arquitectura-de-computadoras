--Hernández Escobedo Fernando
--RAM
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity coder00 is
	port(
			clkc: in std_logic;
			enc: in std_logic;
			rwc: in std_logic;
			inkeyc: in std_logic_vector(3 downto 0);
			incontc: in std_logic_vector(3 downto 0);
			outcontc: inout std_logic_vector(4 downto 0);
			outFlagc: out std_logic;
			outcoderc: out std_logic_vector(6 downto 0));
end coder00;

architecture coder0 of coder00 is
signal scontrol: std_logic_vector(1 downto 0);
begin
scontrol <= (enc)&(rwc);
	pcoder: process(clkc)
	variable aux0: bit:='0';
	variable aux1: bit:='0';
	variable aux2: bit:='0';
	variable aux3: bit:='0';
	variable aux4: bit:='0';
	begin
		if (clkc'event and clkc ='1') then
----------------------------------------------FILA_1------------------------------------------------------------------------------
		case scontrol is
		 when "00" =>
			outcoderc <= "0000000";--Inicializa el Display de 7 segmentos (Se apaga con 0's)
			outcontc <= "00000";--Contador de escritura
			outFlagc <= '0';
			aux0:='0';
		 when "10" =>
			case incontc is
				when "1000" =>--incont
					case inkeyc is
						when "0000" =>
							aux0:='0';
							aux1:='0';
							outcontc <= outcontc;
							outFlagc <= '0';
						when "0001" =>--COLUMNA_1
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux1:='1';
								outcoderc <= "0110000";--1
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "0010" =>--COLUMNA_2
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux1:='1';
								outcoderc <= "1101101";--2
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "0100" =>--COLUMNA_3
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux1:='1';
								outcoderc <= "1111001";--3
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "1000" =>--COLUMNA_4
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux1:='1';
								outcoderc <= "1110111";--A
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when others => null;
					end case;
----------------------------------------------FILA_2------------------------------------------------------------------------------
				when "0100" =>--incont
					case inkeyc is
						when "0000" =>
							aux0:='0';
							aux2:='0';
							outcontc <= outcontc;
							outFlagc <= '0';
						when "0001" =>--COLUMNA_1
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux2:='1';
								outcoderc <= "0110011";--4
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "0010" =>--COLUMNA_2
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux2:='1';
								outcoderc <= "1011011";--5
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "0100" =>--COLUMNA_3
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux2:='1';
								outcoderc <= "1011111";--6
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "1000" =>--COLUMNA_4
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux2:='1';
								outcoderc <= "0011111";--B
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when others => null;
					end case;
----------------------------------------------FILA_3------------------------------------------------------------------------------
				when "0010" =>--incont
					case inkeyc is
						when "0000" =>
							aux0:='0';
							aux3:='0';
							outcontc <= outcontc;
							outFlagc <= '0';
						when "0001" =>--COLUMNA_1
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux3:='1';
								outcoderc <= "1110000";--7
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "0010" =>--COLUMNA_2
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux3:='1';
								outcoderc <= "1111111";--8
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "0100" =>--COLUMNA_3
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux3:='1';
								outcoderc <= "1110011";--9
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "1000" =>--COLUMNA_4
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux3:='1';
								outcoderc <= "1001110";--C
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when others => null;
					end case;
----------------------------------------------FILA_4------------------------------------------------------------------------------
				when "0001" =>--incont
					case inkeyc is
						when "0000" =>
							aux0:='0';
							aux4:='0';
							outcontc <= outcontc;
							outFlagc <= '0';
						when "0001" =>--COLUMNA_1
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux4:='1';
								outcoderc <= "1111110";--0
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "0010" =>--COLUMNA_2
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux4:='1';
								outcoderc <= "1100011";--*
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "0100" =>--COLUMNA_3
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux4:='1';
								outcoderc <= "0011101";--+
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when "1000" =>--COLUMNA_4
							if (aux0 = '0' and aux1 = '0' and aux2 = '0' and aux3 = '0' and aux4 = '0') then
								aux0:='1';
								aux4:='1';
								outcoderc <= "0000001";---
								outcontc <= outcontc + '1';
								outFlagc <= '1';
							else
								outFlagc <= '0';
							end if;
						when others => null;
					end case;
				when others => null;
			end case;
			when others => null;--scontrol
		end case;--scontrol
		end if;--clkc
	end process pcoder;
end coder0;