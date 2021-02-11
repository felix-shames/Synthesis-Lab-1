----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2021 01:15:35 PM
-- Design Name: 
-- Module Name: two1Mux - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity two1Mux is
port(

        input1  : in std_logic;        
        input2  : in std_logic;        
        selector : in std_logic;
        output : out std_logic       
    );
end two1Mux;

architecture Behavioral of two1Mux is

begin
output <= input1 WHEN selector ='1' ELSE
            input2;


end Behavioral;
