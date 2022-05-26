import Foundation

// CLASSES -------------------------------------------------------------------------------------------

/*
    - Classes Are Reference Types
    - Unlike value types, reference types are not copied when they’re assigned to a variable or constant, 
      or when they’re passed to a function.
    - Rather than a copy, a reference to the same existing instance is used.

    - Identity Operators
    - Because classes are reference types, it’s possible for multiple constants and variables to refer to 
      the same single instance of a class behind the scenes.
    - It can sometimes be useful to find out whether two constants or variables refer to exactly 
      the same instance of a class.
    - Identical to (===) or Not identical to (!==)
*/

class Dog {
    var name : String = ""
    var age : Int = 0
    var furColor : String = ""

    
    init(name: String, age: Int, furColor: String) {
      self.name = name
      self.age = age
      self.furColor = furColor
    }
    

    func bark() {
        print("Uff my name is \(self.name) and I am \(self.age)")
    }
}

// Create an instance of a class
var dog = Dog(name: "Nytro", age: 7, furColor: "White")
print(dog.age)

var newDog = dog

// Identity Operators only valid to instance variables
// Both refer to the same instance 
print(dog === newDog)

dog.name = "Nytro"
dog.age = 8
dog.bark()

// Access Control Syntax

/*
    - Define the access level for an entity by placing one of the 
      open, public, internal, fileprivate, or private 
      modifiers at the beginning of the entity’s declaration.
    
    - OPEN & PUBLIC: Open access and public access enable entities to be used 
                     within any source file from their defining module, and 
                     also in a source file from another module that imports 
                     the defining module. You typically use open or public access 
                     when specifying the public interface to a framework. 
    
    - INTERNAL     : Internal access enables entities to be used within any source 
                     file from their defining module, but not in any source file outside of that module.
                     You typically use internal access when defining an app’s or a framework’s internal structure.

    - FILE_PRIVATE : File-private access restricts the use of an entity to its own defining source file.
                     Use file-private access to hide the implementation details of a specific piece of 
                     functionality when those details are used within an entire file.

    - PRIVATE      : Private access restricts the use of an entity to the enclosing declaration, and 
                     to extensions of that declaration that are in the same file. Use private access to 
                     hide the implementation details of a specific piece of functionality when those 
                     details are used only within a single declaration.
*/

public class SomePublicClass {}
internal class SomeInternalClass {}
fileprivate class SomeFilePrivateClass {}
private class SomePrivateClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunction() {}
// ---------------------------------------------------------------------------------------------------

// STRUCTS -------------------------------------------------------------------------------------------

/*
   - A claass is stored in memory and a struct is a value
   - In fact classes a reference type while struct are value types
   - With classes we can specify the value using the constructor
   - With Struct we do not need to do it
*/

struct StructDog {
    // we do not have to set values
    var name : String
    var age : Int
    var furColor : String

    func bark() {
        print("Uff my name is \(self.name) and I am \(self.age)")
    }
}

// class with constructor init
var newClassDog = Dog(name: "Fido", age: 7, furColor: "White")
newClassDog.bark()

// With Struct we must specify the values for the variables
// var structDog = StructDog()
var structDog = StructDog(name: "Fido", age: 7, furColor: "White")
structDog.bark()

// ---------------------------------------------------------------------------------------------------
