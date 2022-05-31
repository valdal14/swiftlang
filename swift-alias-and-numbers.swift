import Foundation

/*
    SWIFT ALIAS 
    
    Allow us to redefine a type for specific business purposes 
*/

typealias Money = Double
let spread : Money = 4.4
print(type(of: spread))

// NUMBERS ----------------------------------------------------


/*
    Note: the number near Int8 is the number of bit used in memory 
    to rapresent that number and its value is 2^8 and since we 
    need to rapresent a sign in this case, half of them will be
    positive and half negative

    UInt8 has no sign and therefore 2^8 values (from 0 to 255)

    -> Int / Int8 / Int16 / Int32 / Int64 
    -> UInt / UInt8 / UInt16 / UInt32 / UInt64 -> Unsigned Int 
    -> Float / Float32 / Float64 (Double) / Float80

    Usually based on the hardware architecture we should pick the 
    related data type. For a x32 CPU we should use Int32 and for 
    and x64 we should use Int64 and so on. 

    Generally for integer we usually use Int for decimal numbers Double 

    However both Int and Unit will automatically pick the best value 
    based on the current CPU achitecture.
*/

// The only difference is the space in memory and the complexity 
// to store the values. 
let n1 : Int16 = 34
let n2 : UInt8 = 34
let n3 : Double = 34

// let n4 : UInt8 = 268 // here the value will be overflow 
// integer literal '268' overflows when stored into 'UInt8'

let n6 : Int8 = -126
// Below will not be visible at compile time but only at runtime
// The app will crash
// let n7 : Int8 = -120 + n6 

// Floating Point ------------------------------------------
/*
    Uses the spec from the IEEE
    -> 1 bit for the sign
    -> 8 bits for the exponent
    -> 32 bits for the fraction

    +/- Fraction x base^exponent 

*/

// Number Systems --------------------------------------

/*
    -> Base 10
    -> Base 2 (0b)
    -> Base 8 (0o)
    -> Hexadeciaml (0x)
*/

let numDecimal : Int = 375
let numDinary : Int = 0b101110111
let numOctal : Int = 0o567
let numHexadeciaml : Int = 0x177

print(numHexadeciaml)

// Exponent -----------------------------------------------

/*
    The exponent is rapresented by the letter (e)
*/

let num1 = 895
let num2 : Double = 8.95e2 // 8.95 x 10^2 = 895
let nun3  : Double = 0.895e3 // 0.895 x 10^3 = 895

// UNDERSCORE WITH NUMBER
// Used to readability
let n8 = 1_111_232_233_344
print(n8)


// NUMBER CONVERSION -----------------------------------------

/*
    In Swift we always have to convert from number to output
    a common data type. There is no implicit conversion
*/

let b1 : UInt8 = 42
let b2 : UInt16 = 1020
// let sum = n1 + n2  the compiler will give us an error
// binary operator '+' cannot be applied to operands of type 'UInt8' and 'UInt16'

// Usually we consider the greater of the two and we convert 
// the lower in this case UInt8 to UInt16

let sum : UInt16 = UInt16(b1) + b2
print(sum)

// What happen If we convert b2 (The greater of the two) to UInt8 ?
// At compile time we will not see any errors but at runtime we will have a crash
//let newSum = b1 + UInt8(b2)
// Fatal error: Not enough bits to represent the passed value

let c1 : UInt8 = 255
let c2 : Int16 = 32760

// In this case we must conver both to a bigger number
// let anotherSum = c1 + c2 // runtime error
// overloads for '+' exist with these partially matching parameter lists: (Int16, Int16), (UInt8, UInt8)

let anotherSum = UInt32(c1) + UInt32(c2)

// With Float and Int we have to do the same thing
let c3 = 8 // Int
let c4 = 5.89 // Double

// runtime errot binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
// let floatSum = c3 + c4 

let floatSum = Double(c3) + c4

// Let see what happen if we convert the Int into a Double
let floatSum2 = c3 + Int(c4) // we will lose the decimal part in this case
print(floatSum2)

// Example: 
let numOne : Int16 = 32750
let numTwo : UInt16 = 65500
let sumThree : UInt32 = UInt32(numOne) + UInt32(numTwo)
print(sumThree)

// ------------------------------------------------------------
