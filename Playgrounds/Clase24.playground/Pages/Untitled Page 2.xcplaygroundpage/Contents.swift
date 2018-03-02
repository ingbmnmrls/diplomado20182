//: [Previous](@previous)

import Foundation

//: Collections Array, Dictionaries, Sets
let arreglo = [1, 2, 3, 4, 5]
//Array vacio
let alumnos:[String] = []

let muchoCeros = Array(repeating: "Benjamin", count: 10)
print(arreglo[1])

alumnos.isEmpty
alumnos.count

arreglo.first
print(arreglo.last! as Any)

//: Dictionares
var dictionary = ["Pedro": 18, "Benjamin": 23]
print(dictionary["Pedro"]! as Any)

var profes: [String:Int] = [:]

var perfil = [
    "nombre": "Benjamin",
    "carrera": "ing comp"
]
perfil.updateValue("CDMX", forKey: "estado")
perfil["edad"] = "23"
print(perfil)

for (llave, valor) in perfil {
    print("\(llave) -> \(valor)")
}

for llaves in perfil.keys {
    print("\(llaves)", terminator:" ")
}

//: Conjutos
var conjunto: Set<Int> = [1, 2, 3, 1, 2]



