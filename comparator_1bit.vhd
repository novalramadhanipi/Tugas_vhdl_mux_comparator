library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_1bit is
    Port (
        A  : in  STD_LOGIC;
        B  : in  STD_LOGIC;
        Z1 : out STD_LOGIC; 
        Z2 : out STD_LOGIC; 
        Z3 : out STD_LOGIC
    );
end entity comparator_1bit;

architecture RTL of comparator_1bit is
begin
    process(A, B)
    begin
        if (A > B) then
            Z1 <= '1';
            Z2 <= '0';
            Z3 <= '0';
        elsif (A < B) then
            Z1 <= '0';
            Z2 <= '1';
            Z3 <= '0';
        else -- A = B
            Z1 <= '0';
            Z2 <= '0';
            Z3 <= '1';
        end if;
    end process;
end architecture RTL;
