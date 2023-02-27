#inclib "doc-learn-fbc3"

/'
The DEF statement will affect all variables that start with a letter in the given
range. So if you add DEFDBL m-n to your program, any variable starting with m or n, will
default to a double-type. All other variables that start with different numbers will default
to an integer-type. A Dim statement will override any DEF statement, so if you declare an
integer variable starting with m, it will be an integer, even though the DEFDBL is in
effect.
Using Different Number Formats
Besides decimal numbers, FreeBasic is able to recognize numbers in hexadecimal,
binary and octal formats. Table 3.4 lists the number base and format to use.
'/

Declare Function Add2( ByVal x As Integer, ByVal y As Integer ) As Integer

Dim Decimal As Integer = 255
Dim HexDecimal  As Double = &HF255.255
Dim B As Long = &HFB11111111110
Dim O As LongInt = &O365
Dim E As ULong = &O365E1
' dialog silence arguments jr ...
Let Decimal = 255
' check type ...
Hex HexDecimal = &HF255.255
' template good binary
Bin B = &HFB11111111110
' octave years
Oct O = &O365
' Expoential character ocatve
Exp E = &O365E1

End Function

