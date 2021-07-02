--Fernando Hernández Escobedo
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity ora00 is
	port(
			clko: in std_logic;
			funto: in std_logic_vector(5 downto 0);
			inFlago: in std_logic;
			rso: in std_logic_vector(7 downto 0);
			rto: in std_logic_vector(7 downto 0);
			outro: out std_logic_vector(7 downto 0);
			outFlago: out std_logic);
end ora00;
architecture ora0 of ora00 is
begin
	pora: process(clko)
	variable aux: bit:= '0';
	begin
		if(clko'event and clko = '1') then
			if(funto = "000001") then
				case inFlago is
					when '1' =>
						if(aux = '0')then
							aux := '1';
							outro <= rso or rto;
							outFlago <= '1';
						end if;
					when '0' =>
						outFlago <= '0';
					when others => null;
				end case;
			else
				aux:= '0';
				outro <= (others => 'Z');
				outFlago <= 'Z';
			end if;
		end if;
	end process pora;
end ora0;