import Foundation

// ARRAYS ------------------------------------------------------------------------------------------------

/*
    An array stores values of the same type in an ordered list.

*/

// declaring an array
var arr: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print("someInts is of type [Int] with \(arr.count) items.")

// Append a new element
arr.append(10)
print(arr) // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Alternatively, append an array of one or more compatible items with the addition assignment operator (+=):
arr += [11]
print(arr) 

// Insert a value at specific index
arr.insert(14, at: 0)
print(arr)

// Remove a value at specific index
var num : Int = arr.remove(at: 0)
print(num)
print(arr)

// Iterating Over an Array
for nums in arr {
    print(nums)
}

// If you need the integer index of each item as well as its value, use the enumerated()
for (index, value) in arr.enumerated() {
    print("at index: \(index) we stored the value \(value)")
}

// Range Loop 
for _ in 0...9 {
    print("Hello")
}
// -------------------------------------------------------------------------------------------------------