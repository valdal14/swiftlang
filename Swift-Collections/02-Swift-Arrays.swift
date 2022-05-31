import Foundation

// Arrays -------------------------------------------------------------------------------------

// An Array in swift cannot contains different types

// Define an array
var a1 : [String] = ["Ciao", "Hello", "Hola"]
// or
var a2 : Array<Int> = []
// or
let a3 = [String]()
// or
let a4 = [2, 5, 7]

// Add elements
a1.append("Hi")
a2.append(0)

print(a1)
print(a2)

// We cam also use the += operator
a2 += [2]
print(a2)

// Access the value
print(a2[1]) // index 1

// Iterator over
for names in a1 {
    print(names)
}

for(index, value) in a1.enumerated() {
    print("At index \(index) we have a name equal to \(value)")
}

// Iterator Protocols review
var iterator = a1.makeIterator()

while let name = iterator.next() {
    print(name)
}


// Split an array using the range operator
let nums : Array<UInt8> = [0, 2, 4, 6, 8]
let numbers : ArraySlice<UInt8> = nums[...3] // indexed and I have not specified the start
print(numbers)

let numbersTwo : ArraySlice<UInt8> = nums[..<2] // get all from start and before index 2
print(numbersTwo)

let n3 = nums[2...3] // from index to to index 
print(n3)

let n4 = nums[2...] // get all from index to until the end
print(n4)

