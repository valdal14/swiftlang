import Foundation

// Dictionaries -----------------------------------------------------------------------------------------

/*
    - A dictionary stores associations between keys of the same type and values 
      of the same type in a collection with no defined ordering. 
*/

// Creating an Empty Dictionary
var namesOfIntegers: [Int: String] = [:]

// empty a dictionary
namesOfIntegers = [:]

// Add a new value - key and value
namesOfIntegers[0] = "valdal14"

// Creating a dic with literals
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

// Check whether or not a dic is empty
print(airports.isEmpty)

// Updating a value inside a dictionary
airports["DUB"] = "Dublin - Ireland"

print(airports)

// As an alternative to subscripting, use a dictionary’s updateValue(_:forKey:) method to set or update the value for a particular key.
// Note: The updateValue(_:forKey:) method returns an optional value of the dictionary’s value type.

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("The old value for DUB was \(oldValue).")
}

// Iterating Over a Dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

// Iterate over the keys
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

// If you need to use a dictionary’s keys or values with an API that takes an Array instance, initialize a new array with the keys or values property:
let airportCodes = [String](airports.keys)
// airportCodes is ["LHR", "YYZ"]

let airportNames = [String](airports.values)
// airportNames is ["London Heathrow", "Toronto Pearson"]

// ------------------------------------------------------------------------------------------------------