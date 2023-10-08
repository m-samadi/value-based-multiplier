-- Import the required libraries
library IEEE;
use IEEE.std_logic_1164.all; 

-- Define the entity
entity BCD_PT is
  port
  (
  BCD    : in  std_logic_vector(3 downto 0);
  Power  : in  std_logic_vector(29 downto 0);
  GND	 : in  std_logic;

  Output : out std_logic_vector(33 downto 0)
  );
end entity BCD_PT;

-- Define is the architecture
architecture Behavior of BCD_PT is 

component BCD_PT0
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT0;

component BCD_PT1
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT1; 

component BCD_PT2
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT2;

component BCD_PT3
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT3; 

component BCD_PT4
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT4; 

component BCD_PT5
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT5;

component BCD_PT6
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT6;

component BCD_PT7
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT7;

component BCD_PT8
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT8;

component BCD_PT9
  port
  (
  P   : in  std_logic_vector(29 downto 0);
  GND : in  std_logic;
  M   : out std_logic_vector(33 downto 0)
  );
end component BCD_PT9;

component SEL10_1
  port
  (
  B0,B1,B2,B3                   : in  std_logic;
  M0,M1,M2,M3,M4,M5,M6,M7,M8,M9 : in  std_logic;
  
  O : out std_logic
  );
end component SEL10_1;	

signal BCD_PT0_Multiplication : std_logic_vector(33 downto 0);
signal BCD_PT1_Multiplication : std_logic_vector(33 downto 0);
signal BCD_PT2_Multiplication : std_logic_vector(33 downto 0);
signal BCD_PT3_Multiplication : std_logic_vector(33 downto 0);
signal BCD_PT4_Multiplication : std_logic_vector(33 downto 0);
signal BCD_PT5_Multiplication : std_logic_vector(33 downto 0);
signal BCD_PT6_Multiplication : std_logic_vector(33 downto 0);
signal BCD_PT7_Multiplication : std_logic_vector(33 downto 0);
signal BCD_PT8_Multiplication : std_logic_vector(33 downto 0);
signal BCD_PT9_Multiplication : std_logic_vector(33 downto 0);

