library ieee;
use ieee.std_logic_1164.all;

entity ha00 is port(
	Ah: in std_logic;
	Bh: in std_logic;
	Sh: out std_logic;
	Ch: out std_logic);
end entity;

architecture ha0 of ha00 is
	component and00 port(
		Aa: in std_logic;
		Ba: in std_logic;
		Ya: out std_logic);
	end component;
	component xor00 port(
		Ax: in std_logic;
		Bx: in std_logic;
		Yx: out std_logic);
	end component;
begin
		HA00: xor00 port map(
			  Ax => Ah,
			  Bx => Bh,
			  Yx => Sh);
		HA01: and00 port map(
			  Aa => Ah,
			  Ba => Bh,
			  Ya => Ch);
end architecture;

