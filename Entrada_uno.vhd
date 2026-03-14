Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

Entity Entrada_Uno is
Port
(

Entrada_num1: in std_logic_vector (0 to 3); -- NUMERO 1
Salida_uno: out std_logic_vector (0 to 6) -- SALIDA SUMA 
);

End Entrada_Uno;

architecture RTL of Entrada_Uno is
      
		begin
	       process (Entrada_num1)
			    begin 
			    case Entrada_num1 is
				     when "0000" => salida_uno <= "0000001"; -- 0
					  when "0001" => salida_uno <= "1001111"; -- 1
                 when "0010" => salida_uno <= "0010010"; -- 2
                 when "0011" => salida_uno <= "0000110"; -- 3
                 when "0100" => salida_uno <= "1001100"; -- 4
                 when "0101" => salida_uno <= "0100100"; -- 5
                 when "0110" => salida_uno <= "0100000"; -- 6
                 when "0111" => salida_uno <= "0001111"; -- 7
                 when "1000" => salida_uno <= "0000000"; -- 8
                 when "1001" => salida_uno <= "0000100"; -- 9
                 when "1010" => salida_uno <= "0001000"; -- A
                 when "1011" => salida_uno <= "1100000"; -- b
                 when "1100" => salida_uno <= "0110001"; -- C
                 when "1101" => salida_uno <= "1000010"; -- d
                 when "1110" => salida_uno <= "0110000"; -- E
                 when "1111" => salida_uno <= "0111000"; -- F
                 when others => salida_uno <= "1111111";
					
					end case;
	end process ;
	END RTL;  