import UIKit

func challenge1(input: String) -> Bool {
    if Array(input) == Array(Set(input)) {
        return true
    }
    return false
}

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")
print("CONGRATS")

