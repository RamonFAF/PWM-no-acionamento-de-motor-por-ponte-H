--Ramon Ferreira 
--junho/2019

-- testbench do bloco de controle da ponte H

entity testbench_ponteH is
end entity testbench_ponteH;

architecture comportamento of testbench_ponteH is
begin
-- Recebe a ligação com o design.
component FFJK_ponteH is 
port (J0, J1, J2, K0, K1, K2, clk: in bit;
Q0, Q0i, Q1, Q1i, Q2, Q2i, jj2, jj0, kk1: out bit);
end component FFJK_ponteH;

--Sinais de entrada dos FFs.
signal clk, stop, q0, q0i, q1, q1i, q2, q2i : bit;

begin
--Separação de cada FF.
FFJK0: FFJK_ponteH port map(J0 <= (Q1i or Q2i), K0 <= '1', clk <= clk, Q0 <= q0, Q0i <= q0i);
FFJK1: FFJK_ponteH port map(J1 <= Q0, K1 <= (Q0 or Q2),clk <= clk, Q1 <= q1, Q1i <= q1i);
FFJK2: FFJK_ponteH port map(J2 <= (Q0 and Q1), K2 <= Q1, clk <= clk, Q2 <= q2, Q2i < q2i);

--Clock
process begin
while stop = '0' loop
clk <= not clk;
wait for 1ns;
end loop;
wait;
end process;

process begin
wait for 36ns;
stop <= '1';
wait;
end process;

end architecture comportamento;
