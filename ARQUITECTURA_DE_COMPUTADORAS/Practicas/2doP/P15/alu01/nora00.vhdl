
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity nora00 is
	port(
			clkno: in std_logic;
			funtno: in std_logic_vector(5 downto 0);
			inFlagno: in std_logic;
			rsno: in std_logic_vector(7 downto 0);
			rtno: in std_logic_vector(7 downto 0);
			outrno: out std_logic_vector(7 downto 0);
			outFlagno: out std_logic);
end nora00;
architecture nora0 of nora00 is
begin
	pora: process(clkno)
	variable aux: bit:= '0';
	begin
		if(clkno'event and clkno = '1') then
			if(funtno = "000100") then
				case inFlagno is
					when '1' =>
						if(aux = '0')then
							aux := '1';
							outrno <= (rsno nor rtno);
							outFlagno <= '1';
						end if;
					when '0' =>
						outFlagno <= '0';
					when others => null;
				end case;
			else
				aux:= '0';
				outrno <= (others => 'Z');
				outFlagno <= 'Z';
			end if;
		end if;
	end process pora;
end nora0;