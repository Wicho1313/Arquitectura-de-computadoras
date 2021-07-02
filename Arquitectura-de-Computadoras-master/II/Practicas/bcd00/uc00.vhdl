library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity uc00 is
  port(
       RSTuc: in std_logic;
	   ENuc: in std_logic;
	   inFlagIterAuc: in std_logic;
	   inFlagAC12uc: in std_logic;
	   inFlagAC8uc: in std_logic;
	   inFlagCodeuc: in std_logic;
	   inFlagIterBuc: in std_logic;
	   F1F2F3uc: out std_logic_vector(2 downto 0));
end uc00;

architecture uc0 of uc00 is
signal sFlags: std_logic_vector(6 downto 0);
begin
sFlags <= (RSTuc)&(ENuc)&(inFlagIterAuc)&(inFlagAC12uc)&(inFlagAC8uc)&(inFlagCodeuc)&(inFlagIterBuc);
  with sFlags select
     F1F2F3uc <= "000" when "0000000",--PC inicializado y su bandera de salida en '0'
	             "000" when "0100000",--PC inicializado y su bandera de salida en '0'
				 "001" when "1100000",--PC está en "00000" y coloca su bandera de salida en '1'
				 "010" when "1101100",--PC se incrementa y coloca su bandera en '1'
				 "010" when "1100100",--PC se incrementa y coloca su bandera en '1'
                 "011" when "1101001",--PC se incrementa y coloca su bandera en '1'(tambien el de iteraciones)
                 "100" when "1101000",--PC se incrementa y coloca su bandera en '1'
				 "101" when "1101011",--PC se inicializa en "0010" y coloca su bandera en '1'
				 "110" when "1000000",--PC se detiene y coloca su bandera en '0'
				 "110" when "1000100",--PC se detiene y coloca su bandera en '0'
				 "110" when "1001000",--PC se detiene y coloca su bandera en '0'
				 "110" when "1001001",--PC se detiene y coloca su bandera en '0'
				 "110" when "1001010",--PC se detiene y coloca su bandera en '0'
				 "110" when "1001100",--PC se detiene y coloca su bandera en '0'
				 "110" when "1011000",--PC se detiene y coloca su bandera en '0'
				 "111" when "1111001",--PC se detiene y coloca su bandera en '0'
				 "111" when others;
end uc0;