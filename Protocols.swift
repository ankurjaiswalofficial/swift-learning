
import Foundation

protocol Greetable {
    func greet() -> String
}

class Person: Greetable {
    var name: String

    init(name: String) {
        self.name = name
    }

    func greet() -> String {
        return "Hello, my name is \(name)."
    }
}

let person = Person(name: "Alice")
let greeting = person.greet()
