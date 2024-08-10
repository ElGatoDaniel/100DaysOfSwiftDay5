import UIKit

// Day 5 - Functions

func welcome(name: String) -> String {
    return "Hello, \(name)!"
}

print(welcome(name: "Danny"))


func printNum(_ num: String...) {
    for n in num {
        print("\(n)")
    }
}

printNum("5","3","2")


enum PasswordError: Error {
    case tooEasy
    case missing
}


func checkPassword(pwd: String) throws {
    if pwd == "" {
        throw PasswordError.missing
    } else if pwd == "123" {
        throw PasswordError.tooEasy
    }
}

do {
    try checkPassword(pwd: "123")
    print("All good")
} catch {
    print("Password not good")
}
