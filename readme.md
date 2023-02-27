# welcome doc learn fbc 3

software doc learn fbc 3 microsoft FreeBasic language

```freebasic
/'.
├── doc-learn-fbc3.bas
├── doc-learn-fbc3.bi
├── doc-learn-fbc3.wfbe
├── fill-handle.bas
├── libdoc-learn-fbc3.a
├── license
├── manifest.xml
├── matrix
│   └── gnu
│       ├── bin
│       │   ├── doc-learn-fbc3.bas
│       │   ├── doc-learn-fbc3.bi
│       │   ├── fill-handle.bas
│       │   ├── mney-account.bas
│       │   └── olimp.bas
│       ├── lib
│       │   └── libdoc-learn-fbc3.a
│       └── test
│           └── resource.rc
├── mney-account.bas
├── olimp.bas
├── readme.md
└── resource.rc
'/
```

## 3 Converting Numeric Data Types

When you work with numbers there will come a time when you will need to convert
a variable from one data type to another data type. In FreeBasic there are two types of
data conversion. Implicit, where the compiler will automatically convert the data types
during an assignment or calculation, and explicit using one of the predefined conversion
functions.

## Implicit Data Conversion

Implicit data conversion occurs either through an assignment statement, or as the
result of a calculation. Where implicit data conversion can cause a problem is in the loss
of precision that can result when converting a large data type to a smaller data type.
While implicit data conversion eases the programming process somewhat, you want to
make sure that the results you are getting are what you expect. You should always check
the result of an implicit conversion to make sure the range of values being converted is in
the expected range.
The following short program illustrates the conversion that takes place during an
assignment statement.

```freebasic
Dim As Double myDbl
Dim As Integer myInt
'Set myDbl to a float value
myDbl = 5.56
'Assign myInt the float, will be converted to int
myInt = myDbl
Print "myInt ="; myInt
Sleep
End
```

## Analysis: 

In lines 1 and 2 two variable are being declared, myDbl, a double-type
varibale and myInt, an integer-type variable. Line 3 is a comment which, as you can see,
starts with the ' (single quote) character. In line 4 the double-type variable is being
initialized to the floating-point value 5.56. In line 6 the double is being assigned to an
integer variable, invoking the implicit conversion. In line 7 the Print displays the result on
the console window. In line 8 the program waits for a key press with the Sleep statement
and in line 9 the End statement is used to end the program.
Running the program will result in the following output.

```freebasic
myInt = 6
```

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

```freebasic
Dim As Double myDbl
Dim As Integer myInt1, myInt2
'Assign values to myInt1, myInt2
myInt1 = 5
myInt2 = 3
myDbl = myInt1 / myInt2
Print "myDbl ="; myDbl
Sleep
End
```

## Analysis: 

Line 1 and 2 in the program are the alternate Dim statement formats. You
can use this format to declare multiple variables of the same type. In line 4 and 5, the
variables are initialized. In line 6 the / character is the division operator. The result of the
division operation will be implicitly converted to a double-type in the assignment
statement. Line 7 prints the newly converted value to the screen and in lines 8 and 9, the
program will wait for a key press and then end.
