library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1_tb is
end entity mux2to1_tb;

architecture sim of mux2to1_tb is
    signal tb_A : STD_LOGIC := '0';
    signal tb_B : STD_LOGIC := '0';
    signal tb_S : STD_LOGIC := '0';
    signal tb_Y : STD_LOGIC;
begin
    --komponen Mux 2-to-1
    uut: entity work.mux2to1
        port map (
            A => tb_A,
            B => tb_B,
            S => tb_S,
            Y => tb_Y
        );

    --pengujian
    stim_proc: process
    begin
        --kombinasi masukan
	tb_A <= '0'; tb_B <= '0'; tb_S <= '0'; wait for 10 ns;
	tb_A <= '0'; tb_B <= '0'; tb_S <= '1'; wait for 10 ns;
        tb_A <= '0'; tb_B <= '1'; tb_S <= '0'; wait for 10 ns; 
        tb_A <= '0'; tb_B <= '1'; tb_S <= '1'; wait for 10 ns; 
        tb_A <= '1'; tb_B <= '0'; tb_S <= '0'; wait for 10 ns; 
        tb_A <= '1'; tb_B <= '0'; tb_S <= '1'; wait for 10 ns;
	tb_A <= '1'; tb_B <= '1'; tb_S <= '0'; wait for 10 ns; 
	tb_A <= '1'; tb_B <= '1'; tb_S <= '1'; wait for 10 ns;
        
        wait;
    end process;
end architecture sim;
