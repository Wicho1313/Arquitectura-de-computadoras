library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagealu00.all;

entity topalu00 is
	port(
			clk00: inout std_logic;
			cdiv00: in std_logic_vector(4 downto 0);
			funt0: in std_logic_vector(5 downto 0);
			enable0: in std_logic;
			inrs0: in std_logic_vector(7 downto 0);
			inrt0: in std_logic_vector(7 downto 0);
			inrd0: out std_logic_vector(7 downto 0);
			outFlagInst0: inout std_logic;
			outFlagac0: inout std_logic);
end topalu00;

architecture topalu0 of topalu00 is
signal soutinst: std_logic_vector(7 downto 0);
begin
	AL00: topdiv00 port map(
								clk0 => clk00,
								cdiv0 => cdiv00);
	AL01: anda00 port map(
							clka => clk00,
							funta => funt0,
							inFlaga => outFlagac0,
							rsa => inrs0,
							rta => inrt0,
							outra => soutinst,
							outFlaga => outFlagInst0
							);
	AL02: ora00 port map(
							clko => clk00,
							funto => funt0,
							inFlago => outFlagac0,
							rso => inrs0,
							rto => inrt0,
							outro => soutinst,
							outFlago => outFlagInst0
							);
	AL03: ac00 port map(
							clkac => clk00,
							inFlagac => outFlagInst0,
							enableac => enable0,
							inac => soutinst,
							outac => inrd0,
							outFlagac => outFlagac0
							);
end topalu0;