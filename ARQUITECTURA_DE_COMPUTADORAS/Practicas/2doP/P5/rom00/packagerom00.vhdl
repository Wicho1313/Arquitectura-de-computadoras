--FERNANDO HERNÁNDEZ ESCOBEDO
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

package packagerom00 is

	component topdiv00
		port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic);
	end component;
	
	component contRead00
		port(
			clkrd: in std_logic;
			enrd: in std_logic;
			outcontrd: inout std_logic_vector(4 downto 0));
	end component;
	
	component rom00
		port(
			clkro: in std_logic;
			enro: in std_logic;
			indirro: in std_logic_vector(4 downto 0);
			outwordro: out std_logic_vector(6 downto 0));
	end component;
end packagerom00;