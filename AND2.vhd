-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity AND2 is
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end entity AND2;	 

architecture Behavior of AND2 is
begin
	O<=A and B;
end architecture Behavior;