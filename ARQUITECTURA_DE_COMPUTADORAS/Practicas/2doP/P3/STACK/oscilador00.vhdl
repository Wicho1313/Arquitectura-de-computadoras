library ieee;
use ieee.std_logic_1164.all;

entity oscilador00 is port (
	osc_int: out std_logic
);
end entity;

architecture osc0 of oscilador00 is
	COMPONENT OSCH
-- synthesis translate_off
		GENERIC (NOM_FREQ: string := "2.08");
-- synthesis translate_on
		PORT (STDBY:in std_logic;
		OSC:out std_logic
		);
	END COMPONENT;
	attribute NOM_FREQ : string;
	attribute NOM_FREQ of OSCinst0 : label is "2.08";
begin
	OSCInst0: OSCH
-- synthesis translate_off
		GENERIC MAP( NOM_FREQ => "2.08" )
-- synthesis translate_on
		PORT MAP (STDBY=> '0',
			OSC => osc_int
		);
end architecture;