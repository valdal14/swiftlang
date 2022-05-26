import Foundation

/**
 Return a word made of characters.

 - Parameter recipient: Arrays of Character.

 - Returns: A new string.
 */
func buildWord(char : [Character]) -> String {
    var word : String = ""

    for c in char {
        word += String(c)
    }

    return word
}

/**
 Returns an array of Strings.

 - Parameter recipient: String.

 - Returns: Array of Strings.
 */
func createArrayOfWordsAsStrings(text : String) -> [String] {
    var chars : [Character] = []
    var completeWord : String = ""
    var words : [String] = []
    // trim the given text
    let givenText : String = text.trimmingCharacters(in: .whitespacesAndNewlines)

    for (index, c) in givenText.enumerated() {
        // detect a non space delimiter
        if c != " " {
            chars.append(c)
            // this checks the last word in the given text
            if (givenText.count - 1) == index {
                // rebuild the word
                completeWord = buildWord(char: chars)
                // append the rebuilded world to the array
                words.append(completeWord.lowercased())
                // empty the completeWord String
                completeWord = ""
                // empty the chars array
                chars = []
            }
        } else{
            // rebuild the word
            completeWord = buildWord(char: chars)
            // append the rebuilded world to the array
            words.append(completeWord.lowercased())
            // empty the completeWord String
            completeWord = ""
            // empty the chars array
            chars = []
        }
    }

    return words
}

/**
 Returns a dic of String keys and Int value.

 I.E: ["Total Words" : 4, my: 1, name: 1, valerio: 2 ] 

 - Parameter recipient: String.

 - Returns: dic of String keys and Int value.
 */
func generateTextReport(wordContainer: [String]) -> [String : Int] {
    var words : [String : Int] = [:]
    // Adding the total number of words
    words["Total Words"] = wordContainer.count

    for word in wordContainer {
        if words[word] != nil {
            words[word] = words[word]! + 1
        } else {
            words[word] = 1
        }
    }

    return words
}

let wordContainer : [String] = createArrayOfWordsAsStrings(text: "   Hello I am Valerio and I am Italian and I love Italian food especially pizza    ")

let words : [String : Int] = generateTextReport(wordContainer: wordContainer)
print(words)

// results: 
// ["love": 1, "hello": 1, "valerio": 1, "and": 2, "food": 1, "pizza": 1, "especially": 1, "am": 2, "Total Words": 15, "italian": 2, "i": 3]