//: [Previous](@previous)

import Foundation

func isItInt(_ num: String) -> Bool {
    
    let convertedNum = Set(Array(num))
    
    return Int(String(convertedNum)) != nil
}

// Pauls Solution:

func isItInt2(_ num: String) -> Bool {
    return UInt(num) != nil
}

assert(isItInt("01010101"))
assert(isItInt("123456789"))
assert(isItInt("9223372036854775808"))
assert(!isItInt("1.01"))



