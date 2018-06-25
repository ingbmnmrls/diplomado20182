//: [Previous](@previous)

import Foundation
//tuplas -> enums -> estructuras -> clases
//Las estructuras no soportan la herencia
//Las estructuras se pasan por valor, a diferencia de las clases que se pasan por referencia

struct Cuerpo {
    var altura: Double = 0 //Propiedasdes con almacenamiento y valor por default
    var peso: Double = 0
}

var cuerpo = Cuerpo()
cuerpo.altura = 1.85
cuerpo.peso = 80.0

var cuerpo2 = cuerpo

cuerpo.altura = 2.0

//: [Next](@next)
