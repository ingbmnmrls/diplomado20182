//: Playground - noun: a place where people can play

import UIKit

//: Optionals
var variable: String?
variable = nil
variable = "Hola"
//print(variable!)

//: Optional binding
if let saludo = variable {
    //print("Saludo \(saludo)")
} else {
    //print("No hay nada")
}

//: Guard
func saludos(cadena: String?) {
    //Cuando tengamos funciones
    //Si no hay nada en cadena, salte
    guard let saludo = cadena else {
        //print("Algo paso")
        return
    }
    //print("No paso nada")
}

//: Nil coalescing, asigna un valor por default si el elemento viene nil
var edad: Int? = nil
var edadValida = edad ?? 18
print(edadValida)





