
import Foundation

// Creating a set
var uniqueNumbers: Set<Int> = [1, 2, 3, 4, 5]

// Adding elements
uniqueNumbers.insert(6)

// Checking for an element
let containsThree = uniqueNumbers.contains(3)

// Iterating over a set
for number in uniqueNumbers {
    print(number)
}
