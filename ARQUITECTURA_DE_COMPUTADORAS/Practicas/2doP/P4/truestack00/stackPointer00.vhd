library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library lattice;
use lattice.all;

entity stackPointer00 is 
	port
	(
		clkrd: in std_logic;
		enrd: in std_logic;
		rwrd: in std_logic;
		inFlagrd: in std_logic;
		incontkeyrd: in std_logic_vector(4 downto 0);
		outcontrd: inout std_logic_vector(4 downto 0)
	);
end stackPointer00;

architecture stackPointer0 of stackPointer00 is
begin
	pcontread: process(clkrd)
	begin 
		if(clkrd'event and clkrd = '1') then
			case enrd is
				when '0' =>
					outcontrd <= incontkeyrd;
				when '1' =>
					case rwrd is
						when '0' => --Estamos tecleando caracteres
							outcontrd <= incontkeyrd;
						when '1' =>
							case inFlagrd is --Leemos de la pila
								when '0' =>
									outcontrd <= incontkeyrd;
								when '1' =>
									if(outcontrd < "11110") then
										outcontrd <= outcontrd + '1';
									else
										outcontrd <= outcontrd;
									end if;
								when others => null;
							end case;
						when others => null;
					end case;
				when others => null;	
			end case;
		end if;
	end process pcontread;
end stackPointer0;