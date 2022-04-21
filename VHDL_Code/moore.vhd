library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity moore is
	port(clock1,R,SG,SC,SS,Q,D,N: in std_logic;
			State: out std_logic_vector(2 downto 0);
		RG,RC,RS,NE: out std_logic);

end;

architecture  behave  of moore is
TYPE State_type is (c0,c5,c10,c15,c20,c25,c30,c35);  -- Define the states
signal Cs,Ns : State_type ;



begin


process(clock1, R)
begin
if(R = '1') then
   Cs<= c0;
elsif(clock1'event and clock1 = '1') then
   CS <= NS;
end if;
end process;

process(CS,SC,SG,SS,N,D,Q)
begin
case CS is
	when c0 =>
	state <= "000";
	
	if(SC = '1') then
		NE <= '1';
		
	elsif(SG = '1') then
		NE <= '1';
	
	elsif(SS = '1') then
		NE <= '1';
	
	
	elsif(N = '1') then
			Ns <= c5;
		
	elsif(D = '1') then
		NS <= c10;
		
		
		
	elsif(Q = '1') then
		NS <= c25;
		
   end if;
	RC <= '0';
	RG <= '0';
	RS <= '0';
	
	
	
	
	when c5 =>
	
	state <= "001";
	
	if(SC = '1') then
		NE <= '1';
		
	elsif(SG = '1') then
		NE <= '1';
	
	elsif(SS = '1') then
		NE <= '1';
	
	elsif(N = '1') then
		Ns <= c10;
		
	elsif(D = '1') then
		NS <= c15;
		
	elsif(Q = '1') then
		NS <= c30;
   end if;
	RC <= '0';
	RG <= '0';
	RS <= '0';
	
	
	
	
	
	
	
	
	when c10 =>
	
	state <= "010";
	
	if(SC = '1') then
		NE <= '1';
		
	elsif(SG = '1') then
		NE <= '1';
	
	elsif(SS = '1') then
		NE <= '1';
	elsif(N = '1') then
		Ns <= c15;
		
	elsif(D = '1') then
		NS <= c20;
		
	elsif(Q = '1') then
		NS <= c35;
   end if;
	RC <= '0';
	RG <= '0';
	RS <= '0';
	
	
	
	
	
	
	
	
	
	
	when c15 =>
	
	state <= "011";
	
	if(SC = '1') then
		NE <= '1';
		
	elsif(SG = '1') then
		NE <= '1';
	
	elsif(SS = '1') then
		NE <= '1';
		
	elsif(N = '1') then
		Ns <= c20;
		
	elsif(D = '1') then
		NS <= c25;
	
	elsif(Q = '1') then
		NS <= c35;
   end if;
	
	RC <= '0';
	RG <= '0';
	RS <= '0';
	
	
	
	
	
	
	
	when c20 =>
	
	state <= "100";
	
	if(SC = '1') then
		NE <= '1';
		
	elsif(SG = '1') then
		NE <= '1';
	
	elsif(SS = '1') then
		NE <= '1';
		
	elsif(N = '1') then
		Ns <= c25;
		
	elsif(D = '1') then
		NS <= c30;
	
	elsif(Q = '1') then
		NS <= c35;
	end if;
	
	RC <= '0';
	RG <= '0';
	RS <= '0';	
		
		
	
	when c25 =>
	
	state <= "101";
	
	if( SC = '1') then
			NS <= c0;
			RC <= '1';
			NE <= '0';
			
	elsif( SC = '0') then
			RC <= '0';
		
		
	elsif(SG = '1') then
		NE <= '1';
	
	elsif(SS = '1') then
		NE <= '1';
		
	
	elsif(N = '1') then
		Ns <= c30;
		
	elsif(D = '1') then
		NS <= c35;
	
	elsif(Q = '1') then
		NS <= c35;
   end if;
	
	RG <= '0';
	RS <= '0';
	
	
	
	
	
	when c30 =>
	
	state <= "110";
	
	if( SC = '1') then
			NS <= c5;
			RC <= '1';
			NE <= '0';
			
	elsif( SC = '0') then
			RC <= '0';
		
	elsif(SG = '1') then
			NS <= c0;
			RG <= '1';
			NE <= '0';
			
	elsif( SG = '0') then
			RG <= '0';
		
	
	elsif(SS = '1') then
		NE <= '1';
		
		
	elsif(N = '1') then
		Ns <= c35;
		
	elsif(D = '1') then
		NS <= c35;
		
		
	elsif(Q = '1') then
		NS <= c35;
		
   end if;
	
	RS <= '0';
	
	
	
	when c35 =>
	
	state <= "111";
	
	
	if( SC = '1') then
			NS <= c10;
			RC <= '1';
			NE <= '0';
					
	elsif( SC = '0') then
			RC <= '0';
	
		
	elsif(SG = '1') then
			NS <= c5;
			RG <= '1';
			NE <= '0';
			
	elsif( SG = '0') then
			RG <= '0';
		
	
	elsif(SS = '1') then
			NS <= c0;
			RS <= '1';
			NE <= '0';
			
	elsif( SS = '0') then
			RS <= '0';
		
			
	elsif(N = '1') then
		Ns <= c35;
		
	elsif(D = '1') then
		NS <= c35;
		
		
	
	elsif(Q = '1') then
		NS <= c35;
		
   end if;
end case;
end process;
end;
