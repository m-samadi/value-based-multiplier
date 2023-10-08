-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity BCD_PT9 is
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end entity BCD_PT9;	 

architecture Behavior of BCD_PT9 is

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

component OR4
  port
  (
  A,B,C,D : in  std_logic;
  O       : out std_logic
  );
end component OR4;

component AND2
  port
  (
  A,B : in  std_logic;
  O   : out std_logic
  );
end component AND2;	

signal a,b,c,d,e,f,g,h,i,j,k,l,n : std_logic;

begin
	M(0)<=GND;	
	M(1)<=P(1);
	M(2)<=P(2);
	M(3)<=P(3); 
	BCD_PT9_4: OR2 port map(P(1),P(4),M(4));
	
	BCD_PT9_5_1: INV port map(P(2),a);
	BCD_PT9_5_2: AND2 port map(a,P(5),M(5)); 
	
	BCD_PT9_6_1: OR2 port map(P(1),P(17),b);
	BCD_PT9_6_2: INV port map(P(25),c);
	BCD_PT9_6_3: AND2 port map(b,c,M(6));	
	
	BCD_PT9_7: OR2 port map(P(2),P(10),M(7)); 
	BCD_PT9_8: OR2 port map(P(5),P(8),M(8));
	BCD_PT9_9: OR4 port map(P(4),P(5),P(12),P(25),M(9));
	
	BCD_PT9_10_1: OR2 port map(P(4),P(17),d);
	BCD_PT9_10_2: INV port map(P(25),e);
	BCD_PT9_10_3: AND2 port map(d,e,M(10));	
	
	BCD_PT9_11: OR2 port map(P(10),P(15),M(11));
	
	BCD_PT9_12_1: AND2 port map(P(5),P(10),f);
	BCD_PT9_12_2: OR3 port map(P(4),f,P(17),M(12));
	
	BCD_PT9_13_1: INV port map(P(2),g);	
	BCD_PT9_13_2: AND2 port map(g,P(5),h);
	BCD_PT9_13_3: OR2 port map(h,P(21),M(13));		
	
	BCD_PT9_14: OR3 port map(P(12),P(13),P(18),M(14));
	
	BCD_PT9_15_1: INV port map(P(6),i);
	BCD_PT9_15_2: AND2 port map(i,P(16),M(15));
	
	BCD_PT9_16_1: INV port map(P(3),j);
	BCD_PT9_16_2: AND2 port map(j,P(9),M(16));	
	
	M(17)<=GND; 
	
	BCD_PT9_18_1: INV port map(P(25),k);
	BCD_PT9_18_2: AND2 port map(P(15),k,M(18));
	
	BCD_PT9_19_1: INV port map(P(8),l);	
	BCD_PT9_19_2: AND2 port map(l,P(16),n);
	BCD_PT9_19_3: OR2 port map(n,P(12),M(19));		
	
	BCD_PT9_20: OR2 port map(P(11),P(12),M(20)); 
	M(21)<=P(24); 
	BCD_PT9_22: OR2 port map(P(11),P(12),M(22));
	M(23)<=P(18);
	BCD_PT9_24: OR2 port map(P(12),P(21),M(24));
	M(25)<=GND; 
	BCD_PT9_26: OR2 port map(P(12),P(21),M(26));
	M(27)<=P(27);
	M(28)<=P(24); 
	M(29)<=P(21);
	M(30)<=GND;
	M(31)<=GND;
	M(32)<=GND;
	M(33)<=P(11);
end architecture Behavior;