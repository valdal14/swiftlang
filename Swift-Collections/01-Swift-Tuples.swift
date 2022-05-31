import Foundation

// TUPLES --------------------------------------------------------------------------
// A group of multiple value inside a single container
let myTuple : (String, Int) = ("Hello", 14)
print(myTuple)

// Access by index
print(myTuple.0)
print(myTuple.1)

// Access by key
let t1 : (name: String, age: Int, isProgrammer: Bool) = (name: "Valerio", age: 14, isProgrammer: true)
print(t1.name)
print(t1.age)
print(t1.isProgrammer)

// Decouple a tuple
// We can declare var or let and assign them value from decloupling a tuple
print("--- Decouple a tuple ---")
let (p1Name, p1Age, p1Job) = t1
print(p1Name)
print(p1Age)
print(p1Job)
