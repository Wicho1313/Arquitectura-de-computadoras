library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder8bit00.all;

entity topadder8bit00 is
	port(
		SL: in std_logic;
		Ai: in std_logic_vector(7 downto 0);
		Bi: in std_logic_vector(7 downto 0);
		So: out std_logic_vector(7 downto 0);
		LED: out std_logic
	);
end topadder8bit00;

architecture topadder8bit0 of topadder8bit00 is
	signal SB, CS, SA: std_logic_vector(7 downto 0);
	signal se: std_logic;
	begin
		--UAD00 - UAD13 según nomenclatura del profe empezando arriba a la izquierda continuando en zigzag
		UX00: xor00 port map(
			Bx => Bi(7),
			Ax => SL,
			Yx => SB(7)
		);
		
		UX01: xor00 port map(
			Bx => Bi(6),
			Ax => SL,
			Yx => SB(6)
		);
		
		UX02: xor00 port map(
			Bx => Bi(5),
			Ax => SL,
			Yx => SB(5)
		);
		
		UX03: xor00 port map(
			Bx => Bi(4),
			Ax => SL,
			Yx => SB(4)
		);
		
		UX04: xor00 port map(
			Bx => Bi(3),
			Ax => SL,
			Yx => SB(3)
		);
		
		UX05: xor00 port map(
			Bx => Bi(2),
			Ax => SL,
			Yx => SB(2)
		);
		
		UX06: xor00 port map(
			Bx => Bi(1),
			Ax => SL,
			Yx => SB(1)
		);
		
		UX07: xor00 port map(
			Bx => Bi(0),
			Ax => SL,
			Yx => SB(0)
		);
		
		UFA00: topfa00 port map(
			C00 => SL,
			A00 => Ai(0),
			B00 => SB(0),
			C01 => CS(0),
			S00 => SA(0)
		);
		
		UFA01: topfa00 port map(
			C00 => CS(0),
			A00 => Ai(1),
			B00 => SB(1),
			C01 => CS(1),
			S00 => SA(1)
		);
		
		UFA02: topfa00 port map(
			C00 => CS(1),
			A00 => Ai(2),
			B00 => SB(2),
			C01 => CS(2),
			S00 => SA(2)
		);
		
		UFA03: topfa00 port map(
			C00 => CS(2),
			A00 => Ai(3),
			B00 => SB(3),
			C01 => CS(3),
			S00 => SA(3)
		);
		
		UFA04: topfa00 port map(
			C00 => CS(3),
			A00 => Ai(4),
			B00 => SB(4),
			C01 => CS(4),
			S00 => SA(4)
		);
		
		UFA05: topfa00 port map(
			C00 => CS(4),
			A00 => Ai(5),
			B00 => SB(5),
			C01 => CS(5),
			S00 => SA(5)
		);
		
		UFA06: topfa00 port map(
			C00 => CS(5),
			A00 => Ai(6),
			B00 => SB(6),
			C01 => CS(6),
			S00 => SA(6)
		);
		
		UFA07: topfa00 port map(
			C00 => CS(6),
			A00 => Ai(7),
			B00 => SB(7),
			C01 => CS(7),
			S00 => SA(7)
		);
		
		UX08: xor00 port map(
			Bx => CS(7),
			Ax => CS(6),
			Yx => LED
		);
		
		UXN00: xnor00 port map(
			Anx => CS(7),
			Bnx => CS(6),
			Ynx => se
		);
		
		UA00: and00 port map(
			Ba => SA(7),
			Aa => se,
			Ya => So(7)
		);
		
		UA01: and00 port map(
			Ba => SA(6),
			Aa => se,
			Ya => So(6)
		);
		
		UA02: and00 port map(
			Ba => SA(5),
			Aa => se,
			Ya => So(5)
		);
		
		UA03: and00 port map(
			Ba => SA(4),
			Aa => se,
			Ya => So(4)
		);
		
		UA04: and00 port map(
			Ba => SA(3),
			Aa => se,
			Ya => So(3)
		);
		
		UA05: and00 port map(
			Ba => SA(2),
			Aa => se,
			Ya => So(2)
		);
		
		UA06: and00 port map(
			Ba => SA(1),
			Aa => se,
			Ya => So(1)
		);
		
		UA07: and00 port map(
			Ba => SA(0),
			Aa => se,
			Ya => So(0)
		);
	
end topadder8bit0;