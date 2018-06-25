//
//  ViewController.swift
//  SimpleForm
//
//  Created by Benjamin Morales on 02/03/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var commandLineTextView: UITextView!
    @IBOutlet weak var changeBackgroundButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var commitButton: UIButton!
    @IBOutlet weak var pushButton: UIButton!
    @IBOutlet weak var pullButton: UIButton!
    
    var baseText: String = "$ git "
    let nameColors: [String] = ["awesome", "green-sheen", "lapis-lazuli", "sea-foam-green", "very-pale-yellow", "white", "green-terminal", "black-terminal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addAction(_ sender: UIButton) {
        commandLineTextView.text = baseText + "add README.md"
    }
    
    @IBAction func commitAction(_ sender: UIButton) {
        commandLineTextView.text = baseText + "commit -m \"Add a README.md\""
    }
    
    @IBAction func pushAction(_ sender: UIButton) {
        commandLineTextView.text = baseText + "push -u origin master"
    }
    
    @IBAction func pullRequestAction(_ sender: UIButton) {
        commandLineTextView.text = baseText + "pull origin master"
    }
    
    @IBAction func changeBackgroundForAllElements(_ sender: UIButton) {
        let finalColors = generateEightRandomNumbers()
        var uiColors: [UIColor] = [UIColor.init(named: nameColors[finalColors[0]])!,
                                   UIColor.init(named: nameColors[finalColors[1]])!,
                                   UIColor.init(named: nameColors[finalColors[2]])!,
                                   UIColor.init(named: nameColors[finalColors[3]])!,
                                   UIColor.init(named: nameColors[finalColors[4]])!,
                                   UIColor.init(named: nameColors[finalColors[5]])!,
                                   UIColor.init(named: nameColors[finalColors[6]])!,
                                   UIColor.init(named: nameColors[finalColors[7]])!
        ]
        changeBackgroundButton.tintColor = uiColors[0]
        titleLabel.textColor = uiColors[1]
        addButton.backgroundColor = uiColors[2]
        commitButton.backgroundColor = uiColors[3]
        pushButton.backgroundColor = uiColors[4]
        commandLineTextView.backgroundColor = uiColors[5]
        commandLineTextView.textColor = uiColors[6]
        pullButton.backgroundColor = uiColors[7]
    }
    
    func generateEightRandomNumbers() -> [Int] {
        var numbers = [0,0,0,0,0,0,0,0]
        for i in 0...7{
            numbers[i] = Int(arc4random_uniform(UInt32(7)))
        }
        return numbers
    }
    
}

