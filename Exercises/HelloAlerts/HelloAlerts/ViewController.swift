//
//  ViewController.swift
//  HelloAlerts
//
//  Created by Benjamin Morales on 23/03/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let customView: UserProfile = {
        let cv = UserProfile()
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    private let titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Hello Alerts"
        lbl.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        lbl.textColor = .white
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let alertBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor.cyan
        btn.setTitle("SimpleAlert", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        btn.tintColor = UIColor.black
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(tapOkAlert), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.orange
        setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupView() {
    
        self.view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 45)
            ])
        
        self.view.addSubview(alertBtn)
        NSLayoutConstraint.activate([
            alertBtn.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            alertBtn.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            alertBtn.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            alertBtn.heightAnchor.constraint(equalToConstant: 45)
            ])
        
        self.view.addSubview(customView)
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            customView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            customView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            customView.bottomAnchor.constraint(equalTo: alertBtn.topAnchor),
            customView.heightAnchor.constraint(equalToConstant: 100)
            ])
    }
    
    @objc func tapOkAlert() {
        print("hola")
    }

}

