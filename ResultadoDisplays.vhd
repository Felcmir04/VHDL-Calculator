library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ResultadoDisplays is
port(

Resultado : in signed(0 to 7);

DisplayDecenas  : out std_logic_vector(0 to 6);
DisplayUnidades : out std_logic_vector(0 to 6)

);

end ResultadoDisplays;

architecture RTL of ResultadoDisplays is

begin

process(Resultado)

variable valor    : integer;
variable decenas  : integer;
variable unidades : integer;

begin

valor := to_integer(Resultado);

if valor > 99 then

    DisplayDecenas  <= "1111111";
    DisplayUnidades <= "1111111";

elsif valor < 0 then

    DisplayDecenas  <= "1111111";
    DisplayUnidades <= "1111110"; -- signo -

else

    decenas  := valor / 10;
    unidades := valor mod 10;

    case decenas is
        when 0 => DisplayDecenas <= "0000001";
        when 1 => DisplayDecenas <= "1001111";
        when 2 => DisplayDecenas <= "0010010";
        when 3 => DisplayDecenas <= "0000110";
        when 4 => DisplayDecenas <= "1001100";
        when 5 => DisplayDecenas <= "0100100";
        when 6 => DisplayDecenas <= "0100000";
        when 7 => DisplayDecenas <= "0001111";
        when 8 => DisplayDecenas <= "0000000";
        when 9 => DisplayDecenas <= "0000100";
        when others => DisplayDecenas <= "1111111";
    end case;

    case unidades is
        when 0 => DisplayUnidades <= "0000001";
        when 1 => DisplayUnidades <= "1001111";
        when 2 => DisplayUnidades <= "0010010";
        when 3 => DisplayUnidades <= "0000110";
        when 4 => DisplayUnidades <= "1001100";
        when 5 => DisplayUnidades <= "0100100";
        when 6 => DisplayUnidades <= "0100000";
        when 7 => DisplayUnidades <= "0001111";
        when 8 => DisplayUnidades <= "0000000";
        when 9 => DisplayUnidades <= "0000100";
        when others => DisplayUnidades <= "1111111";
    end case;

end if;

end process;

end RTL;