------------------------------------------------------------------
--Copyright 2025 Andrey S. Ionisyan (anserion@gmail.com)
--Licensed under the Apache License, Version 2.0 (the "License");
--you may not use this file except in compliance with the License.
--You may obtain a copy of the License at
--    http://www.apache.org/licenses/LICENSE-2.0
--Unless required by applicable law or agreed to in writing, software
--distributed under the License is distributed on an "AS IS" BASIS,
--WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--See the License for the specific language governing permissions and
--limitations under the License.
------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_2bit is
Port (KEY1,KEY2,KEY3,KEY4: in STD_LOGIC;
      LED1,LED2,LED3: out STD_LOGIC);
end adder_2bit;

architecture RTL of adder_2bit is
component FA Port (CIN,A,B: in STD_LOGIC; S,COUT: out STD_LOGIC); end component;
signal CIN,A,B,S:STD_LOGIC_VECTOR(1 downto 0);
signal COUT: STD_LOGIC;
begin
  A(0)<=KEY1; A(1)<=KEY2;
  B(0)<=KEY3; B(1)<=KEY4;
  CIN(0)<='0';
  FA1: FA port map(CIN(0),A(0),B(0),S(0),CIN(1));
  FA2: FA port map(CIN(1),A(1),B(1),S(1),COUT);
  LED1<=S(0); LED2<=S(1); LED3<=COUT;
end RTL;
