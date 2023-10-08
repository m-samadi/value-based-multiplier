-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity BCD_PT6 is
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end entity BCD_PT6;	 

architecture Behavior of BCD_PT6 is	 

component INV
  port
  (
  A : in  std_logic;
  O : out std_logic
  );
end component INV; 

component OR2
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end component OR2;

component OR3
  port
  (
  A,B,C : in  std_logic;
  O     : out std_logic
  );
end component OR3;

component AND2
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end component AND2;	

signal a,b,c,d,e,f,g,h : std_logic;

begin
	M(0)<=GND;
	M(1)<=GND;
	M(2)<=P(1); 
	BCD_PT6_3: OR2 port map(P(1),P(2),M(3));
	BCD_PT6_4: OR3 port map(P(1),P(2),P(3),M(4)); 
	BCD_PT6_5: OR2 port map(P(3),P(4),M(5));
	BCD_PT6_6: OR2 port map(P(4),P(5),M(6));
	
	BCD_PT6_7_1: INV port map(P(13),a);
	BCD_PT6_7_2: AND2 port map(a,P(16),M(7));
	
	BCD_PT6_8_1: OR2 port map(P(7),P(14),b);
	BCD_PT6_8_2: INV port map(P(24),c);
	BCD_PT6_8_3: AND2 port map(b,c,M(8));		
	
	BCD_PT6_9: OR3 port map(P(2),P(7),P(8),M(9)); 
	BCD_PT6_10: OR2 port map(P(7),P(14),M(10));
	BCD_PT6_11: OR2 port map(P(4),P(17),M(11));
	
	BCD_PT6_12_1: AND2 port map(P(3),P(5),d);
	BCD_PT6_12_2: OR2 port map(d,P(11),M(12)); 
	
	BCD_PT6_13_1: AND2 port map(P(5),P(10),e);
	BCD_PT6_13_2: OR3 port map(P(4),e,P(11),M(13)); 	
	
	M(14)<=P(13);	
	BCD_PT6_15: OR2 port map(P(4),P(19),M(15)); 
	BCD_PT6_16: OR2 port map(P(12),P(16),M(16));
	BCD_PT6_17: OR2 port map(P(12),P(18),M(17));
	M(18)<=GND;
	
	BCD_PT6_19_1: INV port map(P(13),f);
	BCD_PT6_19_2: AND2 port map(f,P(16),M(19)); 
	
	BCD_PT6_20_1: OR2 port map(P(14),P(20),g);
	BCD_PT6_20_2: INV port map(P(24),h);
	BCD_PT6_20_3: AND2 port map(g,h,M(20));		
	
	M(21)<=P(11);
	M(22)<=P(18); 
	M(23)<=P(20);
	M(24)<=P(20);
	BCD_PT6_25: OR2 port map(P(12),P(21),M(25));
	M(26)<=P(11);	
	M(27)<=GND;
	M(28)<=GND;
	M(29)<=P(24);
	M(30)<=P(11);	
	M(31)<=GND; 
	M(32)<=P(11);	
	M(33)<=GND;
end architecture Behavior;