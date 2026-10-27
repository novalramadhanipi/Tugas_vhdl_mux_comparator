library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux4to1_tb is
end entity mux4to1_tb;

architecture sim of mux4to1_tb is
    signal tb_A : STD_LOGIC := '0';
    signal tb_B : STD_LOGIC := '0';
    signal tb_C : STD_LOGIC := '0';
    signal tb_D : STD_LOGIC := '0';
    signal tb_S : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal tb_Y : STD_LOGIC;
begin
    
    uut: entity work.mux4to1
        port map (
            A => tb_A,
            B => tb_B,
            C => tb_C,
            D => tb_D,
            S => tb_S,
            Y => tb_Y
        );

    stim_proc: process
        variable data_vec : unsigned(3 downto 0);
        variable sel_vec  : unsigned(1 downto 0);
    begin
        --perulangan untuk selektor
        for j in 0 to 3 loop
            sel_vec := to_unsigned(j, 2);
            tb_S   <= std_logic_vector(sel_vec);

            --perulangan untuk masukan
            for i in 0 to 15 loop
                data_vec := to_unsigned(i, 4);
                tb_A     <= data_vec(3);
                tb_B     <= data_vec(2);
                tb_C     <= data_vec(1);
                tb_D     <= data_vec(0);

                wait for 10 ns;
            end loop;
        end loop;

        wait;
    end process;
end architecture sim;
