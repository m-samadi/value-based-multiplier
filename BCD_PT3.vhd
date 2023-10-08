-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all;

-- Define the entity
entity BCD_PT3 is
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end entity BCD_PT3;	 

architecture Behavior of BCD_PT3 is	

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
	M(0)<=P(0);
	M(1)<=P(1);
	BCD_PT3_2: OR2 port map(P(1),P(2),M(2));
	BCD_PT3_3: OR2 port map(P(2),P(3),M(3));
	BCD_PT3_4: OR2 port map(P(3),P(4),M(4));
	BCD_PT3_5: OR2 port map(P(4),P(5),M(5));
	
	BCD_PT3_6_1: INV port map(P(8),a);
	BCD_PT3_6_2: AND2 port map(a,P(16),M(6));
	
	BCD_PT3_7_1: INV port map(P(5),b);
	BCD_PT3_7_2: AND2 port map(b,P(6),c);
	BCD_PT3_7_3: OR2 port map(c,P(7),M(7));
	
	BCD_PT3_8: OR3 port map(P(2),P(7),P(8),M(8));
	BCD_PT3_9: OR3 port map(P(7),P(14),P(20),M(9));	
	BCD_PT3_10: OR2 port map(P(4),P(17),M(10));

	BCD_PT3_11_1: INV port map(P(1),d);
	BCD_PT3_11_2: AND2 port map(d,P(3),e);
	BCD_PT3_11_3: OR2 port map(e,P(11),M(11));	
	
	BCD_PT3_12_1: AND2 port map(P(5),P(10),f); 
	BCD_PT3_12_2: OR3 port map(P(4),f,P(11),M(12));
	
	M(13)<=P(13);
	BCD_PT3_14: OR2 port map(P(4),P(19),M(14));
	BCD_PT3_15: OR2 port map(P(12),P(16),M(15));
	BCD_PT3_16: OR2 port map(P(12),P(18),M(16));
	M(17)<=GND;

	BCD_PT3_18_1: INV port map(P(8),g);
	BCD_PT3_18_2: AND2 port map(g,P(16),M(18));
	
	BCD_PT3_19_1: INV port map(P(11),h);
	BCD_PT3_19_2: AND2 port map(h,P(19),M(19));
	
	M(20)<=P(11);
	M(21)<=P(18);
	M(22)<=P(20);
	M(23)<=P(23);
	BCD_PT3_24: OR2 port map(P(12),P(22),M(24));
	M(25)<=P(25);
	M(26)<=GND;
	M(27)<=GND;
	M(28)<=P(24);
	M(29)<=P(29);
	M(30)<=GND;
	M(31)<=P(11);
	M(32)<=GND;	
	M(33)<=GND;
end architecture Behavior;