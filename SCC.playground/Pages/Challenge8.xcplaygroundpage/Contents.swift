//: [Previous](@previous)

import Foundation

func stringRotation(_ str1: String, _ str2: String) -> Bool {
    guard str1.count == str2.count else { return false }
    
    var rotatingString = str2
    
    for _ in str1 {
        guard let lastString = rotatingString.popLast() else {return false}
        rotatingString.insert(lastString, at: rotatingString.startIndex)
        
        if str1 == rotatingString {
            return true
        }
    }
    return false
}


func stringRotation2(_ str1: String, _ str2: String) -> Bool {
    
    guard str1.count == str2.count else {return false}
    let combined = str1 + str1
    return combined.contains(str2)
}


assert(stringRotation("abcde", "eabcd"))
assert(stringRotation("abcde", "cdeab"))
assert(!stringRotation("abcde", "abced"))
assert(!stringRotation("abc", "a"))



