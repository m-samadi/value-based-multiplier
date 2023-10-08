-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity OR3 is
  port
  (
  A,B,C : in  std_logic;
  O     : out std_logic
  );
end entity OR3;	 

architecture Behavior of OR3 is

component OR2
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end component OR2;

signal s : std_logic;

begin
	OR3_1: OR2 port map(A,B,s);
	OR3_2: OR2 port map(s,C,O);
end architecture Behavior;