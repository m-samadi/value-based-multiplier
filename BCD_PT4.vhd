-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity BCD_PT4 is
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end entity BCD_PT4;	 

architecture Behavior of BCD_PT4 is
begin
	M(0)<=GND;
	M(1)<=GND;
	M(2)<=P(0);
	M(3)<=P(1);
	M(4)<=P(2);
	M(5)<=P(3);
	M(6)<=P(4);
	M(7)<=P(5);
	M(8)<=P(6);
	M(9)<=P(7);
	M(10)<=P(8);
	M(11)<=P(9);
	M(12)<=P(10);
	M(13)<=P(11);
	M(14)<=P(12);
	M(15)<=P(13);
	M(16)<=P(14);
	M(17)<=P(15);
	M(18)<=P(16);
	M(19)<=P(17);
	M(20)<=P(18);
	M(21)<=P(19);
	M(22)<=P(20);
	M(23)<=P(21);
	M(24)<=P(22);
	M(25)<=P(23);
	M(26)<=P(24);
	M(27)<=P(25);
	M(28)<=P(26);
	M(29)<=P(27);
	M(30)<=P(28);
	M(31)<=P(29);
	M(32)<=GND;
	M(33)<=GND;
end architecture Behavior;