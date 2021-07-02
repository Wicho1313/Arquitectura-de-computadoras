library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagebcd00.all;

entity topbcd00 is
  port(
       clk00: inout std_logic;
	   clk001: inout std_logic;
	   cdiv00: in std_logic_vector(4 downto 0);
	   cdiv01: in std_logic_vector(3 downto 0);
	   reset0: in std_logic;
	   enable0: in std_logic;
	   inData0: in std_logic_vector(7 downto 0);
	   outFlag120: inout std_logic;
	   outFlag80: inout std_logic;
	   outFlagAC80: inout std_logic;
	   outFlagAC120: inout std_logic;
	   outAC80: inout std_logic_vector(7 downto 0);
	   outACsust120: out std_logic_vector(11 downto 0);
	   outContIter0: inout std_logic_vector(3 downto 0);
	   outFlagSustIter0: inout std_logic;
	   outFlagIterA0: inout std_logic;
	   outFlagIterB0: inout std_logic;
	   F1F2F3uc0: inout std_logic_vector(2 downto 0);
	   outPC0: inout std_logic_vector(4 downto 0);
	   outFlagpc0: inout std_logic;
	   outFlagPM0: inout std_logic;
	   outcodePM0: inout std_logic_vector(3 downto 0);
	   outFlagch0: inout std_logic;
	   --outr0: inout std_logic_vector(3 downto 0);
       outBCDmux0: out std_logic_vector(6 downto 0);
	   outtransist0: inout std_logic_vector(3 downto 0));
end topbcd00;

architecture topbcd0 of topbcd00 is
signal sAC8b: std_logic_vector(7 downto 0);
signal sAC12b: std_logic_vector(11 downto 0);
signal sAC12a: std_logic_vector(11 downto 0);
--signal soutFlagAC80, soutFlagAC120: std_logic;
signal soutr0: std_logic_vector(3 downto 0);
signal sFlagFFF: std_logic_vector(2 downto 0);
signal soutU, soutD, soutC: std_logic_vector(6 downto 0);
begin
F1F2F3uc0 <= sFlagFFF;
--outr0 <= soutr0;
outtransist0 <= soutr0;
outACsust120 <= sAC12b;
BCD00: topdiv00 port map(clk0 => clk00,
                         clk01 => clk001,-- solo al contring
						 cdiv0 => cdiv00,
                         indiv01 => cdiv01);

BCD01: init00 port map(clkinit => clk00,
	                   opcodeinit => outcodePM0,
	                   inFlaginit => outFlagPM0,
	                   outAC8init => sAC8b,
	                   outAC12init => sAC12b,
	                   outFlag8init => outFlag80,
                       outFlag12init => outFlag120);

BCD02: loadData00 port map(clkLD => clk00,
	                       opcodeLD => outcodePM0,
	                       inDataLD => inData0,
	                       outDataLD => sAC8b,
	                       inFlagLD => outFlagPM0,
	                       outFlagLD => outFlag80);

BCD03: sust00 port map(clksu => clk00,
	                   opcodesu => outcodePM0,
	                   inAC8su => outAC80,
	                   inAC12su => sAC12a,
	                   inFlagsu => outFlagPM0,
	                   outAC12su => sAC12b,
	                   --outLED12su => outACsust120,
	                   outFlagAC12su => outFlag120,
                       outFlagItersu => outFlagSustIter0);

BCD04: compadd00 port map(clkca => clk00,
	                      opcodeca => outcodePM0,
	                      inAC12ca => sAC12a,
						  inFlagca => outFlagPM0,
						  outAC12ca => sAC12b,
						  outFlagAC12ca => outFlag120);

BCD05: shift800 port map(clks8 => clk00,
						 opcodes8 => outcodePM0,
						 inACs8 => outAC80,
						 inFlags8 => outFlagPM0,
						 outACs8 => sAC8b,
						 outFlags8 => outFlag80);

BCD06: shift1200 port map(clks12 => clk00,
						  opcodes12 => outcodePM0,
						  inACs12 => sAC12a,
						  inFlags12 => outFlagAC120,
						  outACs12 => sAC12b,
						  outFlags12 => outFlag120);

BCD07: ac800 port map(clkac8 => CLK00,
					  inAC8 => sAC8b,
					  inFlagac8 => outFlag80,
					  outAC8 => outAC80,
					  outFlagac8 => outFlagAC80);

BCD08: ac1200 port map(clkac12 => clk00,
					   inAC12 => sAC12b,
					   inFlagac12 => outFlag120,
					   outAC12 => sAC12a,
					   outFlagac12 => outFlagAC120);

BCD09: contIter00 port map(clkIter => clk00,
						   inFlagIter => F1F2F3uc0,
						   outContIter => outContIter0,
						   outFlagIterA => outFlagIterA0,
						   outFlagIterB => outFlagIterB0);

BCD10: uc00 port map(RSTuc => reset0,
					 ENuc => enable0,
					 inFlagIterAuc => outFlagIterA0,
					 inFlagAC12uc => outFlagAC120,
					 inFlagAC8uc => outFlagAC80,
					 inFlagCodeuc => outFlagch0,
					 inFlagIterBuc => outFlagIterB0,
					 F1F2F3uc => F1F2F3uc0);

BCD11: pc00 port map(clkpc => clk00,
	                 inFlagpc => F1F2F3uc0,
	                 outpc => outPC0,
                     outFlagpc => outFlagpc0);

BCD12: progMem00 port map(clkPM => clk00,
						  resetPM => reset0,
						  inFlagPM => outFlagpc0,
						  outFlagPM => outFlagPM0,
						  inPCPM => outPC0,
						  outcodePM => outcodePM0);

BCD13: checkCode00 port map(clkch => clk00,
						   resetch=> reset0,
						   inCodech => outcodePM0,
						   outFlagch => outFlagch0);

BCD14: contring00 port map(clkr => clk001,
						   resetr => enable0,
						   outr => soutr0);

BCD15: coderNibbles00 port map(AC12bit03 => sAC12a,
							   outU => soutU,
							   outD => soutD,
							   outC => soutC);

BCD16: mux00 port map(selmux => soutr0,
						 inBCDU => soutU,
						 inBCDD => soutD,
						 inBCDC => soutC,
						 outBCDmux => outBCDmux0);

end topbcd0;