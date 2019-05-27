//: [Previous](@previous)

import Foundation

extension String {
    func sameCharacters(with str: String) -> Bool {
        return self.sorted() == str.sorted()
    }
}

assert("abca".sameCharacters(with: "abca"), "FAIL")
assert("abc".sameCharacters(with: "cba"), "FAIL")
assert(" a1 b2 ".sameCharacters(with: " b1 a2 "), "FAIL")
assert("abc".sameCharacters(with: "abca") == false, "FAIL")
assert("abc".sameCharacters(with: "Abc") == false, "FAIL")
assert("abc".sameCharacters(with: "cbAa") == false, "FAIL")
assert("abcc".sameCharacters(with: "abca") == false, "FAIL")


