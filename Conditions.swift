
import Foundation

let number = 10

// If-else statement
if number > 0 {
    print("\(number) is a positive number")
} else {
    print("\(number) is not a positive number")
}

// If-else if-else statement
if number > 0 {
    print("\(number) is a positive number")
} else if number < 0 {
    print("\(number) is a negative number")
} else {
    print("\(number) is zero")
}

// Switch statement
let grade = "A"
switch grade {
case "A":
    print("Excellent!")
case "B":
    print("Good job!")
case "C":
    print("Well done")
case "D":
    print("You passed")
case "F":
    print("Better try again")
default:
    print("Invalid grade")
}
