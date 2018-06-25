//
//  Main.swift
//  Weather
//
//  Created by Benjamin Morales on 03/03/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

//: Esto seria para reemplazar el AplicationMain que tiene por defecto
UIApplicationMain(CommandLine.argc, UnsafeMutableRawPointer(CommandLine.unsafeArgv)
    .bindMemory(
        to: UnsafeMutablePointer<Int8>.self,
        capacity: Int(CommandLine.argc)),
                  NSStringFromClass(MyApplication.self),
                  NSStringFromClass(AppDelegate.self)
)
