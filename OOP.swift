
import Foundation

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func greet() -> String {
        return "Hello, my name is \(name) and I am \(age) years old."
    }
}

let person = Person(name: "Alice", age: 30)
let greeting = person.greet()
