//: [Previous](@previous)

import Foundation

func isPangram(_ string: String) -> Bool {

    for val in UnicodeScalar("a").value...UnicodeScalar("z").value {
        
        let letter = String(UnicodeScalar(val)!).lowercased()
        
        if !string.contains(letter) {
            return false
        }
    }
    return true
}


// Pauls Solution from the book
func isPangram2(_ string: String) -> Bool {
    
    let set = Set(string.lowercased())
    let result = set.filter { $0 >= "a" && $0 <= "z" }
    return result.count == 26
}


assert(isPangram("The quick brown fox jumps over the lazy dog"))
assert(isPangram("The quick brown fox jumped over the lazy dog") == false)


assert(isPangram2("The quick brown fox jumps over the lazy dog"))
assert(isPangram2("The quick brown fox jumped over the lazy dog") == false)
