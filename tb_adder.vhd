LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_adder IS
END tb_adder;
 
ARCHITECTURE behavior OF tb_adder IS 
    COMPONENT adder_2bit
    PORT(
         KEY1,KEY2,KEY3,KEY4: IN std_logic;
         LED1,LED2,LED3: OUT std_logic
        );
    END COMPONENT;
   --Inputs
   signal KEY1 : std_logic := '1';
   signal KEY2 : std_logic := '0';
   signal KEY3 : std_logic := '1';
   signal KEY4 : std_logic := '1';
 	--Outputs
   signal LED1,LED2,LED3: std_logic;
BEGIN
   uut: adder_2bit PORT MAP (KEY1,KEY2,KEY3,KEY4,LED1,LED2,LED3);
END;