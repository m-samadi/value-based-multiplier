-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity OR10 is
  port
  (
  A,B,C,D,E,F,G,H,I,J : in  std_logic;
  O                   : out std_logic
  );
end entity OR10;	 

architecture Behavior of OR10 is

component OR2
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end component OR2;

signal s1,s2,s3,s4,s5,s6,s7,s8 : std_logic;

begin
	OR10_1: OR2 port map(A,B,s1);
	OR10_2: OR2 port map(s1,C,s2);
	OR10_3: OR2 port map(s2,D,s3);
	OR10_4: OR2 port map(s3,E,s4);
	OR10_5: OR2 port map(s4,F,s5);
	OR10_6: OR2 port map(s5,G,s6);
	OR10_7: OR2 port map(s6,H,s7);
	OR10_8: OR2 port map(s7,I,s8);
	OR10_9: OR2 port map(s8,J,O);	
end architecture Behavior;