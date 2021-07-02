--Fernando Hernández Escobedo
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity ac00 is
	port(
			clkac: in std_logic;
			enableac: in std_logic;
			inFlagac: in std_logic;
			inac: in std_logic_vector(7 downto 0);
			in2ac: in std_logic_vector(7 downto 0);
			outac: out std_logic_vector(7 downto 0);
			out2ac: out std_logic_vector(7 downto 0);
			outFlagac: out std_logic);
end ac00;
architecture ac0 of ac00 is
begin
	pac: process(clkac)
	variable aux: bit:='0';
	begin
		if (clkac'event and clkac = '1') then
			case enableac is
				when '0' =>
					outac <= (others => '0');
					outFlagac <= '0';
					aux:= '0';--Deshabilitar salida
				when '1' =>
					case inFlagac is
						when '0' =>--Entonces cambia aux, habilita el proceso
							if (aux = '0') then--arranca
								aux:= '1';--inicializa
								outac <= inac;
								out2ac <= in2ac;
								outFlagac <= '1';
							end if;
						when '1' =>
							if (aux = '1') then
								outac <= inac;
								out2ac <= in2ac;
								outFlagac <= '1';
							end if;
						when others => null;
					end case;
				when others => null;
			end case;
		end if;
	end process pac;
end ac0;