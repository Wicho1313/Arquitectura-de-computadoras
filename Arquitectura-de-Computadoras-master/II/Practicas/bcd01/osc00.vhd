library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity osc00 is
port(	
	osc_int: out std_logic
);
end osc00;

architecture osc0 of osc00 is
	component osch
	generic(NOM_FREQ : string := "2.08");
	port(STDBY: in std_logic;
		 OSC: out std_logic);
	end component;
	
attribute NOM_FREQ : string;
attribute NOM_FREQ of OSCinst0 : label is "2.08";
begin 
	OSCinst0: OSCH
		GENERIC MAP( NOM_FREQ => "2.08")
			PORT MAP(STDBY => '0',
					OSC => osc_int);
end osc0;