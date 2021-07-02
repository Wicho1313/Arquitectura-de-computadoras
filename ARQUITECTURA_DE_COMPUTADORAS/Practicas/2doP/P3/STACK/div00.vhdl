library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity div00 is port (
	osc: in std_logic;
	Vdiv: in std_logic_vector(3 downto 0);
	SalidaOsc: inout std_logic
);
end entity;

architecture div0 of div00 is
signal Sdiv: std_logic_vector(20 downto 0);
begin
	
	process(osc) 
	begin
		if(osc'event and osc='1')then
			
			case Vdiv is
				when "0000" =>
					if(Sdiv > "100000000000000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "0001" =>
					if(Sdiv > "010000000000000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "0010" =>
					if(Sdiv > "001000000000000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "0011" =>
					if(Sdiv > "000100000000000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "0100" =>
					if(Sdiv > "000010000000000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "0101" =>
					if(Sdiv > "000001000000000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "0110" =>
					if(Sdiv > "000000100000000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "0111" =>
					if(Sdiv > "000000010000000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "1000" =>
					if(Sdiv > "000000001000000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "1001" =>
					if(Sdiv > "000000000100000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "1010" =>
					if(Sdiv > "000000000010000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "1011" =>
					if(Sdiv > "000000000001000000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "1100" =>
					if(Sdiv > "000000000000100000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "1101" =>
					if(Sdiv > "000000000000010000000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
					
				when "1110" =>
					if(Sdiv > "000000000000000100000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when "1111" =>
					if(Sdiv > "000000000000000010000") then
						SalidaOsc <= not(SalidaOsc);
						Sdiv <= "000000000000000000000";
					else
						Sdiv <= Sdiv+1;
					end if;
				when others => null;
			end case;
		end if;
	
	end process;
end architecture;