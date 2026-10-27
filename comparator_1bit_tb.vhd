library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator_1bit_tb is
end entity comparator_1bit_tb;

architecture sim of comparator_1bit_tb is
    signal tb_A  : STD_LOGIC := '0';
    signal tb_B  : STD_LOGIC := '0';
    signal tb_Z1 : STD_LOGIC; 
    signal tb_Z2 : STD_LOGIC; 
    signal tb_Z3 : STD_LOGIC; 
begin
    uut: entity work.comparator_1bit
        port map (
            A  => tb_A,
            B  => tb_B,
            Z1 => tb_Z1,
            Z2 => tb_Z2,
            Z3 => tb_Z3
        );

    stim_proc: process
    begin
        tb_A <= '0'; tb_B <= '0'; wait for 10 ns;
        tb_A <= '0'; tb_B <= '1'; wait for 10 ns;
        tb_A <= '1'; tb_B <= '0'; wait for 10 ns;
        tb_A <= '1'; tb_B <= '1'; wait for 10 ns;

        wait;
    end process;
end architecture sim;
