//: Playground - noun: a place where people can play

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var age: Int
    var id: Int
    static var count: Int = 0
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = 0
        Person.count = Person.count + 1
        self.id = Person.count
    }
    
    init?(age: Int) {
        if age > 18 {
            print("Ya pasas a antros")
        }
        return nil
    }
}

class Student: Person {
    
}

if let stu = Person(age: 20) {
    print("holaaaaa")
}
//guard se usan para cuestiones dentro de un metodo que cuando no cupla una condicion se va a salir
