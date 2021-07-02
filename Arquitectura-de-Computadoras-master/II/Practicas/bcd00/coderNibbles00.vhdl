library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity coderNibbles00 is
port( 
	AC12bit03: in std_logic_vector ( 11 downto 0 );
	outU: out std_logic_vector ( 6 downto 0 );
	outD: out std_logic_vector ( 6 downto 0 );
	outC: out std_logic_vector ( 6 downto 0 ) );
end coderNibbles00;

architecture coderNibbles0 of coderNibbles00 is
signal nibbU, nibbD, nibbC: std_logic_vector(3 downto 0);
begin
  pbuffNibb: process(AC12bit03)
    begin
       nibbU <= AC12bit03(3 downto 0);
       nibbD <= AC12bit03(7 downto 4);
       nibbC <= AC12bit03(11 downto 8);
    end process pbuffNibb;

  pcoderU: process(nibbU)
    begin
       case nibbU is
          when "0000" => 
             outU <= not ("0000001");
          when "0001" => 
             outU <= not ("1001111");
          when "0010" => 
             outU <= not ("0010010");
          when "0011" => 
             outU <= not ("0000110");
          when "0100" => 
             outU <= not ("1001100");
          when "0101" => 
             outU <= not ("0100100");
          when "0110" => 
             outU <= not ("0100000");
          when "0111" => 
             outU <= not ("0001111");
          when "1000" => 
             outU <= not ("0000000");
          when "1001" => 
             outU <= not ("0000100");
          when others => outU <= not ("1111111");
       end case;
    end process pcoderU;

  pcoderD: process(nibbD)
    begin
       case nibbD is
          when "0000" => 
             outD <= not ("0000001");
          when "0001" => 
             outD <= not ("1001111");
          when "0010" => 
             outD <= not ("0010010");
          when "0011" => 
             outD <= not ("0000110");
          when "0100" => 
             outD <= not ("1001100");
          when "0101" => 
             outD <= not ("0100100");
          when "0110" => 
             outD <= not ("0100000");
          when "0111" => 
             outD <= not ("0001111");
          when "1000" => 
             outD <= not ("0000000");
          when "1001" => 
             outD <= not ("0000100");
          when others => outD <= not ("1111111");
       end case;
    end process pcoderD;

  pcoderC: process(nibbC)
    begin
       case nibbC is
          when "0000" => 
             outC <= not ("0000001");
          when "0001" => 
             outC <= not ("1001111");
          when "0010" => 
             outC <= not ("0010010");
          when "0011" => 
             outC <= not ("0000110");
          when "0100" => 
             outC <= not ("1001100");
          when "0101" => 
             outC <= not ("0100100");
          when "0110" => 
             outC <= not ("0100000");
          when "0111" => 
             outC <= not ("0001111");
          when "1000" => 
             outC <= not ("0000000");
          when "1001" => 
             outC <= not ("0000100");
          when others => outC <= not ("1111111");
       end case;
    end process pcoderC;
end coderNibbles0;