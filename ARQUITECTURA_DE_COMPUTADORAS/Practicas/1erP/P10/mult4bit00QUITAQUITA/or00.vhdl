library ieee;
use ieee.std_logic_1164.all;

entity or00 is port(
	Ao: in std_logic;
	Bo: in std_logic;
	Yo: out std_logic);	
end entity;

architecture or0 of or00 is
begin
	Yo <= Ao or Bo;
end architecture;

