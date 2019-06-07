//: [Previous](@previous)

import Foundation

func fizzBuzz() {
    for i in 1...100 {
        switch true {
        case i % 3 == 0 && i % 5 == 0:
            print("FizzBuzz")
        case i % 3 == 0:
            print ("Fizz")
        case i % 5 == 0:
            print ("Buzz")
        default:
            print(i)
        }
    }
}

fizzBuzz()
