
import Foundation

let numbers = [1, 2, 3, 4, 5]

// Using map
let squaredNumbers = numbers.map { $0 * $0 }

// Using filter
let evenNumbers = numbers.filter { $0 % 2 == 0 }

// Using reduce
let sum = numbers.reduce(0) { $0 + $1 }
