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
	   cdiv01: in std_logic_vector(4 downto 0);
	   inData0: in std_logic_vector(7 downto 0);
	   reset0: in std_logic;
	   enable0: in std_logic;
	   outFlagI80: inout std_logic;
	   outFlagI120: inout std_logic;
	   outFlagIter120: inout std_logic;
	   --outFlagAC80: out std_logic;
	   --outFlagAC120: out std_logic;
	   outFlagIterA0: inout std_logic;
	   outFlagMP0: inout std_logic;
	   outFlagIterB0: inout std_logic;
	   outFlagPC0: inout std_logic;
	   --outcontIter0: inout std_logic_vector(3 downto 0);
	   outCode0: inout std_logic_vector(3 downto 0);
	   outFlagCode0: inout std_logic;
	   outPC0: inout std_logic_vector(3 downto 0);
	   --outAC120: inout std_logic_vector(11 downto 0);
	   --outAC80: inout std_logic_vector(7 downto 0);
	   outTransist0: inout std_logic_vector(3 downto 0);
	   outBCD0: out std_logic_vector(6 downto 0));
end topbcd00;

architecture topbcd0 of topbcd00 is
signal sAC8b: std_logic_vector(7 downto 0);
signal sAC12b: std_logic_vector(11 downto 0);
signal sAC12a: std_logic_vector(11 downto 0);
signal soutFlagAC80, soutFlagAC120: std_logic;
signal sFlagFFF: std_logic_vector(2 downto 0);
signal soutU, soutD, soutC: std_logic_vector(6 downto 0);
signal soutcontIter0: std_logic_vector(3 downto 0);
signal soutAC120: std_logic_vector(11 downto 0);
signal soutAC80: std_logic_vector(7 downto 0);
begin
--outFlagAC80 <= soutFlagAC80;
--outFlagAC120 <= soutFlagAC120;
  BD00: topdiv00 port map(clk0 => clk00,
                          clk01 => clk001,
						  cdiv0 => cdiv00,
                          indiv01 => cdiv01);
  
  BD01: init00 port map(clkinit => clk00,
                        opcodeinit => outCode0,
						inFlag8init => outFlagMP0,
						outAC8init => sAC8b,
						outAC12init => sAC12b,
						outFlag12init => outFlagI120,
                        outFlag8init => outFlagI80);
  
  BD02: readData00 port map(clkLD => clk00,
                            opcodeLD => outCode0,
							inFlagLD => outFlagMP0,
							inDataLD => inData0,
							outDataLD => sAC8b,
                            outFlagLD => outFlagI80);
  
  BD03: sust00 port map(clksu => clk00,
                        opcodesu => outCode0,
						inAC8su => soutAC80,
						inAC12su => sAC12a,
						inFlagsu => outFlagMP0,
						outAC12su => sAC12b,
						outLED12su => soutAC120,
						outFlagAC12su => outFlagI120,
                        outFlagItersu => outFlagIter120);
  
  BD04: compadd00 port map(clkca => clk00,
                           opcodeca => outCode0,
						   inAC12ca => sAC12a,
						   inFlagca => outFlagMP0,
						   outAC12ca => sAC12b,
                           outFlagAC12ca => outFlagI120);
  
  BD05: shift800 port map(clks8 => clk00,
                          opcodes8 => outCode0,
						  inACs8 => soutAC80,
						  inFlags8 => outFlagMP0,
						  outACs8 => sAC8b,
                          outFlags8 => outFlagI80);
  
  BD06: shift1200 port map(clks12 => clk00,
                           opcodes12 => outCode0,
						   inACs12 => sAC12a,
						   inFlags12 => outFlagMP0,
						   outACs12 => sAC12b,
                           outFlags12 => outFlagI120);
  
  BD07: ac800 port map(clkac8 => clk00,
                       inAC8 => sAC8b,
					   inFlagac8 => outFlagI80,
					   outAC8 => soutAC80,
                       outFlagac8 => soutFlagAC80);
  
  BD08: ac1200 port map(clkac12 => clk00,
                        inAC12 => sAC12b,
						inFlagac12 => outFlagI120,
						outAC12 => sAC12a,
                        outFlagac12 => soutFlagAC120);
  
  BD09: contIter00 port map(clkIter => clk00,
                            inFlagIter => outFlagIter120,
							resetIter => reset0,
							enableIter => enable0,
							outContIter => soutcontIter0,
                            outFlagIterA => outFlagIterA0,
							outFlagIterB => outFlagIterB0);
  
  BD10: uc00 port map(clkuc => clk00,
                      RSTuc => reset0,
                      ENuc => enable0,
					  inFlagIteruc => outFlagIterA0,
					  inFlagAC12uc => soutFlagAC120,
					  inFlagAC8uc => soutFlagAC80,
					  inFlagIterBuc => outFlagIterB0,
					  inFlagCodeuc => outFlagCode0,
                      F1F2F3uc => sFlagFFF);

  BD11: pc00 port map(clkpc => clk00,
                      inFlagpc => sFlagFFF,
					  outpc => outPC0,
                      outFlagpc => outFlagPC0);

  BD12: checkCode00 port map(clkch => clk00,
                             resetch => reset0,
							 inCodech => outCode0,
                             outFlagch => outFlagCode0);

  BD13: memProg00 port map(clkPM => clk00,
                           resetPM => reset0,
                           inFlagPM => outFlagPC0,
                           outFlagPM => outFlagMP0,
						   inPCPM => outPC0,
                           outcodePM => outCode0);
  
  BD14: contring00 port map(clkr => clk001,
                            enabler => enable0,
							outr => outTransist0);
  
  BD15: coderNibbles00 port map(AC12bit03 => soutAC120,
                               outU => soutU,
							   outD => soutD,
							   outC => soutC);
  
  BD16: mux00 port map(selmux => outTransist0,
                       inBCDU => soutU,
					   inBCDD => soutD,
					   inBCDC => soutC,
                       outBCDmux => outBCD0);

end topbcd0;