library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Operaciones is
port(

Entrada_num1 : in std_logic_vector(0 to 3);
Entrada_num2 : in std_logic_vector(0 to 3);
Selector     : in std_logic_vector(0 to 1);
Resultado    : out signed(0 to 7)

);

end Operaciones;

architecture RTL of Operaciones is
begin

process(Entrada_num1, Entrada_num2, Selector)

variable A : integer;
variable B : integer;
variable R : integer;

begin

A := to_integer(unsigned(Entrada_num1));
B := to_integer(unsigned(Entrada_num2));

case Selector is

when "00" => -- SUMA
    R := A + B;

when "01" => -- RESTA
    R := A - B;

when "10" => -- MULTIPLICACION
    R := A * B;

when "11" => -- DIVISION
    if B /= 0 then
        R := A / B;
    else
        R := 0;
    end if;

when others =>
    R := 0;

end case;

Resultado <= to_signed(R,8);

end process;

end RTL;
