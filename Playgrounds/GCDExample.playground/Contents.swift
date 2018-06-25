//: Playground - noun: a place where people can play

import UIKit

let main = DispatchQueue.main
let background = DispatchQueue.global()

func doSyncWork() {
    background.sync {
        for _ in 1...3 {
            print("Light")
        }
    }
    for _ in 1...3 {
        print("Heavy")
    }
}//main

doSyncWork()

let brownWorker = DispatchQueue(label: "construction_worker_1")
let asianWorker = DispatchQueue(label: "construction_worker_2")

func doLightWork() {
    asianWorker.async {
        for _ in 1...10 {
            print("👷🏻‍♂️")
        }
    }
    brownWorker.async {
        for _ in 1...10 {
            print("👷🏿‍♂️")
        }
    }
    
}

doLightWork()
print("________________________________")
/////////////
let whiteWorker = DispatchQueue(label: "construction_worker_3", qos: .background) //Lower importance
let blackWorker = DispatchQueue(label: "construction_worker_4", qos: .userInitiated) //Higher importance

func doLightWorks() {
    whiteWorker.async {
        for _ in 1...10 {
            print("👷🏻‍♂️")
        }
    }
    blackWorker.async {
        for _ in 1...10 {
            print("👷🏿‍♂️")
        }
    }
    
}

doLightWorks()

/*
 userInteractive (Highest priority)
 userInitiated
 default
 utility
 background
 unspecified (lowest)
 */





