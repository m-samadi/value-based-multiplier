-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity BCD_PT7 is
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end entity BCD_PT7;	 

architecture Behavior of BCD_PT7 is

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

signal a,b,c,d,e,f,g,h,i,j,k,l,n,o,q,r,s,t,u,v : std_logic;

begin
	M(0)<=GND;
	M(1)<=P(1);
	BCD_PT7_2: OR2 port map(P(1),P(2),M(2)); 
	
	BCD_PT7_3_1: INV port map(P(10),a);
	BCD_PT7_3_2: AND2 port map(P(5),a,M(3));
	
	BCD_PT7_4_1: OR3 port map(P(2),P(3),P(4),b);
	BCD_PT7_4_2: INV port map(P(1),c);
	BCD_PT7_4_3: AND2 port map(b,c,M(4));		
	
	BCD_PT7_5_1: OR2 port map(P(2),P(10),d);
	BCD_PT7_5_2: INV port map(P(12),e);
	BCD_PT7_5_3: AND2 port map(d,e,M(5));
	
	BCD_PT7_6_1: OR2 port map(P(1),P(9),f);
	BCD_PT7_6_2: INV port map(P(20),g);
	BCD_PT7_6_3: AND2 port map(f,g,M(6));
	
	BCD_PT7_7_1: OR2 port map(P(2),P(19),h);
	BCD_PT7_7_2: INV port map(P(11),i);
	BCD_PT7_7_3: AND2 port map(h,i,M(7));		
	
	BCD_PT7_8: OR3 port map(P(8),P(12),P(18),M(8)); 
	BCD_PT7_9: OR2 port map(P(5),P(14),M(9)); 
	BCD_PT7_10: OR2 port map(P(15),P(17),M(10));
	
	BCD_PT7_11_1: OR2 port map(P(7),P(16),j);
	BCD_PT7_11_2: INV port map(P(21),k);
	BCD_PT7_11_3: AND2 port map(j,k,M(11));
	
	BCD_PT7_12_1: OR3 port map(P(3),P(4),P(12),l);
	BCD_PT7_12_2: INV port map(P(1),n);
	BCD_PT7_12_3: AND2 port map(l,n,M(12));		
	
	BCD_PT7_13_1: INV port map(P(6),o);
	BCD_PT7_13_2: AND2 port map(o,P(16),M(13));
	
	BCD_PT7_14_1: INV port map(P(11),q);
	BCD_PT7_14_2: AND2 port map(q,P(17),M(14));
	
	BCD_PT7_15_1: INV port map(P(13),r);	
	BCD_PT7_15_2: AND2 port map(r,P(16),s);
	BCD_PT7_15_3: OR2 port map(s,P(11),M(15));	
	
	BCD_PT7_16: OR2 port map(P(4),P(24),M(16));
	
	BCD_PT7_17_1: INV port map(P(13),t);	
	BCD_PT7_17_2: AND2 port map(t,P(16),u);
	BCD_PT7_17_3: OR2 port map(u,P(11),M(17));
	
	M(18)<=P(12);
	BCD_PT7_19: OR2 port map(P(15),P(17),M(19));
	M(20)<=P(24);
	BCD_PT7_21: OR2 port map(P(12),P(14),M(21)); 
	
	BCD_PT7_22_1: INV port map(P(11),v);
	BCD_PT7_22_2: AND2 port map(v,P(17),M(22));
	
	M(23)<=P(21);
	M(24)<=P(24);
	M(25)<=GND;
	M(26)<=P(12); 
	M(27)<=P(21);
	M(28)<=GND;
	M(29)<=P(24);
	M(30)<=GND;
	M(31)<=P(11);
	M(32)<=P(11);
	M(33)<=GND;
end architecture Behavior;