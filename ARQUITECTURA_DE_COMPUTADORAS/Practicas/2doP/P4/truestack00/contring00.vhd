library ieee;
use ieee.std_logic_1164.all;

library lattice;
use lattice.all;

entity contring00 is
	port
	(
		clkcr: in std_logic;
		encr: in std_logic;
		outcr: out std_logic_vector(3 downto 0)
	);
end contring00;

architecture contring0 of contring00 is
signal scont: std_logic_vector(3 downto 0);
begin
	pring: process(clkcr)
	begin 
		if(clkcr'event and clkcr = '1') then
			case encr is
				when '0' =>
					outcr <= (others => '0');
					scont <= "1000";
				when '1' =>
					scont(3) <= scont(0);
					scont(2 downto 0) <= scont(3 downto 1);
					outcr <= scont;
				when others => null;
			end case;
		end if;
	end process pring;
end contring0;