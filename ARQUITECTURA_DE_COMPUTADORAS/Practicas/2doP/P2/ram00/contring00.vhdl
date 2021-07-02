library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity contring00 is
	port(
			clkr: in std_logic;
			enr: in std_logic;
			outr: out std_logic_vector(3 downto 0));
end contring00;

architecture contring0 of contring00 is
signal scont:std_logic_vector(3 downto 0);
begin
	pcont: process(clkr)
	begin
		if(clkr'event and clkr='1') then
			case enr is
				when '0' =>
					outr <= (others => '0');
					scont <= "1000";
				when '1' =>
					scont(3) <= scont(0);
					scont(2 downto 0) <= scont (3 downto 1);
					outr <= scont;
				when others => null;
			end case;
		end if;
	end process pcont;
end contring0;