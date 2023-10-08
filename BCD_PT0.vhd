-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity BCD_PT0 is
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end entity BCD_PT0;	 

architecture Behavior of BCD_PT0 is
begin
	M(0)<=GND;
	M(1)<=GND;
	M(2)<=GND;
	M(3)<=GND;
	M(4)<=GND;
	M(5)<=GND;
	M(6)<=GND;
	M(7)<=GND;
	M(8)<=GND;
	M(9)<=GND;
	M(10)<=GND;
	M(11)<=GND;
	M(12)<=GND;
	M(13)<=GND;
	M(14)<=GND;
	M(15)<=GND;
	M(16)<=GND;
	M(17)<=GND;
	M(18)<=GND;
	M(19)<=GND;
	M(20)<=GND;
	M(21)<=GND;
	M(22)<=GND;
	M(23)<=GND;
	M(24)<=GND;
	M(25)<=GND;
	M(26)<=GND;
	M(27)<=GND;
	M(28)<=GND;
	M(29)<=GND;
	M(30)<=GND;
	M(31)<=GND;
	M(32)<=GND;
	M(33)<=GND;
end architecture Behavior;