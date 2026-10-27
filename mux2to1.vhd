library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        S : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end entity mux2to1;

architecture RTL of mux2to1 is
begin
    with S select
        Y <= A when '0',
             B when others;
end architecture RTL;
