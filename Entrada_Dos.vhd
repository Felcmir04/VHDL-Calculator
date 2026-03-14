Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Entrada_Dos is 
port(
Entrada_num2: in std_logic_vector (0 to 3);-- NUMERO2
salida_dos: out std_logic_vector (0 to 6)-- SALIDA NUMERO UNO 
);
end Entrada_Dos;


architecture RTL of Entrada_Dos is
    begin
	    process(entrada_num2)
		 begin
		 case entrada_num2 is 
		           when "0000" => salida_dos <= "0000001"; -- 0
					  when "0001" => salida_dos <= "1001111"; -- 1
                 when "0010" => salida_dos <= "0010010"; -- 2
                 when "0011" => salida_dos <= "0000110"; -- 3
                 when "0100" => salida_dos <= "1001100"; -- 4
                 when "0101" => salida_dos <= "0100100"; -- 5
                 when "0110" => salida_dos <= "0100000"; -- 6
                 when "0111" => salida_dos <= "0001111"; -- 7
                 when "1000" => salida_dos <= "0000000"; -- 8
                 when "1001" => salida_dos <= "0000100"; -- 9
                 when "1010" => salida_dos <= "0001000"; -- A
                 when "1011" => salida_dos <= "1100000"; -- b
                 when "1100" => salida_dos <= "0110001"; -- C
                 when "1101" => salida_dos <= "1000010"; -- d
                 when "1110" => salida_dos <= "0110000"; -- E
                 when "1111" => salida_dos <= "0111000"; -- F
                 when others => salida_dos <= "1111111";
			 
			 end case;
end process;
END RTL;