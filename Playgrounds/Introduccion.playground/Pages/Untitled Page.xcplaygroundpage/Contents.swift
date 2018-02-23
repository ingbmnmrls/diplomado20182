//: Playground - noun: a place where people can play

import UIKit

//Variables y constantes
let name = "Benjamin"
let lastName: String = "Morales"
var age = 23

var coordenadas: (x: Int, y: Int) = (20, 30)

//Rangos
var rango = 0...10
var rango2 = 0..<10
var rango3 = (0...10).reversed()
var rango4 = stride(from: 0, to: 100, by: 10)

//fors
var valor = 0
for i in 0...10 where i % 2 == 0{
    valor += 1
}

//Switch case
switch age {
case 0..<18:
    print("Muy chico")
case 18:
    print("Exacto")
default:
    print("Mayorcito")
}

var animal = "gato"

switch animal {
case "perro", "gato":
    print("Animal domestico")
default:
    print("Ni idea")
}

var coordenadas3D: (x: Int, y: Int, z: Int) = (0,30,0)
switch coordenadas3D {
case (0,0,0):
    print("Origen")
case (_,0,0):
    print("En X")
case (0,let y,0):
    print("En Y \(y)")
default:
    break
}







