-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity XOR2 is
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end entity XOR2;	 

architecture Behavior of XOR2 is
begin
	O<=A xor B;
end architecture Behavior;