//: [Previous](@previous)

import Foundation


func isItPrime(_ num: Int) -> Bool {
    guard num > 1 else { return false }
    
    for i in 2...10 {
        if i == num { continue }
        
        if num % i == 0 {
            return false
        }
    }
    return true
}

assert(isItPrime(11))
assert(isItPrime(13))
assert(!isItPrime(4))
assert(!isItPrime(9))
assert(isItPrime(16777259))
