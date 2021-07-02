--Fernando Hernández Escobedo
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library lattice;
use lattice.all;

entity lcdmux00 is
	port(
			inFlagconfigm: in std_logic;
			inwordconfigm: in std_logic_vector(7 downto 0);
			inworddatam: in std_logic_vector(7 downto 0);
			inRWcm: in std_logic;
			inRScm: in std_logic;
			inENcm: in std_logic;
			inRWdm: in std_logic;
			inRSdm: in std_logic;
			inENdm: in std_logic;
			outRWm: out std_logic;
			outRSm: out std_logic;
			outENm: out std_logic;
			outwordm: out std_logic_vector(7 downto 0));
end lcdmux00;

architecture lcdmux0 of lcdmux00 is
begin
	
	with inFlagconfigm select
		outwordm <= inwordconfigm when '0',
					inworddatam when '1',
					"00000000" when others;
	with inFlagconfigm select
		outRWm <= inRWcm when '0',
					inRWdm when '1',
					'0' when others;
	with inFlagconfigm select
		outRSm <= inRScm when '0',
					inRSdm when '1',
					'0' when others;
	with inFlagconfigm select
		outENm <= inENcm when '0',
					inENdm when '1',
					'0' when others;
end lcdmux0;