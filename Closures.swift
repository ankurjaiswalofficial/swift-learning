
import Foundation

// Defining a closure
let greet: (String) -> String = { name in
    return "Hello, \(name)!"
}

// Using the closure
let greeting = greet("Alice")

// Closures as function parameters
func performOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let sum = performOperation(3, 4, operation: { $0 + $1 })
