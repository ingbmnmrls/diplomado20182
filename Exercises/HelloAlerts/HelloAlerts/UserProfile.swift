//
//  UserProfile.swift
//  HelloAlerts
//
//  Created by Benjamin Morales on 23/03/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

class UserProfile: UIView {
    
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "rickandmorty")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    private let label: UILabel = {
        let lbl = UILabel()
        lbl.text = "Usuario Benjamin"
        lbl.textColor = UIColor.white
        lbl.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()

    private let textView: UITextView = {
        let tv = UITextView()
        tv.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        tv.backgroundColor = UIColor.white
        tv.textColor = UIColor.black
        tv.text = "Achis achis los mariachis, chale chale chalequito, sino me lo pongo me lo quito xD"
        tv.translatesAutoresizingMaskIntoConstraints = false
        return tv
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setupLayout() {
        
        self.backgroundColor = UIColor.gray
        
        self.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            label.heightAnchor.constraint(equalToConstant: 45)
            ])
        
        self.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: label.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            ])
        
        self.addSubview(textView)
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: label.bottomAnchor),
            textView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            textView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            ])
    }
}
