
import Foundation

// Creating a dictionary
var studentGrades: [String: String] = ["Alice": "A", "Bob": "B"]

// Adding elements
studentGrades["Charlie"] = "C"

// Accessing elements
let aliceGrade = studentGrades["Alice"]

// Iterating over a dictionary
for (student, grade) in studentGrades {
    print("\(student): \(grade)")
}
