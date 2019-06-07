//: [Previous](@previous)

import Foundation

func binaryBrothers(_ num: Int) -> (Int, Int)  {
    
    guard num > 0 else {return (0, 0)}
    
    var foundMax = false
    var max = num + 1
    
    var foundMin = false
    var min = num - 1
    
    let initialOnes = String(num, radix: 2).replacingOccurrences(of: "0", with: "")
    
    while !foundMax {
        let maxOnes = String(max, radix: 2).replacingOccurrences(of: "0", with: "")
        if maxOnes.count == initialOnes.count {
            foundMax = true
        } else {
            max += 1
        }
    }
    
    while !foundMin {
        let minOnes = String(min, radix: 2).replacingOccurrences(of: "0", with: "")
        if minOnes.count == initialOnes.count {
            foundMin = true
        } else {
            min -= 1
        }
    }
    return (min,max)
}

assert(binaryBrothers(12) == (10, 17))
assert(binaryBrothers(28) == (26, 35))
