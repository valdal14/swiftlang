import Foundation

// Sets ---------------------------------------------------------------------------------------------

/*
    - A set stores distinct values of the same type in a collection with no defined ordering.
    - A type must be hashable in order to be stored in a set.
    - A hash value is an Int value that’s the same for all objects that compare equally, 
      such that if a == b, the hash value of a is equal to the hash value of b.
    - All of Swift’s basic types (such as String, Int, Double, and Bool) are hashable by default
      and can be used as set value types or dictionary key types
    - Enumeration case values without associated values (as described in Enumerations) 
      are also hashable by default

*/

// declare an empty set
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

// empty a set
letters = []

// Insert a value inside the set
letters.insert("a")
letters.insert("a") // this will be ignored and not inserted

print(letters.count) // 1

// Creating a Set with an Array Literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

// check for empty set
print(favoriteGenres.isEmpty) // false

// removing an element
print(type(of: favoriteGenres.remove("Rock"))) // return an OPTIONAL - Optional<String>
favoriteGenres.remove("XXX") // this will not be found

// Iterate over a set
for genre in favoriteGenres {
    print(genre)
}

// --------------------------------------------------------------------------------------------------

// NOTE: OPTIONALS ----------------------------------------------------------------------------------

/*
    We saw that removing an item from a set return an OPTIONAL. An Optional means there could be or not
    be a value therefore we need to safe guard it...
*/
if let removedGenre = favoriteGenres.remove("Classical"){
    print("\(removedGenre) was successfully removed from the set")
    print(favoriteGenres)
} else {
    print("The value was not found")
}
// --------------------------------------------------------------------------------------------------

/*
    Like in Math we can perform the following operation with sets

    -> intersection
    -> symmetricDifference
    -> union
    -> subtracting
*/

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

/*
    We can also perform the following operations:
    -> isSubset(of:)
    -> isSuperset(of:) 
    -> isStrictSubset(of:) or isStrictSuperset(of:) 
    -> isDisjoint(with:)
*/
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true


// TUPLES --------------------------------------------------------------------------------------------

/*
    - Tuples group multiple values into a single compound value. 
    - The values within a tuple can be of any type and don’t have to be of the same type as each other.

*/

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

// Create a tuple from a permutation
let (statusCode, statusMessage) = http404Error
print(statusCode)
print(statusMessage)

// Note: If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_)
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

// Alternatively, access the individual element values in a tuple using index numbers starting at zero:
print("The status code is \(http404Error.0)")
print("The status code is \(http404Error.1)")

// You can name the individual elements in a tuple when the tuple is defined
let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"
// ---------------------------------------------------------------------------------------------------

// Tuple Example
func returnHttpResponse(response : String) -> (String, Int) {
    switch response {
    case "valid":
        return(message: "OK", code: 200)
    case "fail":
        return(message: "Unauthorized", code: 401)
    case "error":
        return(message: "Error", code: 500)
    default:
        return(message: "Not found", code: 400)
    }
}

let httpRes = returnHttpResponse(response: "fail");
print(httpRes)