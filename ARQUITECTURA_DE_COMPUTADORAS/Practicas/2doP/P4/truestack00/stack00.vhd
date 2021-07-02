library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library lattice;
use lattice.all;

entity stack00 is 
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
end stack00;

architecture stack0 of stack00 is
type arrayram is array(0 to 63) of std_logic_vector(6 downto 0);
signal wordram: arrayram;
begin
	pram: process(clkra)
	begin
		if (clkra'event and clkra = '1') then
			case enra is
				when '0' =>
					outwordra <= (others => '1');
					outFlagra <= '0';	-- para impedir que se lea de la RAM
				when '1' =>
					case rwra is
						when '0' => -- escribir
							if (inFlagra = '1') then
								wordram(conv_integer(indirWra)) <= inwordra; --Se necesita conversión pues indirWra es binario no integer
								outFlagra <= '0';
							end if;
						when '1' => -- lectura
							outwordra <= wordram(conv_integer(indirRra));
							outFlagra <= '1';
							
						when others => null;
					end case;
				when others => null;
			end case;
		end if;
	end process pram;
end stack0;