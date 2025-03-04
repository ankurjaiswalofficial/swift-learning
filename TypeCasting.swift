
import Foundation

class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    func bark() {
        print("Woof!")
    }
}

let animals: [Animal] = [Dog(name: "Buddy"), Animal(name: "Mittens")]

for animal in animals {
    if let dog = animal as? Dog {
        dog.bark()
    } else {
        print("\(animal.name) is not a dog.")
    }
}
