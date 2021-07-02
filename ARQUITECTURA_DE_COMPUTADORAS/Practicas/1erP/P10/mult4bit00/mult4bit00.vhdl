--Multiplicador de 4 bits
--Autor: Fernando Hernández Escobedo
--Profesor: Gelacio Castillo Cabrera

library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;
use packagemult4bit00.all;

entity mult4bit00 is
	port(
			Am: in std_logic_vector(3 downto 0);
			Bm: in std_logic_vector(3 downto 0);
			Rm: out std_logic_vector(7 downto 0));
end mult4bit00;

architecture mult4bit0 of mult4bit00 is
signal S0,S3,S6,S8: std_logic_vector (2 downto 0);
signal S1, S2, S4, S5, S7: std_logic_vector (3 downto 0);
begin

	MU00: and00 port map(
							Aa => Am(0),
							Ba => Bm(0),
							Ya => Rm(0));
	MU01: and00 port map(
							Aa => Am(1),
							Ba => Bm(0),
							Ya => S0(0));
	MU02: and00 port map(
							Aa => Am(2),
							Ba => Bm(0),
							Ya => S0(1));
	MU03: and00 port map(
							Aa => Am(3),
							Ba => Bm(0),
							Ya => S0(2));
	MU04: and00 port map(
							Aa => Am(0),
							Ba => Bm(1),
							Ya => S1(0));
	MU05: and00 port map(
							Aa => Am(1),
							Ba => Bm(1),
							Ya => S1(1));
	MU06: and00 port map(
							Aa => Am(2),
							Ba => Bm(1),
							Ya => S1(2));
	MU07: and00 port map(
							Aa => Am(3),
							Ba => Bm(1),
							Ya => S1(3));
	MU08: fa00 port map(
							C00 => '0',
							A00 => S0(0),
							B00 => S1(0),
							C01 => S2(0),
							S00 => Rm(1));
	MU09: fa00 port map(
							C00 => S2(0),
							A00 => S0(1),
							B00 => S1(1),
							C01 => S2(1),
							S00 =>S3(0));
	MU10: fa00 port map(
							C00 => S2(1),
							A00 => S0(2),
							B00 => S1(2),
							C01 => S2(2),
							S00 =>S3(1));
	MU11: fa00 port map(
							C00 => S2(2),
							A00 => '0',
							B00 => S1(3),
							C01 => S2(3),
							S00 =>S3(2));
	MU12: and00 port map(
							Aa => Am(0),
							Ba => Bm(2),
							Ya => S4(0));
	MU13: and00 port map(
							Aa => Am(1),
							Ba => Bm(2),
							Ya => S4(1));
	MU14: and00 port map(
							Aa => Am(2),
							Ba => Bm(2),
							Ya => S4(2));
	MU15: and00 port map(
							Aa => Am(3),
							Ba => Bm(2),
							Ya => S4(3));
	MU16: fa00 port map(
							C00 => '0',
							A00 => S3(0),
							B00 => S4(0),
							C01 => S5(0),
							S00 =>Rm(2));
	MU17: fa00 port map(
							C00 => S5(0),
							A00 => S3(1),
							B00 => S4(1),
							C01 => S5(1),
							S00 =>S6(0));
	MU18: fa00 port map(
							C00 => S5(1),
							A00 => S3(2),
							B00 => S4(2),
							C01 => S5(2),
							S00 =>S6(1));
	MU19: fa00 port map(
							C00 => S5(2),
							A00 => S2(3),
							B00 => S4(3),
							C01 => S5(3),
							S00 =>S6(2));
	MU20: and00 port map(
							Aa => Am(0),
							Ba => Bm(3),
							Ya => S7(0));
	MU21: and00 port map(
							Aa => Am(1),
							Ba => Bm(3),
							Ya => S7(1));
	MU22: and00 port map(
							Aa => Am(2),
							Ba => Bm(3),
							Ya => S7(2));
	MU23: and00 port map(
							Aa => Am(3),
							Ba => Bm(3),
							Ya => S7(3));
	MU24: fa00 port map(
							C00 => '0',
							A00 => S6(0),
							B00 => S7(0),
							C01 => S8(0),
							S00 =>Rm(3));
	MU25: fa00 port map(
							C00 => S8(0),
							A00 => S6(1),
							B00 => S7(1),
							C01 => S8(1),
							S00 =>Rm(4));
	MU26: fa00 port map(
							C00 => S8(1),
							A00 => S6(2),
							B00 => S7(2),
							C01 => S8(2),
							S00 =>Rm(5));
	MU27: fa00 port map(
							C00 => S8(2),
							A00 => S5(3),
							B00 => S7(3),
							C01 => Rm(7),
							S00 =>Rm(6));
	
end mult4bit0;