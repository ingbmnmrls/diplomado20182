//: [Previous](@previous)

import Foundation

class Alumno {
    let nombre: String
    let numCuenta: Int
    var edad: Int {
        willSet{
            print("El nuevo valor: \(newValue)")
        }
        didSet{
            print("El valor anterior: \(oldValue)")
        }
    }
    
    init(nombre: String, numCuenta: Int, edad: Int) {
        self.nombre = nombre
        self.numCuenta = numCuenta
        self.edad = edad
    }
    
    func estudiar() -> Void {
        print("Estudiando...")
    }
}

class Ingenieria: Alumno {
    override func estudiar() {
        print("Con mucha tarea :S")
    }
}


class Contaduria: Alumno {
    override func estudiar() {
        print("Esta en corto :D")
    }
}

let inge = Ingenieria(nombre: "Benjamin", numCuenta: 3102, edad: 23)
let conta = Contaduria(nombre: "Juan", numCuenta: 0908, edad: 20)

inge.estudiar()
conta.estudiar()

//: [Next](@next)
