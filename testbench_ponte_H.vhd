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

signal clk, stop, 
end architecture comportamento;