begin
	
	
		
	--Producing the initial multiplication results by the inner components
	--******************************************************************	
	BCD_PT0_Label: BCD_PT0 port map(Power,GND,BCD_PT0_Multiplication);
	BCD_PT1_Label: BCD_PT1 port map(Power,GND,BCD_PT1_Multiplication);
	BCD_PT2_Label: BCD_PT2 port map(Power,GND,BCD_PT2_Multiplication);
	BCD_PT3_Label: BCD_PT3 port map(Power,GND,BCD_PT3_Multiplication);
	BCD_PT4_Label: BCD_PT4 port map(Power,GND,BCD_PT4_Multiplication);
	BCD_PT5_Label: BCD_PT5 port map(Power,GND,BCD_PT5_Multiplication);
	BCD_PT6_Label: BCD_PT6 port map(Power,GND,BCD_PT6_Multiplication);
	BCD_PT7_Label: BCD_PT7 port map(Power,GND,BCD_PT7_Multiplication);
	BCD_PT8_Label: BCD_PT8 port map(Power,GND,BCD_PT8_Multiplication);
	BCD_PT9_Label: BCD_PT9 port map(Power,GND,BCD_PT9_Multiplication);
	
	
	
	--Use of SEL10-1 to produce the outputs
	--*************************************		
	Output0 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(0),BCD_PT1_Multiplication(0),BCD_PT2_Multiplication(0),BCD_PT3_Multiplication(0),BCD_PT4_Multiplication(0),BCD_PT5_Multiplication(0),BCD_PT6_Multiplication(0),BCD_PT7_Multiplication(0),BCD_PT8_Multiplication(0),BCD_PT9_Multiplication(0),Output(0));	
	Output1 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(1),BCD_PT1_Multiplication(1),BCD_PT2_Multiplication(1),BCD_PT3_Multiplication(1),BCD_PT4_Multiplication(1),BCD_PT5_Multiplication(1),BCD_PT6_Multiplication(1),BCD_PT7_Multiplication(1),BCD_PT8_Multiplication(1),BCD_PT9_Multiplication(1),Output(1));	
	Output2 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(2),BCD_PT1_Multiplication(2),BCD_PT2_Multiplication(2),BCD_PT3_Multiplication(2),BCD_PT4_Multiplication(2),BCD_PT5_Multiplication(2),BCD_PT6_Multiplication(2),BCD_PT7_Multiplication(2),BCD_PT8_Multiplication(2),BCD_PT9_Multiplication(2),Output(2));	
	Output3 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(3),BCD_PT1_Multiplication(3),BCD_PT2_Multiplication(3),BCD_PT3_Multiplication(3),BCD_PT4_Multiplication(3),BCD_PT5_Multiplication(3),BCD_PT6_Multiplication(3),BCD_PT7_Multiplication(3),BCD_PT8_Multiplication(3),BCD_PT9_Multiplication(3),Output(3));
	Output4 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(4),BCD_PT1_Multiplication(4),BCD_PT2_Multiplication(4),BCD_PT3_Multiplication(4),BCD_PT4_Multiplication(4),BCD_PT5_Multiplication(4),BCD_PT6_Multiplication(4),BCD_PT7_Multiplication(4),BCD_PT8_Multiplication(4),BCD_PT9_Multiplication(4),Output(4));
	Output5 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(5),BCD_PT1_Multiplication(5),BCD_PT2_Multiplication(5),BCD_PT3_Multiplication(5),BCD_PT4_Multiplication(5),BCD_PT5_Multiplication(5),BCD_PT6_Multiplication(5),BCD_PT7_Multiplication(5),BCD_PT8_Multiplication(5),BCD_PT9_Multiplication(5),Output(5));
	Output6 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(6),BCD_PT1_Multiplication(6),BCD_PT2_Multiplication(6),BCD_PT3_Multiplication(6),BCD_PT4_Multiplication(6),BCD_PT5_Multiplication(6),BCD_PT6_Multiplication(6),BCD_PT7_Multiplication(6),BCD_PT8_Multiplication(6),BCD_PT9_Multiplication(6),Output(6));
	Output7 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(7),BCD_PT1_Multiplication(7),BCD_PT2_Multiplication(7),BCD_PT3_Multiplication(7),BCD_PT4_Multiplication(7),BCD_PT5_Multiplication(7),BCD_PT6_Multiplication(7),BCD_PT7_Multiplication(7),BCD_PT8_Multiplication(7),BCD_PT9_Multiplication(7),Output(7));
	Output8 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(8),BCD_PT1_Multiplication(8),BCD_PT2_Multiplication(8),BCD_PT3_Multiplication(8),BCD_PT4_Multiplication(8),BCD_PT5_Multiplication(8),BCD_PT6_Multiplication(8),BCD_PT7_Multiplication(8),BCD_PT8_Multiplication(8),BCD_PT9_Multiplication(8),Output(8));
	Output9 : SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(9),BCD_PT1_Multiplication(9),BCD_PT2_Multiplication(9),BCD_PT3_Multiplication(9),BCD_PT4_Multiplication(9),BCD_PT5_Multiplication(9),BCD_PT6_Multiplication(9),BCD_PT7_Multiplication(9),BCD_PT8_Multiplication(9),BCD_PT9_Multiplication(9),Output(9));
	Output10: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(10),BCD_PT1_Multiplication(10),BCD_PT2_Multiplication(10),BCD_PT3_Multiplication(10),BCD_PT4_Multiplication(10),BCD_PT5_Multiplication(10),BCD_PT6_Multiplication(10),BCD_PT7_Multiplication(10),BCD_PT8_Multiplication(10),BCD_PT9_Multiplication(10),Output(10));
	Output11: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(11),BCD_PT1_Multiplication(11),BCD_PT2_Multiplication(11),BCD_PT3_Multiplication(11),BCD_PT4_Multiplication(11),BCD_PT5_Multiplication(11),BCD_PT6_Multiplication(11),BCD_PT7_Multiplication(11),BCD_PT8_Multiplication(11),BCD_PT9_Multiplication(11),Output(11));
	Output12: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(12),BCD_PT1_Multiplication(12),BCD_PT2_Multiplication(12),BCD_PT3_Multiplication(12),BCD_PT4_Multiplication(12),BCD_PT5_Multiplication(12),BCD_PT6_Multiplication(12),BCD_PT7_Multiplication(12),BCD_PT8_Multiplication(12),BCD_PT9_Multiplication(12),Output(12));
	Output13: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(13),BCD_PT1_Multiplication(13),BCD_PT2_Multiplication(13),BCD_PT3_Multiplication(13),BCD_PT4_Multiplication(13),BCD_PT5_Multiplication(13),BCD_PT6_Multiplication(13),BCD_PT7_Multiplication(13),BCD_PT8_Multiplication(13),BCD_PT9_Multiplication(13),Output(13));
	Output14: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(14),BCD_PT1_Multiplication(14),BCD_PT2_Multiplication(14),BCD_PT3_Multiplication(14),BCD_PT4_Multiplication(14),BCD_PT5_Multiplication(14),BCD_PT6_Multiplication(14),BCD_PT7_Multiplication(14),BCD_PT8_Multiplication(14),BCD_PT9_Multiplication(14),Output(14));
	Output15: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(15),BCD_PT1_Multiplication(15),BCD_PT2_Multiplication(15),BCD_PT3_Multiplication(15),BCD_PT4_Multiplication(15),BCD_PT5_Multiplication(15),BCD_PT6_Multiplication(15),BCD_PT7_Multiplication(15),BCD_PT8_Multiplication(15),BCD_PT9_Multiplication(15),Output(15));	
	Output16: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(16),BCD_PT1_Multiplication(16),BCD_PT2_Multiplication(16),BCD_PT3_Multiplication(16),BCD_PT4_Multiplication(16),BCD_PT5_Multiplication(16),BCD_PT6_Multiplication(16),BCD_PT7_Multiplication(16),BCD_PT8_Multiplication(16),BCD_PT9_Multiplication(16),Output(16));
	Output17: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(17),BCD_PT1_Multiplication(17),BCD_PT2_Multiplication(17),BCD_PT3_Multiplication(17),BCD_PT4_Multiplication(17),BCD_PT5_Multiplication(17),BCD_PT6_Multiplication(17),BCD_PT7_Multiplication(17),BCD_PT8_Multiplication(17),BCD_PT9_Multiplication(17),Output(17));
	Output18: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(18),BCD_PT1_Multiplication(18),BCD_PT2_Multiplication(18),BCD_PT3_Multiplication(18),BCD_PT4_Multiplication(18),BCD_PT5_Multiplication(18),BCD_PT6_Multiplication(18),BCD_PT7_Multiplication(18),BCD_PT8_Multiplication(18),BCD_PT9_Multiplication(18),Output(18));
	Output19: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(19),BCD_PT1_Multiplication(19),BCD_PT2_Multiplication(19),BCD_PT3_Multiplication(19),BCD_PT4_Multiplication(19),BCD_PT5_Multiplication(19),BCD_PT6_Multiplication(19),BCD_PT7_Multiplication(19),BCD_PT8_Multiplication(19),BCD_PT9_Multiplication(19),Output(19));
	Output20: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(20),BCD_PT1_Multiplication(20),BCD_PT2_Multiplication(20),BCD_PT3_Multiplication(20),BCD_PT4_Multiplication(20),BCD_PT5_Multiplication(20),BCD_PT6_Multiplication(20),BCD_PT7_Multiplication(20),BCD_PT8_Multiplication(20),BCD_PT9_Multiplication(20),Output(20));
	Output21: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(21),BCD_PT1_Multiplication(21),BCD_PT2_Multiplication(21),BCD_PT3_Multiplication(21),BCD_PT4_Multiplication(21),BCD_PT5_Multiplication(21),BCD_PT6_Multiplication(21),BCD_PT7_Multiplication(21),BCD_PT8_Multiplication(21),BCD_PT9_Multiplication(21),Output(21));
	Output22: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(22),BCD_PT1_Multiplication(22),BCD_PT2_Multiplication(22),BCD_PT3_Multiplication(22),BCD_PT4_Multiplication(22),BCD_PT5_Multiplication(22),BCD_PT6_Multiplication(22),BCD_PT7_Multiplication(22),BCD_PT8_Multiplication(22),BCD_PT9_Multiplication(22),Output(22));	
	Output23: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(23),BCD_PT1_Multiplication(23),BCD_PT2_Multiplication(23),BCD_PT3_Multiplication(23),BCD_PT4_Multiplication(23),BCD_PT5_Multiplication(23),BCD_PT6_Multiplication(23),BCD_PT7_Multiplication(23),BCD_PT8_Multiplication(23),BCD_PT9_Multiplication(23),Output(23));
	Output24: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(24),BCD_PT1_Multiplication(24),BCD_PT2_Multiplication(24),BCD_PT3_Multiplication(24),BCD_PT4_Multiplication(24),BCD_PT5_Multiplication(24),BCD_PT6_Multiplication(24),BCD_PT7_Multiplication(24),BCD_PT8_Multiplication(24),BCD_PT9_Multiplication(24),Output(24));
	Output25: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(25),BCD_PT1_Multiplication(25),BCD_PT2_Multiplication(25),BCD_PT3_Multiplication(25),BCD_PT4_Multiplication(25),BCD_PT5_Multiplication(25),BCD_PT6_Multiplication(25),BCD_PT7_Multiplication(25),BCD_PT8_Multiplication(25),BCD_PT9_Multiplication(25),Output(25));
	Output26: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(26),BCD_PT1_Multiplication(26),BCD_PT2_Multiplication(26),BCD_PT3_Multiplication(26),BCD_PT4_Multiplication(26),BCD_PT5_Multiplication(26),BCD_PT6_Multiplication(26),BCD_PT7_Multiplication(26),BCD_PT8_Multiplication(26),BCD_PT9_Multiplication(26),Output(26));	
	Output27: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(27),BCD_PT1_Multiplication(27),BCD_PT2_Multiplication(27),BCD_PT3_Multiplication(27),BCD_PT4_Multiplication(27),BCD_PT5_Multiplication(27),BCD_PT6_Multiplication(27),BCD_PT7_Multiplication(27),BCD_PT8_Multiplication(27),BCD_PT9_Multiplication(27),Output(27));
	Output28: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(28),BCD_PT1_Multiplication(28),BCD_PT2_Multiplication(28),BCD_PT3_Multiplication(28),BCD_PT4_Multiplication(28),BCD_PT5_Multiplication(28),BCD_PT6_Multiplication(28),BCD_PT7_Multiplication(28),BCD_PT8_Multiplication(28),BCD_PT9_Multiplication(28),Output(28));
	Output29: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(29),BCD_PT1_Multiplication(29),BCD_PT2_Multiplication(29),BCD_PT3_Multiplication(29),BCD_PT4_Multiplication(29),BCD_PT5_Multiplication(29),BCD_PT6_Multiplication(29),BCD_PT7_Multiplication(29),BCD_PT8_Multiplication(29),BCD_PT9_Multiplication(29),Output(29));	
	Output30: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(30),BCD_PT1_Multiplication(30),BCD_PT2_Multiplication(30),BCD_PT3_Multiplication(30),BCD_PT4_Multiplication(30),BCD_PT5_Multiplication(30),BCD_PT6_Multiplication(30),BCD_PT7_Multiplication(30),BCD_PT8_Multiplication(30),BCD_PT9_Multiplication(30),Output(30));	
	Output31: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(31),BCD_PT1_Multiplication(31),BCD_PT2_Multiplication(31),BCD_PT3_Multiplication(31),BCD_PT4_Multiplication(31),BCD_PT5_Multiplication(31),BCD_PT6_Multiplication(31),BCD_PT7_Multiplication(31),BCD_PT8_Multiplication(31),BCD_PT9_Multiplication(31),Output(31));		
	Output32: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(32),BCD_PT1_Multiplication(32),BCD_PT2_Multiplication(32),BCD_PT3_Multiplication(32),BCD_PT4_Multiplication(32),BCD_PT5_Multiplication(32),BCD_PT6_Multiplication(32),BCD_PT7_Multiplication(32),BCD_PT8_Multiplication(32),BCD_PT9_Multiplication(32),Output(32));	
	Output33: SEL10_1 port map(BCD(0),BCD(1),BCD(2),BCD(3),BCD_PT0_Multiplication(33),BCD_PT1_Multiplication(33),BCD_PT2_Multiplication(33),BCD_PT3_Multiplication(33),BCD_PT4_Multiplication(33),BCD_PT5_Multiplication(33),BCD_PT6_Multiplication(33),BCD_PT7_Multiplication(33),BCD_PT8_Multiplication(33),BCD_PT9_Multiplication(33),Output(33));	
	

						  
end architecture Behavior;