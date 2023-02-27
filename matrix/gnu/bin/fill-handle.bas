#inclib "doc-learn-fbc3"
#-lang qb

Option Explicit

/'
A Note about Option Explicit
Recent versions of the FreeBASIC compiler do not allow OPTION commands
including OPTION EXPLICIT. From now on OPTION EXPLICIT is implied and your programs
will behave as if you used OPTION EXPLICIT. It is a good rule of thumb to always implicitly
declare your variables, so get in the habit now. To compile a source file that uses OPTION
EXPLICIT, either use “-lang deprecated” or remove the OPTION EXPLICIT line from the
source file.
A Look Ahead
When working with numeric data, there are times when it becomes necessary to
convert one data type to another. FreeBasic offers two conversion methods, implicit and
explicit, which you will see in the next chapter.
'/
Option Implicit

/'
3 Converting Numeric Data Types
When you work with numbers there will come a time when you will need to convert
a variable from one data type to another data type. In FreeBasic there are two types of
data conversion. Implicit, where the compiler will automatically convert the data types
during an assignment or calculation, and explicit using one of the predefined conversion
functions.
Implicit Data Conversion
Implicit data conversion occurs either through an assignment statement, or as the
result of a calculation. Where implicit data conversion can cause a problem is in the loss
of precision that can result when converting a large data type to a smaller data type.
While implicit data conversion eases the programming process somewhat, you want to
make sure that the results you are getting are what you expect. You should always check
the result of an implicit conversion to make sure the range of values being converted is in
the expected range.
The following short program illustrates the conversion that takes place during an
assignment statement.
'/

Dim As Double Dbl
Dim As Integer INTER
' set dbl value
TAB Dbl = 5.345
INT INTER = Dbl
' output ...
print "SOH TAB INT: "; Dbl; INTER; ' get handle value
' times
Sleep

End 

