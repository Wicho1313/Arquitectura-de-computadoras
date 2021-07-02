library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;  
use ieee.std_logic_unsigned.all; 
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity arithadder4bit00 is
	port(
		Ai: in std_logic_vector(3 downto 0);
		Bi: in std_logic_vector(3 downto 0);
		SL: in std_logic;
		So: out std_logic_vector(3 downto 0)
	);
	
end arithadder4bit00;

architecture arithadder4bit0 of arithadder4bit00 is
	begin
	
	with SL select So <=
		Ai + Bi when '0',
		Ai - Bi when '1',
		"0000" when others;
	
end arithadder4bit0;