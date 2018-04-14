//: Playground - noun: a place where people can play

import UIKit

enum Dia {
    case Lunes
    case Martes
    case Miercoles
    case Jueves
    case Viernes
}

var diaSemana: Dia
diaSemana = .Lunes

switch diaSemana {
case .Lunes:
    print("Otra vez a trabajar")
case .Martes:
    print("Ya quiero que acabe la semana")
case .Miercoles:
    print("Apenas vamos a la mitad")
case .Jueves:
    print("Ya casi es fin de semana")
case .Viernes:
    print("¡Por fin es viernes!")
}

enum EstadoDocumento: Int {
    case Recibido = 0, Validado, EnProceso, Publicado
}

let valorEstado = EstadoDocumento.Validado.rawValue
let valor = EstadoDocumento(rawValue: 2)

enum ResultadoWebService {
    case Exito(String)
    case Error(Int)
}

func llamadaWS() -> ResultadoWebService {
    if false {
        return ResultadoWebService.Exito("Mi contenido")
    } else {
        return ResultadoWebService.Error(502)
    }
}

let resultado: ResultadoWebService = llamadaWS()

switch resultado {
case let .Exito(contenido):
    print(contenido)
case let .Error(codigo):
    print("El código de error es \(codigo)")
}






