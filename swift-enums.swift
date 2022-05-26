import Foundation

// ENUMS ------------------------------------------------------------------------------------------

// Declare an enum
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

// Get a value from the enum
let somePlanet = Planet.mars
print(somePlanet)

switch somePlanet {
case .earth:
    print("Mostly harmless")
case .mars:
    print("Mostly dry")
default:
    print("Not a safe place for humans")
}

// Iterating over Enumeration Cases
enum Beverage: CaseIterable {
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

for beverage in Beverage.allCases {
    print(beverage)
}

// Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
print(productBarcode)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
print(productBarcode)


// Raw Values - See how the Character data type was specified
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

// Implicitly Assigned Raw Values
// Planet.mercury has an explicit raw value of 1, Planet.venus has an implicit raw value of 2, and so on.
enum PlanetRowValues: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}


// Initializing from a Raw Value

/*
    Not all possible Int values will find a matching planet, however. 
    Because of this, the raw value initializer always returns an optional enumeration case. 
    In the example above, possiblePlanet is of type Planet?, or “optional Planet.”
*/

if let planet = PlanetRowValues(rawValue: 4) {
    print(planet)
} else {
    print("No Planet found")
}

// Use case with Struct
enum FurColor : String {
    case black = "Black", brown, white, golden
}

struct EnumDog {
    var age : Int
    var name : String
    var furColor : FurColor // enum type
}

var enumDog = EnumDog(age: 8, name: "Mile", furColor: .black)
print(enumDog)

// ------------------------------------------------------------------------------------------------