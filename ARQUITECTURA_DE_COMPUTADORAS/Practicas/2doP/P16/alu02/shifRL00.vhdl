library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity shifRL00 is
	port(clksl: in std_logic;
		codopsl: in std_logic_vector(5 downto 0);
		portAsl: in std_logic_vector(7 downto 0);
		inFlagsl: inout std_logic;
		outsl: out std_logic_vector(7 downto 0);
		outFlagsl: out std_logic
	);
	
end shifRL00;

architecture shifRL0 of shifRL00 is
	signal scont: std_logic_vector(2 downto 0) := "000";
	signal soutsl: std_logic_vector(7 downto 0);
	begin
	pshiftsl: process(clksl)
		variable aux: bit := '0';
		--variable scont: std_logic_vector(2 downto 0) := "000";
		--variable soutsl: std_logic_vector(7 downto 0);
		begin
			if(clksl'event and clksl = '1') then
				if(codopsl = "001010") then
					if (inFlagsl = '1') then
						if(aux = '0') then
							--if(scont < (shiftamountsl + 1)) then
								--if(scont = "000") then
									--soutsl := portAsl;
									--soutsl <= portAsl;
									--outsl <= soutsl;
									--scont := scont + 1;
									--scont <= scont + 1;
									--outFlagsl <= '0';
								--else
									--soutsl(7 downto 1) := soutsl(6 downto 0);
									--soutsl(0) := '0';
									soutsl(7 downto 1) <= soutsl(6 downto 0);
									soutsl(0) <= '0';
									outsl <= soutsl;
									--scont := scont + 1;
									--scont <= scont + 1;
--									outFlagsl <= '0';
								--end if;
							--else
								aux := '1';
								--outsl <= soutsl;
								outFlagsl <= '1';
							--end if;
						else
							outFlagsl  <= '0';
						end if;
					else
						outFlagsl <= '0';
					end if;
				else 
					aux := '0';
					--scont := "000";
					soutsl <= (others => '0');
					scont <= "000";
					outsl <= (others => 'Z');
					outFlagsl <= 'Z';
				end if;
			end if;
	end process;
	
end shifRL0;