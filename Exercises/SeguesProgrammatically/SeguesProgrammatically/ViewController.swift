//
//  ViewController.swift
//  SeguesProgrammatically
//
//  Created by Benjamin Morales on 09/03/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var switchButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func yellowAction(_ sender: UIButton) {
        if switchButton.isOn {
            performSegue(withIdentifier: "yellow", sender: nil)
        }
    }
    
    @IBAction func redAction(_ sender: UIButton) {
        if switchButton.isOn {
            performSegue(withIdentifier: "red", sender: nil)
        }
    }
    
}

