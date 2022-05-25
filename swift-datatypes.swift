import Foundation

// declaring variables
var age :Int = 30
var shortAge = 30

// declaring constants
let favNum :Int = 14
let newFavNum = 14

// declaring a new String
var name :String = "valdal14"

// MATH - Doubles and Floats -------------------------------------------------------------------------
/*
    In Swift we cannot automatically performs math operations 
    between diffetent data-types

    age * percentage --> binary operator '*' cannot be applied to operands of type 'Int' and 'Double'

    We need to convert one of the two first
    Double(age) * percentage
    age * Int(percentage)
*/
var percentage :Double = 0.75

print(Double(age) * percentage)
print(age * Int(percentage))
// --------------------------------------------------------------------------------------------------------


// BOOLEAN ------------------------------------------------------------------------------------------------
var isTrue :Bool = true
var isFalse :Bool = false

// Ternary operator
favNum == 14 ? print("Fav num is \(favNum)") : print("Fav num is not \(favNum)")

// If statement
if favNum == 14 {
    print("Fav num is \(favNum)")
} else {
    print("Fav num is not \(favNum)")
}

// And, Or
favNum == 14 && age == 30 ? print("Fav num is \(favNum) and age is \(age)") : print("Fav num is not \(favNum) and age is not \(age)")

favNum == 14 || age == 20 ? print("Fav num is \(favNum) and age is \(age)") : print("Fav num is not \(favNum) and age is not \(age)")

// --------------------------------------------------------------------------------------------------------