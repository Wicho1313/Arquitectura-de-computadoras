library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity xnora00 is
	port(
			clkxn: in std_logic;
			funtxn: in std_logic_vector(5 downto 0);
			inFlagxn: in std_logic;
			rsxn: in std_logic_vector(7 downto 0);
			rtxn: in std_logic_vector(7 downto 0);
			outrxn: out std_logic_vector(7 downto 0);
			outFlagxn: out std_logic);
end xnora00;
architecture xnora0 of xnora00 is
begin
	pora: process(clkxn)
	variable aux: bit:= '0';
	begin
		if(clkxn'event and clkxn = '1') then
			if(funtxn = "000101") then
				case inFlagxn is
					when '1' =>
						if(aux = '0')then
							aux := '1';
							outrxn <= (rsxn xnor rtxn);
							outFlagxn <= '1';
						end if;
					when '0' =>
						outFlagxn <= '0';
					when others => null;
				end case;
			else
				aux:= '0';
				outrxn <= (others => 'Z');
				outFlagxn <= 'Z';
			end if;
		end if;
	end process pora;
end xnora0;