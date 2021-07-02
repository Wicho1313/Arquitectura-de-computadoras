
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity add00 is
	port(
			clkad: in std_logic;
			funtad: in std_logic_vector(5 downto 0);
			inFlagad: in std_logic;
			rsad: in std_logic_vector(7 downto 0);--A
			rtad: in std_logic_vector(7 downto 0);--B
			outad: in std_logic_vector(7 downto 0);--Resultado de la suma
			LEDa: in std_logic;--Indicador de desbordamiento
			PA: out std_logic_vector(7 downto 0);--A
			PB: out std_logic_vector(7 downto 0);--B
			LEDad: out std_logic;
			outrad: out std_logic_vector(7 downto 0);
			outFlagad: out std_logic
			);
end add00;
architecture add0 of add00 is
begin
	PA <= rsad;
	PB <= rtad;
	
	pad: process(clkad)
	variable aux: bit:= '0';
	begin
		if(clkad'event and clkad = '1') then
			if(funtad = "000111") then
				case inFlagad is
					when '1' =>
						if(aux = '0')then
							aux := '1';
							outrad <= outad;
							LEDad <= LEDa;
							outFlagad <= '1';
						end if;
					when '0' =>
						outFlagad <= '0';
					when others => null;
				end case;
			else
				aux:= '0';
				outrad <= (others => 'Z');
				outFlagad <= 'Z';
				LEDad <= 'Z';
			end if;--funtad
		end if;--CLKAD
	end process pad;
end add0;