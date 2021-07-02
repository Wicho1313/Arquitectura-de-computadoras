library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity nota00 is
	port(
			clknot: in std_logic;
			funtnot: in std_logic_vector(5 downto 0);
			inFlagnot: in std_logic;
			rsnot: in std_logic_vector(7 downto 0);
			outrnot: out std_logic_vector(7 downto 0);
			outFlagnot: out std_logic);
end nota00;
architecture nota0 of nota00 is
begin
	pora: process(clknot)
	variable aux: bit:= '0';
	begin
		if(clknot'event and clknot = '1') then
			if(funtnot = "000110") then
				case inFlagnot is
					when '1' =>
						if(aux = '0')then
							aux := '1';
							outrnot <= not(rsnot);
							outFlagnot <= '1';
						end if;
					when '0' =>
						outFlagnot <= '0';
					when others => null;
				end case;
			else
				aux:= '0';
				outrnot <= (others => 'Z');
				outFlagnot <= 'Z';
			end if;
		end if;
	end process pora;
end nota0;