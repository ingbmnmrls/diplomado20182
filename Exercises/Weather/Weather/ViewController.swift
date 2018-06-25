//
//  ViewController.swift
//  Weather
//
//  Created by Benjamin Morales on 03/03/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var lblTemperature: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Hacer una funcion en vez del clousure
        //Hacer los unwrapping bien
        //Mandarlo a llamar sin el mainQueue
        //Leer la especificacion de HTTP
        //Dominar un sniffer
        // Do any additional setup after loading the view, typically from a nib.
        //Url para peticion
        let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=London,uk&units=metric&APPID=b857156f364f34b82adae38d2d7efc60")
        
        let task = URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
            if data != nil {
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]
                    DispatchQueue.main.async {
                        if let main = json!["main"] as! [String: Any]? {
                            self.lblTemperature.text = "\(main["temp"] as! Float) ºC"
                        }
                        self.labelLocation.text = json!["name"] as? String
                    }
                } catch let e {
                    print("Error retrieving weather data: \(e)")
                }
            }
        })
        
        task.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

