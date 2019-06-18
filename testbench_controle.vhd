--Ramon Ferreira 
--junho/2019

-- testbench do bloco de controle

entity entitytestbench is
end entity entitytestbench;

architecture comp of entitytestbench is
component controle is
port(
btLD, btS, btVEL, BtF: in bit;
s1, s2, s3, s4: out bit);
end component controle;

signal btld_in, bts_in, btvel_in, btf_in, s1_out, s2_out, s3_out, s4_out : bit;

begin

PORRA: controle port map(btld_in,bts_in,btvel_in,btf_in,s1_out,s2_out,s3_out,s4_out: bit);

process 
begin

btLD_in <= "0";
btS_in <= "0";
btVEL_in <= "0";
BtF_in <= "0";
wait for 1 ns;

btLD_in <= "1";
btS_in <= "0";
btVEL_in <= "0";
BtF_in <= "0";
wait for 1 ns;

btLD_in <= "1";
btS_in <= "0";
btVEL_in <= "0";
BtF_in <= "1";
wait for 1 ns;

btLD_in <= "1";
btS_in <= "0";
btVEL_in <= "1";
BtF_in <= "0";
wait for 1 ns;

btLD_in <= "1";
btS_in <= "0";
btVEL_in <= "1";
BtF_in <= "1";
wait for 1 ns;

btLD_in <= "1";
btS_in <= "1";
btVEL_in <= "0";
BtF_in <= "0";
wait for 1 ns;

btLD_in <= "1";
btS_in <= "1";
btVEL_in <= "0";
BtF_in <= "1";
wait for 1 ns;

btLD_in <= "1";
btS_in <= "1";
btVEL_in <= "1";
BtF_in <= "0";
wait for 1 ns;

btLD_in <= "1";
btS_in <= "1";
btVEL_in <= "1";
BtF_in <= "1";
wait for 1 ns;

wait;
end process;
end architecture comp;
