import Foundation

// SETS -------------------------------------------------------------------------------
// Non ordered and not equal elements of the same data type. No indexes
// We always need to specify the type when we delcare a set otherwise 
// it may be infered as Array by the compiler

// Define sets
let s : Set<Int> = [] // empty set
let s1 = Set<Int>() // empty set
let s2 : Set<Int> = [0, 1, 2, 3, 4, 5]

// Add elements
// If we try to add the same value inside a set it will be ignored.
// No errors will be check at compiler or runtime

var s3 : Set<String>  = []
s3.insert("Ciao")
s3.insert("Hola")
s3.insert("Hi")
let returnValueFromInsert = s3.insert("Hi")
print(returnValueFromInsert) // (inserted: false, memberAfterInsert: "Hi")

// Access elements
for greet in s3 {
    print(greet)   
}

// SETS OPERATIONS --------------------------------------------------------------------


// ------------------------------------------------------------------------------------