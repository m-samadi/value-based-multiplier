-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity SEL10_1 is
  port
  (
  B0,B1,B2,B3                   : in  std_logic;
  M0,M1,M2,M3,M4,M5,M6,M7,M8,M9 : in  std_logic;
  
  O : out std_logic
  );
end entity SEL10_1;	 

architecture Behavior of SEL10_1 is

component INV
  port
  (
  A : in  std_logic;
  O : out std_logic
  );
end component INV;

component AND4
  port
  (
  A,B,C,D : in  std_logic;
  O       : out std_logic
  );
end component AND4;

component AND5
  port
  (
  A,B,C,D,E : in  std_logic;
  O         : out std_logic
  );
end component AND5;

component OR10
  port
  (
  A,B,C,D,E,F,G,H,I,J : in  std_logic;
  O                   : out std_logic
  );
end component OR10;	

signal B0_NOT,B1_NOT,B2_NOT,B3_NOT : std_logic;
signal s1,s2,s3,s4,s5,s6,s7,s8,s9,s10 : std_logic;

begin 
	SEL10_1_B0_NOT: INV port map(B0,B0_NOT);
	SEL10_1_B1_NOT: INV port map(B1,B1_NOT);
	SEL10_1_B2_NOT: INV port map(B2,B2_NOT);
	SEL10_1_B3_NOT: INV port map(B3,B3_NOT);
	
	SEL10_1_Part1 : AND5 port map(B3_NOT,B2_NOT,B1_NOT,B0_NOT,M0,s1);
	SEL10_1_Part2 : AND5 port map(B3_NOT,B2_NOT,B1_NOT,B0,M1,s2);
	SEL10_1_Part3 : AND4 port map(B2_NOT,B1,B0_NOT,M2,s3);
	SEL10_1_Part4 : AND4 port map(B2_NOT,B1,B0,M3,s4);
	SEL10_1_Part5 : AND4 port map(B2,B1_NOT,B0_NOT,M4,s5);	
	SEL10_1_Part6 : AND4 port map(B2,B1_NOT,B0,M5,s6);
	SEL10_1_Part7 : AND4 port map(B2,B1,B0_NOT,M6,s7);
	SEL10_1_Part8 : AND4 port map(B2,B1,B0,M7,s8);
	SEL10_1_Part9 : AND5 port map(B3,B2_NOT,B1_NOT,B0_NOT,M8,s9);
	SEL10_1_Part10: AND5 port map(B3,B2_NOT,B1_NOT,B0,M9,s10);
	
	SEL10_1_Output: OR10 port map(s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,O); 
end architecture Behavior;