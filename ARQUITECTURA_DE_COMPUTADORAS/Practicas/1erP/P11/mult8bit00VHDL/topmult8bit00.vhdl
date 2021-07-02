library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
use packagemult8bit00.all;

entity topmult8bit00 is
	port(
		Ai: in std_logic_vector(7 downto 0);
		Bi: in std_logic_vector(7 downto 0);
		Ro: out std_logic_vector(15 downto 0)
	);
end topmult8bit00;

architecture topmult8bit0 of topmult8bit00 is
	signal S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, S18, S19, S20: std_logic_vector(7 downto 0);
	begin
		--De izquierda a derecha fila por fila según el diagrama
		UA00: and00 port map(
			Ba => Bi(0),
			Aa => Ai(7),
			Ya => S0(6)
		);
		
		UA01: and00 port map(
			Ba => Bi(0),
			Aa => Ai(6),
			Ya => S0(5)
		);
		
		UA02: and00 port map(
			Ba => Bi(0),
			Aa => Ai(5),
			Ya => S0(4)
		);
		
		UA03: and00 port map(
			Ba => Bi(0),
			Aa => Ai(4),
			Ya => S0(3)
		);

		UA04: and00 port map(
			Ba => Bi(0),
			Aa => Ai(3),
			Ya => S0(2)
		);

		UA05: and00 port map(
			Ba => Bi(0),
			Aa => Ai(2),
			Ya => S0(1)
		);

		UA06: and00 port map(
			Ba => Bi(0),
			Aa => Ai(1),
			Ya => S0(0)
		);

		UA07: and00 port map(
			Ba => Bi(0),
			Aa => Ai(0),
			Ya => Ro(0)
		);
		--Termina primer fila de and's
		UA08: and00 port map(
			Ba => Bi(1),
			Aa => Ai(7),
			Ya => S1(7)
		);
		
		UA09: and00 port map(
			Ba => Bi(1),
			Aa => Ai(6),
			Ya => S1(6)
		);
		
		UA10: and00 port map(
			Ba => Bi(1),
			Aa => Ai(5),
			Ya => S1(5)
		);
		
		UA11: and00 port map(
			Ba => Bi(1),
			Aa => Ai(4),
			Ya => S1(4)
		);

		UA12: and00 port map(
			Ba => Bi(1),
			Aa => Ai(3),
			Ya => S1(3)
		);

		UA13: and00 port map(
			Ba => Bi(1),
			Aa => Ai(2),
			Ya => S1(2)
		);

		UA14: and00 port map(
			Ba => Bi(1),
			Aa => Ai(1),
			Ya => S1(1)
		);

		UA15: and00 port map(
			Ba => Bi(1),
			Aa => Ai(0),
			Ya => S1(0)
		);
		--Termina segunda fila de and's
		UFA00: topfa00 port map(
			C00 => S2(6),
			A00 => '0',
			B00 => S1(7),
			C01 => S2(7),
			S00 => S3(6)
		);
		
		UFA01: topfa00 port map(
			C00 => S2(5),
			A00 => S0(6),
			B00 => S1(6),
			C01 => S2(6),
			S00 => S3(5)
		);

		UFA02: topfa00 port map(
			C00 => S2(4),
			A00 => S0(5),
			B00 => S1(5),
			C01 => S2(5),
			S00 => S3(4)
		);

		UFA03: topfa00 port map(
			C00 => S2(3),
			A00 => S0(4),
			B00 => S1(4),
			C01 => S2(4),
			S00 => S3(3)
		);

		UFA04: topfa00 port map(
			C00 => S2(2),
			A00 => S0(3),
			B00 => S1(3),
			C01 => S2(3),
			S00 => S3(2)
		);

		UFA05: topfa00 port map(
			C00 => S2(1),
			A00 => S0(2),
			B00 => S1(2),
			C01 => S2(2),
			S00 => S3(1)
		);

		UFA06: topfa00 port map(
			C00 => S2(0),
			A00 => S0(1),
			B00 => S1(1),
			C01 => S2(1),
			S00 => S3(0)
		);
		
		UFA07: topfa00 port map(
			C00 => '0',
			A00 => S0(0),
			B00 => S1(0),
			C01 => S2(0),
			S00 => Ro(1)
		);
		--Termina primer fila de FA's
		UA16: and00 port map(
			Ba => Bi(2),
			Aa => Ai(7),
			Ya => S4(7)
		);
		
		UA17: and00 port map(
			Ba => Bi(2),
			Aa => Ai(6),
			Ya => S4(6)
		);
		
		UA18: and00 port map(
			Ba => Bi(2),
			Aa => Ai(5),
			Ya => S4(5)
		);

		UA19: and00 port map(
			Ba => Bi(2),
			Aa => Ai(4),
			Ya => S4(4)
		);

		UA20: and00 port map(
			Ba => Bi(2),
			Aa => Ai(3),
			Ya => S4(3)
		);

		UA21: and00 port map(
			Ba => Bi(2),
			Aa => Ai(2),
			Ya => S4(2)
		);

		UA22: and00 port map(
			Ba => Bi(2),
			Aa => Ai(1),
			Ya => S4(1)
		);
		
		UA23: and00 port map(
			Ba => Bi(2),
			Aa => Ai(0),
			Ya => S4(0)
		);
		--Termina tercer fila de and's
		UFA08: topfa00 port map(
			C00 => S5(6),
			A00 => S2(7),
			B00 => S4(7),
			C01 => S5(7),
			S00 => S6(6)
		);
		
		UFA09: topfa00 port map(
			C00 => S5(5),
			A00 => S3(6),
			B00 => S4(6),
			C01 => S5(6),
			S00 => S6(5)
		);
		
		UFA10: topfa00 port map(
			C00 => S5(4),
			A00 => S3(5),
			B00 => S4(5),
			C01 => S5(5),
			S00 => S6(4)
		);

		UFA11: topfa00 port map(
			C00 => S5(3),
			A00 => S3(4),
			B00 => S4(4),
			C01 => S5(4),
			S00 => S6(3)
		);

		UFA12: topfa00 port map(
			C00 => S5(2),
			A00 => S3(3),
			B00 => S4(3),
			C01 => S5(3),
			S00 => S6(2)
		);

		UFA13: topfa00 port map(
			C00 => S5(1),
			A00 => S3(2),
			B00 => S4(2),
			C01 => S5(2),
			S00 => S6(1)
		);

		UFA14: topfa00 port map(
			C00 => S5(0),
			A00 => S3(1),
			B00 => S4(1),
			C01 => S5(1),
			S00 => S6(0)
		);

		UFA15: topfa00 port map(
			C00 => '0',
			A00 => S3(0),
			B00 => S4(0),
			C01 => S5(0),
			S00 => Ro(2)
		);
		--Termina segunda fila de FA's
		UA24: and00 port map(
			Ba => Bi(3),
			Aa => Ai(7),
			Ya => S7(7)
		);
		
		UA25: and00 port map(
			Ba => Bi(3),
			Aa => Ai(6),
			Ya => S7(6)
		);
		
		UA26: and00 port map(
			Ba => Bi(3),
			Aa => Ai(5),
			Ya => S7(5)
		);

		UA27: and00 port map(
			Ba => Bi(3),
			Aa => Ai(4),
			Ya => S7(4)
		);

		UA28: and00 port map(
			Ba => Bi(3),
			Aa => Ai(3),
			Ya => S7(3)
		);

		UA29: and00 port map(
			Ba => Bi(3),
			Aa => Ai(2),
			Ya => S7(2)
		);

		UA30: and00 port map(
			Ba => Bi(3),
			Aa => Ai(1),
			Ya => S7(1)
		);
		
		UA31: and00 port map(
			Ba => Bi(3),
			Aa => Ai(0),
			Ya => S7(0)
		);
		--Termina cuarta fila de and's
		UFA16: topfa00 port map(
			C00 => S8(6),
			A00 => S5(7),
			B00 => S7(7),
			C01 => S8(7),
			S00 => S9(6)
		);
		
		UFA17: topfa00 port map(
			C00 => S8(5),
			A00 => S6(6),
			B00 => S7(6),
			C01 => S8(6),
			S00 => S9(5)
		);
		
		UFA18: topfa00 port map(
			C00 => S8(4),
			A00 => S6(5),
			B00 => S7(5),
			C01 => S8(5),
			S00 => S9(4)
		);

		UFA19: topfa00 port map(
			C00 => S8(3),
			A00 => S6(4),
			B00 => S7(4),
			C01 => S8(4),
			S00 => S9(3)
		);

		UFA20: topfa00 port map(
			C00 => S8(2),
			A00 => S6(3),
			B00 => S7(3),
			C01 => S8(3),
			S00 => S9(2)
		);

		UFA21: topfa00 port map(
			C00 => S8(1),
			A00 => S6(2),
			B00 => S7(2),
			C01 => S8(2),
			S00 => S9(1)
		);

		UFA22: topfa00 port map(
			C00 => S8(0),
			A00 => S6(1),
			B00 => S7(1),
			C01 => S8(1),
			S00 => S9(0)
		);

		UFA23: topfa00 port map(
			C00 => '0',
			A00 => S6(0),
			B00 => S7(0),
			C01 => S8(0),
			S00 => Ro(3)
		);
		--Termina tercer fila de FA's
		UA32: and00 port map(
			Ba => Bi(4),
			Aa => Ai(7),
			Ya => S10(7)
		);
		
		UA33: and00 port map(
			Ba => Bi(4),
			Aa => Ai(6),
			Ya => S10(6)
		);
		
		UA34: and00 port map(
			Ba => Bi(4),
			Aa => Ai(5),
			Ya => S10(5)
		);

		UA35: and00 port map(
			Ba => Bi(4),
			Aa => Ai(4),
			Ya => S10(4)
		);

		UA36: and00 port map(
			Ba => Bi(4),
			Aa => Ai(3),
			Ya => S10(3)
		);

		UA37: and00 port map(
			Ba => Bi(4),
			Aa => Ai(2),
			Ya => S10(2)
		);

		UA38: and00 port map(
			Ba => Bi(4),
			Aa => Ai(1),
			Ya => S10(1)
		);
		
		UA39: and00 port map(
			Ba => Bi(4),
			Aa => Ai(0),
			Ya => S10(0)
		);
		--Termina quinta fila de and's
		UFA24: topfa00 port map(
			C00 => S11(6),
			A00 => S8(7),
			B00 => S10(7),
			C01 => S11(7),
			S00 => S12(6)
		);
		
		UFA25: topfa00 port map(
			C00 => S11(5),
			A00 => S9(6),
			B00 => S10(6),
			C01 => S11(6),
			S00 => S12(5)
		);
		
		UFA26: topfa00 port map(
			C00 => S11(4),
			A00 => S9(5),
			B00 => S10(5),
			C01 => S11(5),
			S00 => S12(4)
		);

		UFA27: topfa00 port map(
			C00 => S11(3),
			A00 => S9(4),
			B00 => S10(4),
			C01 => S11(4),
			S00 => S12(3)
		);

		UFA28: topfa00 port map(
			C00 => S11(2),
			A00 => S9(3),
			B00 => S10(3),
			C01 => S11(3),
			S00 => S12(2)
		);

		UFA29: topfa00 port map(
			C00 => S11(1),
			A00 => S9(2),
			B00 => S10(2),
			C01 => S11(2),
			S00 => S12(1)
		);

		UFA30: topfa00 port map(
			C00 => S11(0),
			A00 => S9(1),
			B00 => S10(1),
			C01 => S11(1),
			S00 => S12(0)
		);

		UFA31: topfa00 port map(
			C00 => '0',
			A00 => S9(0),
			B00 => S10(0),
			C01 => S11(0),
			S00 => Ro(4)
		);
		--Termina cuarta fila de FA's
		UA40: and00 port map(
			Ba => Bi(5),
			Aa => Ai(7),
			Ya => S13(7)
		);
		
		UA41: and00 port map(
			Ba => Bi(5),
			Aa => Ai(6),
			Ya => S13(6)
		);
		
		UA42: and00 port map(
			Ba => Bi(5),
			Aa => Ai(5),
			Ya => S13(5)
		);

		UA43: and00 port map(
			Ba => Bi(5),
			Aa => Ai(4),
			Ya => S13(4)
		);

		UA44: and00 port map(
			Ba => Bi(5),
			Aa => Ai(3),
			Ya => S13(3)
		);

		UA45: and00 port map(
			Ba => Bi(5),
			Aa => Ai(2),
			Ya => S13(2)
		);

		UA46: and00 port map(
			Ba => Bi(5),
			Aa => Ai(1),
			Ya => S13(1)
		);
		
		UA47: and00 port map(
			Ba => Bi(5),
			Aa => Ai(0),
			Ya => S13(0)
		);
		--Termina sexta fila de and's
		UFA32: topfa00 port map(
			C00 => S14(6),
			A00 => S11(7),
			B00 => S13(7),
			C01 => S14(7),
			S00 => S15(6)
		);
		
		UFA33: topfa00 port map(
			C00 => S14(5),
			A00 => S12(6),
			B00 => S13(6),
			C01 => S14(6),
			S00 => S15(5)
		);
		
		UFA34: topfa00 port map(
			C00 => S14(4),
			A00 => S12(5),
			B00 => S13(5),
			C01 => S14(5),
			S00 => S15(4)
		);

		UFA35: topfa00 port map(
			C00 => S14(3),
			A00 => S12(4),
			B00 => S13(4),
			C01 => S14(4),
			S00 => S15(3)
		);

		UFA36: topfa00 port map(
			C00 => S14(2),
			A00 => S12(3),
			B00 => S13(3),
			C01 => S14(3),
			S00 => S15(2)
		);

		UFA37: topfa00 port map(
			C00 => S14(1),
			A00 => S12(2),
			B00 => S13(2),
			C01 => S14(2),
			S00 => S15(1)
		);

		UFA38: topfa00 port map(
			C00 => S14(0),
			A00 => S12(1),
			B00 => S13(1),
			C01 => S14(1),
			S00 => S15(0)
		);

		UFA39: topfa00 port map(
			C00 => '0',
			A00 => S12(0),
			B00 => S13(0),
			C01 => S14(0),
			S00 => Ro(5)
		);
		--Termina quinta fila de FA's
		UA48: and00 port map(
			Ba => Bi(6),
			Aa => Ai(7),
			Ya => S16(7)
		);
		
		UA49: and00 port map(
			Ba => Bi(6),
			Aa => Ai(6),
			Ya => S16(6)
		);
		
		UA50: and00 port map(
			Ba => Bi(6),
			Aa => Ai(5),
			Ya => S16(5)
		);

		UA51: and00 port map(
			Ba => Bi(6),
			Aa => Ai(4),
			Ya => S16(4)
		);

		UA52: and00 port map(
			Ba => Bi(6),
			Aa => Ai(3),
			Ya => S16(3)
		);

		UA53: and00 port map(
			Ba => Bi(6),
			Aa => Ai(2),
			Ya => S16(2)
		);

		UA54: and00 port map(
			Ba => Bi(6),
			Aa => Ai(1),
			Ya => S16(1)
		);
		
		UA55: and00 port map(
			Ba => Bi(6),
			Aa => Ai(0),
			Ya => S16(0)
		);
		--Termina septima fila de and's
		UFA40: topfa00 port map(
			C00 => S17(6),
			A00 => S14(7),
			B00 => S16(7),
			C01 => S17(7),
			S00 => S18(6)
		);
		
		UFA41: topfa00 port map(
			C00 => S17(5),
			A00 => S15(6),
			B00 => S16(6),
			C01 => S17(6),
			S00 => S18(5)
		);
		
		UFA42: topfa00 port map(
			C00 => S17(4),
			A00 => S15(5),
			B00 => S16(5),
			C01 => S17(5),
			S00 => S18(4)
		);

		UFA43: topfa00 port map(
			C00 => S17(3),
			A00 => S15(4),
			B00 => S16(4),
			C01 => S17(4),
			S00 => S18(3)
		);

		UFA44: topfa00 port map(
			C00 => S17(2),
			A00 => S15(3),
			B00 => S16(3),
			C01 => S17(3),
			S00 => S18(2)
		);

		UFA45: topfa00 port map(
			C00 => S17(1),
			A00 => S15(2),
			B00 => S16(2),
			C01 => S17(2),
			S00 => S18(1)
		);

		UFA46: topfa00 port map(
			C00 => S17(0),
			A00 => S15(1),
			B00 => S16(1),
			C01 => S17(1),
			S00 => S18(0)
		);

		UFA47: topfa00 port map(
			C00 => '0',
			A00 => S15(0),
			B00 => S16(0),
			C01 => S17(0),
			S00 => Ro(6)
		);
		--Termina sexta fila de FA's
		UA56: and00 port map(
			Ba => Bi(7),
			Aa => Ai(7),
			Ya => S19(7)
		);
		
		UA57: and00 port map(
			Ba => Bi(7),
			Aa => Ai(6),
			Ya => S19(6)
		);
		
		UA58: and00 port map(
			Ba => Bi(7),
			Aa => Ai(5),
			Ya => S19(5)
		);

		UA59: and00 port map(
			Ba => Bi(7),
			Aa => Ai(4),
			Ya => S19(4)
		);

		UA60: and00 port map(
			Ba => Bi(7),
			Aa => Ai(3),
			Ya => S19(3)
		);

		UA61: and00 port map(
			Ba => Bi(7),
			Aa => Ai(2),
			Ya => S19(2)
		);

		UA62: and00 port map(
			Ba => Bi(7),
			Aa => Ai(1),
			Ya => S19(1)
		);
		
		UA63: and00 port map(
			Ba => Bi(7),
			Aa => Ai(0),
			Ya => S19(0)
		);
		--Termina octava fila de and's
		UFA48: topfa00 port map(
			C00 => S20(6),
			A00 => S17(7),
			B00 => S19(7),
			C01 => Ro(15),
			S00 => Ro(14)
		);
		
		UFA49: topfa00 port map(
			C00 => S20(5),
			A00 => S18(6),
			B00 => S19(6),
			C01 => S20(6),
			S00 => Ro(13)
		);
		
		UFA50: topfa00 port map(
			C00 => S20(4),
			A00 => S18(5),
			B00 => S19(5),
			C01 => S20(5),
			S00 => Ro(12)
		);

		UFA51: topfa00 port map(
			C00 => S20(3),
			A00 => S18(4),
			B00 => S19(4),
			C01 => S20(4),
			S00 => Ro(11)
		);

		UFA52: topfa00 port map(
			C00 => S20(2),
			A00 => S18(3),
			B00 => S19(3),
			C01 => S20(3),
			S00 => Ro(10)
		);

		UFA53: topfa00 port map(
			C00 => S20(1),
			A00 => S18(2),
			B00 => S19(2),
			C01 => S20(2),
			S00 => Ro(9)
		);

		UFA54: topfa00 port map(
			C00 => S20(0),
			A00 => S18(1),
			B00 => S19(1),
			C01 => S20(1),
			S00 => Ro(8)
		);

		UFA55: topfa00 port map(
			C00 => '0',
			A00 => S18(0),
			B00 => S19(0),
			C01 => S20(0),
			S00 => Ro(7)
		);
end topmult8bit0;