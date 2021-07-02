library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagealu00.all;

entity topalu00 is
	port(
			clk00: inout std_logic;----------YES
			cdiv00: in std_logic_vector(4 downto 0);----------YES
			funt0: in std_logic_vector(5 downto 0);----------YES
			enable0: in std_logic;----------YES
			inrs0: in std_logic_vector(7 downto 0);--A
			inrt0: in std_logic_vector(7 downto 0);--B
			LEDas0: out std_logic;----------YES
			inrd0: out std_logic_vector(7 downto 0);
			in2rd0: out std_logic_vector(7 downto 0);
			outFlagInst0: inout std_logic;----------YES
			outFlagac0: inout std_logic);----------YES
end topalu00;

architecture topalu0 of topalu00 is
signal soutinst: std_logic_vector(7 downto 0);
signal sout2inst: std_logic_vector(7 downto 0);
--signal sSL: std_logic;
signal sAi: std_logic_vector(7 downto 0);
signal sBi: std_logic_vector(7 downto 0);
signal sSo: std_logic_vector(7 downto 0);
signal sAimu: std_logic_vector(7 downto 0);
signal sBimu: std_logic_vector(7 downto 0);	
signal sMo: std_logic_vector(15 downto 0);
signal sLED: std_logic;
begin
	AL00: topdiv00 port map(
								clk0 => clk00,
								cdiv0 => cdiv00);
	AL01: anda00 port map(
							clka => clk00,
							funta => funt0,
							inFlaga => outFlagac0,
							rsa => inrs0,
							rta => inrt0,
							outra => soutinst,
							outFlaga => outFlagInst0
							);
	AL02: ora00 port map(
							clko => clk00,
							funto => funt0,
							inFlago => outFlagac0,
							rso => inrs0,
							rto => inrt0,
							outro => soutinst,
							outFlago => outFlagInst0
							);
	AL03: nanda00 port map(
							clkn => clk00,
							funtn => funt0,
							inFlagn => outFlagac0,
							rsn => inrs0,
							rtn => inrt0,
							outrn => soutinst,
							outFlagn => outFlagInst0
							);
	AL04: nora00 port map(
							clkno => clk00,
							funtno => funt0,
							inFlagno => outFlagac0,
							rsno => inrs0,
							rtno => inrt0,
							outrno => soutinst,
							outFlagno => outFlagInst0
							);
	AL05: xora00 port map(
							clkxo => clk00,
							funtxo => funt0,
							inFlagxo => outFlagac0,
							rsxo => inrs0,
							rtxo => inrt0,
							outrxo => soutinst,
							outFlagxo => outFlagInst0
							);
	AL06: xnora00 port map(
							clkxn => clk00,
							funtxn => funt0,
							inFlagxn => outFlagac0,
							rsxn => inrs0,
							rtxn => inrt0,
							outrxn => soutinst,
							outFlagxn => outFlagInst0
							);
	AL07: nota00 port map(
							clknot => clk00,
							funtnot => funt0,
							inFlagnot => outFlagac0,
							rsnot => inrs0,
							outrnot => soutinst,
							outFlagnot => outFlagInst0
							);
	AL08: topadder8bit00 port map(
								SL => funt0(3),
								Ai => sAi,
								Bi => sBi,
								So => sSo,
								LED => sLED
							);
	AL09: topmult8bit00 port map(
									Ai => sAimu,
									Bi => sBimu,
									Ro => sMo
								);
	AL10: add00 port map(
							clkad => clk00,
							funtad => funt0,
							inFlagad => outFlagac0,
							rsad => inrs0,
							rtad => inrt0,
							outad => sSo,--Resultado de la suma
							LEDa => sLED,--Indicador de desbordamiento
							PA => sAi,--A
							PB => sBi,--B
							LEDad => LEDas0,
							outrad => soutinst,
							outFlagad => outFlagInst0
						);
	AL11: sub00 port map(
							clksub => clk00,
							funtsub => funt0,
							inFlagsub => outFlagac0,
							rssub => inrs0,
							rtsub => inrt0,
							outad => sSo,--Resultado de la suma
							LEDa => sLED,--Indicador de desbordamiento
							PA => sAi,--A
							PB => sBi,--B
							LEDsub => LEDas0,
							outrsub => soutinst,
							outFlagsub => outFlagInst0
						);
	AL12: mult00 port map(
							clkmu => clk00,
							inFlagmu => outFlagac0,
							codopmu => funt0,
							portAmu => inrs0,
							portBmu => inrt0,
							outm => sMo,
							PA => sAimu,
							PB => sBimu,
							outmuL => soutinst,--Este aun tiene que pasar por un ciclo de la unidad de control
							outmuH => sout2inst, --Se requieren 8 bits extras para la salida del multiplicador
							outFlagmu => outFlagInst0
						);
	AL13: ac00 port map(
							clkac => clk00,
							inFlagac => outFlagInst0,
							enableac => enable0,
							inac => soutinst,
							in2ac => sout2inst,
							outac => inrd0,
							out2ac => in2rd0,
							outFlagac => outFlagac0
							);
end topalu0;