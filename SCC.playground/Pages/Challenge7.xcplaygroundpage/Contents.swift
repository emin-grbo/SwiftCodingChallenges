//: [Previous](@previous)

import Foundation

func condenseWhiteSpace(_ str: String) -> String {
    let strArray = Array(str)
    var result = ""
    
    for i in 0...strArray.count - 1 {
        
        if i != 0 && strArray[i] == " " && strArray[i-1] != " " {
            result.append(strArray[i])
        } else if strArray[i] != " " || i == 0 {
            result.append(strArray[i])
        }
    }
    return result
}

assert(condenseWhiteSpace("a   b   c") == "a b c")
assert(condenseWhiteSpace("    a") == " a")
assert(condenseWhiteSpace("abc") == "abc")


// Second interesting soltuon but fails the third assert.
func condenseWhiteSpace2(_ str: String) -> String {
    let components = str.components(separatedBy: .whitespaces)
    return components.filter { !$0.isEmpty }.joined(separator: " ")
}

// regex solution
func condenseWhiteSpaceRGX(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

print(condenseWhiteSpace2("te st tt     t"))




