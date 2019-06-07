//: [Previous](@previous)

import Foundation

func binaryReverse(_ num: Int) -> Int {
    
    var numBinary = String(num, radix: 2)
    
    while numBinary.count < 8 {
        numBinary.insert("0", at: numBinary.startIndex)
    }
    
    let integer = Int(String(numBinary.reversed()), radix:2)!
    
    return integer
}

assert(binaryReverse(32) == 4)
assert(binaryReverse(41) == 148)
assert(binaryReverse(32) == 4)
