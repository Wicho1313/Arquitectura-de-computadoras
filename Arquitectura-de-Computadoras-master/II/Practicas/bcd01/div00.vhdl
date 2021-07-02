library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity div00 is 
port(clkdiv: in std_logic;
		indiv: in std_logic_vector(4 downto 0);
		oscout: inout std_logic
		);
end div00;

architecture div0 of div00 is
signal sdiv: std_logic_vector(22 downto 0);
begin
		pdiv: process(clkdiv)
		begin 
			if(clkdiv'event and clkdiv = '1' ) then
				case indiv is
					when "00000" =>  
						if(sdiv > "10000000000000000000000") then
							sdiv <= (others => '0');
							oscout <= not(oscout);
						else
							sdiv <= sdiv + '1';
							oscout <= oscout;
						end if;
					when "00001" =>  
						if(sdiv > "0100000000000000000000") then
							sdiv <= (others => '0');
							oscout <= not(oscout);
						else
							sdiv <= sdiv + '1';
							oscout <= oscout;
						end if;
					when "00011" =>  
						if(sdiv > "0010000000000000000000") then
							sdiv <= (others => '0');
							oscout <= not(oscout);
						else
							sdiv <= sdiv + '1';
							oscout <= oscout;
						end if;
					when "00010" =>  
						if(sdiv > "0001000000000000000000") then
							sdiv <= (others => '0');
							oscout <= not(oscout);
						else
							sdiv <= sdiv + '1';
							oscout <= oscout;
						end if;
					when "00110" =>  
						if(sdiv > "0000100000000000000000") then
							sdiv <= (others => '0');
							oscout <= not(oscout);
						else
							sdiv <= sdiv + '1';
							oscout <= oscout;
						end if;
					when "00111" =>  
						if(sdiv > "0000010000000000000000") then
							sdiv <= (others => '0');
							oscout <= not(oscout);
						else
							sdiv <= sdiv + '1';
							oscout <= oscout;
						end if;
					when "01111" =>  
						if(sdiv > "0000001000000000000000") then
							sdiv <= (others => '0');
							oscout <= not(oscout);
						else
							sdiv <= sdiv + '1';
							oscout <= oscout;
						end if;
					when "01110" =>  
						if(sdiv > "0000000100000000000000") then
							sdiv <= (others => '0');
							oscout <= not(oscout);
						else
							sdiv <= sdiv + '1';
							oscout <= oscout;
						end if;
					when "01100" =>  
						if(sdiv > "0000000000100000000000") then
							sdiv <= (others => '0');
							oscout <= not(oscout);
						else
							sdiv <= sdiv + '1';
							oscout <= oscout;
						end if;
					when others => null;
				end case;
				end  if;
end process pdiv;
end div0;