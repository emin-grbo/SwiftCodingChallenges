//: [Previous](@previous)

import Foundation

extension String {
    func isPalindrome() -> Bool {
        return self.uppercased() == String(self.reversed()).uppercased()
    }
}

"abloba".isPalindrome()

assert("rotator".isPalindrome() == true, "FAIL!")
assert("Rats live on no evil star".isPalindrome() == true, "FAIL!")
assert("Never odd or even".isPalindrome() == false, "FAIL!")
assert("Hello, world".isPalindrome() == false, "FAIL!")
