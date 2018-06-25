//: [Previous](@previous)

import Foundation

class Empleado {
    let nombre: String
    var descuentos: Double {
        get {
            return self.descuentos
        }
        set {
            self.descuentos = newValue
        }
    }
    var sueldo: Double {
        get {
            return self.sueldo - (descuentos + (self.sueldo * 0.16))
        }
        set {
            self.sueldo = newValue
        }
    }
    
    init(nombre: String, descuentos: Double, sueldo: Double) {
        self.nombre = nombre
        self.sueldo = sueldo
        self.descuentos = descuentos
    }
}

//let benjamin = Empleado(nombre: "Benjamin", descuentos: 400.50, sueldo: 23000)
//print("El empleado \(benjamin.nombre) tiene \(benjamin.descuentos) y gana \(benjamin.sueldo)")
////

//: [Next](@next)
