library ieee;
use ieee.std_logic_1164.all;

library lattice;
use lattice.all;

package packageStack00 is
	component topdiv00
		port(
			cdiv0: in std_logic_vector(4 downto 0);
			clk0: inout std_logic);
	end component;
	
	component contring00
		port
		(
			clkcr: in std_logic;
			encr: in std_logic;
			outcr: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component coderStack00
		port
		(
			clkr: in std_logic;
			enr: in std_logic;
			rwr: in std_logic;
			inkeyr: in std_logic_vector(3 downto 0);
			incontr: in std_logic_vector(3 downto 0);
			outcoderr: out std_logic_vector(6 downto 0);
			outcontr: inout std_logic_vector(4 downto 0); --Para manejar 32 datos
			outFlagr: out std_logic;
			flag: out std_logic
		);
	end component;
	
	component stack00
		port
		(
			clkra: in std_logic;
			enra: in std_logic;
			rwra: in std_logic;
			inFlagra: in std_logic;
			inwordra: in std_logic_vector(6 downto 0);
			indirWra: in std_logic_vector(4 downto 0);
			indirRra: in std_logic_vector(4 downto 0);
			outwordra: out std_logic_vector(6 downto 0);
			outFlagra: out std_logic
		);
	end component;
	
	component stackPointer00
		port
		(
			clkrd: in std_logic;
			enrd: in std_logic;
			rwrd: in std_logic;
			inFlagrd: in std_logic;
			incontkeyrd: in std_logic_vector(4 downto 0);
			outcontrd: inout std_logic_vector(4 downto 0)
		);
	end component;
	
	component muxStack00
		port
		(
			enm: in std_logic;
			rwm: in std_logic;
			inFlagm: in std_logic;
			inwordkeym: in std_logic_vector(6 downto 0); --cuando rwm sea 0 saldrá esto
			inwordramm: in std_logic_vector(6 downto 0);
			outwordm: out std_logic_vector(6 downto 0)
		);
	end component;	
end packageStack00;