--FERNANDO HERNÁNDEZ ESCOBEDO
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contRead00 is
	port(
			clkrd: in std_logic;
			enrd: in std_logic;
			outcontrd: inout std_logic_vector(4 downto 0));
end contRead00;

architecture contRead0 of contRead00 is
begin
	pcont: process(clkrd)
	begin
		if(clkrd'event and clkrd = '1') then
			case enrd is
				when '0' =>
					outcontrd <= (others => '0');
				when '1' =>
					if (outcontrd <= "1111") then
						outcontrd <= outcontrd + '1';
					else
						outcontrd <= outcontrd;
					end if;
				when others => null;
			end case;
		end if;
	end process pcont;
end contRead0;
