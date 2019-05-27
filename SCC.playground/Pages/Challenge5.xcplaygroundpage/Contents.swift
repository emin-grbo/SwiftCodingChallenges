//: [Previous](@previous)

import Foundation

func characterCount(character: Character, word: String) -> Int {
    return word.filter { $0 == character }.count
}

assert(characterCount(character: "a", word: "The rain in Spain") == 2)
assert(characterCount(character: "i", word: "Mississippi") == 4)
assert(characterCount(character: "i", word: "Hacking with Swift") == 3)
