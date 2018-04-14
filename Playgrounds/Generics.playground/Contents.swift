//: Playground - noun: a place where people can play

import UIKit

func swapGeneric<generico>(a: inout generico, b: inout generico) {
    let temp = a
    a = b
    b = temp
}

var a1 = 5
var b1 = 10
swapGeneric(a: &a1, b: &b1)
print("\(a1) - \(b1)")

func genericEqual<T: Comparable>(a: T, b: T) -> Bool {
    return a == b
}

struct List<T> {
    var items = [T]()
    mutating func add(item: T) {
        items.append(item)
    }
    
    func getItemAtIndex(index: Int) -> T? {
        if items.count > index {
            return items[index]
        } else {
            return nil
        }
    }
    
    func getSize() -> Int {
        return items.count
    }
}

protocol MyProtocol {
    associatedtype E
    var items: [E] {get set}
}

