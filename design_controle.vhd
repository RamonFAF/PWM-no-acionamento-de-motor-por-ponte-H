--Ramon Ferreira 
--junho/2019
--
-- Bloco de controle.

entity controle is
port(
btLD, btS, btVEL, BtF: in bit;
s1, s2, s3, s4: out bit);
end entity controle;

architecture comportamento of controle is
begin
s1 <= (btLD and btS and (not BtF));
s2 <= (btLD and (not btS) and (not BtF));
s3 <= (((not btS)and(BtLD))or(BtLD and BtF));
s4 <= (((btS)and(BtLD))or(BtLD and BtF));

end architecture;
