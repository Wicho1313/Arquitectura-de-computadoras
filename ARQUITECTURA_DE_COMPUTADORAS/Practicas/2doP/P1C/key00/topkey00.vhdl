--Fernando Hernández Escobedo
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagekey00.all;

entity topkey00 is
	port(
			clk00: inout std_logic;
			cdiv00: in std_logic_vector(4 downto 0);
			enr0: in std_logic;
			inkey0: in std_logic_vector(3 downto 0);
			outr0: out std_logic_vector(3 downto 0);
			outrLED0: out std_logic_vector(3 downto 0);
			outcoder0: out std_logic_vector(6 downto 0);
			outtransist0: out std_logic_vector(3 downto 0));
end topkey00;

architecture topkey0 of topkey00 is
signal soutr0: std_logic_vector(3 downto 0);

begin
outtransist0 <= "1000";
outr0 <= soutr0;
outrLED0 <= soutr0;

	K00: topdiv00 port map(
							clk0 => clk00,
							cdiv0 => cdiv00);
	
	K01: contring00 port map(
								clkr => clk00,
								enr => enr0,
								outr => soutr0);
								
	K02: coder00 port map(
							clkc => clk00,
							inkeyc => inkey0,
							incontc => soutr0,
							outcoderc => outcoder0);

end topkey0;