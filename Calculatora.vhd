--Juan Felipe Rivera
--Johan Cardenas
--David Santiago Lopez
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Calculatora is
port(

Entrada_num1 : in std_logic_vector(0 to 3);
Entrada_num2 : in std_logic_vector(0 to 3);
Selector     : in std_logic_vector(0 to 1);

Display1 : out std_logic_vector(0 to 6);
Display2 : out std_logic_vector(0 to 6);
Display3 : out std_logic_vector(0 to 6);
Display4 : out std_logic_vector(0 to 6)

);

end Calculatora;

architecture RTL of Calculatora is

component Entrada_uno
port(
Entrada_num1 : in std_logic_vector(0 to 3);
Salida_uno   : out std_logic_vector(0 to 6)
);
end component;

component Entrada_dos
port(
Entrada_num2 : in std_logic_vector(0 to 3);
Salida_dos   : out std_logic_vector(0 to 6)
);
end component;

component Operaciones
port(
Entrada_num1 : in std_logic_vector(0 to 3);
Entrada_num2 : in std_logic_vector(0 to 3);
Selector     : in std_logic_vector(0 to 1);
Resultado    : out signed(0 to 7)
);
end component;

component ResultadoDisplays
port(
Resultado : in signed(7 downto 0);
DisplayDecenas  : out std_logic_vector(0 to 6);
DisplayUnidades : out std_logic_vector(0 to 6)
);
end component;

signal Resultado : signed(0 to 7);

begin

U1: Entrada_uno
port map(
Entrada_num1 => Entrada_num1,
Salida_uno   => Display1
);

U2: Entrada_dos
port map(
Entrada_num2 => Entrada_num2,
Salida_dos   => Display2
);

U3: Operaciones
port map(
Entrada_num1 => Entrada_num1,
Entrada_num2 => Entrada_num2,
Selector     => Selector,
Resultado    => Resultado
);

U4: ResultadoDisplays
port map(
Resultado => Resultado,
DisplayDecenas  => Display4,
DisplayUnidades => Display3
);

end RTL;