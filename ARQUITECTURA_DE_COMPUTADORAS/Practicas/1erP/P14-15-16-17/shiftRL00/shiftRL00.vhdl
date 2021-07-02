library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity shiftRL00 is
	port(
			clks: in std_logic;
			ens: in std_logic;
			ins: in std_logic_vector(7 downto 0);
			outs: out std_logic_vector(7 downto 0));
end shiftRL00;

architecture shiftRL0 of shiftRL00 is
signal sshift: std_logic_vector(7 downto 0);
begin
	pshiftRL: process(clks)
	begin
		if(clks'event and clks = '1')then
			case ens is
				when '0' =>
					sshift <= ins;
					outs <= (others => '0');
				when '1' =>
				--Corrimiento a la Derecha
					--sshift(7) <= '0';
					--sshift(6 downto 0) <= sshift(7 downto 1);
				--Corrimiento a la Izquierda
					sshift(0) <= '0';
					sshift(7 downto 1) <= sshift(6 downto 0);
				--Rotación de Derecha a Izquierda
					--sshift(0) <= sshift(7);
					--sshift(7 downto 1) <= sshift (6 downto 0);
				--Rotación de Izquierda a Derecha
					--sshift(7) <= sshift(0);
					--sshift(6 downto 0) <= sshift(7 downto 1);
					
					outs <= sshift;
				when others => null;
			end case;
		end if;
	end process;
end shiftRL0;