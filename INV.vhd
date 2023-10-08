-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity INV is
  port
  (
  A : in  std_logic;
  O : out std_logic
  );
end entity INV;	 

architecture Behavior of INV is
begin
	O<=not A;
end architecture Behavior;