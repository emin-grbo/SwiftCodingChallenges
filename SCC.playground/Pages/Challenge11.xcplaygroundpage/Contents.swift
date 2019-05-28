//: [Previous](@previous)

import Foundation

// Interesting solution but it's not taking order into account
func threeLetterThingTest(input: String, compare: String) -> Bool {
    guard input.count == compare.count else { return false }
    let set = Set(input+compare)
    return set.count <= input.count + 3
}
//------------------------------------------------------------------=


func threeLetterThing(input: String, compare: String) -> Bool {
    
    guard input.count == compare.count else { return false }
    let str1 = Array(input)
    let str2 = Array(compare)
    
    var diff = 0
    
    for (index, letter) in str1.enumerated() {
        if letter == str2[index] {
            continue
        } else {
            diff += 1
        }
    }
    return diff < 4
}


assert(threeLetterThing(input: "Clamp", compare: "Cramp"))
assert(threeLetterThing(input: "Clamp", compare: "Crams"))
assert(threeLetterThing(input: "Clamp", compare: "Grams"))
assert(!threeLetterThing(input: "Clamp", compare: "Grans"))
assert(!threeLetterThing(input: "Clamp", compare: "Clam"))
assert(!threeLetterThing(input: "clamp", compare: "maple"))



