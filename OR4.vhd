-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity OR4 is
  port
  (
  A,B,C,D : in  std_logic;
  O       : out std_logic
  );
end entity OR4;	 

architecture Behavior of OR4 is

component OR2
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end component OR2;

signal s1,s2 : std_logic;

begin
	OR4_1: OR2 port map(A,B,s1);
	OR4_2: OR2 port map(s1,C,s2);
	OR4_3: OR2 port map(s2,D,O);
end architecture Behavior;