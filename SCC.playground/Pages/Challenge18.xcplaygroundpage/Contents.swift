//: [Previous](@previous)

import Foundation

func powa(this: Int, toPower: Int) -> Int {
    var res = 1
    for _ in 1...toPower {
        res = res * this
    }
    return res
}

assert(powa(this: 4, toPower: 3) == 64)
assert(powa(this: 2, toPower: 8) == 256)
