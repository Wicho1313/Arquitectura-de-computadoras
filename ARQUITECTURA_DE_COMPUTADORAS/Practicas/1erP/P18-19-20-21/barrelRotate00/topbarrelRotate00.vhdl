Library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.componentes.all;
use packagebarrelRotate00.all;

entity topbarrelRotate00 is 
port(
	clk0: inout std_logic;
	cdiv00: in std_logic_vector(4 downto 0);
	en0: in std_logic;
	insl0: in std_logic_vector(7 downto 0);
	limite0: in std_logic_vector(2 downto 0);
	sel0: in std_logic_vector(3 downto 0);
	outsl0: out std_logic_vector (7 downto 0)
	);
end topbarrelRotate00;
 
architecture topbarrelRotate0 of topbarrelRotate00 is 
begin
	SR00: toposcdiv00 port map(cdiv0 => cdiv00,
								oscout0 => clk0);
	SR01: BarrelRotate00 port map(clksl => clk0,
								enable => en0,
								limite => limite0,
								insl => insl0,
								sel => sel0,
								outsl => outsl0);
end topbarrelRotate0;