-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity AND4 is
  port
  (
  A,B,C,D : in  std_logic;
  O       : out std_logic
  );
end entity AND4;	 

architecture Behavior of AND4 is 

component AND2
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end component AND2;	

signal s1,s2 : std_logic;

begin
	AND4_1: AND2 port map(A,B,s1);
	AND4_2: AND2 port map(s1,C,s2);
	AND4_3: AND2 port map(s2,D,O);
end architecture Behavior;