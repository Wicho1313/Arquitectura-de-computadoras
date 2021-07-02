library ieee;
use ieee.std_logic_1164.all;


entity topOsc00 is port (
	Vtopdiv: in std_logic_vector(3 downto 0);
	SaltopOsc: inout std_logic
);
end entity;
architecture topOsc0 of topOsc00 is
signal S1: std_logic;
component div00 port (
	osc: in std_logic;
	Vdiv: in std_logic_vector(3 downto 0);
	SalidaOsc: inout std_logic
);
end component;
component oscilador00 port (
	osc_int: out std_logic
);
end component;
begin
	OS00: oscilador00 port map(
		  osc_int => S1
		  );
	OS01: div00 port map(
		  osc => S1,
		  Vdiv => Vtopdiv,
		  SalidaOsc => SaltopOsc
		  );
end architecture;