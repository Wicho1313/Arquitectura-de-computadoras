library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity mult00 is
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
end mult00;

architecture mult0 of mult00 is
	begin
		PA <= portAmu;
		PB <= portBmu;
		
		pmult: process(clkmu)
		variable aux: bit:='0';
		begin
		--Tal vez aqui
			if(clkmu'event and clkmu ='1')then
				if(codopmu = "001001") then
					if(inFlagmu = '1') then
						if(aux = '0') then
							aux:='1';
							outmuL <= outm(7 downto 0);
							outmuH <= outm(15 downto 8);
							outFlagmu <= '1';
						else--aux
							outFlagmu <= '0';
						end if;--aux
					else--inFlag
						outFlagmu <= '0';
					end if;--inFlag
				else--codop
					outFlagmu <= 'Z';
					outmuL <= (others => 'Z');
					outmuH <= (others => 'Z');
					aux:='0';
				end if;--codop
			end if;--clk
		end process;
end mult0;