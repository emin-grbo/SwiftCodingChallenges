//: [Previous](@previous)

import Foundation

func RLEncoding(_ input: String) -> String {
    
    var res = ""
    var count = 1
    let inputArray = Array(input)
    
    for i in 0...input.count - 1 {
        if i != input.count - 1 && inputArray[i] == inputArray[i+1] {
            count += 1
        } else {
            res.append(inputArray[i])
            res.append(String(count))
            count = 1
        }
    }
    return res
}

RLEncoding("eeesst")

assert(RLEncoding("aabbcc")=="a2b2c2")
assert(RLEncoding("aaabaaabaaa")=="a3b1a3b1a3")
assert(RLEncoding("aaAAaa")=="a2A2a2")
