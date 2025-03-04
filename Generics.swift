
import Foundation

// Generic function
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

var x = 5
var y = 10
swapValues(&x, &y)

// Generic class
class Stack<Element> {
    var items: [Element] = []

    func push(_ item: Element) {
        items.append(item)
    }

    func pop() -> Element? {
        return items.popLast()
    }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
let topItem = stack.pop()
