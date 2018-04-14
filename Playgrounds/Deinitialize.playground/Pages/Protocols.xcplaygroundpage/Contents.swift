//: [Previous](@previous)

import Foundation

protocol Vehiculo {
    func acelerar()
    func frenar()
}

protocol Pintura {
    func pintar()
}

class Moto: Vehiculo {
    func acelerar() {
    
    }
    func frenar() {
        
    }
    func pintar() {
        
    }
}

protocol Reflexion {
    var tipoReflexion: String { get }
}

extension String: Reflexion {
    var tipoReflexion: String {
        return "Muy reflexivo el dia de hoy"
    }
}

let palabrita = "Hola mundo"
palabrita.tipoReflexion




