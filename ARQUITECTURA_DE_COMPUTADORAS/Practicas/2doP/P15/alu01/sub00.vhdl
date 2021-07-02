
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity sub00 is
	port(
			clksub: in std_logic;
			funtsub: in std_logic_vector(5 downto 0);
			inFlagsub: in std_logic;
			rssub: in std_logic_vector(7 downto 0);--A
			rtsub: in std_logic_vector(7 downto 0);--B
			outad: in std_logic_vector(7 downto 0);--Resultado de la suma
			LEDa: in std_logic;--Indicador de desbordamiento
			PA: out std_logic_vector(7 downto 0);--A
			PB: out std_logic_vector(7 downto 0);--B
			LEDsub: out std_logic;
			outrsub: out std_logic_vector(7 downto 0);
			outFlagsub: out std_logic
			);
end sub00;
architecture sub0 of sub00 is
begin
	PA <= rssub;
	PB <= rtsub;
	
	psub: process(clksub)
	variable aux: bit:= '0';
	begin
		if(clksub'event and clksub = '1') then
			if(funtsub = "001000") then
				case inFlagsub is
					when '1' =>
						if(aux = '0')then
							aux := '1';
							outrsub <= outad;
							LEDsub <= LEDa;
							outFlagsub <= '1';
						end if;
					when '0' =>
						outFlagsub <= '0';
					when others => null;
				end case;
			else
				aux:= '0';
				outrsub <= (others => 'Z');
				outFlagsub <= 'Z';
				LEDsub <= 'Z';
			end if;--funtad
		end if;--CLKAD
	end process psub;
end sub0;