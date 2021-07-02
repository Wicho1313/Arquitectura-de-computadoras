library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

package packagemult8bit00 is
	
	component topfa00
		port(
			C00: in std_logic;
			A00: in std_logic;
			B00: in std_logic;
			S00: out std_logic;
			C01: out std_logic
		);
	end component;
	
	component and00
		port(
			Aa: in std_logic;
			Ba: in std_logic;
			Ya: out std_logic
		);
	end component;
	
end packagemult8bit00;