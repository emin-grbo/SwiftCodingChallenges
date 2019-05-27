//: [Previous](@previous)

import Foundation

extension String {
    
    func fuzzyContains(str: String) -> Bool {
        guard let result = self.range(of: str, options: .caseInsensitive) else {
            return false
        }
        return !result.isEmpty
    }
    
    func fuzzyContains2(str: String) -> Bool {
        return range(of: str, options: .caseInsensitive) != nil
    }
}

assert("Hello, world".fuzzyContains(str: "Hello"), "FAIL")
assert("Hello, world".fuzzyContains(str: "WORLD"), "FAIL")
assert("Hello, world".fuzzyContains(str: "Goodbye") == false, "FAIL")
