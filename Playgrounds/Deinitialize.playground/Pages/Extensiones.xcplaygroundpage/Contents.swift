//: [Previous](@previous)

import Foundation

class Alumno {
    let numCuenta: Int
    init(numCuenta: Int) {
        self.numCuenta = numCuenta
    }
}

class Ingeniero: Alumno {
    var promedio: Double = 0.0
    var status: Bool = false
    init(promedio: Double, status: Bool, numCuenta: Int) {
        self.promedio = promedio
        self.status = status
        super.init(numCuenta: numCuenta)
    }
}

protocol Evaluable {
    func examinar() -> String
}

extension Bool: Evaluable {
    func examinar() -> String {
        if self == true {
            return "Paso!"
        } else {
            return "Reprobo!"
        }
    }
}

let inge = Ingeniero(promedio: 5.5, status: true, numCuenta: 3110020)
inge.status.examinar()






