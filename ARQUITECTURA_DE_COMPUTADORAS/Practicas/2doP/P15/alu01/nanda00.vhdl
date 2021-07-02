
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity nanda00 is
	port(
			clkn: in std_logic;
			funtn: in std_logic_vector(5 downto 0);
			inFlagn: in std_logic;
			rsn: in std_logic_vector(7 downto 0);
			rtn: in std_logic_vector(7 downto 0);
			outrn: out std_logic_vector(7 downto 0);
			outFlagn: out std_logic);
end nanda00;
architecture nanda0 of nanda00 is
begin
	pora: process(clkn)
	variable aux: bit:= '0';
	begin
		if(clkn'event and clkn = '1') then
			if(funtn = "000011") then
				case inFlagn is
					when '1' =>
						if(aux = '0')then
							aux := '1';
							outrn <= (rsn nand rtn);
							outFlagn <= '1';
						end if;
					when '0' =>
						outFlagn <= '0';
					when others => null;
				end case;
			else
				aux:= '0';
				outrn <= (others => 'Z');
				outFlagn <= 'Z';
			end if;
		end if;
	end process pora;
end nanda0;