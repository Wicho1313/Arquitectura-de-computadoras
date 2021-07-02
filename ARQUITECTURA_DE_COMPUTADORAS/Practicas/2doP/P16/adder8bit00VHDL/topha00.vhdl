library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageha00.all;

entity topha00 is
	port(
		A0: in std_logic;
		B0: in std_logic;
		S0: out std_logic;
		C0: out std_logic
	);
end topha00;

architecture topha0 of topha00 is
	begin
		UA00: and00 port map(
			Aa => A0,
			Ba => B0,
			Ya => C0
		);
		
		UX00: xor00 port map(
			Ax => A0,
			Bx => B0,
			Yx => S0
		);
end topha0;