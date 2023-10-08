-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity AND5 is
  port
  (
  A,B,C,D,E : in  std_logic;
  O         : out std_logic
  );
end entity AND5;	 

architecture Behavior of AND5 is

component AND2
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end component AND2;	

signal s1,s2,s3 : std_logic;

begin
	AND5_1: AND2 port map(A,B,s1);
	AND5_2: AND2 port map(s1,C,s2);
	AND5_3: AND2 port map(s2,D,s3);
	AND5_4: AND2 port map(s3,E,O);
end architecture Behavior;