//
//  MyApplication.swift
//  Weather
//
//  Created by Benjamin Morales on 03/03/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

//: Mi Apliccation en este caso el WindowManager y gestiona todos los eventos y se los manda a mis vistas
class MyApplication: UIApplication {
    override func sendEvent(_ event: UIEvent) {
        print("Hola")
        super.sendEvent(event)
    }
}
