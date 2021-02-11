----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2021 01:39:39 PM
-- Design Name: 
-- Module Name: four_bit_enc - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_enc is
 port(

       clock  : in std_logic;        
       reset  : in std_logic;        
       input  : in unsigned(3 downto 0);
       output : out unsigned(1 downto 0)        

   );
end four_bit_enc;

architecture Behavioral of four_bit_enc is

begin
process(clock)
begin
   if ( clock'event and clock ='1') then
      if (reset = '1') then
         output <= "00";
      else
         case input is
            when "0001" => output <= "00";
            when "0010" => output <= "01";
            when "0100" => output <= "10";
            when "1000" => output <= "11";
            when others => output <= "00";
         end case;
      end if;
   end if;
end process;

end Behavioral;
