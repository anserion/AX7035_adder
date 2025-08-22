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

library UNISIM;
use UNISIM.VComponents.all;

entity FA is
Port (CIN,A,B: in STD_LOGIC; S,COUT: out STD_LOGIC);
end FA;

architecture RTL of FA is
component AND2 port(I0,I1:in std_logic; O:out std_logic); end component;
component OR2 port(I0,I1:in std_logic; O:out std_logic); end component;
component XOR2 port(I0,I1:in std_logic; O:out std_logic); end component;
signal p1,p2,p3,p4,p5: std_logic;
begin
D1: XOR2 port map(A,B,p1);
D2: XOR2 port map(CIN,p1,S);
D3: AND2 port map(A,B,p2);
D4: AND2 port map(CIN,p1,p3);
D5: OR2 port map(p2,p3,COUT);
end RTL;
