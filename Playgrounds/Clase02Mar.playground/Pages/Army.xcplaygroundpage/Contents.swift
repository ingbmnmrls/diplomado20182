//: [Previous](@previous)

import Foundation

func shooting(balas countBullet: inout Int, tiempoSobrecarga timeToSleep: UInt32, vidas countLife: inout Int) {
    let totalBullet = countBullet
    while countLife > 0 {
        if countBullet > 0 {
            print(" \(countBullet) Pam!")
            countBullet -= 1
        } else {
            print("Arma sobrecargada")
            sleep(timeToSleep)
            countBullet = totalBullet
            countLife -= 1
        }
    }
    print("Game Over")
}

var numBalas = 10
var tiempo: UInt32 = 2
var vidas = 5

//shooting(balas: &numBalas, tiempoSobrecarga: tiempo, vidas: &vidas)

