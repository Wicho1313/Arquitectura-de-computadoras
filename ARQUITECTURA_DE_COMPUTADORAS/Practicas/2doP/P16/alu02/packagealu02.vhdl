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
	
	component nanda00
		port(
			clkn: in std_logic;
			funtn: in std_logic_vector(5 downto 0);
			inFlagn: in std_logic;
			rsn: in std_logic_vector(7 downto 0);
			rtn: in std_logic_vector(7 downto 0);
			outrn: out std_logic_vector(7 downto 0);
			outFlagn: out std_logic);
	end component;
	
	component nora00
		port(
			clkno: in std_logic;
			funtno: in std_logic_vector(5 downto 0);
			inFlagno: in std_logic;
			rsno: in std_logic_vector(7 downto 0);
			rtno: in std_logic_vector(7 downto 0);
			outrno: out std_logic_vector(7 downto 0);
			outFlagno: out std_logic);
	end component;
	
	component xora00
		port(
			clkxo: in std_logic;
			funtxo: in std_logic_vector(5 downto 0);
			inFlagxo: in std_logic;
			rsxo: in std_logic_vector(7 downto 0);
			rtxo: in std_logic_vector(7 downto 0);
			outrxo: out std_logic_vector(7 downto 0);
			outFlagxo: out std_logic);
	end component;
	
	component xnora00
		port(
			clkxn: in std_logic;
			funtxn: in std_logic_vector(5 downto 0);
			inFlagxn: in std_logic;
			rsxn: in std_logic_vector(7 downto 0);
			rtxn: in std_logic_vector(7 downto 0);
			outrxn: out std_logic_vector(7 downto 0);
			outFlagxn: out std_logic);
	end component;
	
	component nota00
		port(
			clknot: in std_logic;
			funtnot: in std_logic_vector(5 downto 0);
			inFlagnot: in std_logic;
			rsnot: in std_logic_vector(7 downto 0);
			outrnot: out std_logic_vector(7 downto 0);
			outFlagnot: out std_logic);
	end component;
	
	component topadder8bit00
		port(
			SL: in std_logic;
			Ai: in std_logic_vector(7 downto 0);
			Bi: in std_logic_vector(7 downto 0);
			So: out std_logic_vector(7 downto 0);
			LED: out std_logic);
	end component;
	
	component topmult8bit00
		port(
			Ai: in std_logic_vector(7 downto 0);
			Bi: in std_logic_vector(7 downto 0);
			Ro: out std_logic_vector(15 downto 0));
	end component;

	component add00
			port(
			clkad: in std_logic;
			funtad: in std_logic_vector(5 downto 0);
			inFlagad: in std_logic;
			rsad: in std_logic_vector(7 downto 0);--A
			rtad: in std_logic_vector(7 downto 0);--B
			outad: in std_logic_vector(7 downto 0);--Resultado de la suma
			LEDa: in std_logic;--Indicador de desbordamiento
			PA: out std_logic_vector(7 downto 0);--A
			PB: out std_logic_vector(7 downto 0);--B
			LEDad: out std_logic;
			outrad: out std_logic_vector(7 downto 0);
			outFlagad: out std_logic);
	end component;
	
	component sub00
		port(
			clksub: in std_logic;
			funtsub: in std_logic_vector(5 downto 0);
			inFlagsub: in std_logic;
			rssub: in std_logic_vector(7 downto 0);--A
			rtsub: in std_logic_vector(7 downto 0);--B
			outad: in std_logic_vector(7 downto 0);--Resultado de la suma
			LEDa: in std_logic;--Indicador de desbordamiento
			PA: out std_logic_vector(7 downto 0);--A
			PB: out std_logic_vector(7 downto 0);--B
			LEDsub: out std_logic;
			outrsub: out std_logic_vector(7 downto 0);
			outFlagsub: out std_logic
			);
	end component;
	
	component mult00
			port(
				clkmu: in std_logic;
				inFlagmu: inout std_logic;
				codopmu: in std_logic_vector(5 downto 0);
				portAmu: in std_logic_vector(7 downto 0);
				portBmu: in std_logic_vector(7 downto 0);
				outm: in std_logic_vector(15 downto 0);
				PA: out std_logic_vector(7 downto 0);
				PB: out std_logic_vector(7 downto 0);
				outmuL: out std_logic_vector(7 downto 0); --Low Result
				outmuH: out std_logic_vector(7 downto 0); --High Result
				outFlagmu: out std_logic);
	end component;
	
	component shifRL00
		port(clksl: in std_logic;
			codopsl: in std_logic_vector(5 downto 0);
			portAsl: in std_logic_vector(7 downto 0);
			inFlagsl: inout std_logic;
			outsl: out std_logic_vector(7 downto 0);
			outFlagsl: out std_logic
		);
	end component;
	
	component ac00
		port(
			clkac: in std_logic;
			enableac: in std_logic;
			inFlagac: in std_logic;
			inac: in std_logic_vector(7 downto 0);
			in2ac: in std_logic_vector(7 downto 0);
			outac: out std_logic_vector(7 downto 0);
			out2ac: out std_logic_vector(7 downto 0);
			outFlagac: out std_logic);
	end component;
	
end packagealu00;