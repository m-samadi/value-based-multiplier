-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity BCD_PT5 is
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end entity BCD_PT5;	 

architecture Behavior of BCD_PT5 is	 

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

component XOR2
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end component XOR2;	

signal a,b,c,d,e,f,g,h,i,j,k,l : std_logic;

begin
	M(0)<=P(0);
	M(1)<=P(1);
	M(2)<=P(2);
	BCD_PT5_3: AND2 port map(P(3),P(6),M(3));
	BCD_PT5_4: OR3 port map(P(1),P(2),P(4),M(4)); 
	
	BCD_PT5_5_1: OR3 port map(P(1),P(2),P(15),a);
	BCD_PT5_5_2: XOR2 port map(a,P(20),M(5));
	
	BCD_PT5_6_1: OR3 port map(P(2),P(4),P(18),b);
	BCD_PT5_6_2: XOR2 port map(b,P(26),M(6));
	
	BCD_PT5_7_1: INV port map(P(1),c);
	BCD_PT5_7_2: AND2 port map(c,P(3),d);
	BCD_PT5_7_3: OR3 port map(d,P(2),P(12),M(7));	
	
	BCD_PT5_8: OR3 port map(P(6),P(8),P(16),M(8));
	
	BCD_PT5_9_1: OR2 port map(P(8),P(17),e);
	BCD_PT5_9_2: INV port map(P(21),f);
	BCD_PT5_9_3: AND2 port map(e,f,M(9));	
	
	M(10)<=P(21);
	
	BCD_PT5_11_1: INV port map(P(21),g);
	BCD_PT5_11_2: AND2 port map(P(18),g,M(11)); 
	
	BCD_PT5_12_1: INV port map(P(1),h);
	BCD_PT5_12_2: AND2 port map(h,P(3),i);
	BCD_PT5_12_3: OR3 port map(i,P(11),P(12),M(12));		
	
	M(13)<=P(15); 
	BCD_PT5_14: OR3 port map(P(12),P(13),P(14),M(14));
	BCD_PT5_15: OR2 port map(P(10),P(25),M(15)); 
	
	BCD_PT5_16_1: INV port map(P(20),j);
	BCD_PT5_16_2: AND2 port map(P(15),j,k);
	BCD_PT5_16_3: OR2 port map(k,P(24),M(16));		
	
	BCD_PT5_17_1: INV port map(P(24),l);
	BCD_PT5_17_2: AND2 port map(P(15),l,M(17));
	
	BCD_PT5_18: OR2 port map(P(11),P(16),M(18));
	BCD_PT5_19: OR2 port map(P(12),P(18),M(19));
	M(20)<=P(12);
	M(21)<=P(12);
	BCD_PT5_22: OR2 port map(P(12),P(18),M(22));
	BCD_PT5_23: OR2 port map(P(12),P(21),M(23));
	M(24)<=P(21);
	BCD_PT5_25: OR2 port map(P(12),P(25),M(25));
	M(26)<=P(26);
	M(27)<=P(24);
	M(28)<=P(21);
	M(29)<=P(29);
	M(30)<=GND;
	M(31)<=GND;
	M(32)<=P(11);
	M(33)<=GND;
end architecture Behavior;