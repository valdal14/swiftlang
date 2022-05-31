import Foundation

// OPERATORS ------------------------------------------------------------------------------------

/*
    In swift we have the followings operators
    -> UNARY   = Works only on a single value
    -> BINARY  = Works on two values
    -> TERNARY = Works on three values
*/

// Assignment operator (=) Binary -----------------------------------------------------------
let hello = "Ciao"

// Arithmetic operators + - * / (Binary)
let sum = 4 + 5

// Note: If we do not specify the type while doing a division operation the type will be 
// automatically infered as Int
let div1 = 23 / 4
print(div1) // 5

let div2 : Double = Double(23) / Double(4)
print(div2) // 5.75

let dive = 23.0 / 4.0
print(dive)

// Reminder operators % * / (Binary) -------------------------------------------------------------
// returns the reminder of a division

let div3 = 9 % 3
print(div3) // 0 is the reminder of this division (resto in Italiano)


// Compound assignment operators += -= *= /+ (Binary) ---------------------------------------------
var val1 = 5
val1 = val1 + 2
print(val1)

val1 += 3
print(val1) // 10


// Comparison operators == != < > <= >= (Binary) ---------------------------------------------------
let x : Int = 4
let y : Int = 3
print(y >= x)
print(y <= x)
print(y != x)


// Logical operators  ---------------------------------------------------------------------------

// not a (!a) unary  -> return the opposite
// (a && b)  binary -> returns true only if both are true
// (a || b ) binary -> returns true if one of the two is true

print("--- Logical Operators ---")
print(!true)
print(true && false)
print(true && true)
print(true || false)
print(false || true)


// ----------------------------------------------------------------------------------------------