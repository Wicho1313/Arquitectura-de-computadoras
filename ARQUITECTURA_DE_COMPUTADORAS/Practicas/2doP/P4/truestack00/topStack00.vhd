library ieee;
use ieee.std_logic_1164.all;

library lattice;
use lattice.all;

use packageStack00.all;

entity topStack00 is
	port
	(
		clk0: inout std_logic;
		cdiv0: in std_logic_vector(4 downto 0);
		en0: in std_logic;
		rw0: in std_logic;
		inkey0: in std_logic_vector(3 downto 0);
		outr0: out std_logic_vector(3 downto 0);
		outrled0: out std_logic_vector(3 downto 0);
		outcontW0: inout std_logic_vector(4 downto 0);
		outcontR0: inout std_logic_vector(4 downto 0);
		outFlagcoder0: inout std_logic;
		outFlagram0: inout std_logic;
		outword0: out std_logic_vector(6 downto 0);
		outtransist0: out std_logic_vector(3 downto 0);
		flag0: out std_logic
	);
end topStack00;

architecture topStack0 of topStack00 is
signal swordcoder, swordram: std_logic_vector(6 downto 0);
signal scontring: std_logic_vector(3 downto 0);
begin
	outtransist0 <= "0001";
	outr0 <= scontring;
	outrled0 <= scontring;
	
	RA00: topdiv00 port map
	(
		clk0 => clk0,
		cdiv0 => cdiv0
	);
	
	RA01: contring00 port map
	(
		clkcr => clk0,
		encr => en0,
		outcr => scontring
	);
	
	RA02: coderStack00 port map
	(
		clkr => clk0,
		enr => en0,
		rwr => rw0,
		inkeyr => inkey0,
		incontr => scontring,
		outcoderr => swordcoder,
		outcontr => outcontW0,
		outFlagr => outFlagcoder0,
		flag => flag0
	);
	
	RA03: stack00 port map
	(
		clkra => clk0,
		enra => en0,
		rwra => rw0,
		inFlagra => outFlagcoder0,
		inwordra => swordcoder,
		indirWra => outcontW0,
		indirRra => outcontR0,
		outwordra => swordram,
		outFlagra => outFlagram0
	);
	
	RA04: stackPointer00 port map
	(
		clkrd => clk0,
		enrd => en0,
		rwrd => rw0,
		inFlagrd=>outFlagram0,
		incontkeyrd => outcontW0,
		outcontrd => outcontR0
	);
	
	RA05: muxStack00 port map
	(
		enm => en0,
		rwm => rw0,
		inFlagm => outFlagram0,
		inwordkeym => swordcoder,
		inwordramm => swordram,
		outwordm => outword0
	);
end topStack0;