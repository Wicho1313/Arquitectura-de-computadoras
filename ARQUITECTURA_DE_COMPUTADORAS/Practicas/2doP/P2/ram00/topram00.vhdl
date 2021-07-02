--Hernández Escobedo Fernando
library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageram00.all;

entity topram00 is
	port(
			clk00: inout std_logic;
			cdiv00: in std_logic_vector(4 downto 0);
			en0: in std_logic;
			rw0: in std_logic;
			inkey0: in std_logic_vector(3 downto 0);
			outr0: out std_logic_vector(3 downto 0);--Poner 4 si ya es el correjido
			outrLED0: out std_logic_vector(3 downto 0);
			outcontW0: inout std_logic_vector(4 downto 0);
			outcontR0: inout std_logic_vector(4 downto 0);
			outFlag0: inout std_logic;
			outword0: out std_logic_vector(6 downto 0);
			outtransist0: out std_logic_vector(3 downto 0)
			);
end topram00;

architecture topram0 of topram00 is
signal soutr: std_logic_vector(3 downto 0);
signal swordwrite: std_logic_vector(6 downto 0);
signal swordread: std_logic_vector(6 downto 0);--sale de la ram e irá al MUX
begin
outtransist0 <= "0001";
outr0 <= soutr;
outrLED0 <= soutr;

	RA00: topdiv00 port map(
								clk0 => clk00,
								cdiv0 => cdiv00
								);
	RA01: contring00 port map(
								clkr => clk00,
								enr => en0,
								outr => soutr);
	RA02: coder00 port map(
							clkc => clk00,
							enc => en0,
							rwc => rw0,
							inkeyc => inkey0,
							incontc => soutr,
							outcontc => outcontW0,
							outFlagc => outFlag0,
							outcoderc => swordwrite
							);
	RA03: ram00 port map(
							clkra => clk00,
							enra => en0,
							rwra => rw0,
							inwordra => swordwrite,
							indirWra => outcontW0,
							inFlagra => outFlag0,
							indirRra => outcontR0,
							outwordra => swordread
							);
	RA04: mux00 port map(
							enm => en0,
							rwm => rw0,
							inwordWm => swordwrite,
							inwordRm => swordread,
							outwordm => outword0
							);
	RA05: contRead00 port map(
								clkrd => clk00,
								enrd => en0,
								rwrd => rw0,
								indirWrd => outcontW0,
								outcontrd => outcontR0
								);
	
end topram0;