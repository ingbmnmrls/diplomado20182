//
//  ViewController.swift
//  prueba
//
//  Created by markmota on 2/24/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //: Se hizo un cambio en el nombre de la variable y se agrego @IBOutlet para poder hacer la conexion en el storyboard
    @IBOutlet weak var outletText: UITextField!
    @IBOutlet weak var aoutletButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //: Se cambio el texto que se pone como titulo por los requerimientos del cliente
        aoutletButton.setTitle("Touch me", for: .normal)
        
    }

    //: Se agrego el @IBAction para poder enlazar con el boton correspondiente en el storyboard
    @IBAction func actionButton(_ sender: Any) {
        outletText.text = "You are a genius "
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
