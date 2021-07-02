--Fernando Hernández Escobedo
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library lattice;
use lattice.all;

package packagelcd00 is
	component topdiv00
		port(
				cdiv0: in std_logic_vector(4 downto 0);
				clk0: inout std_logic);
	end component;
	
	component lcdContConfig00
		port(
				clkcc: in std_logic;
				resetcc: std_logic;
				inFlagcc: in std_logic;
				outcontcc: inout std_logic_vector(4 downto 0);
				outFlagcc: out std_logic);
	end component;
	
	component lcdConfig00
		port(
				clkc: in std_logic;
				resetc: in std_logic;
				inFlagc: in std_logic;
				incontc: in std_logic_vector(4 downto 0);
				outCommandc: out std_logic_vector(7 downto 0);
				outFlagc: out std_logic;
				RWc: out std_logic;
				RSc: out std_logic;
				ENc: out std_logic);
	end component;
	
	component lcdContData00
		port(
				clkcd: in std_logic;
				resetcd: in std_logic;
				inFlagcd: in std_logic;
				RWcd: out std_logic;
				RScd: out std_logic;
				ENcd: out std_logic;
				outcontcd: inout std_logic_vector(4 downto 0);
				outFlagcd: out std_logic);
	end component;
	
	component lcdData00
		port(
				inFlagd: in std_logic;
				resetd: in std_logic;
				incontd: in std_logic_vector(4 downto 0);
				outwordd: out std_logic_vector(7 downto 0));
	end component;
	
	component lcdMux00
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
	end component;
	
end packagelcd00;