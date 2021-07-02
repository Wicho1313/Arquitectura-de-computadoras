--Fernando Hernández Escobedo
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library lattice;
use lattice.all;

entity lcdConfig00 is
	port(
		 clkc: in std_logic;
		 resetc: in std_logic;
		 inFlagc: in std_logic;
		 incontc: in std_logic_vector(4 downto 0);
		 outCommandc: out std_logic_vector(7 downto 0);
		 outFlagc: out std_logic;
		 RWc: out std_logic;
		 RSc: out std_logic;
		 ENc: out std_logic);
end lcdConfig00;

architecture lcdConfig0 of lcdConfig00 is
begin
	pconfig: process(clkc)
	begin
		if (clkc'event and clkc = '1') then
			case resetc is
				when '0' =>
					outCommandc <= (others => '0');
					outFlagc <= '0';
				when '1' =>
					if (inFlagc ='1') then
						case incontc is
							when "00000" =>
								outCommandc <="00000001";--SCREEN CLEAR
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '1';
							when "00001" =>
								outCommandc <="00000001";--SCREEN CLEAR
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '0';
-----------------------------------------------------------------------------------------------------------------------------------
							when "00010" =>
								outCommandc <="00000011";--CURSOR RETURN
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '1';
							when "00011" =>
								outCommandc <="00000011";--CURSOR RETURN
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '0';
-----------------------------------------------------------------------------------------------------------------------------------
							when "00100" =>
								outCommandc <="00000111";--INPUT SET
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '1';
							when "00101" =>
								outCommandc <="00000111";--INPUT SET
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '0';
-----------------------------------------------------------------------------------------------------------------------------------
							when "00110" =>
								outCommandc <="00001111";--DISPLAY SWITCH
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '1';
							when "00111" =>
								outCommandc <="00001111";--DISPLAY SWITCH
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '0';
-----------------------------------------------------------------------------------------------------------------------------------
							when "01000" =>
								outCommandc <="00011100";--SHIFT
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '1';
							when "01001" =>
								outCommandc <="00011100";--SHIFT
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '0';
-----------------------------------------------------------------------------------------------------------------------------------
							when "01010" =>
								outCommandc <="00111100";--FUNCTION SET
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '1';
							when "01011" =>
								outCommandc <="00111100";--FUNCTION SET
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '0';
-----------------------------------------------------------------------------------------------------------------------------------
							when "01100" =>
								outCommandc <="00111100";--FUNCTION SET
								outFlagc <= '0';
								RWc <= '0';
								RSc <= '0';
								ENc <= '1';
							when "01101" =>
								outCommandc <="00111100";--FUNCTION SET
								outFlagc <= '1';
								RWc <= '0';
								RSc <= '0';
								ENc <= '0';	
-----------------------------------------------------------------------------------------------------------------------------------
							when others => null;
						end case;
					end if;
				when others => null;
			end case;
		end if;
	end process pconfig;
end lcdConfig0;