Library ieee;
Use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity multiplicador is
	 Port ( 
			a,b  : in Std_logic_vector (7 downto 0);
         Produto    : Out Std_Logic_Vector (15 downto 0)
	      );

end multiplicador; 
 
Architecture main of multiplicador is
    Signal sig_1, sig_2 : Signed (7 downto 0);
Begin
        sig_1   <= signed(a);
        sig_2   <= signed(b);
        Produto <= Std_Logic_Vector(sig_1 * sig_2);

End main;