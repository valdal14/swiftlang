import Foundation

// Strings and Chars -------------------------------------------------------------
let s1 : String = "Hello"
let c1 : Character = "C"
print(s1)
print(c1)

// Note: We need to inder the Character type if we declare a constant or variable
// if we specify a value like "D"
let c2 = "A"
print(type(of: c2)) // String

let c3 : Character = "A"
print(type(of: c3)) // Character

// Multiline String

let s2 = """
This is a multiline string
and it is declared like this
"""
print(s2)

// Empty String declaration
let s3 : String = ""
let s4 : String = String()

// Strings concatenation and interpolation ----------------------------------------------------
// + Operator and += Operator (Add at the end of the String)
let hello = "Ciao"
let world = "Mondo"
let h1 : String = hello + " " + world
print(h1)

// +=
var name : String = "My name is"
name += " "
name += "Valerio"

print(name)

// String interpolation and expression
let newS = "World"
print("Hello \(newS)")

print("The result of 3 * 3 = \(3 * 3)")


