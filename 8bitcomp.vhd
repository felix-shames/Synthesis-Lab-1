----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2021 01:22:01 PM
-- Design Name: 
-- Module Name: 8bitcomp - Behavioral
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

entity eightbitcomp is
port(

        input1  : in std_logic;        
        input2  : in std_logic;        
        clock : in std_logic;
        output : out std_logic       
    );
end eightbitcomp;

architecture Behavioral of eightbitcomp is

begin


process(clock)
begin
   if (clock'event and clock ='1') then
      if ( input1 = input2 ) then
         output <= '1';
      else
         output <= '0';
      end if;
   end if;
end process;


				
				
end Behavioral;
