//: [Previous](@previous)

import Foundation

func randomNum(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

randomNum(min: -100, max: 5)
