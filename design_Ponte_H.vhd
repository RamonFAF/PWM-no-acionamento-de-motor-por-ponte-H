--Ramon Ferreira 
--junho/2019

-- design do bloco de controle da ponte H

entity FFJK_ponteH is 
port (J0, J1, J2, K0, K1, K2, clk: in bit;
Q0, Q0i, Q1, Q1i, Q2, Q2i: out bit);
end entity FFJK_ponteH;

architecture comp of FFJK_ponteH is

begin
-- Sinais dos três flipsflops
signal J0x, J1x, J2x, K0x, K1x, K2x, clk
Q0x, Q0ix, Q1x, Q1ix, Q2x, Q2ix: bit;

	begin
	process (J0, J1, J2, K0, K1, K2, Q0, Q0i, Q1, Q1i, Q2, Q2i, clk)
    BEGIN
if clk'event and clk='0' then

	--FF0
	if J0='1' and K0='0' then
    	Q0x <= '1'
    end if;
    if J0='0' and K0='1' then
    	Q0x <= '0'
    end if;
    if J0='1' and K0='1' then
    	Q0x <= NOT Q0x
    end if;
    
    --FF1
	if J1='1' and K1='0' then
    	Q1x <= '1'
    end if;
    if J1='0' and K1='1' then
    	Q1x <= '0'
    end if;
    if J1='1' and K1='1' then
    	Q1x <= NOT Q1x
    end if; 

    --FF2
	if J2='1' and K2='0' then
    	Q2x <= '1'
    end if;
    if J2='0' and K2='1' then
    	Q2x <= '0'
    end if;
    if J2='1' and K2='1' then
    	Q2x <= NOT Q2x
    end if;
    
end if;
end process;

--O valor na entity recebe o valor gerado pelo clk.
Q0 <= Q0x;
Q1 <= Q1x;
Q2 <= Q2x;
Q0i <= not Q1;
Q1i <= not Q2;
Q2i <= not Q3;
end architecture comp;
