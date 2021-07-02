library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity shiftRL00 is
	port(clks: in std_logic;
		 enables: in std_logic;
		 ins: in std_logic_vector(7 downto 0);
		 sel: in std_logic_vector(1 downto 0);
	     outs: out std_logic_vector(7 downto 0));
	end shiftRL00;
	
architecture shiftRL0 of shiftRL00 is
signal sshift: std_logic_vector(7 downto 0);
begin
	pshift: process(clks)
	begin
	if(clks'event and clks = '1') then
		case enables is
			when '0' =>
				sshift <= ins;
				outs <= (others => '0');
			when '1' =>
				case sel is 
					when "00" =>
						sshift(0) <= '0';
						sshift(7 downto 1) <= sshift (6 downto 0);
					when "01" =>
						sshift(7) <= '0';
						sshift(6 downto 0) <= sshift (7 downto 1);
					when "10" =>
						sshift(7) <= sshift(0);
						sshift(6 downto 0) <= sshift (7 downto 1);
					when "11" =>
						sshift(0) <= sshift(7);
						sshift(7 downto 1) <= sshift (6 downto 0);
					when others => null;
				end case;
				outs <= sshift;
			when others => null;
		end case;
	end if;
 	end process;
end shiftRL0; 
