library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity topStack00 is
  port(
       clk0: inout std_logic;
	   cdiv0: in std_logic_vector(3 downto 0);
	   en0: in std_logic; 
	   rw0: in std_logic;
	   inkey0: in std_logic_vector(3 downto 0);
	   outword0: out std_logic_vector(6 downto 0);
	   outr0: out std_logic_vector(3 downto 0);
	   outrled0: out std_logic_vector(3 downto 0);
	   outFlagcoder0: inout std_logic;
	   outFlagram0: inout std_logic; 
	   outcontcoder0: inout std_logic_vector(4 downto 0);
	   outcontRead0: inout std_logic_vector(4 downto 0);
       outtransist0: out std_logic_vector(3 downto 0));
end entity;

architecture topStack0 of topStack00 is
signal scontring: std_logic_vector(3 downto 0);
signal swordcoder: std_logic_vector(6 downto 0);
signal swordram: std_logic_vector(6 downto 0);

  component topOsc00 port (
	Vtopdiv: in std_logic_vector(3 downto 0);
	SaltopOsc: inout std_logic
	);
  end component;
  
  component contring00 port(
       clkcr: in std_logic;
	   encr: in std_logic;
       outcr: out std_logic_vector(3 downto 0)
	   );
  end component;
  
  component coderStack00 port(
       clkr: in std_logic;
	   enr: in std_logic;
	   incontr: in std_logic_vector(3 downto 0);
	   inkeyr: in std_logic_vector(3 downto 0);
	   outcoderr: out std_logic_vector(6 downto 0);
	   outcontr: inout std_logic_vector(4 downto 0);
       outFlagr: out std_logic
	   );
  end component;
  
  component stack00 port(
       clkra: in std_logic;
	   enra: in std_logic;
	   rwra: in std_logic;
	   inFlagra: in std_logic;
	   inwordWra: in std_logic_vector(6 downto 0);
	   indirWra: in std_logic_vector(4 downto 0);
	   indirRra: in std_logic_vector(4 downto 0);
	   outwordra: out std_logic_vector(6 downto 0);
       outFlagra: out std_logic
	   );
  end component;
  
  component stackPointer00 port(
       clkrd: in std_logic;
	   enrd: in std_logic;
	   rwrd: in std_logic;
	   inFlagrd: in std_logic;
	   incontkeyrd: in std_logic_vector(4 downto 0);
       outcontrd: inout std_logic_vector(4 downto 0)
	   );
  end component;
  
  component muxStack00 port(
       enm: in std_logic;
	   rwm: in std_logic;
	   inwordkeym: in std_logic_vector(6 downto 0);
	   inwordramm: in std_logic_vector(6 downto 0);
       outwordm: out std_logic_vector(6 downto 0)
	   );
  end component;
begin
  outtransist0 <= "0001";
  outr0 <= scontring;
  outrled0 <= scontring;
  
	RA00: topOsc00 port map(
							SaltopOsc => clk0,
							Vtopdiv => cdiv0
							);
  	RA01: contring00 port map(
							clkcr => clk0,
                            encr => en0,
                            outcr => scontring
							);
    RA02: coderStack00 port map(
							clkr => clk0,
                            enr => en0,
							incontr => scontring,
							inkeyr => inkey0,
							outcoderr => swordcoder,
							outcontr => outcontcoder0,
                            outFlagr => outFlagcoder0
							);
    RA03: stack00 port map(
							clkra => clk0,
							enra => en0,
							rwra => rw0,
							inFlagra => outFlagcoder0,
							inwordWra => swordcoder,
							indirWra => outcontcoder0,
							indirRra => outcontRead0,
							outwordra => swordram,
							outFlagra => outFlagram0
							);
    RA04: stackPointer00 port map(
							clkrd => clk0,
                            enrd => en0,
							rwrd => rw0,
							inFlagrd => outFlagram0,
						    incontkeyrd => outcontcoder0,
                            outcontrd => outcontRead0
							);
    RA05: muxStack00 port map(
							enm => en0,
                            rwm => rw0,
						    inwordkeym => swordcoder,
						    inwordramm => swordram,
                            outwordm => outword0
							); 
end architecture;
