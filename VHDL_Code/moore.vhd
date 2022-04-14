library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity moore is
	port(clock,R,SG,SC,SS,Q,D,N: in std_logic;
		RG,RC,RS,NE: out std_logic);

end;

architecture  behave  of moore is
TYPE State_type is (c0,c5,c10,c15,c20,c25,c30,c35);  -- Define the states
signal Cs,Ns : State_type ;


begin


process(clock, R)
begin
if(R = '1') then
   CS <= 0;
elsif(clock'event and clock = '1') then
   CS <= NS;
end if;
end process;

process(CS,Inp)
begin
case CS is
	when c0 =>
	
	if(N = '1') then
		Ns <= c5;
		
	elsif(D = '1') then
		NS <= c10;
		
	elsif(Q = '1') then
		NS <= c25;
		if( SC = '1') then
			NS <= c0;
			RC <= '1';
		
		else
			NS <= c25;
		end if;
	
	else
	    NS <= c0;
   end if;
	
	when c5 =>
	if(N = '1') then
		Ns <= c10;
		
	elsif(D = '1') then
		NS <= c15;
		
	elsif(Q = '1') then
		NS <= c30;
		if( SC = '1') then
			NS <= c0;
			RC <= '1';
		elsif( SG = '1') then
			NS <= c5;
			RG <= '1';
		else
			NS <= c30;
		end if;
	
	else
	    NS <= c0;
   end if;
	
	
	
	
	
	
	
	
	
	when c10 =>
	if(N = '1') then
		Ns <= c15;
		
	elsif(D = '1') then
		NS <= c20;
		
	elsif(Q = '1') then
		NS <= c35;
		if( SC = '1') then
			NS <= c10;
			RC <= '1';
		elsif( SG = '1') then
			NS <= c5;
			RG <= '1';
		elsif( SS = '1') then
			NS <= c0;
			RS <= '1';
		else
			NS <= c30;
		end if;
	
	else
	    NS <= c0;
   end if;
	
	
	
	
	
	
	
	
	
	
	
	when c15 =>
	if(N = '1') then
		Ns <= c20;
		
	elsif(D = '1') then
		NS <= c25;
		if( SC = '1') then
			NS <= c0;
			RC <= '1';
		else
			NS <=c25;
		end if;
	
	elsif(Q = '1') then
		NS <= c35;
		if( SC = '1') then
			NS <= c10;
			RC <= '1';
		elsif( SG = '1') then
			NS <= c5;
			RG <= '1';
		elsif( SS = '1') then
			NS <= c0;
			RS <= '1';
		else
			NS <= c30;
		end if;
	
	else
	    NS <= c0;
   end if;
	
	
	
	
	
	
	
	
	
	when c20 =>
	if(N = '1') then
		Ns <= c25;
		
	elsif(D = '1') then
		NS <= c30;
		if( SC = '1') then
			NS <= c0;
			RC <= '1';
		else
			NS <=c25;
		end if;
	
	elsif(Q = '1') then
		NS <= c35;
		if( SC = '1') then
			NS <= c10;
			RC <= '1';
		elsif( SG = '1') then
			NS <= c5;
			RG <= '1';
		elsif( SS = '1') then
			NS <= c0;
			RS <= '1';
		else
			NS <= c30;
		end if;
	
	else
	    NS <= c0;
   end if;
	
	when c25 =>
	if(N = '1') then
		Ns <= c30;
		
	elsif(D = '1') then
		NS <= c35;
		if( SC = '1') then
			NS <= c0;
			RC <= '1';
		else
			NS <=c25;
		end if;
	
	elsif(Q = '1') then
		NS <= c35;
		if( SC = '1') then
			NS <= c10;
			RC <= '1';
		elsif( SG = '1') then
			NS <= c5;
			RG <= '1';
		elsif( SS = '1') then
			NS <= c0;
			RS <= '1';
		else
			NS <= c30;
		end if;
	
	else
	    NS <= c0;
   end if;
end case;
end process;
end;
