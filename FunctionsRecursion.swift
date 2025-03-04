
import Foundation

// Function definition
func greet(name: String) -> String {
    return "Hello, \(name)!"
}

// Recursive function
func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

// Using the functions
let greeting = greet(name: "Alice")
let result = factorial(5)
