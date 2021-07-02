--MÓDULO SUMADOR RESTADOR
--Autor: Fernando Hernández Escobedo
--Profesor: Gelacio Castillo Cabrera

library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder4bit00.all;

entity adder4bit00 is
	port(SL: in std_logic;
		Ai: in std_logic_vector(3 downto 0);
		Bi: in std_logic_vector(3 downto 0);
		So: out std_logic_vector(3 downto 0);
		LED: out std_logic);
end adder4bit00;	

architecture adder4bit0 of adder4bit00 is
signal SB: std_logic_vector(3 downto 0);
signal SC: std_logic_vector(3 downto 0);
signal SA: std_logic_vector(3 downto 0);
signal sAx: std_logic;
begin
	AD00: xor00 port map(Ax => SL,
						Bx => Bi(0),
						Yx => SB(0));
	AD01: xor00 port map(Ax => SL,
						Bx => Bi(1),
						Yx => SB(1));
	AD02: xor00 port map(Ax => SL,
						Bx => Bi(2),
						Yx => SB(2));
	AD03: xor00 port map(Ax => SL,
						Bx => Bi(3),
						Yx => SB(3));
	AD04: fa00 port map(C00 => SL,
						A00 => Ai(0),
						B00 => SB(0),
						C01 => SC(0),
						S00 => SA(0));
	AD05: fa00 port map(C00 => SC(0),
						A00 => Ai(1),
						B00 => SB(1),
						C01 => SC(1),
						S00 => SA(1));
	AD06: fa00 port map(C00 => SC(1),
						A00 => Ai(2),
						B00 => SB(2),
						C01 => SC(2),
						S00 => SA(2));
	AD07: fa00 port map(C00 => SC(2),
						A00 => Ai(3),
						B00 => SB(3),
						C01 => SC(3),
						S00 => SA(3));
	AD08: and00 port map(Aa => sAx,
						Ba => SA(0),
						Ya => So(0));
	AD09: and00 port map(Aa => sAx,
						Ba => SA(1),
						Ya => So(1));
	AD10: and00 port map(Aa => sAx,
						Ba => SA(2),
						Ya => So(2));
	AD11: and00 port map(Aa => sAx,
						Ba => SA(3),
						Ya => So(3));
	AD12: xnor00 port map(Anx => SC(2),
						Bnx => SC(3),
						Ynx => sAx);
	AD13: xor00 port map(Ax => SC(2),
						Bx => SC(3),
						Yx => LED);
end adder4bit0;