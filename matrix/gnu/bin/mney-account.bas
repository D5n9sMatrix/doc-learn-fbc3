#inclib "doc-learn-fbc3"
#-lang qb

Option Explicit

/'
Hexadecimal Numbers
Hexadecimal is a base 16 numbering scheme and have digits in the range of 0 to F.
Hexadecimal numbers are commonly used as constant values in the Windows API and
many third party libraries as it is a compact way to represent a large value. To indicate a
hexadecimal number, use the &H prefix.
Binary Numbers
Binary is a base 2 numbering scheme and have digits in the range of 0 and 1.
Binary is the language of the computer. Although we can enter numbers and letters into
the computer, it all must be translated into binary before the computer can understand
it. To indicate a binary number, use the &B prefix.
Octal Numbers
Octal is a base eight numbering scheme and have digits in the range of 0 to 7.
Octal numbers were very popular in early computer systems, but aren’t used much today
except in some specialized applications. To indicate an octal number, use the &O prefix.
Exponential Numbers
You can use exponential numbers in your program by adding the E suffix followed
by the power. To use the number 105, you would write the number as 10E05. You can
directly set a double or single type variable using the exponent format. You can also use
negative exponents such as 10E-5, which when printed to the screen would like 1.e­004
'/

/'
Which Data Type To Use?
There are a number of different data types available, so how do you choose the
right data type for any given application? The rule of thumb is to use the largest data
type you need to hold the expected range of values. This may seem like stating the
obvious, but many programs fail because the programmer did not fully understand the
range of data in their program. When you crate a program, you should map out not only
the logic of the program, but the data associated with each block of logic. When you map
out the data ahead of time, you are less likely to run into data-type errors.
For example, if you were working with ASCII codes, which range from 0 to 255, an
ubyte would be a good choice since the range of an ubyte is the same as the range of
ASCII codes, and you are only using 1 byte of memory. There is another consideration
though, the “natural” data size of the computer. On a 32-bit system, the natural data size
is 4 bytes, or an integer. This means that the computer is optimized to handle an integer,
and does so more efficiently, even though you are “wasting” 3 bytes of memory by using
an integer for an ASCII code.
In most cases an integer is a good general-purpose choice for integer data. The
range is quite large, it handles both negative and positive numbers and you benefit from
using the computer’s natural data type. For floating point data, a double is a good choice
since, like the integer, it has a good range of values and better precision than a single.
For large integer data you should use a uinteger for positive data or a longint for large
negative and positive numbers. These are only suggestions; what data type you end up
using will be dictated by the needs of your program.
These “rules of thumb” apply to single variable declarations where a few wasted bytes
are not critical. However, as you will see in the chapter on arrays, choosing the right
sized data type is critical in large arrays where a few wasted bytes can add up to a
large amount of wasted memory.
Option Explicit
You may notice when looking at other people's source code, the compiler directive
Option Explicit has been used at the top of each program. A compiler directive is code
that instructs the compiler to do something. In the case of Option Explicit, it instructs the
compiler to make sure that any variable being used has been properly Dim’ed. Although
you can write a program without using Option Explicit and explicitly Dim’ing each
variable, you run the risk of introducing nasty, hard-to-find bugs as the following short
program illustrates.
'/

Dim SOH As Integer 
' set integer to value handle
Let SOH = &HF2827
' output to handle value
print "Acount Handle value: "; SOH; ' my handle output
' times ...
Sleep

End  
