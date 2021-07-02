--MEDIO SUMADOR HA00
--Autor: Fernando Hernández Escobedo
--Profesor: Gelacio Castillo Cabrera

library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;
use packageha00.all;

entity ha00 is
	port(
		A0: in std_logic;
		B0: in std_logic;
		S0: out std_logic;
		C0: out std_logic);
end ha00;

architecture ha0 of ha00 is
begin
	H00: and00 port map(
						Aa => A0,
						Ba => B0,
						Ya => C0);
	H01: xor00 port map(
						Ax => A0,
						Bx => B0,
						Yx => S0);
	
end ha0;