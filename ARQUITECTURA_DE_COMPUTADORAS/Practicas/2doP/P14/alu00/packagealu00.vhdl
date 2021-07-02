library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagealu00 is

	component topdiv00
		port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic);
	end component;
	
	component anda00
		port(clka: in std_logic;
		 funta: in std_logic_vector(5 downto 0);
		 inFlaga: in std_logic;
		 rsa: in std_logic_vector(7 downto 0);
		 rta: in std_logic_vector(7 downto 0);
		 outra: out std_logic_vector(7 downto 0);
		 outFlaga: out std_logic
		);
	end component;
	
	component ora00
		port(clko: in std_logic;
		 funto: in std_logic_vector(5 downto 0);
		 inFlago: in std_logic;
		 rso: in std_logic_vector(7 downto 0);
		 rto: in std_logic_vector(7 downto 0);
		 outro: out std_logic_vector(7 downto 0);
		 outFlago: out std_logic
		);
	end component;
	
	component ac00
		port(
			clkac: in std_logic;
			enableac: in std_logic;
			inFlagac: in std_logic;
			inac: in std_logic_vector(7 downto 0);
			outac: out std_logic_vector(7 downto 0);
			outFlagac: out std_logic);
	end component;
	
end packagealu00;