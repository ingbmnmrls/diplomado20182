//: Playground - noun: a place where people can play

import UIKit

class Alumno {
    var numCuenta: String
    
    init(numCuenta: String) {
        self.numCuenta = numCuenta
    }
}

class Ingenieria: Alumno {
    
}

struct Profesor {
    var numEmpleo: String
}

var marduk = Profesor(numEmpleo: "000000000")
var benjamin = Alumno(numCuenta: "99999999")

var german = benjamin
german.numCuenta = "888888888"

benjamin.numCuenta

