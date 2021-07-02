
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity anda00 is
	port(
			clka: in std_logic;
			funta: in std_logic_vector(5 downto 0);
			inFlaga: in std_logic;
			rsa: in std_logic_vector(7 downto 0);
			rta: in std_logic_vector(7 downto 0);
			outra: out std_logic_vector(7 downto 0);
			outFlaga: out std_logic
			);
end anda00;
architecture anda0 of anda00 is
begin
	pora: process(clka)
	variable aux: bit:= '0';
	begin
		if(clka'event and clka = '1') then
			if(funta = "000001") then
				case inFlaga is
					when '1' =>
						if(aux = '0')then
							aux := '1';
							outra <= rsa and rta;
							outFlaga <= '1';
						end if;
					when '0' =>
						outFlaga <= '0';
					when others => null;
				end case;
			else
				aux:= '0';
				outra <= (others => 'Z');
				outFlaga <= 'Z';
			end if;
		end if;
	end process pora;
end anda0;