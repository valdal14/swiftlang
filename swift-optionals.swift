import Foundation

// OPTIONALS -------------------------------------------------------------------------------------------

/*
    - An optional is either nothing (nil) or something
*/

// create an optional of any datatype
var age :Int? = 30
var name :String? = "valdal14"

print(name as Any) // explicitly cast to 'Any' with 'as Any' to silence this warning

var height :Double? = nil
// var h :Double = nil 
// this will not work with non-optional value - 
// explicitly cast to 'Any' with 'as Any' to silence this warning

var newAge :String = "30"
print(Int(newAge) as Any) // Optional(30)

var noAge :String = "Hello"
// print(Int(noAge)) // nil .... conversion cannot be done

// UNWRAP and OPTIONAL

// We can unwrap an optional using ! when we know it will not be nil
print("age \(age!)")

// or
if age != nil {
    print(age!) // get back the Integer value after the checj
} else {
    print("age was nil")
}

// better way
if let okAge = Int(noAge) {
    print(okAge)
} else {
    print("noAge value is not an Int")
}

// Example
var phoneNumber : String? = "697889542"

// unwrap the optional in the condition
if let number = Int(phoneNumber!) {
    print("Your phone number is \(number)")
} else {
    print("Cannot convert a number")
}

func formatPhoneNumber(number : String?) -> String {
    if let num = Int(number!) {
        return "Phone number is: \(num)"
    } else {
        return "Error"
    }
}

var pn = formatPhoneNumber(number: "784755938475")
print(pn)

// -----------------------------------------------------------------------------------------------------