//
//  LoginViewController.swift
//  FirebaseTest
//
//  Created by Benjamin Morales on 05/05/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Salir", style: .plain, target: self, action: #selector(logoutUser))

    }
    
    @objc func logoutUser() {
        do {
            try Auth.auth().signOut()
            self.navigationController?.popViewController(animated: true)
        }catch {
            print("Pues error...")
        }
    }

}
