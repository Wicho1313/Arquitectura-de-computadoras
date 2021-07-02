
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity xora00 is
	port(
			clkxo: in std_logic;
			funtxo: in std_logic_vector(5 downto 0);
			inFlagxo: in std_logic;
			rsxo: in std_logic_vector(7 downto 0);
			rtxo: in std_logic_vector(7 downto 0);
			outrxo: out std_logic_vector(7 downto 0);
			outFlagxo: out std_logic);
end xora00;
architecture xora0 of xora00 is
begin
	pora: process(clkxo)
	variable aux: bit:= '0';
	begin
		if(clkxo'event and clkxo = '1') then
			if(funtxo = "000101") then
				case inFlagxo is
					when '1' =>
						if(aux = '0')then
							aux := '1';
							outrxo <= (rsxo xor rtxo);
							outFlagxo <= '1';
						end if;
					when '0' =>
						outFlagxo <= '0';
					when others => null;
				end case;
			else
				aux:= '0';
				outrxo <= (others => 'Z');
				outFlagxo <= 'Z';
			end if;
		end if;
	end process pora;
end xora0;