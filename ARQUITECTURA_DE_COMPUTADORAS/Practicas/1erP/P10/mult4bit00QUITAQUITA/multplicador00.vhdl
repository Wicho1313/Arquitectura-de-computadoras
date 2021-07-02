library ieee;
use ieee.std_logic_1164.all;

entity multiplicador00 is port(
	Am: in std_logic_vector(3 downto 0);
	Bm: in std_logic_vector(3 downto 0);
	Rm: out std_logic_vector(7 downto 0));
end entity;

architecture multiplicador0 of multiplicador00 is
	signal Sm1,Zm,Sm3,Zm1,Sm7,Zm2: std_logic_vector(2 downto 0);
	signal Sm2,Sm5,Sm8: std_logic_vector(3 downto 0);
	signal Sm4,Sm6: std_logic;
	component and00 port(
		Aa: in std_logic;
		Ba: in std_logic;
		Ya: out std_logic);
	end component;
	component fa00 port(
		Af: in std_logic;
		Bf: in std_logic;
		Cin: in std_logic;
		Sf: out std_logic;
		Cout: out std_logic);
	end component;
begin
		MA00: and00 port map(
				Aa => Am(0),
				Ba => Bm(0),
				Ya => Rm(0)
				);
		MA01: and00 port map(
				Aa => Am(1),
				Ba => Bm(0),
				Ya => Sm1(0)
				);
		MA02: and00 port map(
				Aa => Am(2),
				Ba => Bm(0),
				Ya => Sm1(1)
				);
		MA03: and00 port map(
				Aa => Am(3),
				Ba => Bm(0),
				Ya => Sm1(2)
				);
				
		MA04: and00 port map(
				Aa => Am(0),
				Ba => Bm(1),
				Ya => Sm2(0)
				);
		MA05: and00 port map(
				Aa => Am(1),
				Ba => Bm(1),
				Ya => Sm2(1)
				);
		MA06: and00 port map(
				Aa => Am(2),
				Ba => Bm(1),
				Ya => Sm2(2)
				);
		MA07: and00 port map(
				Aa => Am(3),
				Ba => Bm(0),
				Ya => Sm2(3)
				);
		MA08: fa00 port map(
				Af => Sm2(0),
				Bf => Sm1(0),
				Cin => '0',
				Sf => Rm(1),
				Cout => Zm(0)
				);
		MA09: fa00 port map(
				Af => Sm2(1),
				Bf => Sm1(1),
				Cin => Zm(0),
				Sf => Sm3(0),
				Cout => Zm(1)
				);
		MA10: fa00 port map(
				Af => Sm2(2),
				Bf => Sm1(2),
				Cin => Zm(1),
				Sf => Sm3(1),
				Cout => Zm(2)
				);
		MA11: fa00 port map(
				Af => Sm2(3),
				Bf => '0',
				Cin => Zm(2),
				Sf => Sm3(2),
				Cout => Sm4
				);
		MA12: and00 port map(
				Aa => Am(0),
				Ba => Bm(2),
				Ya => Sm5(0)
				);
		MA13: and00 port map(
				Aa => Am(1),
				Ba => Bm(2),
				Ya => Sm5(1)
				);
		MA14: and00 port map(
				Aa => Am(2),
				Ba => Bm(2),
				Ya => Sm5(2)
				);
		MA15: and00 port map(
				Aa => Am(3),
				Ba => Bm(2),
				Ya => Sm5(3)
				);
		MA16: fa00 port map(
				Af => Sm5(0),
				Bf => Sm3(0),
				Cin => '0',
				Sf => Rm(2),
				Cout => Zm1(0) 
				);
		MA17: fa00 port map(
				Af => Sm5(1),
				Bf => Sm3(1),
				Cin => Zm1(0) ,
				Sf => Sm7(0),
				Cout => Zm1(1)
				);
		MA18: fa00 port map(
				Af => Sm5(2),
				Bf => Sm3(2),
				Cin => Zm1(1) ,
				Sf =>  Sm7(1),
				Cout => Zm1(2)
				);
		MA19: fa00 port map(
				Af => Sm5(3),
				Bf => Sm4,
				Cin => Zm1(2),
				Sf =>  Sm7(2),
				Cout => Sm6
				);
		MA20: and00 port map(
				Aa => Am(0),
				Ba => Bm(3),
				Ya => Sm8(0)
				);
		MA21: and00 port map(
				Aa => Am(1),
				Ba => Bm(3),
				Ya => Sm8(1)
				);
		MA22: and00 port map(
				Aa => Am(2),
				Ba => Bm(3),
				Ya => Sm8(2) 
				);
		MA23: and00 port map(
				Aa => Am(3),
				Ba => Bm(3),
				Ya => Sm8(3)
				);
		MA24: fa00 port map(
				Af => Sm8(0),
				Bf => Sm7(0),
				Cin => '0',
				Sf => Rm(3),
				Cout => Zm2(0)
				);
		MA25: fa00 port map(
				Af => Sm8(1),
				Bf => Sm7(1),
				Cin => Zm2(0),
				Sf => Rm(4),
				Cout => Zm2(1)
				);
		MA26: fa00 port map(
				Af => Sm8(2),
				Bf => Sm7(2),
				Cin => Zm2(1),
				Sf => Rm(5),
				Cout => Zm2(2)
				);
		MA27: fa00 port map(
				Af => Sm8(3),
				Bf => Sm6,
				Cin => Zm2(2),
				Sf => Rm(6),
				Cout => Rm(7)
				);
end architecture;