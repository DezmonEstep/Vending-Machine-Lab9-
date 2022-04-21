library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity TopLevel is
	port(clk1,Start1,TopR,TopSG,TopSC,TopSS,TopQ,TopD,TopN: in std_logic;
			Topstate: out std_logic_vector(2 downto 0);
		TopRG,TopRC,TopRS,TopNE: out std_logic);

end;

architecture  behave  of TopLevel is
signal clk_temp : std_logic;
	component moore is
		port(clock1,R,SG,SC,SS,Q,D,N: in std_logic;
				state: out std_logic_vector(2 downto 0);
			RG,RC,RS,NE: out std_logic);

		end component;
		
	component CLK_Divider is
		port(clock : in std_logic;
      	start_timer : in std_logic;
			output_clk: out std_logic);
		end component;
		
	begin
	
	clkdiv : CLK_Divider
		port map(clk1,Start1, clk_temp);
		
	FSM : moore
		port map(clk_temp,TopR,TopSG,TopSC,TopSS,TopQ,TopD,TopN,Topstate,TopRG,TopRC,TopRS,TopNE);
		
	end;
		
		
		
		
		
		
	

