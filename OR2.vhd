-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity OR2 is
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end entity OR2;	 

architecture Behavior of OR2 is
begin
	O<=A or B;
end architecture Behavior;