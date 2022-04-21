library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_unsigned.ALL;

entity CLK_Divider is

 	port(clock : in std_logic;
      	start_timer : in std_logic;
			output_clk: out std_logic);
end CLK_Divider;
 
architecture behavioral of CLK_Divider is
signal slowClock_sig: std_logic;
 
begin
 	process 
          
        	variable cnt :	std_logic_vector( 27 downto 0):= "0000000000000000000000000000";
 
      	begin                                                  	
        	 	
			wait until ((clock'EVENT) AND (clock ='1'));
        	   	
				if (start_timer = '1') then
				cnt := "0000000000000000000000000000";
				else
                if(cnt = "1111111111111111111111111111") then
						cnt:= "0000000000000000000000000000";
                 else
						cnt := cnt + 1;
                 end if;
        	   	end if;    	
 
        	--SlowClock <= cnt(26); 
 
 
slowClock_sig <= cnt(26);

        	if (SlowClock_sig = '1') then
                    	output_clk <= '1';
        	else
                    	output_clk <= '0';
        	end if;
	end process;
        	
end;

