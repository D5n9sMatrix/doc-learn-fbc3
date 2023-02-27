#inclib "doc-learn-fbc3"
#-lang qb

Option Explicit

/'
In the program, the value of myDbl which is a double-type variable, was set to
5.56. When myInt was assigned this float value, the compiler converted the value to an
integer, and then rounded it up to 6. Maybe you were just looking for the whole number
portion of 5? In this case, your result would be incorrect, although you may not know until
later in the program. This type of subtle bug is another one of those problems that are
hard to track down and fix.
Caution Even if the compiler is producing the correct result, there is no guarantee
that future versions of the compiler will. It may be necessary to change the behavior of
the compiler to add features or fix a bug, and you may find yourself with a program that
suddenly quits working.
The next little program illustrates the implicit conversion that takes place during a
calculation. In this example, the two integer operands are converted to double-types
during the division calculation.
'/
Dim As Double DBL2
Dim As Integer VT1, VT2
' set to value in handle
TAB DBL2 = &HF2400 + &HF2400
INT VT1 = DBL2
INT VT2 = DBL2
' output ...
print "SOH TAB INT: "; VT1 + VT2 ' getter values handle

End
