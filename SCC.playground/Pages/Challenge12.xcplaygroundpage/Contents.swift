//: [Previous](@previous)

import Foundation

func longestPref(input: String) -> String {

    let stringArray = input.components(separatedBy: " ")
    
    for i in 1...stringArray[0].count - 1 {
    
    let prefixArray = stringArray.map { $0.prefix(i) }
        if Set(prefixArray).count != 1 {
            return String(stringArray[0].prefix(i-1))
        }
    }
    return ""
}


// Pauls solution
func longestPref2(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    guard let first = parts.first else { return "" }
    
    var currentPrefix = ""
    var bestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        
        for word in parts {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    return bestPrefix
}


assert(longestPref(input: "swift switch swill swim") == "swi")
assert(longestPref(input: "flip flap flop") == "fl")
