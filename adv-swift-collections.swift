import Foundation

// SWIFT COLLECTIONS #####################################################################################

// 1.0 - ITERATING -----------------------------------------------

// Array
let names : [String] = ["Mary", "John", "Nikolas"]
// Iteration
for name in names {
    print(name)
}

/*
    -> Beind the scene the iteration is done by the iteration
       protocol.
    -> Arrays already contains a makeIterator() function
    -> This returns an iterator that we can iterate over

    https://developer.apple.com/documentation/swift/iteratorprotocol
*/

var iterator = names.makeIterator();
print(type(of: iterator)) // IndexingIterator<Array<String>>

// we can use the next method to iterate over
//  exiting when the next() method returns nil
while let animal = iterator.next() {
    //print(type(of: animal)) // String
    print(animal)
}


// The Iterator Protocol
// Note: We are not going to override it

// protocol Iterator {
    // uses the associatedtype
    //associatedtype Element
    /*
        and has a next method  that return an optional Element
        It is also a mutating function since inside it we can
        mutate the property of the object who is conform to the 
        iterator protocol
    */
    //mutating func next() -> Element?
//}

// SEQUENCE PROTOCOL - https://developer.apple.com/documentation/swift/sequence

struct Countdown : Sequence {

    let start : Int

    // We need to implement the makeIterator method
    // The IteratorProtocol is the protocol that contains
    // the function next
    func makeIterator() -> some IteratorProtocol {
        return CountDownIterator(self)
    }
}

struct CountDownIterator : IteratorProtocol {

    let countdown : Countdown
    var currentValue : Int = 0

    init(_ countdown : Countdown){
        self.countdown = countdown
        self.currentValue = countdown.start
    }

    mutating func next() -> Int? {
        if currentValue > 0 {
            let value = currentValue
            currentValue -= 1
            return value
        } else {
            return nil
        }
    }
}

let countdown = Countdown(start: 10)

for c in countdown {
    print(c)
}

// ------------------------------------------------------------


// 1.1 FILTER -------------------------------------------------

/*
    -> All Arrays, Lists conforms to the Sequence Protocols
    -> This allows us to use a lot of useful method
*/

// filter contains a closure 
let filteredName : [String] = names.filter {name in return name.count > 5}
print(filteredName)

struct Movie {
    let title: String
    let genre: String
}

// create some movies
let movies = [Movie(title: "Lord of the Rings", genre: "Fantasy"),
                    Movie(title: "Terminator", genre: "Sci-fi"),
                    Movie(title: "ET", genre: "Fiction")]

let filteredMovies = movies.filter{movie in return movie.genre == "Fantasy"}
print(filteredMovies) // [main.Movie(title: "Lord of the Rings", genre: "Fantasy")]

// Let's now assume we want to remove a movie
let movieToBeRemoved =  Movie(title: "ET", genre: "Fiction")

let removedMovie = movies.filter{ movie in return movie.title != movieToBeRemoved.title}
print(removedMovie) // [main.Movie(title: "Lord of the Rings", genre: "Fantasy"), main.Movie(title: "Terminator", genre: "Sci-fi")]

// ------------------------------------------------------------


// 1.2 FOR EACH ENUMERATED ------------------------------------

var favMovies : [Movie] = []

func addToFav(movie : Movie) {
    favMovies.append(movie)
}

movies.forEach { movie in addToFav(movie: movie) }

print(favMovies)

for (index, movie) in movies.enumerated(){
    print("At index \(index) - Title: \(movie.title)")
}

movies.enumerated().forEach {(index, movie) in print("At index \(index) - Title: \(movie.title)")}

// ------------------------------------------------------------

// 1.3 LAZY SEGUENCE ------------------------------------------

/*
    if we have a lot of data but we are only interested 
    in the last 3 
*/

let indexes = 1..<5000

// not very performing 
// indexes.filter{ index -> Bool in 
//     return index % 2 == 0
// }.map { index -> String in 
//     return "Image_\(index)"
// }

// What if we can avoid storing those intermediary filter and map values
let images = indexes.lazy.filter{ index -> Bool in
    return index % 2 == 0
}.map { index -> String in 
    return "Images_\(index)"
}

let lastThreeImages = images.suffix(3)

lastThreeImages.forEach { img in
    print(img)
}
// ------------------------------------------------------------

// 1.4 - REDUCE -----------------------------------------------

/*
    We have a shhopping cart with item inside it
*/

struct Item {
    let name : String
    let price : Double
}

struct Cart {
    // the setter is private and can be only done
    // by the Cart structure
    private(set) var items : [Item] = []

    mutating func addItem(item : Item) {
        items.append(item)
    }

    // Create a total with reduce
    var total : Double {
        // reduce(initialResult: Result, nextPartialResult: (Result, Item) throws -> Result)
        items.reduce(0) { (value, item) -> Double in
            return value + item.price
        }
    }
}

var cart = Cart()
cart.addItem(item : Item(name: "Bananas", price: 3.40))
cart.addItem(item : Item(name: "Milk", price: 2.30))
cart.addItem(item : Item(name: "Bread", price: 0.80))

let totalAmount : Double = cart.total
print("total amount \(totalAmount) euros")

// Reduce example
let items : [Int] = [0, 1, 2, 3, 4, 5]
let totalItems = items.reduce(0, +)
print(totalItems)
// ------------------------------------------------------------

// 1.4 - REDUCE INTO ------------------------------------------

/*
    Consider a scenario in which when we have an array if ratings
    and convert into a dic and qualify the ratings based on the 
    score we have
*/

let ratings = [Double] = [4, 8.5, 9.5, 2, 6, 3, 5.5, 7, 2.8, 9.8, 5.9, 1.5]



// ------------------------------------------------------------


// #######################################################################################################