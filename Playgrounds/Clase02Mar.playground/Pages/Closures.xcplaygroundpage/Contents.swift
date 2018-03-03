//: [Previous](@previous)

import Foundation

var miClosure: (Int, Int) -> Int
var miClosure2: (Int, Int) -> Int

miClosure = { (a: Int, b: Int) -> Int in
    return a + b
}

miClosure2 = { (a:Int, b:Int) -> Int in
    return a * b
}

let resultado = miClosure(3,2)

func ejecutaOperacion(_ closure:(Int, Int) -> Int, a:Int, b:Int) {
    let resultado = closure(a,b)
    print(resultado)
}

ejecutaOperacion(miClosure, a: 10, b: 20)
ejecutaOperacion(miClosure2, a: 50, b: 5)
//: Como buena practica de programacion, los closures se ponen al final de la funcion
//ejecutaOperacion(a: 10, b: 20, { a / b })

//: Reduciendo el codigo y ubicando que la ultima linea se toma como el return
miClosure = { a, b in
        a + b
}

miClosure = {
    $0 + $1
}

var closureSinRetorno: () -> Void = {
    print("No regresa nada")
}

closureSinRetorno()

var numero = 0

//El closure si puede modificar, no seria un let porque esta en el ambito global
let incrementaV2 = {
    numero += 1
}

incrementaV2()
incrementaV2()
incrementaV2()
incrementaV2()
numero

func incrementaClosure() -> () -> Int {
    var contador = 0
    let incrementa: () -> Int = {
        contador += 1
        return contador
    }
    return incrementa
}

let contador1 = incrementaClosure()
let contador2 = incrementaClosure()

contador1()
contador2()
contador1()
contador2()

let letras = ["Z","CCCCC","MHHHHH","OOOOOOOOOOOO","Hiiiiiiiiiii"]
letras.sorted()

letras.sorted {
    $0.count > $1.count
}
print(letras)

letras.forEach { (String) in
    print("\(String) ")
}

let numeros = [2, 3, 4, 13, 43, 12]
numeros.forEach {
    print($0)
}

let filtrados = numeros.filter {
    $0 > 5
}
print("Numeros filtrados: \(filtrados)")

let mapeados = numeros.map {
    $0 * 10
}
let otrosMapeados = numeros.map { a in
    a * 20
}

print("Mapeados \(mapeados)")
print("Otros Mapeados \(otrosMapeados)")

let letrasYNumeros = ["Hola","0","adios","1","3"]
let numerosUsuario = letrasYNumeros.flatMap{
    Int($0)
}
//Elimina los que no se pueden convertir al tipo de dato
print(numerosUsuario)

let total = numeros.reduce(10) {
    return $0 + $1
}

print(total)
//: [Next](@next)
