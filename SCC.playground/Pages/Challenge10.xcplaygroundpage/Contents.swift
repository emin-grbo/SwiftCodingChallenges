//: [Previous](@previous)

import Foundation

func moss(input: String) -> (Int, Int) {
    
    var vowelsCount = 0
    var constsCount = 0
    let convertedString = input.lowercased().replacingOccurrences(of: " ", with: "").split{!$0.isLetter}.joined()
    
    for letter in convertedString {
        if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
            vowelsCount += 1
        } else {
            constsCount += 1
        }
    }
    return (vowelsCount, constsCount)
}

// Pauls solution from the book

func moss2(input: String) -> (Int, Int) {
    var vowelsCount = 0
    var constsCount = 0
    
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    for leter in input.lowercased() {
        
        if vowels.contains(leter) {
            vowelsCount += 1
        } else if consonants.contains(leter) {
            constsCount += 1
        }
    }
    return (vowelsCount, constsCount)
}

assert(moss2(input: "Swift Coding Challenges") == (6,15))
assert(moss2(input: "Mississippi") == (4,7))
