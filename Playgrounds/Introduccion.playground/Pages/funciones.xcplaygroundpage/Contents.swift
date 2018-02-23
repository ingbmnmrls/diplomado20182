//: [Previous](@previous)

import Foundation

func funcion(valor: Int){
    print(valor)
}
funcion(valor: 10)

func sinNombrarParametros(_ valor: Int){
    print(valor)
}
sinNombrarParametros(20)

func renombrarParametros(otroNombre valor: Int){
    print(valor)
}
renombrarParametros(otroNombre: 40)

func multiplica(_ x:Int, por y: Int) -> Int{
    return x * y
}
multiplica(2, por: 4)

func divide(_ x: Int, entre y: Int) -> (resultado: Int, residuo: Int){
    return (x/y, x%y)
}
let resultados = divide(15, entre: 4)
print(resultados.residuo)
print(resultados.resultado)

func suma(_ a: inout Int) {
    a += 1
    print(a)
}

var numero = 4
suma(&numero)
print(numero)

//: Overloading
func getValue(_ x: Int) -> Int {
    return x
}

func getValue(_ x: String) -> String{
    return x
}

var x = getValue("Cadena")

//: [Next](@next)
