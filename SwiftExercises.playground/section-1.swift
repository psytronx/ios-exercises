import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return "My favorite cheese is \(cheese)."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray = numberArray + [5]

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary[5] = "five"

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10 {
    println(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<11 {
    println(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var favDrinks:Array<String> = []
    for character in characters {
        if let favDrink = character["favorite drink"]{
            favDrinks = favDrinks + [favDrink]
        }
    }
    
    return favDrinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
func mergeStrings(strings:Array<String>) -> String {
    var mergedString:String = strings[0]
    for stringItem in strings[1..<strings.count] {
        mergedString = mergedString + ";" + stringItem
    }
    return mergedString
}

let output = mergeStrings(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE
let sortedCerealArray = cerealArray.sorted({(item1:String, item2:String) -> Bool in
    return item1 < item2
})
println(sortedCerealArray)



