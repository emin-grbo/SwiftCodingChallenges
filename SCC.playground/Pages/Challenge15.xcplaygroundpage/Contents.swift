//: [Previous](@previous)

import Foundation

func reverseWords(_ input: String) -> String {
    return input.components(separatedBy: " ").map { String($0.reversed()) }.joined(separator: " ")
}

assert(reverseWords("Swift Coding Challenges") == "tfiwS gnidoC segnellahC" )
assert(reverseWords("The quick brown fox") == "ehT kciuq nworb xof" )
