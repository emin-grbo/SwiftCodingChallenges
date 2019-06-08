//: [Previous](@previous)

import Foundation

func numberAdds(_ string: String) -> Int {
    
    let stringArray = Array(string)
    var onlyNumbers: [String] = []
    var numberToAdd = ""
    
    for (_, number) in stringArray.enumerated() {
        if number.isNumber {
            numberToAdd.append(number)
        } else {
            onlyNumbers.append(numberToAdd)
            numberToAdd = ""
        }
    }
    onlyNumbers.append(numberToAdd)
    
    let result = onlyNumbers.filter{$0 != ""}.map { Int($0) ?? 0 }.reduce(0, +)
    
    return result
}


// Pauls solution
func challenge24a(string: String) -> Int {
    var currentNumber = ""
    var sum = 0
    
    for letter in string {
        let strLetter = String(letter)
        
        if Int(strLetter) != nil {
            currentNumber += strLetter
        } else {
            sum += Int(currentNumber) ?? 0
            currentNumber = ""
        }
    }
    
    sum += Int(currentNumber) ?? 0
    return sum
}




assert(numberAdds("a1b2c3") == 6)
assert(numberAdds("a10b20c30") == 60)
assert(numberAdds("h8ers") == 8)
