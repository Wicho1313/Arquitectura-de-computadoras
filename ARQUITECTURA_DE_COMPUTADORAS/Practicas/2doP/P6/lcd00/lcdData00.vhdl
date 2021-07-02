--Fernando Hernández Escobedo
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library lattice;
use lattice.all;

entity lcdData00 is
	port(
			inFlagd: in std_logic;
			resetd: in std_logic;
			incontd: in std_logic_vector(4 downto 0);
			outwordd: out std_logic_vector(7 downto 0));
end lcdData00;

architecture lcdData0 of lcdData00 is
signal scontrol: std_logic_vector(1 downto 0);
type arraydata is array(0 to 63) of std_logic_vector(7 downto 0);
constant worddata: arraydata:=("00100000",--ESPACIO
							   "00100001",--!
							   "01001000",--H
							   "01001111",--O
							   "01001100",--L
							   "01000001",--A
							   "00100000",--ESPACIO
							   "01001101",--M
							   "01010101",--U
							   "01001110",--N
							   "01000100",--D
							   "01001111",--O
							   "00100001",--!
							   others => "00100000");--ESPACIO
begin
scontrol <= (resetd)&(inFlagd);
	with scontrol select
		outwordd <= worddata(conv_integer(incontd)) when "11",
					"00000000" when others;
end lcdData0;