//
//  ViewController.swift
//  FirebaseTest
//
//  Created by Benjamin Morales on 05/05/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseDatabase

class ViewController: UIViewController {
    
    var ref: DatabaseReference! = nil

    let formContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    
    let btnRegister: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor(red: 232/255, green: 173/255, blue: 72/255, alpha: 1.0)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitle("Registro", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        btn.layer.cornerRadius = 5
        btn.layer.masksToBounds = true
        
        btn.addTarget(self, action: #selector(loginAndRegister), for: .touchUpInside)
        return btn
    }()
    
    let tfEmail: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Correo electrónico"
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        return tf
    }()
    
    let tfPassword: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Contraseña"
        tf.isSecureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        return tf
    }()
    
    let formSegmentedControl: UISegmentedControl = {
        let sg = UISegmentedControl(items: ["Inicio de sesión","Registro"])
        sg.translatesAutoresizingMaskIntoConstraints = false
        sg.selectedSegmentIndex = 1
        sg.tintColor = UIColor.white
        sg.addTarget(self, action: #selector(segmentedChange), for: .valueChanged)
        return sg
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 30/255, green: 62/255, blue: 106/255, alpha: 1.0)
        setupLayout()
        ref = Database.database().reference()
    }
    
    func setupLayout() {
        view.addSubview(formContainerView)
        view.addSubview(btnRegister)
        formContainerView.addSubview(tfEmail)
        formContainerView.addSubview(tfPassword)
        view.addSubview(formSegmentedControl)
        formContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        formContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        formContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        formContainerView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        btnRegister.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btnRegister.topAnchor.constraint(equalTo: formContainerView.bottomAnchor, constant: 5).isActive = true
        btnRegister.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        btnRegister.heightAnchor.constraint(equalToConstant: 50).isActive = true
        tfEmail.topAnchor.constraint(equalTo: formContainerView.topAnchor).isActive = true
        tfEmail.leftAnchor.constraint(equalTo: formContainerView.leftAnchor, constant: 10).isActive = true
        tfEmail.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        tfEmail.heightAnchor.constraint(equalToConstant: 60).isActive = true
        tfPassword.topAnchor.constraint(equalTo: tfEmail.bottomAnchor).isActive = true
        tfPassword.leftAnchor.constraint(equalTo: formContainerView.leftAnchor, constant: 10).isActive = true
        tfPassword.widthAnchor.constraint(equalTo: formContainerView.widthAnchor).isActive = true
        tfPassword.heightAnchor.constraint(equalToConstant: 60).isActive = true
        formSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        formSegmentedControl.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        formSegmentedControl.bottomAnchor.constraint(equalTo: formContainerView.topAnchor,  constant: -15).isActive = true
        formSegmentedControl.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    @objc func segmentedChange() {
        let title = formSegmentedControl.titleForSegment(at: formSegmentedControl.selectedSegmentIndex)
        btnRegister.setTitle(title, for: .normal)
    }
    
    @objc func loginAndRegister() {
        if formSegmentedControl.selectedSegmentIndex == 0 {
            loginUser()
        } else {
            regiterUser()
        }
    }
    
    func regiterUser() {
        if let email = tfEmail.text, let password = tfPassword.text {
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                if user != nil {
                    print("Se creó el usuario")
                    
                    let values = ["name": email]
                    self.ref.updateChildValues(values, withCompletionBlock: { (error, reference) in
                        if error != nil {
                            print("Error al insertar datos")
                            return
                        }
                        print("Dato guardado en la DB")
                    })
                    
                } else {
                    if let error = error?.localizedDescription {
                        print("Error al crear el usuario con firebase", error)
                    } else {
                        print("Tu eres el error")
                    }
                }
            }
        }
    }
    
    func loginUser() {
        if let email = tfEmail.text, let password = tfPassword.text {
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if user != nil {
                    print("Usuario autenticado")
                    let lc = LoginViewController()
                    self.navigationController?.pushViewController(lc, animated: true)
                } else {
                    if let error = error?.localizedDescription {
                        print("Error al acceder con el usuario en firebase", error)
                    } else {
                        print("Tu eres el error")
                    }
                }
            }
        }
    }
    
}

