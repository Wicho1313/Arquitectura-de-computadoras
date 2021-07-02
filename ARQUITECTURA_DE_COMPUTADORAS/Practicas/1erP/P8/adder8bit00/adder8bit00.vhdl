--MÓDULO SUMADOR RESTADOR
--Autor: Fernando Hernández Escobedo
--Profesor: Gelacio Castillo Cabrera

library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder8bit00.all;

entity adder8bit00 is
	port(SL: in std_logic;
		Ai: in std_logic_vector(7 downto 0);
		Bi: in std_logic_vector(7 downto 0);
		So: out std_logic_vector(7 downto 0);
		LED: out std_logic);
end adder8bit00;	

architecture adder8bit0 of adder8bit00 is
signal SB: std_logic_vector(7 downto 0);
signal SC: std_logic_vector(7 downto 0);
signal SA: std_logic_vector(7 downto 0);
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
	AD04: xor00 port map(Ax => SL,
						Bx => Bi(4),
						Yx => SB(4));
	AD05: xor00 port map(Ax => SL,
						Bx => Bi(5),
						Yx => SB(5));
	AD06: xor00 port map(Ax => SL,
						Bx => Bi(6),
						Yx => SB(6));
	AD07: xor00 port map(Ax => SL,
						Bx => Bi(7),
						Yx => SB(7));
	AD08: fa00 port map(C00 => SL,
						A00 => Ai(0),
						B00 => SB(0),
						C01 => SC(0),
						S00 => SA(0));
	AD09: fa00 port map(C00 => SC(0),
						A00 => Ai(1),
						B00 => SB(1),
						C01 => SC(1),
						S00 => SA(1));
	AD10: fa00 port map(C00 => SC(1),
						A00 => Ai(2),
						B00 => SB(2),
						C01 => SC(2),
						S00 => SA(2));
	AD011: fa00 port map(C00 => SC(2),
						A00 => Ai(3),
						B00 => SB(3),
						C01 => SC(3),
						S00 => SA(3));
	AD012: fa00 port map(C00 => SC(3),
						A00 => Ai(4),
						B00 => SB(4),
						C01 => SC(4),
						S00 => SA(4));
	AD013: fa00 port map(C00 => SC(4),
						A00 => Ai(5),
						B00 => SB(5),
						C01 => SC(5),
						S00 => SA(5));
	AD014: fa00 port map(C00 => SC(5),
						A00 => Ai(6),
						B00 => SB(6),
						C01 => SC(6),
						S00 => SA(6));
	AD015: fa00 port map(C00 => SC(6),
						A00 => Ai(7),
						B00 => SB(7),
						C01 => SC(7),
						S00 => SA(7));
	AD016: and00 port map(Aa => sAx,
						Ba => SA(0),
						Ya => So(0));
	AD017: and00 port map(Aa => sAx,
						Ba => SA(1),
						Ya => So(1));
	AD18: and00 port map(Aa => sAx,
						Ba => SA(2),
						Ya => So(2));
	AD19: and00 port map(Aa => sAx,
						Ba => SA(3),
						Ya => So(3));
	AD20: and00 port map(Aa => sAx,
						Ba => SA(4),
						Ya => So(4));
	AD21: and00 port map(Aa => sAx,
						Ba => SA(5),
						Ya => So(5));
	AD22: and00 port map(Aa => sAx,
						Ba => SA(6),
						Ya => So(6));
	AD23: and00 port map(Aa => sAx,
						Ba => SA(7),
						Ya => So(7));
	AD24: xnor00 port map(Anx => SC(6),
						Bnx => SC(7),
						Ynx => sAx);
	AD25: xor00 port map(Ax => SC(6),
						Bx => SC(7),
						Yx => LED);
end adder8bit0;