# 100 Days Of Swift Day 5

Here's the code:

<code>
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
</code>

## What i learned

1. Functions in Swift

	•	Creating Functions:
	•	I learned how to create a function in Swift with the example welcome(name: String) -> String, which takes a String parameter and returns a greeting message.
	•	Example: func welcome(name: String) -> String { return "Hello, \(name)!" }
	•	Variadic Parameters:
	•	I also explored how to create a function that takes a variable number of arguments using String....
	•	Example: func printNum(_ num: String...) allows passing multiple string arguments.

2. Enumerations and Error Handling

	•	Creating an Enumeration:
	•	I learned to create an enum to define specific errors, such as PasswordError with cases tooEasy and missing.
	•	Example: enum PasswordError: Error { case tooEasy, case missing }
	•	Throwing Errors:
	•	I practiced throwing errors in a function using the throw keyword.
	•	Example: func checkPassword(pwd: String) throws checks the password and throws an error if it’s too easy or missing.
	•	Handling Errors:
	•	I learned to handle errors using a do-try-catch block to catch and respond to errors.
	•	Example: The code catches errors thrown by checkPassword and prints a message if the password is not good.

3. Practical Examples:

	•	I implemented a welcome function to greet a user and a printNum function to print multiple numbers.
	•	Also wrote a checkPassword function to validate passwords and handle potential errors with a do-try-catch block.



