--Fernando Hernández Escobedo
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library lattice;
use lattice.all;

entity lcdContData00 is
	port(
		 clkcd: in std_logic;
		 resetcd: in std_logic;
		 inFlagcd: in std_logic;
		 RWcd: out std_logic;
		 RScd: out std_logic;
		 ENcd: out std_logic;
		 outcontcd: inout std_logic_vector(4 downto 0);
		 outFlagcd: out std_logic);
end lcdContData00;

architecture lcdContData0 of lcdContData00 is
begin
	pcontcd: process(clkcd)
	variable aux: bit:='0';
	begin
		if (clkcd'event and clkcd = '1') then
			case resetcd is
				when '0' =>
					outcontcd <=(others => '0');
					outFlagcd <= '0';
				when '1' =>
					case inFlagcd is
						when '0' =>
							outcontcd <=(others => '0');
							outFlagcd <= '0';
						when '1' =>
							if (aux ='0') then
								aux:='1';
								outcontcd <= outcontcd + '1';
								outFlagcd <= '1';
								RWcd <= '0';
								RScd <=  '1';
								ENcd <= '1';
							elsif (aux = '1') then
								--aux:='0';
								outcontcd <= outcontcd;
								outFlagcd <= '0';
								RWcd <= '0';
								RScd <= '1';
								ENcd <= '0';
							end if;
						when others => null;
					end case;
				when others => null;
			end case;
		end if;
	end process pcontcd;
end lcdContData0;