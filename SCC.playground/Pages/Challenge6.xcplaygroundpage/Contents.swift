//: [Previous](@previous)

import Foundation

func removeDoubles(_ string: String) -> String {
    var current: Character = " "
    var word = ""
    
    string.forEach {
        if $0 != current && !word.contains($0) {
            word.append($0)
        }
        current = $0
    }
    return word
}

assert(removeDoubles("wombat") == "wombat")
assert(removeDoubles("hello") == "helo")
assert(removeDoubles("Mississippi") == "Misp")




